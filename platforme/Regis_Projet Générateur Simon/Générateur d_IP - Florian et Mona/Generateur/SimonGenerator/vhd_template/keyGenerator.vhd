library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.constants.all;


entity keyGenerator is
    Port ( load_key : in  std_logic;
           next_key : in  std_logic;
           key : in  std_logic_vector(NM-1 downto 0);
           z_j_i : in  std_logic_vector(0 downto 0);
           ki : out  std_logic_vector(N-1 downto 0);
	   clock : in std_logic;
	 reset : in std_logic);
end keyGenerator;

architecture Behavioral of keyGenerator is

#keyGenerator_architecture#

end Behavioral;

