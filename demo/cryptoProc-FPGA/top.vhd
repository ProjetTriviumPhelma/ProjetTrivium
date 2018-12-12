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
  --generic (
  --  g_CLKS_PER_BIT : integer := 87     -- Needs to be set correctly
  --  );
  port (
    i_Clk       : in  std_logic;
		reset : in std_logic;
    i_RX_Serial : in  std_logic;
    --o_RX_DV     : out std_logic;
    o_RX_Byte   : out std_logic_vector((3+2*N+NM)-1 downto 0)
    );
end component UART_RX;


component cryptoProc is
    Port ( reset : in  STD_LOGIC;
           clock : in  STD_LOGIC;
           cipher_sig : in  STD_LOGIC;
           start_stop : in  STD_LOGIC;
           new_key : in  STD_LOGIC;
           key : in  std_logic_vector(NM-1 downto 0);
           msg_in : in  std_logic_vector((2*N)-1 downto 0);
           msg_out : out  std_logic_vector((2*N)-1 downto 0);
           eoc : out  STD_LOGIC);
end component cryptoProc;


component UART_TX is
  --generic (
  --  g_CLKS_PER_BIT : integer := 87     -- Needs to be set correctly
  --  );
  port (
    i_Clk       : in  std_logic;
    i_TX_DV     : in  std_logic;
    i_TX_Byte   : in  std_logic_vector((2*N)-1 downto 0);
    o_TX_Active : out std_logic;
    o_TX_Serial : out std_logic;
    o_TX_Done   : out std_logic
    );
end component UART_TX;

--signal key : std_logic_vector(NM-1 downto 0);
--signal msg_in : std_logic_vector((2*N)-1 downto 0);
signal o_RX_Byte : std_logic_vector((3+2*N+NM)-1 downto 0);
signal msg_out : std_logic_vector((2*N)-1 downto 0);
signal eoc : STD_LOGIC;
--signal o_RX_DV     : std_logic;

begin

U1 : UART_RX port map(
		i_Clk => clock,
		reset => reset,
    i_RX_Serial => RX_Serial,
		--o_RX_DV => o_RX_DV,
    o_RX_Byte => o_RX_Byte
);

U2 : cryptoProc port map(
		reset => reset,
     clock => clock,
     cipher_sig => o_RX_Byte((3+2*N+NM)-2),
     start_stop => o_RX_Byte((3+2*N+NM)-1),
     new_key => o_RX_Byte((3+2*N+NM)-3),
     key => o_RX_Byte(((3+2*N+NM)-4)-(2*N) downto 0),
     msg_in => o_RX_Byte((3+2*N+NM)-4 downto ((3+2*N+NM)-4)-(2*N)+1),
     msg_out => msg_out,
     eoc => eoc
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


