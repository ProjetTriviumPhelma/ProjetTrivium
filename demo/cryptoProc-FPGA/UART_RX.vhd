----------------------------------------------------------------------
-- File Downloaded from http://www.nandland.com
----------------------------------------------------------------------
-- This file contains the UART Receiver.  This receiver is able to
-- receive 8 bits of serial data, one start bit, one stop bit,
-- and no parity bit.  When receive is complete o_rx_dv will be
-- driven high for one clock cycle.
-- 
-- Set Generic g_CLKS_PER_BIT as follows:
-- g_CLKS_PER_BIT = (Frequency of i_Clk)/(Frequency of UART)
-- Example: 10 MHz Clock, 115200 baud UART
-- (100000000)/(115200) = 870
--
library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.all;
use work.constants.all;
 
entity UART_RX is
  port (
    i_Clk       : in  std_logic;
	reset : in std_logic;
    i_RX_Serial : in  std_logic;
    --o_RX_DV     : out std_logic; -- a enlever quand on mettera l'IP au milieu
    o_RX_Byte   : out std_logic_vector((3+2*N+NM)-1 downto 0)
    );
end UART_RX;
 
 
architecture rtl of UART_RX is
 
  type t_SM_Main is (s_Idle, s_RX_Start_Bit, s_RX_Data_Bits,
                     s_RX_Stop_Bit, s_Cleanup);
  signal r_SM_Main : t_SM_Main := s_Idle;
 
  signal r_RX_Data_R : std_logic := '0';
  signal r_RX_Data   : std_logic := '0';
   
  signal r_Clk_Count : integer range 0 to g_CLKS_PER_BIT-1 := 0;
  signal r_Bit_Index : integer range 0 to 7 := 0;  -- 16 Bits Total
  signal r_RX_Byte   : std_logic_vector(7 downto 0) := (others => '0');
  signal r_RX_DV     : std_logic := '0';
  signal o_RX_Byte_intern  : std_logic_vector(199 downto 0):=(others => '0');
  
	signal compteurTrames : integer range 0 to 25:= 0;
   
begin
 
  -- Purpose: Double-register the incoming data.
  -- This allows it to be used in the UART RX Clock Domain.
  -- (It removes problems caused by metastabiliy)
  p_SAMPLE : process (i_Clk)
  begin
    if rising_edge(i_Clk) then
      r_RX_Data_R <= i_RX_Serial;
      r_RX_Data   <= r_RX_Data_R;
    end if;
  end process p_SAMPLE;
   
 
  -- Purpose: Control RX state machine
  p_UART_RX : process (i_Clk, reset)
  begin
	
    if rising_edge(i_Clk) then
		if (reset = '1') then
			compteurTrames <= 0;
         r_SM_Main <= s_Idle;
		else
		
			case r_SM_Main is
	 
			  when s_Idle =>
				 r_RX_DV     <= '0';
				 r_Clk_Count <= 0;
				 r_Bit_Index <= 0;
				if compteurTrames = 25 then
					compteurTrames <= 0;
				end if;
				 if r_RX_Data = '0' then       -- Start bit detected
					r_SM_Main <= s_RX_Start_Bit;
				 else
					r_SM_Main <= s_Idle;
				 end if;
	 
				  
			  -- Check middle of start bit to make sure it's still low
			  when s_RX_Start_Bit =>
				 if r_Clk_Count = (g_CLKS_PER_BIT-1)/2 then
					if r_RX_Data = '0' then
					  r_Clk_Count <= 0;  -- reset counter since we found the middle
					  r_SM_Main   <= s_RX_Data_Bits;
					else
					  r_SM_Main   <= s_Idle;
					end if;
				 else
					r_Clk_Count <= r_Clk_Count + 1;
					r_SM_Main   <= s_RX_Start_Bit;
				 end if;
	 
				  
			  -- Wait g_CLKS_PER_BIT-1 clock cycles to sample serial data
			  when s_RX_Data_Bits =>
				 if r_Clk_Count < g_CLKS_PER_BIT-1 then
					r_Clk_Count <= r_Clk_Count + 1;
					r_SM_Main   <= s_RX_Data_Bits;
				 else
					r_Clk_Count            <= 0;
					r_RX_Byte(r_Bit_Index) <= r_RX_Data;
					 
					-- Check if we have sent out all bits
					if r_Bit_Index < 7 then
					  r_Bit_Index <= r_Bit_Index + 1;
					  r_SM_Main   <= s_RX_Data_Bits;
					else
					  r_Bit_Index <= 0;
					  r_SM_Main   <= s_RX_Stop_Bit;
					end if;
				 end if;
	 
	 
			  -- Receive Stop bit.  Stop bit = 1
			  when s_RX_Stop_Bit =>
				 -- Wait g_CLKS_PER_BIT-1 clock cycles for Stop bit to finish
				 if r_Clk_Count < g_CLKS_PER_BIT-1 then
					r_Clk_Count <= r_Clk_Count + 1;
					r_SM_Main   <= s_RX_Stop_Bit;
				 else
					r_RX_DV     <= '1';
					r_Clk_Count <= 0;
					r_SM_Main   <= s_Cleanup;
				 end if;
	 
							 
			  -- Stay here 1 clock
			  when s_Cleanup =>
				 r_SM_Main <= s_Idle;
				 r_RX_DV   <= '0';
				compteurTrames <= compteurTrames + 1;
	 
					 
			  when others =>
				 r_SM_Main <= s_Idle;
				 
	 
			end case;
		end if;
    end if;
  end process p_UART_RX;
 
  
  
	enableProcess : process (i_Clk,r_RX_Byte,r_RX_DV, reset,compteurTrames)
  begin
		if (i_Clk'event and i_Clk = '1') then
			if (reset = '1') then
				o_RX_Byte_intern <= (others => '0');
				o_RX_Byte <= (others => '0');
				--o_RX_DV   <= '0';
			elsif (r_RX_DV = '1') then
				o_RX_Byte_intern(199 downto 192) <= r_RX_Byte(7 downto 0);
				o_RX_Byte_intern(191 downto 0) <= o_RX_Byte_intern (199 downto 8);
			end if;
			if (compteurTrames = 25) then
				o_RX_Byte <= o_RX_Byte_intern(194 downto 0);
				--o_RX_DV   <= '1'; -- a enlever quand on mettera l'IP au milieu
			end if;
		end if;
  end process enableProcess;
   
end rtl;
