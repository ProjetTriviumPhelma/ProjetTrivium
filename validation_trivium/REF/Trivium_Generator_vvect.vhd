----------------------------------------------------------------------------------
--Copyright 2011 Michael Calvin McCoy (calvin.mccoy@gmail.com). All rights reserved.
--
--Redistribution and use in source and binary forms, with or without modification, are
--permitted provided that the following conditions are met:
--
--   1. Redistributions of source code must retain the above copyright notice, this list of
--      conditions and the following disclaimer.
--
--   2. Redistributions in binary form must reproduce the above copyright notice, this list
--      of conditions and the following disclaimer in the documentation and/or other materials
--      provided with the distribution.
--
--THIS SOFTWARE IS PROVIDED BY Michael Calvin McCoy ``AS IS'' AND ANY EXPRESS OR IMPLIED
--WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES OF MERCHANTABILITY AND
--FITNESS FOR A PARTICULAR PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL Michael Calvin McCoy OR
--CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
--CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR
--SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON
--ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING
--NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF
--ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
--
--The views and conclusions contained in the software and documentation are those of the
--authors and should not be interpreted as representing official policies, either expressed
--or implied, of Michael Calvin McCoy.
----------------------------------------------------------------------------------
----------------------------------------------------------------------------------
----------------------------------------------------------------------------------
----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:57:24 01/14/2011 
-- Design Name: 
-- Module Name:    Trivium_Generator - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Trivium_Generator_vvect is
	 Generic ( width : integer := 8 );
	 
    Port ( SYS_CLK : in  STD_LOGIC;
           RST : in  STD_LOGIC;
           PLAINTEXT_IN : in  std_logic; --STD_LOGIC_VECTOR ((width - 1) downto 0);
           CIPHERTEXT_OUT : out  std_logic; --STD_LOGIC_VECTOR ((width - 1) downto 0);
	   		  K_INPUT : in  STD_LOGIC_VECTOR (79 downto 0);
			  IV_INPUT : in  STD_LOGIC_VECTOR (79 downto 0);
           PLNTXT_EN : in  STD_LOGIC;
           CPHRTXT_RDY : out  STD_LOGIC);
end Trivium_Generator_vvect;

architecture Behavioral of Trivium_Generator_vvect is

------------------------------
---Trivium Core Definition----
------------------------------
COMPONENT TRIVIUM_CORE
	PORT(
		SYS_CLK : IN std_logic;
		CNTRL : IN std_logic_vector(1 downto 0);
		KEY : IN std_logic_vector(79 downto 0);
		IV : IN std_logic_vector(79 downto 0);           
		KEY_OUT : OUT std_logic
		);
	END COMPONENT;
	
--State Machine Signals--
type state is (RESET_1,RESET_2,LOAD_KEY_IV,INIT_CYCLES,OUTPUT_PRIME,OPERATIONAL);  
signal pr_state,nx_state : state ;

SIGNAL CORE_OUT : std_logic; --STD_LOGIC_VECTOR((width - 1) downto 0);
SIGNAL CORE_CNTRL : STD_LOGIC_VECTOR(1 downto 0);
SIGNAL INIT_COUNTER : integer range 0 to 2047 := 0;


----System contstants
CONSTANT INIT_LIMIT : integer range 0 to 2047 := 1152; --Define the number of cycles to run the cores for till they are ready for real operation

begin

--TRIV_CORE_GEN : for i in 0 to (width-1) generate

--Inst_TRIVIUM_CORE_X
TRIV_CORE_GEN: TRIVIUM_CORE PORT MAP(
		SYS_CLK => SYS_CLK ,
		CNTRL => CORE_CNTRL,
		KEY => K_INPUT,
		IV => IV_INPUT,
		KEY_OUT => CORE_OUT --CORE_OUT(i)
	);
--end generate;	
	
STATE_MACHINE_HEAD : PROCESS (SYS_CLK) ----State Machine Master Control
begin
	IF (SYS_CLK'event and SYS_CLK='1') then
		IF (RST = '1') then   --Synchronous reset
			pr_state <= RESET_1;
		ELSE
			pr_state <= nx_state;
		END IF;
	END IF;
END PROCESS;

STATE_MACHINE_BODY : PROCESS (pr_state,INIT_COUNTER) ---State Machine State Definitions
begin
	CASE pr_state is
		
		WHEN RESET_1 =>  --Master Reset State
			nx_state <= RESET_2;

		WHEN RESET_2 =>  --Extra Reset State to prevent reset glitching
			nx_state <= LOAD_KEY_IV;

		WHEN LOAD_KEY_IV =>   --Load secret keys and IV into cores
			nx_state <= INIT_CYCLES;	
				
		WHEN INIT_CYCLES =>   --Enable cores to cycle thru four times for standard intialization period
			IF (INIT_COUNTER = (INIT_LIMIT - 1)) then
				nx_state <=  OUTPUT_PRIME;
			ELSE
				nx_state <=INIT_CYCLES;
			END IF;
		WHEN OUTPUT_PRIME =>
			nx_state <=  OPERATIONAL;

		WHEN OPERATIONAL =>
			nx_state <= OPERATIONAL;
			
	END CASE;
END PROCESS;	
				

CORE_CONTROL_REGISTER : PROCESS (SYS_CLK)
begin
	IF (SYS_CLK'event and SYS_CLK='1') then
		IF (PR_STATE = RESET_1 OR PR_STATE = RESET_2) then
			CORE_CNTRL <= "00";
		ELSIF (PR_STATE = LOAD_KEY_IV) then
			CORE_CNTRL <= "10";
		ELSIF (PR_STATE = INIT_CYCLES) then
			CORE_CNTRL <= "11";			
		ELSIF (PR_STATE = OUTPUT_PRIME) then
			CORE_CNTRL <= "01";
		ELSIF (PR_STATE = OPERATIONAL) then
			IF (PLNTXT_EN = '1') then
				CORE_CNTRL <= "01";
			ELSE
				CORE_CNTRL <= "00";
			END IF;	
		END IF;
	END IF;
END PROCESS;	
	


INITIALIZATION_COUNTER : PROCESS (SYS_CLK)  ----Counts cycles for init time, nominally 1152
begin	
	IF (SYS_CLK'event and SYS_CLK='1') then
		IF (PR_STATE = RESET_1 OR PR_STATE = RESET_2) then
			INIT_COUNTER <= 0;
		ELSIF (PR_STATE = INIT_CYCLES) then
			INIT_COUNTER <= INIT_COUNTER + 1;
		END IF;
	END IF;
END PROCESS;	
	
	
	
	
	
CIPHER_OUTPUT : PROCESS (SYS_CLK)  ----Controls cipher text ouput register and its status register	
begin
	IF (SYS_CLK'event and SYS_CLK='1') then
		IF (PR_STATE = RESET_1 OR PR_STATE = RESET_2) then	
			CIPHERTEXT_OUT <= '0'; --(OTHERS => '0');
			CPHRTXT_RDY  	<= '0';
			
		ELSIF	 (PR_STATE = OPERATIONAL) then
			IF (PLNTXT_EN = '1') then
				CIPHERTEXT_OUT <= CORE_OUT XOR PLAINTEXT_IN; 	
				CPHRTXT_RDY  	<= '1';
			ELSE
				CPHRTXT_RDY  	<= '0';
			END IF;
		END IF;
	END IF;
END PROCESS;
	
	
	
	
	
	

end Behavioral;

