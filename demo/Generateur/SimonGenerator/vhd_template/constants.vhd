library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.numeric_std.all;
package constants is

constant N : integer := #N#;		--taille du message divise par deux
constant Tbit : integer := #Tbit#;	--puissance de 2 permettant de représenter le nombre de rondes
constant T : integer := #T#;		--nombre de rondes
constant NM : integer := #NM#;		--taille de la clé

end constants;

package body constants is 
end constants;
