library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.all;
 
entity WRAPPER is
  port (
    i_Clk       : in  std_logic;
    i_RST	: in std_logic;
    i_RX_Serial : in  std_logic;
    o_TX_Active : out std_logic;
    o_TX_Serial : out std_logic;
    o_TX_Done   : out std_logic
    );
end WRAPPER;
 
architecture rtl of WRAPPER is

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
  end component;

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
signal count_package : integer range 0 to 21 := 0;
signal s_RX_Frame : std_logic_vector(167 downto 0);
signal s_RX_Byte : std_logic_vector(7 downto 0);
signal s_RX_Serial : std_logic;
signal s_CLK : std_logic;
signal s_RST : std_logic;
signal s_RSTb : std_logic;
signal s_RX_DV : std_logic;
signal s_enable_triv : std_logic;

--------------
--- OUTPUT ---
--------------
signal count_package_TX : integer range 0 to 10 := 0;
signal count_package_Byte : integer range 0 to 8 := 0;
signal s_TX_bit : std_logic;
signal s_GO_NGO : std_logic;
signal s_TX_DV : std_logic := '0';
signal s_TX_Byte : std_logic_vector(7 downto 0) := (others => '0');
signal s_TX_Active : std_logic := '0'; --pas sûr
signal s_TX_Serial : std_logic := '1';
signal s_TX_Done : std_logic := '0'

begin
s_CLK <= i_Clk;
s_RST <= i_RST;
s_RSTb <= not i_RST;
s_RX_Serial <= i_RX_Serial;
o_TX_Active <= s_TX_Active;
o_TX_Serial <= s_TX_Serial;
o_TX_Done <= s_TX_Done;

UUTtrivium : Trivium_Top port map (
		CLK => s_CLK,				
		RESET => s_RSTb,
		IV => s_RX_Frame(79 downto 0),
		SK => s_RX_Frame(159 downto 80),
		mode_test => s_RX_Frame(160),
		enable => s_enable_triv,
		data_in => s_RX_Frame(161),
		Go_NoGo	=> s_GO_NGO,
		Data_out => s_TX_bit
);

UUTuart_rx : UART_RX port map (
		i_Clk => s_CLK,
		reset => s_RST,
   		i_RX_Serial => s_RX_Serial,
		o_RX_DV => s_RX_DV
    		o_RX_Byte => s_RX_Byte
);

UUTuart_tx : UART_TX port map (
    i_Clk => s_CLK,
    i_TX_DV => s_TX_DV,
    i_TX_Byte => s_TX_Byte,
    o_TX_Active => s_TX_Active,
    o_TX_Serial => s_TX_Serial,
    o_TX_Done => s_TX_Done
);


	process (s_RST,s_RX_DV)
	begin
		if (s_RST='1') then
			s_RX_Frame <= (others => '0');
			count_package <= 0;
			s_enable_triv <= '0';
		elsif (s_RX_DV'event and s_RX_DV='1') then
			if count_package < 21 then
				s_enable_triv <= '0';
				count_package <= count_package + 1;
				s_RX_Frame(167 downto 8) <= s_RX_Frame(159 downto 0);
				s_RX_Frame(7 downto 0) <= s_RX_Byte;
			else
				s_enable_triv <= '1';
				count_package <= 0;
			end if;
		end if;
	end process;
	
	process (s_RST,s_CLK)
	begin
		if (s_RST='1') then
			s_TX_Active <= '0'; --pas sûr
			s_TX_Serial <= '1';
			s_TX_Done <= '0';
			count_package_TX <= 0;
			s_TX_DV <= '0';
			s_TX_Byte <= (others => '0');
			count_package_Byte <= 0;
		elsif (s_CLK'event and s_CLK='1') then
			if count_package_TX < 10 then
				if count_package_Byte < 7 then
					s_TX_DV <= '0';
					s_TX_Byte(7 downto 1) <= s_TX_Byte(6 downto 0);
					s_TX_Byte(0) <= s_TX_bit;
				else
					s_TX_DV <= '1';
					s_TX_Byte(7 downto 1) <= s_TX_Byte(6 downto 0);
					s_TX_Byte(0) <= s_TX_bit;
					count_package_Byte <= 0;
					count_package_TX <= count_package_TX + 1;
				end if;
			else
				s_TX_DV = '0';
				s_TX_Byte(7 downto 1) <= s_TX_Byte(6 downto 0);
				s_TX_Byte(0) <= s_TX_bit;
				count_package_Byte <= 0;
				count_package_TX <= '0';
				s_TX_Done = '0'; -- fin de la transmission
				
			end if;
		end if;
	end process;
			

end architecture;