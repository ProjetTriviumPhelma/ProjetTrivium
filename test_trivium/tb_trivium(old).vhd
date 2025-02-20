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
        -- Generic ( DATA_LENGTH : integer := 80 );
        
        Port ( CLK : in std_logic;
	       RSTb : in std_logic;
               EN : in std_logic;
               LOAD : in std_logic;
	       IV_IN : in STD_LOGIC_VECTOR (80 downto 1);
	       SK_IN : in STD_LOGIC_VECTOR (80 downto 1);
               ACK : out std_logic;
               MODE_RUN : out std_logic;
	       KEY_STREAM_OUT : out std_logic
               );
    end component;

    -------------------------------
    ----------- SIGNALS -----------
    -------------------------------
    
    signal s_clk       : std_logic := '0';
    signal s_rstb       : std_logic := '0';
    signal s_en       : std_logic := '0';
    signal s_load       : std_logic := '1';
    
    signal K  : std_logic_vector(80 downto 1) := "11111111111111111111111111111111111111111111111111111111111111111111111111111111"; 
    signal IV : std_logic_vector(80 downto 1) := "10101010101010101010101010101010101010101010101010101010101010101010101010101010";
    -- signal init : std_logic_vector(80 downto 1) := "10101010101010101010101010101010101010101010101010101010101010101010101010101010";
    
    signal s_ack : std_logic;
    signal s_mode_run : std_logic;
    signal s_out : std_logic;
    

begin

    UUT : Trivium port map(s_clk, s_rstb, s_en, s_load, IV, K, s_ack, s_mode_run, s_out);
    s_clk <= not s_clk after 20 ns;
    s_rstb <= '1' after 80 ns;
    s_load <= '0' after 110 ns;
    s_en <= not s_en after 130 ns;
 

end architecture;
       
           
