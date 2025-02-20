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

signal k_ip3 : std_logic_vector(N-1 downto 0);
signal k_ip2 : std_logic_vector(N-1 downto 0);
signal k_ip1 : std_logic_vector(N-1 downto 0);
signal k_i : std_logic_vector(N-1 downto 0);
signal calc : std_logic_vector(N-1 downto 0);
signal shift_3 : std_logic_vector(2 downto 0);			-- pour decalage circulaire de 3 bits
signal shift_1 : std_logic_vector(0 downto 0);			-- pour decalage circulaire de 1 bits
signal interm : std_logic_vector(N-1 downto 0);
signal zero : std_logic_vector(N-2 downto 0) := (others => '0');
signal un : std_logic_vector(N-3 downto 0) := (others => '1');

begin

ki <= k_i;
shift_3 <= k_ip3(2 downto 0);
interm <= (shift_3 & k_ip3(N-1 downto 3)) xor k_ip1;		--calcul intermediaire
shift_1 <= interm(0 downto 0);
calc <= k_i xor interm xor (shift_1 & interm(N-1 downto 1)) xor ((zero & z_j_i) xor (un & "00"));	--calcul de la cle de ronde

process(load_key, next_key, clock)
begin
	if (clock'event and clock = '1') then
		if (reset = '1') then
			k_i <= (others => '0');
			k_ip1 <= (others => '0');
			k_ip2 <= (others => '0');
			k_ip3 <= (others => '0');
		elsif (load_key = '1') then			--chargement de la cle
			k_ip3 <= key(NM-1 downto (3*N));
			k_ip2 <= key((3*N)-1 downto (2*N));
			k_ip1 <= key((2*N)-1 downto N);
			k_i <= key(N-1 downto 0);
		elsif (next_key = '1') then			--decalage des cle de ronde
			k_i <= k_ip1;
			k_ip1 <= k_ip2;
			k_ip2 <= k_ip3;
			k_ip3 <= calc;
		end if;
	end if;
end process;


end Behavioral;

