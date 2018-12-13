library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.constants.all;

--Block de calcul du chiffrement

entity Cipher is
	port (
		x_i : in std_logic_vector(N-1 downto 0);
		y_i : in std_logic_vector(N-1 downto 0);
		ki_r : in std_logic_vector(N-1 downto 0);
		ki_g : in std_logic_vector(N-1 downto 0);
		ki_mux : in std_logic;
		x_o: out std_logic_vector(N-1 downto 0);
		y_o: out std_logic_vector(N-1 downto 0)
	);
end Cipher;

architecture Behave of Cipher is


signal ki_intern : std_logic_vector(N-1 downto 0);	--clé de ronde correspondant au i_eme ronde
signal shift_1 : std_logic_vector(0 downto 0);		--signal utilise pour le decalage circulaire d'un bit
signal shift_2 : std_logic_vector(1 downto 0);		--signal utilise pour le decalage circulaire de deux bit
signal shift_8 : std_logic_vector(7 downto 0);		--signal utilise pour le decalage circulaire de huit bit

begin
shift_1 <= x_i(N-1 downto N-1);
shift_2 <= x_i(N-1 downto N-2);
shift_8 <= x_i(N-1 downto N-8);

--calcul du chiffrement / ronde
x_o <= y_i xor ((x_i(N-2 downto 0) & shift_1) and (x_i(N-9 downto 0) & shift_8)) xor (x_i(N-3 downto 0) & shift_2) xor ki_intern;
y_o <= x_i;

process(ki_mux, ki_r, ki_g)
begin
		if (ki_mux = '1') then		--choix de la provenance de la cle suivant si on a garde ou non la meme cle
			ki_intern <= ki_r;	--cle de keyMemory
		else 
			ki_intern <= ki_g;	--cle du generateur
		end if;
end process;

	
end Behave;


