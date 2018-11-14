library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity Buffer_80bits is
	port (
		CLK : in std_logic;
		RSTb : in std_logic;
		MODE_RUN : in std_logic;
                STREAM_IN : in std_logic;
		ACK : out std_logic;
		STREAM_OUT : out std_logic_vector (80 downto 1)
	);
end entity Buffer_80bits;

architecture Behavior of Buffer_80bits is

signal nb_loops : unsigned(6 downto 0) := "0000000";
constant NB_LOOPS_RUN : unsigned(6 downto 0) := "1010000"; -- initialized at 80
signal s_out : std_logic_vector (80 downto 1);

begin
	STACK_BITS: process(CLK,MODE_RUN)
	begin
        
            if (RSTb ='0') then
                s_out <= (others => '0');
                ACK <= '0';
            else
                if (MODE_RUN = '1') then
            		if(CLK'event and CLK='1') then
				s_out (80 downto 2) <= s_out (79 downto 1);
				s_out (1) <= STREAM_IN;
                        	nb_loops <= nb_loops + "0000001";
                        	if (nb_loops >= NB_LOOPS_RUN) then
                			nb_loops <= "0000000";
                        		ACK <= '1';
                		end if;
                	end if;
                else
			if(CLK'event and CLK='1') then
                        	ACK <= '0';
			end if;
		end if;
            end if;
        end process;
STREAM_OUT <= s_out;
end architecture;

