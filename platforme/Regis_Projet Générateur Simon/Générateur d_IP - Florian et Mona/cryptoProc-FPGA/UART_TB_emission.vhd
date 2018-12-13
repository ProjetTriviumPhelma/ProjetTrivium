----------------------------------------------------------------------
-- File Downloaded from http://www.nandland.com
----------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.all;
use work.constants.all;
 
entity uart_tb_emission is
end uart_tb_emission;
 
architecture behave of uart_tb_emission is

 
  component uart_tx is
	  port (
		 i_Clk       : in  std_logic;
		 i_TX_DV     : in  std_logic;
		 i_TX_Byte   : in  std_logic_vector(63 downto 0);
		 o_TX_Active : out std_logic;
		 o_TX_Serial : out std_logic;
		 o_TX_Done   : out std_logic
		 );
  end component uart_tx;
 
   
  -- Test Bench uses a 10 MHz Clock
  -- Want to interface to 115200 baud UART
  -- 10000000 / 115200 = 87 Clocks Per Bit.
  constant c_CLKS_PER_BIT : integer := 869;
 
  constant c_BIT_PERIOD : time := 8680 ns;--8680
   
signal r_CLOCK     : std_logic                    := '0';
 signal bit_CLOCK     : std_logic                    := '0';
  signal reset     : std_logic                    := '0';
  signal r_TX_DV     : std_logic                    := '0';
  signal r_TX_BYTE   : std_logic_vector(63 downto 0) := (others => '0');
  signal w_TX_SERIAL : std_logic;
  signal w_TX_DONE   : std_logic;
 signal test : std_logic_vector(63 downto 0) := X"656b696c20646e75";
   shared variable jj : integer;
   
begin
 
  -- Instantiate UART transmitter
  UART_TX_INST : uart_tx
    port map (
      i_clk       => r_CLOCK,
      i_tx_dv     => r_TX_DV,
      i_tx_byte   => r_TX_BYTE,
      o_tx_active => open,
      o_tx_serial => w_TX_SERIAL,
      o_tx_done   => w_TX_DONE
      );

 
  r_CLOCK <= not r_CLOCK after 5 ns;
  bit_CLOCK <= not bit_CLOCK after 4340 ns;
   
  process is
  begin
		 -- Tell the UART to send a command.
    wait until rising_edge(r_CLOCK);
	 r_TX_BYTE <= test;
    wait until rising_edge(r_CLOCK);
	 r_TX_DV   <= '1';
    wait;
 
    assert false report "Tests Complete" severity failure;
     
  end process;
   
end behave;
