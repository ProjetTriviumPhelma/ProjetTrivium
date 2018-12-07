library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;


entity mux is
        port ( sel : in std_logic;
	       A : in std_logic;
               B : in std_logic;
               S : out std_logic
               );
end entity;

architecture Behavior of mux is
begin
    S <= A when (sel = '0') else B;
end architecture;


