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
use work.constants.all;
use ieee.numeric_std.all;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY uart_tb_totale IS
END uart_tb_totale;
 
ARCHITECTURE behavior OF uart_tb_totale IS 
 
    -- Component Declaration for the Unit Under Test (UUT)

	 component top is
    Port ( reset : in  STD_LOGIC;
           clock : in  STD_LOGIC;
           RX_Serial: in  STD_LOGIC;
           o_TX_Active : out std_logic;
    			o_TX_Serial : out std_logic;
    			o_TX_Done   : out std_logic
		);
	end component top;


    
	constant c_CLKS_PER_BIT : integer := 869;
   constant c_BIT_PERIOD : time := 8680 ns;--8680

   --Inputs
   signal i_Clk : std_logic := '0';
	signal bit_CLOCK : std_logic := '0';
   signal reset : std_logic := '0';
   signal i_RX_Serial : std_logic := '1';
	signal testCNK : std_logic_vector(199 downto 0) := X"07656b696c20646e751b1a1918131211100b0a090803020100";
	signal testCMK : std_logic_vector(199 downto 0) := X"06656b696c20646e7500000000000000000000000000000000";
	signal testDCMK : std_logic_vector(199 downto 0) := X"0444c8fc20b9dfa07a00000000000000000000000000000000";
	signal testDCNK : std_logic_vector(199 downto 0) := X"0544c8fc20b9dfa07a1b1a1918131211100b0a090803020100";
	
 	--Outputs
   signal o_TX_Active : std_logic;
   signal o_TX_Serial : std_logic;
   signal o_TX_Done : std_logic;

   -- Clock period definitions
   constant i_Clk_period : time := 10 ns;
	
	
   shared variable jj : integer;
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
			reset => reset,
          clock => i_Clk,
          RX_Serial => i_RX_Serial,
          o_TX_Active => o_TX_Active,
          o_TX_Serial => o_TX_Serial,
          o_TX_Done => o_TX_Done
        );
		  
   -- Clock process definitions
   i_Clk_process :process
   begin
		i_Clk <= '0';
		wait for i_Clk_period/2;
		i_Clk <= '1';
		wait for i_Clk_period/2;
   end process;
 
	bit_CLOCK <= not bit_CLOCK after 4340 ns;

   -- Stimulus process
   stim_proc: process
   begin		
	
	reset <= '1';
	wait for 10 ns;
	reset <= '0';
    -- Send a command to the UART
    wait until rising_edge(i_Clk);
	 -- chiffrage, nouvelle clé
	 jj := 0;
		while (jj < 200) loop
			UART_WRITE_BYTE(testCNK(jj+7 downto jj), i_RX_Serial);
			jj := jj + 8;
		end loop;

	jj := 0;
		while (jj < 200) loop
			UART_WRITE_BYTE("00000000", i_RX_Serial);
			jj := jj + 8;
		end loop;
		
	 -- chiffrage, meme clé
	jj := 0;
		while (jj < 200) loop
			UART_WRITE_BYTE(testCMK(jj+7 downto jj), i_RX_Serial);
			jj := jj + 8;
		end loop;
		
	jj := 0;
		while (jj < 200) loop
			UART_WRITE_BYTE("00000000", i_RX_Serial);
			jj := jj + 8;
		end loop;
		
	-- dechiffrage, meme clé
	jj := 0;
		while (jj < 200) loop
			UART_WRITE_BYTE(testDCMK(jj+7 downto jj), i_RX_Serial);
			jj := jj + 8;
		end loop;
		
	jj := 0;
		while (jj < 200) loop
			UART_WRITE_BYTE("00000000", i_RX_Serial);
			jj := jj + 8;
		end loop;
	
	-- dechiffrage, nouvelle clé
	jj := 0;
		while (jj < 200) loop
			UART_WRITE_BYTE(testDCNK(jj+7 downto jj), i_RX_Serial);
			jj := jj + 8;
		end loop;
		
	jj := 0;
		while (jj < 200) loop
			UART_WRITE_BYTE("00000000", i_RX_Serial);
			jj := jj + 8;
		end loop;
		
	-- chiffrage, meme clé
	jj := 0;
		while (jj < 200) loop
			UART_WRITE_BYTE(testCMK(jj+7 downto jj), i_RX_Serial);
			jj := jj + 8;
		end loop;
		
	jj := 0;
		while (jj < 200) loop
			UART_WRITE_BYTE("00000000", i_RX_Serial);
			jj := jj + 8;
		end loop;
		
	-- dechiffrage, meme clé
	jj := 0;
		while (jj < 200) loop
			UART_WRITE_BYTE(testDCMK(jj+7 downto jj), i_RX_Serial);
			jj := jj + 8;
		end loop;
		
	jj := 0;
		while (jj < 200) loop
			UART_WRITE_BYTE("00000000", i_RX_Serial);
			jj := jj + 8;
		end loop;
      wait;
   end process;

END;
