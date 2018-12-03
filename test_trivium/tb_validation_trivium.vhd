LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY tb_validation_trivium IS
END tb_validation_trivium;
 
ARCHITECTURE behavior OF tb_validation_trivium IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Trivium_Gen_Nils_v2
    Port ( SYS_CLK : in  STD_LOGIC;
           RST : in  STD_LOGIC;
           PLAINTEXT_IN : in  STD_LOGIC_VECTOR (7 downto 0);
           CIPHERTEXT_OUT : out  STD_LOGIC_VECTOR (7 downto 0);
	   IV_INPUT : in  STD_LOGIC_VECTOR (79 downto 0);
           PLNTXT_EN : in  STD_LOGIC;
           CPHRTXT_RDY : out  STD_LOGIC);
    END COMPONENT;

    COMPONENT Trivium_Generator
    PORT(
         SYS_CLK : IN  std_logic;
         RST : IN  std_logic;
         PLAINTEXT_IN : IN  std_logic_vector(7 downto 0);
         CIPHERTEXT_OUT : OUT  std_logic_vector(7 downto 0);
         IV_INPUT : IN  std_logic_vector(79 downto 0);
         PLNTXT_EN : IN  std_logic;
         CPHRTXT_RDY : OUT  std_logic
        );
    END COMPONENT;

   --Inputs
   signal SYS_CLK : std_logic := '0';
   signal RST : std_logic := '1';
   signal RSTb : std_logic := '0';
   signal PLAINTEXT_IN : std_logic_vector(7 downto 0) := (others => '0');
   signal IV_INPUT : std_logic_vector(79 downto 0) := X"288FF65DC42B92F960C7";
   signal PLNTXT_EN : std_logic := '0';

 	--Outputs
   signal CIPHERTEXT_OUT_NILS : std_logic_vector(7 downto 0);
   signal CIPHERTEXT_OUT_REF : std_logic_vector(7 downto 0);
   signal CPHRTXT_RDY_NILS : std_logic;
   signal CPHRTXT_RDY_REF : std_logic;
   signal VALIDATION : std_logic_vector(7 downto 0);

   -- Clock period definitions
   constant SYS_CLK_period : time := 10 ns;
 
BEGIN
   RST <= '0' after 80 ns;
   RSTb <= '1' after 100 ns;
 
	-- Instantiate the Unit Under Test (UUT)
   uutnils: Trivium_Gen_Nils_v2 PORT MAP (
          SYS_CLK => SYS_CLK,
          RST => RSTb,
          PLAINTEXT_IN => PLAINTEXT_IN,
          CIPHERTEXT_OUT => CIPHERTEXT_OUT_NILS,
          IV_INPUT => IV_INPUT,
          PLNTXT_EN => PLNTXT_EN,
          CPHRTXT_RDY => CPHRTXT_RDY_NILS
        );

   uutref: Trivium_Generator PORT MAP (
          SYS_CLK => SYS_CLK,
          RST => RST,
          PLAINTEXT_IN => PLAINTEXT_IN,
          CIPHERTEXT_OUT => CIPHERTEXT_OUT_REF,
          IV_INPUT => IV_INPUT,
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
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		PLNTXT_EN <= '1';

      wait;
   end process;

END;
