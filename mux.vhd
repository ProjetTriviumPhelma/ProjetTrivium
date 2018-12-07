library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


entity mux is
        port ( SEL : in std_logic;
	       INIT : in std_logic;
               LOOP_BACK : in std_logic;
               S : out std_logic
               );
end entity;

architecture Behavior of mux is
begin
    S <= INIT when (SEL = '0') else LOPP_BACK;
end architecture;


