library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_generateur is
end tb_generateur;


architecture behavior of tb_generateur is

component generateur_vect is
	port ( 	RSTb  : in std_logic;
		IV  : out std_logic_vector(79 downto 0);
		K   : out std_logic_vector(79 downto 0);
		ACK : out std_logic;
		Req : in std_logic
		);
end component;

COMPONENT Trivium_Gen_Nils_vvect
    Port ( SYS_CLK : in  STD_LOGIC;
           RST : in  STD_LOGIC;
           PLAINTEXT_IN : in  STD_LOGIC_VECTOR (7 downto 0);
           CIPHERTEXT_OUT : out  STD_LOGIC_VECTOR (7 downto 0);
	   K_INPUT : in  STD_LOGIC_VECTOR (79 downto 0);
	   IV_INPUT : in  STD_LOGIC_VECTOR (79 downto 0);
           PLNTXT_EN : in  STD_LOGIC;
           CPHRTXT_RDY : out  STD_LOGIC);
END COMPONENT;

COMPONENT Trivium_Generator_vvect
    PORT(
         SYS_CLK : IN  std_logic;
         RST : IN  std_logic;
         PLAINTEXT_IN : IN  std_logic_vector(7 downto 0);
         CIPHERTEXT_OUT : OUT  std_logic_vector(7 downto 0);
	 K_INPUT : in  STD_LOGIC_VECTOR (79 downto 0);
         IV_INPUT : IN  std_logic_vector(79 downto 0);
         PLNTXT_EN : IN  std_logic;
         CPHRTXT_RDY : OUT  std_logic
        );
END COMPONENT;

 --Inputs
   signal SYS_CLK : std_logic := '0';
   --signal RST : std_logic := '1';
   signal RSTb : std_logic := '0';
   signal PLAINTEXT_IN : std_logic_vector(7 downto 0) := (others => '0');
   signal IV_INPUT : std_logic_vector(79 downto 0);
   signal K_INPUT : std_logic_vector(79 downto 0);
   signal PLNTXT_EN : std_logic := '0';

 	--Outputs
   signal CIPHERTEXT_OUT_NILS : std_logic_vector(7 downto 0);
   signal CIPHERTEXT_OUT_REF : std_logic_vector(7 downto 0);
   signal CPHRTXT_RDY_NILS : std_logic;
   signal CPHRTXT_RDY_REF : std_logic;
   signal s_Req : std_logic;
   signal VALIDATION : std_logic_vector(7 downto 0);

   signal s_ACK : std_logic;
   signal s_ACK_REF : std_logic;
   signal s_ACK_NILS : std_logic;
   signal CPHRTXT_OK : std_logic;

   -- Clock period definitions
   constant SYS_CLK_period : time := 10 ns;
 
BEGIN
   --RST <= '0' after 80 ns;
   RSTb <= '1' after 65 ns;

	-- Instantiate the Unit Under Test (UUT)
   uutgenvect: generateur_vect PORT MAP (
          RSTb => RSTb,
          IV => IV_INPUT,
	  K => K_INPUT,
	  ACK => s_ACK,
	  Req => s_Req
        );

	-- Instantiate the Unit Under Test (UUT)
   uutnils: Trivium_Gen_Nils_vvect PORT MAP (
          SYS_CLK => SYS_CLK,
          RST => s_ACK_NILS,
          PLAINTEXT_IN => PLAINTEXT_IN,
          CIPHERTEXT_OUT => CIPHERTEXT_OUT_NILS,
          IV_INPUT => IV_INPUT,
	  K_INPUT => K_INPUT,
          PLNTXT_EN => PLNTXT_EN,
          CPHRTXT_RDY => CPHRTXT_RDY_NILS
        );

   uutref: Trivium_Generator_vvect PORT MAP (
          SYS_CLK => SYS_CLK,
          RST => s_ACK_REF,
          PLAINTEXT_IN => PLAINTEXT_IN,
          CIPHERTEXT_OUT => CIPHERTEXT_OUT_REF,
          IV_INPUT => IV_INPUT,
	   K_INPUT => K_INPUT,
          PLNTXT_EN => PLNTXT_EN,
          CPHRTXT_RDY => CPHRTXT_RDY_REF
        );




   -- Clock process definitions
   SYS_CLK_process :process
   begin
		SYS_CLK <= '0';
		wait for SYS_CLK_period/2;
		SYS_CLK <= '1';
		wait for SYS_CLK_period/2;
   end process;

   SORTIE_VALIDE :process (SYS_CLK)
   begin
		VALIDATION <= CIPHERTEXT_OUT_NILS XOR CIPHERTEXT_OUT_REF;
                assert VALIDATION = "00000000" report "il y a une erreure" severity warning;
   end process;
 
CPHRTXT_OK <= CPHRTXT_RDY_REF and CPHRTXT_RDY_NILS;

   -- Stimulus process
   stim_proc: process
   begin		
      wait until ((CPHRTXT_OK'event and CPHRTXT_OK ='1') or (RSTb'event and RSTb='1'));
      s_Req <= '1';
      wait for 20 ns;
      s_Req <= '0';

   end process;

   ACK_proc: process
   begin		
      wait until s_ACK'event;
      s_ACK_REF <= not s_ACK;
      s_ACK_NILS <= s_ACK after 20 ns;      
   end process;

   EN_proc: process
   begin		
      wait until s_ACK_NILS'event;
      PLNTXT_EN <= s_ACK_NILS;      
   end process;

END;













