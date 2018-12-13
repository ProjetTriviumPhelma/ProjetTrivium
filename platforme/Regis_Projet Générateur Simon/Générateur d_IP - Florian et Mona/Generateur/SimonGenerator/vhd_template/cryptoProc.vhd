library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.constants.all;

entity cryptoProc is
#cryptoProcPort#
end cryptoProc;

architecture Behavioral of cryptoProc is

component FSM is
#FSMport#
end component;

component keyGenerator is
    Port ( load_key : in  std_logic;
           next_key : in  std_logic;
           key : in  std_logic_vector(NM-1 downto 0);
           z_j_i : in  std_logic_vector(0 downto 0);
           ki : out  std_logic_vector(N-1 downto 0);
	   clock : in std_logic;
	   reset : in std_logic);
end component;

component keyMemory is
    Port ( mem_key : in  STD_LOGIC;
           key_address : in  std_logic_vector(Tbit downto 0);
           ki_in : in  std_logic_vector(N-1 downto 0);
           ki_out : out  std_logic_vector(N-1 downto 0);
	   clock : in std_logic);
end component;

component romZ is
    Port ( rom_address : in  std_logic_vector(5 downto 0);
           z_j_i : out  std_logic_vector(0 downto 0));
end component;

component Cipher is
#cipherPort#
end component;

component msgRegister is 
#msgRegisterPort#
end component;

signal load_key : std_logic;
signal next_key : std_logic;
#mem_key#
#key_address#
signal rom_address : std_logic_vector(5 downto 0);
signal z_j_i : std_logic_vector(0 downto 0);
signal ki : std_logic_vector(N-1 downto 0);
#ki_reg#
#ki_mux#
signal enable : std_logic;
#switch#
signal reg_out_sig : std_logic_vector((2*N)-1 downto 0);
signal round_in : std_logic_vector((2*N)-1 downto 0);
signal msg_mux : std_logic;

begin

msg_out <= reg_out_sig;

#FSMmap#

U2 : keyGenerator port map (
	key => key,
	next_key => next_key,
	load_key => load_key,
	z_j_i => z_j_i,
	ki => ki,
	clock => clock,
	reset => reset
);

#keyMemoryMap#

#romZ_number#romZ port map (
	rom_address => rom_address,
	z_j_i => z_j_i
); 

#cipherMap#

#msgRegisterMap#

end Behavioral;

