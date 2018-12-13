LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
use work.constants.all;
 
ENTITY cryptoProc_tb IS
END cryptoProc_tb;
 
ARCHITECTURE behavior OF cryptoProc_tb IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT cryptoProc
#crytoProcPort#
    END COMPONENT;
    

   --Inputs
   signal reset : std_logic := '0';
   signal clock : std_logic := '0';
   #cipher_sig#
   signal start_stop : std_logic := '0';
   #new_key#
   signal key : std_logic_vector(NM-1 downto 0) := (others => '0');
   signal msg_in : std_logic_vector((2*N)-1 downto 0) := (others => '0');

   --Outputs
   signal msg_out : std_logic_vector((2*N)-1 downto 0);
   signal eoc : std_logic;

   -- Clock period definitions
   constant clock_period : time := 10 ns;
	constant time1 : time := #time1# ns;
	constant time2 : time := #time2# ns;
	
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
#cryptoProcMap#

   -- Clock process definitions
   clock_process :process
   begin
		clock <= '1';
		wait for clock_period/2;
		clock <= '0';
		wait for clock_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
	
		reset <= '1';
		wait for 20 ns;
		reset <= '0';
		report "starting Simon #couple# test ...";

#test#
		
		report "end of tests";
		wait;
		
		
   end process;

END;
