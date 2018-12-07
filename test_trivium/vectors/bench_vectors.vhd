library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use std.textio.all;
use ieee.std_logic_textio.all;


entity bench_vectors is
end bench_vectors;


architecture arch2 of bench_vectors is
	component hextobin is
 		port (
 		I : in character;
		O : out std_logic_vector (3 downto 0)
 		);
	end component;

	constant filename 	: string := "test-vectors.txt";
	file vecteurs 		: text open read_mode is filename;
        file file_output 	: text open write_mode is "debug.log"; -- pour fichier de sortie
	signal s_I 		: character; -- signal pour les vecteurs de tests
	signal s_O		: std_logic_vector (3 downto 0); -- signal pour les réponses
	signal v_K		: std_logic_vector(79 downto 0);
	signal v_IV		: std_logic_vector(79 downto 0);
	signal v_0_63		: std_logic_vector(255 downto 0);
	signal v_192_255	: std_logic_vector(255 downto 0);
	signal v_256_319	: std_logic_vector(255 downto 0);
	signal v_448_511	: std_logic_vector(255 downto 0);
	signal v_XOR		: std_logic_vector(255 downto 0);
begin
        UUT:hextobin PORT MAP(
		I => s_I,
		O => s_O
	);
	-- UUT : entity hextobin(decod) port map (I, O);
	process
		variable v_ILINE		: line; -- pointeur vers un objet de type string
		variable v_OLINE		: line; -- pointeur vers un objet de type string
		variable c		: character;
		variable j		: integer;
	begin
		while not endfile(vecteurs) loop
			readline(vecteurs, v_ILINE);
			if (v_ILINE(1 to 3) /= "Set") then -- passer la ligne de SET
				while not (v_ILINE(1 to 1) = "=") loop
					read(v_ILINE, c); -- lecture
				end loop;
				read(v_ILINE, c); -- lecture du "="
				for j in 0 to 19 loop
					read(v_ILINE, c); -- lecture de K
					s_I <= c;
					wait for 10 ns;
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
					wait for 10 ns;
					v_IV(3 downto 0) <= s_O;
					v_IV(79 downto 4) <= v_IV(75 downto 0);
				end loop;
				readline(vecteurs, v_ILINE); -- passer la ligne de IV
				while not (v_ILINE(1 to 1) = "=") loop
					read(v_ILINE, c); -- lecture
				end loop;
				read(v_ILINE, c); -- lecture du "="
				for j in 0 to 63 loop
					read(v_ILINE, c); -- lecture de [0..63]
					s_I <= c;
					wait for 10 ns;
					v_0_63(3 downto 0) <= s_O;
					v_0_63(255 downto 4) <= v_0_63(251 downto 0);
				end loop;
				readline(vecteurs, v_ILINE); -- passer la ligne de [0..63]
				while not (v_ILINE(1 to 1) = "=") loop
					read(v_ILINE, c); -- lecture
				end loop;
				read(v_ILINE, c); -- lecture du "="
				for j in 0 to 63 loop
					read(v_ILINE, c); -- lecture de [192..255]
					s_I <= c;
					wait for 10 ns;
					v_192_255(3 downto 0) <= s_O;
					v_192_255(255 downto 4) <= v_192_255(251 downto 0);
				end loop;
				readline(vecteurs, v_ILINE); -- passer la ligne de [192..255]
				while not (v_ILINE(1 to 1) = "=") loop
					read(v_ILINE, c); -- lecture
				end loop;
				read(v_ILINE, c); -- lecture du "="
				for j in 0 to 63 loop
					read(v_ILINE, c); -- lecture de [256..319]
					s_I <= c;
					wait for 10 ns;
					v_256_319(3 downto 0) <= s_O;
					v_256_319(255 downto 4) <= v_256_319(251 downto 0);
				end loop;
				readline(vecteurs, v_ILINE); -- passer la ligne de [256..319]
				while not (v_ILINE(1 to 1) = "=") loop
					read(v_ILINE, c); -- lecture
				end loop;
				read(v_ILINE, c); -- lecture du "="
				for j in 0 to 63 loop
					read(v_ILINE, c); -- lecture de [448..511]
					s_I <= c;
					wait for 10 ns;
					v_448_511(3 downto 0) <= s_O;
					v_448_511(255 downto 4) <= v_448_511(251 downto 0);
				end loop;
				readline(vecteurs, v_ILINE); -- passer la ligne de [448..511]
				while not (v_ILINE(1 to 1) = "=") loop
					read(v_ILINE, c); -- lecture
				end loop;
				read(v_ILINE, c); -- lecture du "="
				for j in 0 to 63 loop
					read(v_ILINE, c); -- lecture du XOR
					s_I <= c;
					wait for 10 ns;
					v_XOR(3 downto 0) <= s_O;
					v_XOR(255 downto 4) <= v_XOR(251 downto 0);
				end loop;
				
				wait for 60 ns;
				--assert ((c = 'P') = (F = '1') and (c = 'N') = (F = '0'))
				--report "erreur pour l'entrée " & integer'image(n) severity error;
				write(v_OLINE, v_K, right, 20);
      				writeline(file_output, v_OLINE);
				wait for 10 ns;
				write(v_OLINE, v_IV, right, 20);
				writeline(file_output, v_OLINE);
				wait for 10 ns;
				write(v_OLINE, v_0_63, right, 64);
				writeline(file_output, v_OLINE);
				wait for 10 ns;
				write(v_OLINE, v_192_255, right, 64);
				writeline(file_output, v_OLINE);
				wait for 10 ns;
				write(v_OLINE, v_256_319, right, 64);
				writeline(file_output, v_OLINE);
				wait for 10 ns;
				write(v_OLINE, v_448_511, right, 64);
				writeline(file_output, v_OLINE);
				wait for 10 ns;
				write(v_OLINE, v_XOR, right, 64);
				writeline(file_output, v_OLINE);
			end if;
			v_K <= (others => '0');
			v_IV <= (others => '0');
			v_0_63 <= (others => '0');
			v_192_255 <= (others => '0');
			v_256_319 <= (others => '0');
			v_448_511 <= (others => '0');
			v_XOR <= (others => '0');
		end loop;
		deallocate(v_ILINE); -- relâcher la mémoire du tampon
		deallocate(v_OLINE); -- relâcher la mémoire du tampon
		file_close(vecteurs);
		file_close(file_output);
		report "simulation terminée" severity failure;
	end process;
end arch2;

--https://www.nandland.com/vhdl/examples/example-file-io.html
--https://moodle.polymtl.ca/pluginfile.php/89255/mod_folder/content/0/pdf/0710ESFichiers.pdf?forcedownload=1

