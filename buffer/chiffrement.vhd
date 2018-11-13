library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


entity chiffrement is
        port ( CLK : in std_logic;
	       RSTb : in std_logic;
               EN : in std_logic;
               LOAD : in std_logic;
	       IV_IN : in STD_LOGIC_VECTOR (80 downto 1);
	       SK_IN : in STD_LOGIC_VECTOR (80 downto 1);
               ACK : out std_logic;
	       KEY_STREAM_OUT : out STD_LOGIC_VECTOR (80 downto 1)
               );
end entity;

architecture Behavior of chiffrement is
    -------------------------------
    --------- COMPONENTS ----------
    -------------------------------

    component Trivium
        -- Generic ( DATA_LENGTH : integer := 80 );
        
        port ( CLK : in std_logic;
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

    component Buffer_80bits
	port (
		CLK : in std_logic;
		RSTb : in std_logic;
		MODE_RUN : in std_logic;
                STREAM_IN : in std_logic;
		ACK : out std_logic;
		STREAM_OUT : out std_logic_vector (80 downto 1)
	);
    end component;

    -------------------------------
    ----------- SIGNALS -----------
    -------------------------------
    
    signal s_ack_trivium : std_logic;
    signal s_mode_run : std_logic;
    signal s_out : std_logic;
    signal s_ack_buffer : std_logic;
    signal s_out_buffer : std_logic_vector(80 downto 1);
    
    

begin

    UUT : Trivium port map(CLK, RSTb, EN, LOAD, IV_IN, SK_IN, s_ack_trivium, s_mode_run, s_out);
    UUV : Buffer_80bits port map(CLK, RSTb, s_mode_run, s_out, s_ack_buffer, s_out_buffer);
    ACK <= s_ack_buffer;
    KEY_STREAM_OUT <= s_out_buffer;
 

end architecture;
