library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.all;
 
entity test_simple is
  port (
    i_Clk       : in  std_logic;
    i_RST       : in  std_logic;
    i_RX_Serial : in  std_logic;
    o_TX_Active : out std_logic;
    );
end top;

architecture rtl of test_simple is
signal s_TX_Serial : std_logic;

begin
process (i_Clk,i_RST)
if (i_RST ='1')
	o_TX_Serial <= '0';
elsif (i_Clk'event and i_Clk ='1')
if i_RX_Serial ='1' then
	o_TX_Serial <= '1';
else
	o_TX_Serial <= '0';
end if;
end if;
end architecture;
