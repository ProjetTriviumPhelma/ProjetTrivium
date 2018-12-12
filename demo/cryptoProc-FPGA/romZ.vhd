library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;
use work.constants.all;

entity romZ is
    Port ( rom_address : in  std_logic_vector(5 downto 0);
           z_j_i : out  std_logic_vector(0 downto 0));
end romZ;

architecture Behavioral of romZ is
type tab_rom is array (0 to 61) of std_logic_vector(0 downto 0);
constant tab_z : tab_rom :=  ("1","1","0","1","1","0","1","1","1","0",
				"1","0","1","1","0","0","0","1","1","0",
				"0","1","0","1","1","1","1","0","0","0",
				"0","0","0","1","0","0","1","0","0","0",
				"1","0","1","0","0","1","1","1","0","0",
				"1","1","0","1","0","0","0","0","1","1",
				"1","1");

begin

z_j_i <= tab_z(to_integer(unsigned(rom_address)));

end Behavioral;

