library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;
use work.constants.all;

entity FSM is
	#FSMport#
end FSM;

architecture Behavioral of FSM is
type STATE is (#FSMstates#);
signal current_state : STATE;
signal next_state : STATE;
signal current_i : unsigned(Tbit downto 0);
signal next_i : unsigned(Tbit downto 0);
constant Tstd_1 : std_logic_vector(Tbit downto 0) := std_logic_vector(to_unsigned(T-1,Tbit+1));
constant Tuns : unsigned(Tbit downto 0) := to_unsigned(T, Tbit+1);
constant zero : unsigned(Tbit downto 0) := (others => '0');
constant un : unsigned(Tbit downto 0) := to_unsigned(1, Tbit+1);


begin

--process sequentiel pour le reset synchrone et le changement d'état
P_STATE: process(clock)
	begin
	if (clock'event and clock = '1') then
		if reset = '1' then
			current_state <= init;
			current_i <= zero;
		else 	
			current_state <= next_state;
			current_i <= next_i;
		end if;
	end if;
end process P_STATE;


--process combinatoire	
P_FSM: process(current_state,current_i, start_stop #cipher_sig# #new_key#)
	begin
	next_state <= current_state;
	next_i <= current_i;
	
	-- sorties par defaut
	 eoc <= '0';
    	load_key <= '0';
	 next_key <= '0';
	 #mem_key#
	 if (current_i > Tuns - un) or (current_i <1) then
		#key_address_zero#
		rom_address <= (others => '0');
	 else
		#key_address_incr#
		if to_integer(current_i) > 61 then
			rom_address <= std_logic_vector(to_unsigned(to_integer(current_i-62), 6));
		else
			rom_address <= std_logic_vector(to_unsigned(to_integer(current_i), 6));
		end if;
	end if;
    #ki_mux#
    #switch#
    enable <= '0';
	 msg_mux <= '0';
	 
	 -- description FSM
	 case current_state is 
#init#
#load_cipher#
#load_decipher#											
#cipher#
#recipher#
#mem_key_state#
#decipher#
				
				when wait_state => eoc <= '1';
										if (start_stop = '0') then
											next_state <= init;
										end if;
				end case;

end process P_FSM;

end Behavioral;

