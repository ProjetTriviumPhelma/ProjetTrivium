library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.numeric_std.all;
use work.constants.all;

entity FSM is
	Port ( reset : in  STD_LOGIC;
           clock : in  STD_LOGIC;
           cipher_sig : in  STD_LOGIC;
           start_stop : in  STD_LOGIC;
           new_key : in  STD_LOGIC;
           eoc : out  STD_LOGIC;
           load_key : out  STD_LOGIC;
           next_key : out  STD_LOGIC;
           mem_key : out  STD_LOGIC;
           key_address : out std_logic_vector(Tbit downto 0);
           rom_address : out std_logic_vector(5 downto 0);
           ki_mux : out  STD_LOGIC;
		msg_mux : out STD_LOGIC;
		switch : out  STD_LOGIC;
           enable : out  STD_LOGIC);

end FSM;

architecture Behavioral of FSM is
type STATE is (init, load_cipher, load_decipher, cipher, recipher, mem_key_state, decipher, wait_state
);
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
P_FSM: process(current_state,current_i, start_stop ,cipher_sig ,new_key)
	begin
	next_state <= current_state;
	next_i <= current_i;
	
	-- sorties par defaut
	 eoc <= '0';
    	load_key <= '0';
	 next_key <= '0';
	 mem_key <= '0';
	 if (current_i > Tuns - un) or (current_i <1) then
		key_address <= (others => '0');
		rom_address <= (others => '0');
	 else
		key_address <= std_logic_vector(current_i);
		if to_integer(current_i) > 61 then
			rom_address <= std_logic_vector(to_unsigned(to_integer(current_i-62), 6));
		else
			rom_address <= std_logic_vector(to_unsigned(to_integer(current_i), 6));
		end if;
	end if;
    ki_mux <= '0';
    switch <= '0';
    enable <= '0';
	 msg_mux <= '0';
	 
	 -- description FSM
	 case current_state is 
				when init => next_i <= zero;
									if (start_stop = '1') then			--demande de chiffrement ou dechiffrement
										
										if (cipher_sig = '1') then		--demande de chiffrement
											next_state <= load_cipher;
										else					--demande de dechifrement
											next_state <= load_decipher;
										end if;
									end if;

				when load_cipher => load_key <= '1';			--chargement de la cle d'entree
										msg_mux <= '1';			--chargement du message d'entree
										enable <= '1';	
										if (new_key = '1') then		--nouvelle cle
											next_state <= cipher;
										else				--meme cle
											next_state <= recipher;
										end if;

				when load_decipher => load_key <= '1';			--chargement de la cle
							msg_mux <= '1';			--chargement du message	
							enable <= '1';			
							switch <= '1';			--inversion des deux moitiers message
							if (new_key = '1') then		--nouvelle cle
								next_state <= mem_key_state;
							else				--meme cle
								next_state <= decipher;
								next_i <= Tuns - un;
								key_address <= Tstd_1;
							end if;
											
				when cipher => next_i <= current_i + un;	
						next_key <= '1';			--demande de la cle suivante
						mem_key <= '1';				--memorisation de la clé
						enable <= '1';				--chargement du message de msgRegister
					
						if (current_i = Tuns - un) then		--next_i = Tuns = T
							next_state <= wait_state;	--on passe dans l'état d'attente
						else 
							next_state <= cipher;		--on reste dans l'état de chiffrement
						
						end if;

				when recipher => next_i <= current_i + un;	
						enable <= '1';				--chargement du message de msgRegister
						ki_mux <= '1';				--cle vient de keyMemory
					
						if (current_i = Tuns - un) then		--fin des rondes
							next_state <= wait_state;
						else 					--on reste pour la ronde suivante
							next_state <= recipher;
							key_address <= std_logic_vector(current_i+1);
						end if;

				when mem_key_state => 	
											next_key <= '1';
											mem_key <= '1';			--memorisation de la cle
								
											if (current_i = Tuns - un) then	--fin du calcul des cle
												next_state <= decipher;
--												next_i <= current_i -un;
												
											else 				--on reste dans le meme etat pour le calcul suivant
												next_state <= mem_key_state;
												next_i <= current_i + un;
											end if;

				when decipher =>  enable <= '1';			--chargement du message de msgRegister
										ki_mux <= '1';				--la cle vient de keyMemory
									
										if (current_i = zero) then		--fin des rondes
											next_state <= wait_state;	--on passe dans l'etat d'attente
											switch <= '1';			--on retourne le message car xi et yi sont inversé
										else 
											next_state <= decipher;		--on reste dans l'etat de dechiffrement
											next_i <= current_i - un;	--decrementation de i
											key_address <= std_logic_vector(current_i-1);	--mise à jour de key_address
										end if;

				
				when wait_state => eoc <= '1';
										if (start_stop = '0') then
											next_state <= init;
										end if;
				end case;

end process P_FSM;

end Behavioral;
