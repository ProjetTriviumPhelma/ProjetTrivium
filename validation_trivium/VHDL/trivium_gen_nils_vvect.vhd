library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Trivium_Gen_Nils_vvect is

    Generic ( width : integer := 8 ); 
    Port ( SYS_CLK : in  STD_LOGIC;
           RST : in  STD_LOGIC;
           PLAINTEXT_IN : in  std_logic; --STD_LOGIC_VECTOR ((width - 1) downto 0);
           CIPHERTEXT_OUT : out  std_logic; --STD_LOGIC_VECTOR ((width - 1) downto 0);
	   K_INPUT : in  STD_LOGIC_VECTOR (79 downto 0);
	   IV_INPUT : in  STD_LOGIC_VECTOR (79 downto 0);
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


SIGNAL CORE_OUT : std_logic; --STD_LOGIC_VECTOR((width - 1) downto 0);
SIGNAL s_mode_run : std_logic;
	
begin

--TRIV_CORE_GEN_NILS : for i in 0 to (width-1) generate 

--Inst_TRIVIUM_CORE_X
	TRIV_CORE_GEN_NILS: Trivium_v3 PORT MAP(
		CLK => SYS_CLK ,
		SK_IN => K_INPUT,
		IV_IN => IV_INPUT,
		KEY_STREAM_OUT => CORE_OUT, --CORE_OUT(i),
                RSTb => RST,
                EN => PLNTXT_EN,
                MODE_RUN => s_mode_run
                
	);
--end generate;

CPHRTXT_RDY <= s_mode_run;
CIPHERTEXT_OUT <= CORE_OUT XOR PLAINTEXT_IN;

end Behavioral;

