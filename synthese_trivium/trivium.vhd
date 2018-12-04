--
--
--
--
--
-- Source : Trivium Specifications - Christophe De Cannière & Bart Preneel


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Trivium is
	port (
		CLK : in std_logic;
		RSTb : in std_logic;
		EN : in std_logic;
		IV_IN : in std_logic_vector (80 downto 1);	-- Input vector for IV
		SK_IN : in std_logic_vector (80 downto 1);	-- Input vector for SK
		ACK : out std_logic;				-- Acknoledge when operation finished
		MODE_RUN : out std_logic;			-- To know when to get the output 
		KEY_STREAM_OUT : out std_logic
	);
end entity Trivium;

architecture Behavior of Trivium is

-- Les signaux sont en "x downto 1" pour coller avec le doc Trivium Specifications
signal s : std_logic_vector(288 downto 1);		-- INTERNAL STATE
signal ic1 : std_logic_vector(3 downto 1);	-- INTERMEDIATE CALCULATION 1
signal ic2 : std_logic_vector(3 downto 1);  	-- INTERMEDIATE CALCULATION 2
signal nb_loops : unsigned(10 downto 0);

type state_fsm is (INIT, LOAD_KEY, FIRST_LOOPS, RUN );
signal current_state, next_state : state_fsm;


-- Define the number of loops in the initialization stage
constant NB_LOOPS_INIT : unsigned(10 downto 0) := "10010000000"; -- initialized at 1152


begin
	-- Actualise the registers at each clock rising
	UPDATE_REGISTERS: process(CLK)
	begin
		if (CLK'event and CLK='1') then
			case current_state is

				-- INIT : chargement des vecteurs d'entrées
				when INIT =>
					s(288 downto 1) <= (others => '0');
					nb_loops <= "00000000000";

					ACK <= '1';	-- we are free to begin
					MODE_RUN <= '0';

				-- LOAD_KEY : chargement des clés d'initialisation
				when LOAD_KEY =>
					s(93 downto 1) <= "0000000000000" & SK_IN;
					s(177 downto 94) <= "0000" & IV_IN;
					s(285 downto 178) <= (others => '0');
					s(288 downto 286) <= "111";
					nb_loops <= "00000000000";

					ACK <= '0';
					MODE_RUN <= '0';
	
				-- FIRST_LOOPS : 4 rotations complètes des registres
				when FIRST_LOOPS =>
					s(93 downto 1) <= s(92 downto 1) & ic2(3);
					s(177 downto 94) <= s(176 downto 94) & ic2(1);
					s(288 downto 178) <=  s(287 downto 178) & ic2(2);
					nb_loops <= nb_loops + 1 ;

					ACK <= '0';
					MODE_RUN <= '0';

				-- RUN : codage du flow
				when RUN =>
					s(93 downto 1) <= s(92 downto 1) & ic2(3);
					s(177 downto 94) <= s(176 downto 94) & ic2(1);
					s(288 downto 178) <=  s(287 downto 178) & ic2(2);
					nb_loops <= "00000000000";

					ACK <= '0';
					MODE_RUN <= '1';

			end case;	
		end if;
	end process;

	-- Actualise the state at each rising clock
	UPDATE_STATE: process(CLK,RSTb)
	begin
		
		if(RSTb='0') then
			current_state <= INIT;
		else
			if (CLK'event and CLK='1') then
				current_state <= next_state;
			end if;
		end if;
	end process;

	-- Compute the next state between two rising clocks
	COMPUTE_NEXT_STATE: process(current_state, nb_loops, EN)
	begin
		case current_state is

			when INIT =>
				if(EN='1') then
					next_state <= LOAD_KEY;
				else
					next_state <= INIT;
				end if;


			when LOAD_KEY =>
				next_state <= FIRST_LOOPS;

			when FIRST_LOOPS =>
				if(nb_loops < NB_LOOPS_INIT-1) then
					next_state <= FIRST_LOOPS;
				else
					next_state <= RUN;
				end if;

			when RUN =>
				if(EN='1') then
					next_state <= RUN;
				else
					next_state <= INIT;
				end if;
		end case;

	end process;


	-- Compute ic registers
	ic1(1) <= s(66) xor s(93);
	ic1(2) <= s(162) xor s(177);
	ic1(3) <= s(243) xor s(288);

	ic2(1) <= ic1(1) xor ( s(91) and s(92) ) xor s(171);
	ic2(2) <= ic1(2) xor ( s(175) and s(176) ) xor s(264);
	ic2(3) <= ic1(3) xor ( s(286) and s(287) ) xor s(69);

	-- Update outputs depending on current_state
	UPDATE_OUTPUTS: process(CLK)
	begin
		if (CLK'event and CLK='1') then
		case current_state is
			when RUN =>	KEY_STREAM_OUT <= ic1(1) xor ic1(2) xor ic1(3);
			when others => 	KEY_STREAM_OUT <= '0';			
		end case;
		end if;
	end process;


end;
