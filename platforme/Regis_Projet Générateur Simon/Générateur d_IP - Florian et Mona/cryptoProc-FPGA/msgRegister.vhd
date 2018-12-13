library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.constants.all;


entity msgRegister is 
	port(
		enable : in std_logic;
		msg_mux : in std_logic;
		switch: in std_logic;
		reset : in std_logic;
		msg_in : in std_logic_vector((2*N)-1 downto 0);
		round_in : in std_logic_vector((2*N)-1 downto 0);
	   	reg_out : out std_logic_vector((2*N)-1 downto 0);
		clock : in std_logic
	);
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
		
			if (switch = '1') then			--inversion des moitiés du message
					reg_out<= reg_in_intern(N-1 downto 0) & reg_in_intern((2*N)-1 downto N);
			else
					reg_out <= reg_in_intern;
			end if;

			
	end if;
end process reg;

end bihave;