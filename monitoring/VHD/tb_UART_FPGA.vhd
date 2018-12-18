--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:12:33 04/01/2018
-- Design Name:   
-- Module Name:   /home/mona/Documents/emissSimple/uart_tb_totale.vhd
-- Project Name:  emissSimple
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: topUART
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use ieee.numeric_std.all;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY tb_UART_FPGA IS
END tb_UART_FPGA;
 
ARCHITECTURE behavior OF tb_UART_FPGA IS 
 
    -- Component Declaration for the Unit Under Test (UUT)

	 component top is
    Port ( i_Clk : in  STD_LOGIC;
           i_RST : in  STD_LOGIC;
           i_RX_Serial: in  STD_LOGIC;
           o_TX_Active : out std_logic;
    	   o_TX_Serial : out std_logic;
    	   o_TX_Done   : out std_logic
		);
	end component top;


    
   constant c_CLKS_PER_BIT : integer := 868;-- at 100MHz
   constant c_BIT_PERIOD : time := 8680 ns;-- at 100MHz 

   --Inputs
   signal s_CLK : std_logic := '0';
   signal bit_CLOCK : std_logic := '0';
   signal s_RST : std_logic := '0';
   signal s_RX_Serial : std_logic := '1';
   signal testk_IV : std_logic_vector(167 downto 0) := X"0F62B5085BAE0154A7FA288FF65DC42B92F960C700";
--key : 0F62B5085BAE0154A7FA
--IV : 288FF65DC42B92F960C7

	
 	--Outputs
   signal s_TX_Active : std_logic;
   signal s_TX_Serial : std_logic;
   signal s_TX_Done : std_logic;

   -- Clock period definitions
   constant s_CLK_period : time := 10 ns;
	
	
  --shared variable jj : integer;
  -- Low-level byte-write
  procedure UART_WRITE_BYTE (
    i_data_in       : in  std_logic_vector(7 downto 0);
    signal o_serial : out std_logic) is
  begin
 
    -- Send Start Bit
    o_serial <= '0';
    wait for c_BIT_PERIOD;
 
    -- Send Data Byte
    for ii in 0 to 7 loop
      o_serial <= i_data_in(ii);
      wait for c_BIT_PERIOD;
    end loop;  -- ii
 
    -- Send Stop Bit
    o_serial <= '1';
    wait for c_BIT_PERIOD;
  end UART_WRITE_BYTE;
 
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: top PORT MAP (
	  i_Clk => s_CLK,
          i_RST => s_RST,
          i_RX_Serial => s_RX_Serial,
          o_TX_Active => s_TX_Active,
          o_TX_Serial => s_TX_Serial,
          o_TX_Done => s_TX_Done
        );
		  
   -- Clock process definitions
   s_CLK_process :process
   begin
		s_CLK <= '0';
		wait for s_CLK_period/2;
		s_CLK <= '1';
		wait for s_CLK_period/2;
   end process;
 
	bit_CLOCK <= not bit_CLOCK after 4340 ns;

   -- Stimulus process
   stim_proc: process
   variable jj : integer;
   begin		
	
	s_RST <= '1';
	wait for 10 ns;
	s_RST <= '0';
    -- Send a command to the UART
    wait until rising_edge(s_CLK);
	 -- chiffrage, nouvelle clé
	 jj := 0;
		while (jj < 168) loop
			UART_WRITE_BYTE(testK_IV(jj+7 downto jj), s_RX_Serial);
			jj := jj + 8;
		end loop;

	jj := 0;
		while (jj < 168) loop
			UART_WRITE_BYTE("00000000", s_RX_Serial);
			jj := jj + 8;
		end loop;
		
	 -- chiffrage, meme clé
	jj := 0;
		while (jj < 168) loop
			UART_WRITE_BYTE(testK_IV(jj+7 downto jj), s_RX_Serial);
			jj := jj + 8;
		end loop;
		
	jj := 0;
		while (jj < 168) loop
			UART_WRITE_BYTE("00000000", s_RX_Serial);
			jj := jj + 8;
		end loop;
      wait;
   end process;

END;
