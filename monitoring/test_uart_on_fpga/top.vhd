library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.all;
 
entity top is
  port (
    i_Clk       : in  std_logic;
    i_RST	: in std_logic;
    i_RX_Serial : in  std_logic;
    --o_TX_Active : out std_logic;
    o_TX_Serial : out std_logic;
    o_TX_Done   : out std_logic;
    o_debug	: out std_logic
    );
end top;
 
architecture rtl of top is

component UART_RX is
  port (
    i_Clk       : in  std_logic;
    reset       : in std_logic;
    i_RX_Serial : in  std_logic;
    o_RX_DV     : out std_logic;
    o_RX_Byte   : out std_logic_vector(7 downto 0)
    );
end component UART_RX;

component UART_TX is
port (
    i_Clk       : in  std_logic;
    i_TX_DV     : in  std_logic;
    i_TX_Byte   : in  std_logic_vector(7 downto 0);
    o_TX_Active : out std_logic;
    o_TX_Serial : out std_logic;
    o_TX_Done   : out std_logic
    );
end component;

-------------
--- INPUT ---
-------------
signal s_RX_Byte : std_logic_vector(7 downto 0):= (others => '0');
--signal s_RX_Serial : std_logic;
--signal s_CLK : std_logic;
--signal s_RST : std_logic;
signal s_RX_DV : std_logic := '0';

--------------
--- OUTPUT ---
--------------

-- signal s_TX_Byte : std_logic_vector(7 downto 0) := (others => '0');
signal s_TX_Active : std_logic := '0'; --pas sûr
signal s_TX_Serial : std_logic := '1';
signal s_TX_Done : std_logic := '0';

begin

--o_TX_Active <= s_TX_Active;
o_TX_Serial <= s_TX_Serial;
o_TX_Done <= s_TX_Done;
o_debug <= s_RX_DV;

UUTuart_rx : UART_RX port map (
		i_Clk => i_Clk,
		reset => i_RST,
   		i_RX_Serial => i_RX_Serial,
		o_RX_DV => s_RX_DV,
    		o_RX_Byte => s_RX_Byte
);

UUTuart_tx : UART_TX port map (
    i_Clk => i_Clk,
    i_TX_DV => s_RX_DV,
    i_TX_Byte => s_RX_Byte,
    o_TX_Active => s_TX_Active,
    o_TX_Serial => s_TX_Serial,
    o_TX_Done => s_TX_Done
);
	
end architecture;
