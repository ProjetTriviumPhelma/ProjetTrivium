library ieee;
use ieee.std_logic_1164.ALL;
use ieee.numeric_std.all;

entity hextobin is
 port (
 I : in character;
 O : out std_logic_vector (3 downto 0)
 );
end hextobin;
architecture decod of hextobin is
begin
 with I select
 O <=
 "0000" when '0',
 "0001" when '1',
 "0010" when '2',
 "0011" when '3',
 "0100" when '4',
 "0101" when '5',
 "0110" when '6',
 "0111" when '7',
 "1000" when '8',
 "1001" when '9',
 "1010" when 'A',
 "1011" when 'B',
 "1100" when 'C',
 "1101" when 'D',
 "1110" when 'E',
 "1111" when 'F',
 "UUUU" when others;
end decod; 
		

