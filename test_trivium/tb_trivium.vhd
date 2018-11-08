library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


entity tb_trivium is
end entity;

architecture Behavior of tb_trivium is
    -------------------------------
    --------- COMPONENTS ----------
    -------------------------------

    component Trivium
        Generic ( DATA_LENGTH : integer := 80 );
        
        Port ( CLK : in std_logic;
	       RSTb : in std_logic;
	       IV_IN : in STD_LOGIC_VECTOR (DATA_LENGTH-1 downto 0);
	       SK_IN : in STD_LOGIC_VECTOR (DATA_LENGTH-1 downto 0);
               ACK : in std_logic;
	       KEY_STREAM_OUT : out std_logic
               );
    end component;

    -------------------------------
    ----------- SIGNALS -----------
    -------------------------------
    
    signal s_clk       : std_logic := '0';
    signal s_rstb       : std_logic := '0';
    
    signal K  : std_logic_vector(79 downto 0) := "11111111111111111111111111111111111111111111111111111111111111111111111111111111"; 
    signal IV : std_logic_vector(79 downto 0) := "10101010101010101010101010101010101010101010101010101010101010101010101010101010";
    signal init : std_logic_vector(79 downto 0) := "10101010101010101010101010101010101010101010101010101010101010101010101010101010";
    
    signal s_ack : std_logic;
    signal s_out : std_logic;
    

begin

    UUT : Trivium port map(s_clk, s_rstb, IV, K, s_ack, s_out);
    s_clk <= not s_clk after 20 ns;
    s_rstb <= '1' after 80 ns;

    process(s_rstb,s_clk) is
    begin
    if (s_rstb ='0') then
        IV <= others ='0';
    else if (s_clk'envent and s_clk ='1') then
        if (s_ack='1') then
            IV <= init;
        end if;
    end if;
end 
       
           
