library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;
use work.constants.all;

entity keyMemory is
    Port ( mem_key : in  STD_LOGIC;
           key_address : in  std_logic_vector(Tbit downto 0);
           ki_in : in  std_logic_vector(N-1 downto 0);
           ki_out : out  std_logic_vector(N-1 downto 0);
			  clock : in std_logic);
end keyMemory;

architecture Behavioral of keyMemory is
	type tab_mem is array(0 to T-1) of std_logic_vector(N-1 downto 0);
	signal tab_key : tab_mem;
	signal read_address : std_logic_vector(key_address'range);
begin

--sortie par defaut: lecture de la clé de ronde
ki_out <= tab_key(to_integer(unsigned(read_address)));

process(clock, mem_key, key_address)
begin
	if (clock'event and clock = '1') then
		if (mem_key = '1') then
			tab_key(to_integer(unsigned(key_address))) <= ki_in;	--enregistrement de la clé de ronde
		end if;
			read_address <= key_address;		
	end if;
end process;

end Behavioral;

