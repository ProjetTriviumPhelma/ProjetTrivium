library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use work.constants.all;

entity cryptoProc is
    Port ( reset : in  STD_LOGIC;
           clock : in  STD_LOGIC;
           cipher_sig : in  STD_LOGIC;
           start_stop : in  STD_LOGIC;
           new_key : in  STD_LOGIC; 
           key : in  std_logic_vector(NM-1 downto 0);
           msg_in : in std_logic_vector((2*N)-1 downto 0);
           msg_out : out  std_logic_vector((2*N)-1 downto 0);
           eoc : out  STD_LOGIC);
end cryptoProc;

architecture Behavioral of cryptoProc is

component FSM is
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
			  msg_mux : out  STD_LOGIC;
			  switch : out  STD_LOGIC;
           enable : out  STD_LOGIC);
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
	port (
		x_i : in std_logic_vector(N-1 downto 0);
		y_i : in std_logic_vector(N-1 downto 0);
		ki_r : in std_logic_vector(N-1 downto 0);
		ki_g : in std_logic_vector(N-1 downto 0);
		ki_mux : in std_logic;
		x_o: out std_logic_vector(N-1 downto 0);
		y_o: out std_logic_vector(N-1 downto 0)
	);
end component;

component msgRegister is 
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
end component;

signal load_key : std_logic;
signal next_key : std_logic;
signal mem_key : std_logic;
signal key_address : std_logic_vector(Tbit downto 0);
signal rom_address : std_logic_vector(5 downto 0);
signal z_j_i : std_logic_vector(0 downto 0);
signal ki : std_logic_vector(N-1 downto 0);
signal ki_reg : std_logic_vector(N-1 downto 0);
signal ki_mux : std_logic;
signal enable : std_logic;

signal switch : std_logic;
signal reg_out_sig : std_logic_vector((2*N)-1 downto 0);
signal round_in : std_logic_vector((2*N)-1 downto 0);
signal msg_mux : std_logic;

begin

msg_out <= reg_out_sig;

U1 : FSM port map (
	reset => reset,
	clock => clock,
	cipher_sig => cipher_sig,
	start_stop => start_stop,
	new_key => new_key,
	eoc => eoc,
	load_key => load_key,
	next_key => next_key,
	mem_key => mem_key,
	key_address => key_address,
	rom_address => rom_address,
	ki_mux => ki_mux,
	msg_mux => msg_mux,
	switch => switch,
	enable => enable
);

U2 : keyGenerator port map (
	key => key,
	next_key => next_key,
	load_key => load_key,
	z_j_i => z_j_i,
	ki => ki,
	clock => clock,
	reset => reset
);

U3 : keyMemory port map (
	mem_key => mem_key,
	key_address => key_address,
	ki_in => ki,
	ki_out => ki_reg,
	clock => clock
);

U4 : romZ port map (
	rom_address => rom_address,
	z_j_i => z_j_i
); 

U5 : Cipher port map (
	x_i => reg_out_sig((2*N)-1 downto N),
	y_i => reg_out_sig(N-1 downto 0),
	ki_r => ki_reg,
	ki_g => ki,
	ki_mux => ki_mux,
	x_o => round_in((2*N)-1 downto N),
	y_o => round_in(N-1 downto 0)
);

U6 : msgRegister port map (
	enable => enable,
	switch => switch,
	reset => reset,
	msg_in => msg_in,
	round_in => round_in,
	reg_out => reg_out_sig,
	msg_mux => msg_mux,
	clock => clock
);
end Behavioral;

