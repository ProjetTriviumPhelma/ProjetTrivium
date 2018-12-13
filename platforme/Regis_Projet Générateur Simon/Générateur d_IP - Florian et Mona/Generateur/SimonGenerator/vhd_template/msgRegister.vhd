library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.constants.all;


entity msgRegister is 
#msgRegisterport#
end msgRegister;

architecture bihave of msgRegister is

signal reg_in_intern : std_logic_vector((2*N)-1 downto 0);

begin

process(msg_mux, msg_in, round_in)
begin
	if (msg_mux = '1') then
		reg_in_intern <= msg_in;	--stockage du message d'entrée
	else
		reg_in_intern <= round_in;	--stockage du message après une ronde
	end if;
end process;

reg : process(clock, enable, reset)
begin
		if reset = '1' then
			reg_out<= (others => '0');
			
	 	elsif (clock'event and clock = '1' and enable = '1') then
		
#regout#
			
	end if;
end process reg;

end bihave;
