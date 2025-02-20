library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity Trivium_Gen_Nils_v2 is

    Generic ( width : integer := 8 ); 
    Port ( SYS_CLK : in  STD_LOGIC;
           RST : in  STD_LOGIC;
           PLAINTEXT_IN : in  STD_LOGIC_VECTOR ((width - 1) downto 0);
           CIPHERTEXT_OUT : out  STD_LOGIC_VECTOR ((width - 1) downto 0);
	   IV_INPUT : in  STD_LOGIC_VECTOR (79 downto 0);
           PLNTXT_EN : in  STD_LOGIC;
           CPHRTXT_RDY : out  STD_LOGIC);
end Trivium_Gen_Nils_v2;

architecture Behavioral of Trivium_Gen_Nils_v2 is
------------------------------
---Trivium Core Definition----
------------------------------
COMPONENT Trivium_v2 is
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


SIGNAL CORE_OUT : STD_LOGIC_VECTOR((width - 1) downto 0);
SIGNAL s_mode_run : std_logic;

TYPE ARRAY_8x80 is ARRAY (0 to 7) of STD_LOGIC_VECTOR(79 downto 0); ----8x80 bit Array
CONSTANT KEY_ARRAY : ARRAY_8x80 :=   (
				X"52b9f96c72e101bce602",
				X"8ad8e295ec06031e8efb",
				X"207c79ed60a3fc18ced0",
				X"3593832d8b33df0d2bbb",
				X"dbb5a27bec93c5ee5282",
				X"689a5a8c8b761a35f19b",
				X"491d41213630a6ab3f6d",
				X"3c2cb7daf7412b6d26f9");
	
begin

TRIV_CORE_GEN_NILS : for i in 0 to (width-1) generate 

Inst_TRIVIUM_CORE_X: Trivium_v2 PORT MAP(
		CLK => SYS_CLK ,
		SK_IN => KEY_ARRAY(i),
		IV_IN => IV_INPUT,
		KEY_STREAM_OUT => CORE_OUT(i),
                RSTb => RST,
                EN => PLNTXT_EN,
                MODE_RUN => s_mode_run
                
	);
end generate;

CPHRTXT_RDY <= s_mode_run;
CIPHERTEXT_OUT <= CORE_OUT XOR PLAINTEXT_IN;

end Behavioral;

