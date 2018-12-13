library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use std.textio.all;
use ieee.std_logic_textio.all;


entity generateur_vect is
	port ( 	RSTb : in std_logic;
		IV   : out std_logic_vector(79 downto 0);
		K    : out std_logic_vector(79 downto 0);
		ACK  : out std_logic;
		Req  : in std_logic
		);
end generateur_vect;


architecture behavior of generateur_vect is
	component hextobin is
 		port (
 		I : in character;
		O : out std_logic_vector (3 downto 0)
 		);
	end component;

	constant filename 	: string := "VHDL/test-vectors.txt";
	file vecteurs 		: text open read_mode is filename;
	signal s_I 		: character; -- signal pour les vecteurs de tests
	signal s_O		: std_logic_vector (3 downto 0); -- signal pour les réponses
	signal v_K		: std_logic_vector(79 downto 0):= X"00000000000000000000";
	signal v_IV		: std_logic_vector(79 downto 0):= X"00000000000000000000";
	signal s_ACK		: std_logic:='0';
	signal s_ACK2		: std_logic:='1';
begin
K <= v_K;
IV <= v_IV;
        UUThextobin:hextobin PORT MAP(
		I => s_I,
		O => s_O
	);
	TRAITEMENT : process
		variable v_ILINE		: line; -- pointeur vers un objet de type string
		variable v_OLINE		: line; -- pointeur vers un objet de type string
		variable c		: character;
		variable j		: integer;
	begin
        
		while not endfile(vecteurs) loop
			wait until Req'event and Req ='1';
			readline(vecteurs, v_ILINE); -- passer la 1ere ligne puis les XOR
			if (v_ILINE(1 to 3) = "Set") then
				readline(vecteurs, v_ILINE); -- passer la ligne de SET
				while not (v_ILINE(1 to 1) = "=") loop
					read(v_ILINE, c); -- lecture
				end loop;
				read(v_ILINE, c); -- lecture du "="
				for j in 0 to 19 loop
					read(v_ILINE, c); -- lecture de K
					s_I <= c;
					--v_K <= (others => '0');
					wait for 1 ns;
					v_K(3 downto 0) <= s_O;
					v_K(79 downto 4) <= v_K(75 downto 0);
				end loop;
				readline(vecteurs, v_ILINE); -- passer la ligne de key
				while not (v_ILINE(1 to 1) = "=") loop
					read(v_ILINE, c); -- lecture
				end loop;
				read(v_ILINE, c); -- lecture du "="
				for j in 0 to 19 loop
					read(v_ILINE, c); -- lecture de IV
					s_I <= c;
					wait for 1 ns;
					v_IV(3 downto 0) <= s_O;
					v_IV(79 downto 4) <= v_IV(75 downto 0);
				end loop;
				readline(vecteurs, v_ILINE); -- passer la ligne de IV
				readline(vecteurs, v_ILINE); -- passer la ligne de O..63
				readline(vecteurs, v_ILINE); -- passer la ligne de 192..255
				readline(vecteurs, v_ILINE); -- passer la ligne de 256..319
				readline(vecteurs, v_ILINE); -- passer la ligne de 448..511
				--readline(vecteurs, v_ILINE); -- passer la ligne de XOR
				s_ACK<='1';
			end if;
			--v_K <= (others => '0');
			--v_IV<= (others => '0');
		end loop;
		s_ACK <= '0';
		deallocate(v_ILINE); -- relâcher la mémoire du tampon
		file_close(vecteurs);
		report "simulation terminée" severity failure;
	end process;
        stimu_reset : process
	begin
		wait until Req'event and Req = '1';
                wait for 20 us; --1152*10+512*10+marge
		s_ACK2 <= '0';
		wait for 20 ns;
		s_ACK2 <= '1';
	end process;
ACK <= s_ACK and s_ACK2;			
end behavior;

--https://www.nandland.com/vhdl/examples/example-file-io.html
--https://moodle.polymtl.ca/pluginfile.php/89255/mod_folder/content/0/pdf/0710ESFichiers.pdf?forcedownload=1

