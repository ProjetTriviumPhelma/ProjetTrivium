----------------------------------------------------------------------
-- File Downloaded from http://www.nandland.com
----------------------------------------------------------------------
library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.all;
use work.constants.all;
 
entity uart_tb is
end uart_tb;
 
architecture behave of uart_tb is

 
  component uart_rx is
    port (
      i_clk       : in  std_logic;
		reset : in std_logic;
      i_rx_serial : in  std_logic;
      o_rx_dv     : out std_logic;
      o_rx_byte   : out std_logic_vector((3+2*N+NM)-1  downto 0)
      );
  end component uart_rx;
 
   
  -- Test Bench uses a 10 MHz Clock
  -- Want to interface to 115200 baud UART
  -- 10000000 / 115200 = 87 Clocks Per Bit.
  constant c_CLKS_PER_BIT : integer := 869;
 
  constant c_BIT_PERIOD : time := 8680 ns;--8680
   
signal r_CLOCK     : std_logic                    := '0';
 signal bit_CLOCK     : std_logic                    := '0';
  signal reset     : std_logic                    := '0';
  signal r_TX_DV     : std_logic                    := '0';
  signal w_RX_DV     : std_logic;
  signal w_RX_BYTE   : std_logic_vector((3+2*N+NM)-1 downto 0);
  signal r_RX_SERIAL : std_logic := '1';
 signal test : std_logic_vector(199 downto 0) := X"07656b696c20646e751b1a1918131211100b0a090803020100";
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
 
	procedure octets(
		entry : in  std_logic_vector(199 downto 0);
		signal o_serial : out std_logic) is
		variable jj : integer;
	begin
		jj := 0;
		while (jj < 200) loop
			UART_WRITE_BYTE(entry(jj+7 downto jj), o_serial);
		
--		jj := 199;
--		while (jj /= 0) loop
--			UART_WRITE_BYTE(entry(jj downto jj-7), o_serial);
--			if jj = 7 then
--				jj := 0;
--			else
--				jj := jj - 8;
--			end if;
		end loop;
	end octets;
   
begin
 
  -- Instantiate UART transmitter

 
  -- Instantiate UART Receiver
  UART_RX_INST : uart_rx

    port map (
      i_clk       => r_CLOCK,
		reset => reset,
      i_rx_serial => r_RX_SERIAL,
      o_rx_dv     => w_RX_DV,
      o_rx_byte   => w_RX_BYTE
      );
 
  r_CLOCK <= not r_CLOCK after 5 ns;
  bit_CLOCK <= not bit_CLOCK after 4340 ns;
   
  process is
  begin
 
 
     reset <= '1';
	wait for 10 ns;
	reset <= '0';
    -- Send a command to the UART
    wait until rising_edge(r_CLOCK);
	 --octets(X"03e56b696c20646e751b1a1918131211100b0a090803020100", r_RX_SERIAL);
	 jj := 0;
	while (jj < 200) loop
		UART_WRITE_BYTE(test(jj+7 downto jj), r_RX_SERIAL);
		jj := jj + 8;
	end loop;
--  UART_WRITE_BYTE(X"00", r_RX_SERIAL);
--	 UART_WRITE_BYTE(X"01", r_RX_SERIAL);
--	 UART_WRITE_BYTE(X"02", r_RX_SERIAL);
--	 UART_WRITE_BYTE(X"03", r_RX_SERIAL);
--	 UART_WRITE_BYTE(X"00", r_RX_SERIAL);
--	 UART_WRITE_BYTE(X"00", r_RX_SERIAL);
--	 UART_WRITE_BYTE(X"00", r_RX_SERIAL);
--	 UART_WRITE_BYTE(X"00", r_RX_SERIAL);
--	 UART_WRITE_BYTE(X"00", r_RX_SERIAL);
--	 UART_WRITE_BYTE(X"00", r_RX_SERIAL);
--	 UART_WRITE_BYTE(X"00", r_RX_SERIAL);
--	 UART_WRITE_BYTE(X"00", r_RX_SERIAL);
--	 UART_WRITE_BYTE(X"00", r_RX_SERIAL);
--	 UART_WRITE_BYTE(X"00", r_RX_SERIAL);
--	 UART_WRITE_BYTE(X"00", r_RX_SERIAL);
--	 UART_WRITE_BYTE(X"00", r_RX_SERIAL);
--	 UART_WRITE_BYTE(X"00", r_RX_SERIAL);
--	 UART_WRITE_BYTE(X"00", r_RX_SERIAL);
--	 UART_WRITE_BYTE(X"00", r_RX_SERIAL);
--	 UART_WRITE_BYTE(X"00", r_RX_SERIAL);
--	 UART_WRITE_BYTE(X"00", r_RX_SERIAL);
--	 UART_WRITE_BYTE(X"00", r_RX_SERIAL);
--	 UART_WRITE_BYTE(X"00", r_RX_SERIAL);
--	 UART_WRITE_BYTE(X"00", r_RX_SERIAL);
--	 UART_WRITE_BYTE(X"00", r_RX_SERIAL);
--	 UART_WRITE_BYTE("01100010", r_RX_SERIAL);
		wait until rising_edge(r_CLOCK);
		wait for 500 us;
    -- Check that the correct command was received
    if w_RX_BYTE = X"7656b696c20646e751b1a1918131211100b0a090803020100" then
      report "Test Passed - Correct Byte Received" severity note;
    else
      report "Test Failed - Incorrect Byte Received" severity note;
    end if;
 
    assert false report "Tests Complete" severity failure;
     
  end process;
   
end behave;
