library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Trivium_Gen_Nils_vvect is

    Generic ( width : integer := 8 ); 
    Port ( SYS_CLK : in  STD_LOGIC;
           RST : in  STD_LOGIC;
           PLAINTEXT_IN : in STD_LOGIC_VECTOR (7 downto 0);
           CIPHERTEXT_OUT : out STD_LOGIC_VECTOR (7 downto 0);
	       K_INPUT : in  STD_LOGIC_VECTOR (79 downto 0);
	       IV_INPUT : in  STD_LOGIC_VECTOR (79 downto 0);
           EN : in STD_LOGIC;
           PLNTXT_EN : in  STD_LOGIC;
           CPHRTXT_RDY : out  STD_LOGIC);
end Trivium_Gen_Nils_vvect;

architecture Behavioral of Trivium_Gen_Nils_vvect is
------------------------------
---Trivium Core Definition----
------------------------------
COMPONENT Trivium_v3 is
	port (
		CLK : in std_logic;
		RSTb : in std_logic;
		EN : in std_logic;
		IV_IN : in std_logic_vector (80 downto 1);	-- Input vector for IV
		SK_IN : in std_logic_vector (80 downto 1);	-- Input vector for SK
		MODE_RUN : out std_logic;			-- To know when to get the output 
		KEY_STREAM_OUT : out std_logic
	);
end COMPONENT;


SIGNAL CORE_OUT : STD_LOGIC_VECTOR(7 downto 0);
SIGNAL s_mode_run : std_logic;
SIGNAL s_CPHRTXT_RDY : std_logic;
SIGNAL s_KEY_STREAM_OUT : std_logic;
signal count_package : integer range 0 to 8 := 0;
	
begin

--TRIV_CORE_GEN_NILS : for i in 0 to (width-1) generate 

--Inst_TRIVIUM_CORE_X
	TRIV_CORE_GEN_NILS: Trivium_v3 PORT MAP(
		CLK => SYS_CLK ,
		SK_IN => K_INPUT,
		IV_IN => IV_INPUT,
		KEY_STREAM_OUT => s_KEY_STREAM_OUT, --CORE_OUT(i),
        RSTb => RST,
        EN => EN,
		PLNTXT_EN => PLNTXT_EN, -- AJOUTER CA pour dire que on peux chiffrer le text !!!
        MODE_RUN => s_mode_run
                
	);
--end generate;



CPHRTXT_RDY <= s_CPHRTXT_RDY;
CIPHERTEXT_OUT <= CORE_OUT XOR PLAINTEXT_IN;

process (RST,SYS_CLK)
begin
	if (RST='0') then
		CORE_OUT <= (others => '0');
		count_package <= 0;
		s_CPHRTXT_RDY <= '0';
	elsif (SYS_CLK'event and SYS_CLK='1' and s_mode_run ='1') then
		if count_package < 8 then
			s_CPHRTXT_RDY <= '0';
			count_package <= count_package + 1;
			CORE_OUT(7 downto 1) <= CORE_OUT(6 downto 0);
			CORE_OUT(0) <= s_KEY_STREAM_OUT;
		else
			s_CPHRTXT_RDY <= '1';
		end if;
        else
		s_CPHRTXT_RDY <= '0';
		count_package <= 0;
	end if;
end process;

end Behavioral;

