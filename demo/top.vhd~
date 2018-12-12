library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
USE ieee.numeric_std.ALL;
use work.constants.all;

entity top is
    Port ( reset : in  STD_LOGIC;
           clock : in  STD_LOGIC;
           RX_Serial: in  STD_LOGIC;
           o_TX_Active : out std_logic;
    	   o_TX_Serial : out std_logic;
    	   o_TX_Done   : out std_logic
		);
end top;


architecture Behavioral of top is


component UART_RX is
  port (
    i_Clk       : in  std_logic;
    reset       : in std_logic;
    i_RX_Serial : in  std_logic;
    o_RX_Byte   : out std_logic_vector(162 downto 0)
    );
end component UART_RX;

component Trivium_Top is
	port 	(
		CLK		: in std_logic;				
		RESET		: in std_logic;
		IV		: in std_logic_vector (79 downto 0); 
		SK		: in std_logic_vector (79 downto 0);
		mode_test	: in std_logic;
		enable		: in std_logic;
		data_in		: in std_logic;
		Go_NoGo		: out std_logic;
		Data_out	: out std_logic
		);
end entity;		

component UART_TX is
  port (
    i_Clk       : in  std_logic;
    i_TX_DV     : in  std_logic;
    i_TX_Byte   : in  std_logic;
    o_TX_Active : out std_logic;
    o_TX_Serial : out std_logic;
    o_TX_Done   : out std_logic
    );
end component UART_TX;

signal o_RX_Byte : std_logic_vector(162 downto 0);
signal msg_out : std_logic;
signal eoc : STD_LOGIC;

begin

U1 : UART_RX port map(
		i_Clk => clock,
		reset => reset,
   		i_RX_Serial => RX_Serial,
    		o_RX_Byte => o_RX_Byte
);

U2 : Trivium_Top port map(
		CLK => clock,			
		RESET => reset,
		IV => o_RX_Byte(79 downto 0),
		SK => o_RX_Byte(159 downto 80),
		mode_test => o_RX_Byte(160),
		enable => o_RX_Byte(161),
		data_in => o_RX_Byte(162),
		Go_NoGo	=> eoc,
		Data_out => msg_out
);

U3 : UART_TX port map(
    i_Clk => clock,
    i_TX_DV => eoc,
    i_TX_Byte => msg_out,
    o_TX_Active => o_TX_Active,
    o_TX_Serial => o_TX_Serial,
    o_TX_Done => o_TX_Done
);


end Behavioral;


