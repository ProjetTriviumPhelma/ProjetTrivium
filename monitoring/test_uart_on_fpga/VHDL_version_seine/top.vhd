library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.all;
 
entity top is
  port (
    i_Clk       : in  std_logic;
    i_RST       : in  std_logic;
    i_RX_Serial : in  std_logic;
    o_TX_Active : out std_logic;
    o_TX_Serial : out std_logic;
    o_TX_Done   : out std_logic;
    Go_NoGo		: out std_logic;
    test_done   : out std_logic
    );
end top;
 
architecture rtl of top is

component UART_RX is
  port (
    i_Clk       : in  std_logic;
    i_RX_Serial : in  std_logic;
    o_RX_DV     : out std_logic;
    o_RX_Byte   : out std_logic_vector(7 downto 0)
    );
end component UART_RX;

component Trivium_Gen_Nils_vvect is
 port (
        SYS_CLK : in  STD_LOGIC;
        RST : in  STD_LOGIC;
        PLAINTEXT_IN : in  std_logic_vector(7 downto 0);
        CIPHERTEXT_OUT : out  std_logic_vector(7 downto 0);
	K_INPUT : in  STD_LOGIC_VECTOR (79 downto 0);
	IV_INPUT : in  STD_LOGIC_VECTOR (79 downto 0);
        EN : in STD_LOGIC;
        PLNTXT_EN : in  STD_LOGIC;
        CPHRTXT_RDY : out  STD_LOGIC
		);
end component Trivium_Gen_Nils_vvect;

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
signal s_PLAINTEXT_IN : std_logic_vector(7 downto 0);
signal s_PLNTXT_EN : std_logic;
signal s_RX_Byte : std_logic_vector(7 downto 0);
signal s_RX_DV : std_logic;
signal s_RST : std_logic;

--------------
--- OUTPUT ---
--------------

signal s_CIPHERTEXT_OUT : std_logic_vector(7 downto 0) := (others => '0');
signal s_CPHRTXT_RDY : std_logic := '0';
signal s_TX_Active : std_logic := '0'; --pas sûr
signal s_TX_Serial : std_logic := '1';
signal s_TX_Done : std_logic := '0';
signal s_TX_DV : std_logic := '0';
signal s_TX_Byte : std_logic_vector(7 downto 0) := (others => '0');

-----------
--- SIG ---
-----------
signal count_package : integer range 0 to 20 := 0;
signal s_RX_Frame : std_logic_vector(0 to 160);
signal s_enable_triv : std_logic;

begin

s_RST <= not i_RST;
o_TX_Active <= s_TX_Active;
o_TX_Serial <= s_TX_Serial;
o_TX_Done <= s_TX_Done;

UUTuart_rx : UART_RX port map (
		i_Clk => i_Clk,
   		i_RX_Serial => i_RX_Serial,
		o_RX_DV => s_RX_DV,
    		o_RX_Byte => s_RX_Byte
);

UUTuart_tx : UART_TX port map (
    i_Clk => i_Clk,
    i_TX_DV => s_TX_DV,
    i_TX_Byte => s_TX_Byte,
    o_TX_Active => s_TX_Active,
    o_TX_Serial => s_TX_Serial,
    o_TX_Done => s_TX_Done
);

UUTtrivium : Trivium_Gen_Nils_vvect port map (
    SYS_CLK => i_Clk,
    RST => s_RST,
    PLAINTEXT_IN => s_PLAINTEXT_IN,  -- 1 octet
    CIPHERTEXT_OUT => s_CIPHERTEXT_OUT, -- 1 octect
    K_INPUT => s_RX_Frame(0 to 79),
    IV_INPUT => s_RX_Frame(80 to 159),
    EN => s_enable_triv, -- quand le load est pret
    PLNTXT_EN => s_PLNTXT_EN, -- quand la data est prete
    CPHRTXT_RDY => s_CPHRTXT_RDY -- il faut que ça passe a 1 quand on a un octet!!
);

process (i_RST,s_RX_DV)
begin
	if (i_RST='1') then
		s_RX_Frame <= (others => '0');
		count_package <= 0;
		s_enable_triv <= '0';
	elsif (s_RX_DV'event and s_RX_DV='1') then
		if count_package < 20 then
			s_enable_triv <= '0';
			count_package <= count_package + 1;
			s_RX_Frame(8 to 159) <= s_RX_Frame(0 to 151);
			s_RX_Frame(0 to 7) <= s_RX_Byte;
		else
			s_enable_triv <= '1';
		end if;
        else
		s_enable_triv <= '0';
	end if;
end process;

DATA_PROCESS : process (i_RST,s_RX_DV)
begin
	if (i_RST='1') then
                s_PLNTXT_EN <= '0';
                s_PLAINTEXT_IN <= (others => '0');
	elsif (s_RX_DV'event and s_RX_DV='1') then
		s_PLAINTEXT_IN <= s_RX_Byte;
		s_PLNTXT_EN <= '1';
	else
		s_PLNTXT_EN <= '0';
	end if;
end process;
	
process (i_RST,i_Clk)
begin
	if (i_RST='1') then
		s_TX_DV <= '0';
		s_TX_Byte <= (others => '0');
	elsif (s_CLK'event and s_CLK='1' and s_CPHRTXT_RDY='1') then
		s_TX_Byte <= s_CIPHERTEXT_OUT;
		s_TX_DV <= '1';
        else
                s_TX_DV <= '0';
	end if;
end process;
			
end architecture;
