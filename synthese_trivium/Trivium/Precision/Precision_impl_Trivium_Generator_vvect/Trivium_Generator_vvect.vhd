
-- 
-- Definition of  Trivium_Generator_vvect
-- 
--      Mon Dec 17 15:34:19 2018
--      
--      Precision RTL Synthesis, 2014a.1_64-bit
-- 

library IEEE;
use IEEE.STD_LOGIC_1164.all;
-- Library use clause for technology cells
library unisim,simprim ;
use unisim.vcomponents.all,simprim.vcomponents.all;

entity TRIVIUM_CORE_0 is 
   port (
      p_nbus_pr_state : IN std_logic_vector (5 DOWNTO 5) ;
      px716 : OUT std_logic ;
      p_PLAINTEXT_IN_int : IN std_logic ;
      p_nbus_IV_INPUT_int : IN std_logic_vector (79 DOWNTO 0) ;
      p_nbus_K_INPUT_int : IN std_logic_vector (79 DOWNTO 0) ;
      p_nbus_CORE_CNTRL : IN std_logic_vector (1 DOWNTO 0) ;
      p_SYS_CLK_int : IN std_logic) ;
end TRIVIUM_CORE_0 ;

architecture INTERFACE of TRIVIUM_CORE_0 is 
   signal nx49842z2, nx28327z2, nx23153z2, nx23153z1: std_logic ;
   
   signal TRIV_CORE_GEN_STATE: std_logic_vector (287 DOWNTO 0) ;
   
   signal nx22156z1, nx21159z1, nx20162z1, nx19165z1, nx18168z1, nx17171z1, 
      nx16174z1, nx15177z1, nx14180z1, nx3120z1, nx4117z1, nx5114z1, 
      nx6111z1, nx7108z1, nx8105z1, nx9102z1, nx10099z1, nx11096z1, 
      nx12093z1, nx14089z1, nx15086z1, nx16083z1, nx17080z1, nx18077z1, 
      nx19074z1, nx20071z1, nx21068z1, nx22065z1, nx23062z1, nx25058z1, 
      nx26055z1, nx27052z1, nx28049z1, nx29046z1, nx30043z1, nx31040z1, 
      nx32037z1, nx33034z1, nx34031z1, nx36027z1, nx37024z1, nx38021z1, 
      nx39018z1, nx40015z1, nx41012z1, nx42009z1, nx43006z1, nx44003z1, 
      nx45000z1, nx46996z1, nx47993z1, nx48990z1, nx49987z1, nx50984z1, 
      nx51981z1, nx52978z1, nx53975z1, nx54972z1, nx55969z1, nx57965z1, 
      nx58962z1, nx59959z1, nx60956z1, nx61953z1, nx62950z1, nx63947z1, 
      nx64944z1, nx405z1, nx1402z1, nx3398z1, nx4395z1, nx5392z1, nx6389z1, 
      nx7386z1, nx8383z1, nx9380z1, nx10377z1, nx11374z1, nx12371z1, 
      nx14367z1, nx15364z1, nx16361z1, nx17358z1, nx18355z1, nx19352z1, 
      nx20349z1, nx21346z1, nx22343z1, nx23340z1, nx25336z1, nx26333z1, 
      nx27330z1, nx28327z1, nx29324z1, nx30321z1, nx31318z1, nx32315z1, 
      nx33312z1, nx34309z1, nx37468z1, nx38465z1, nx39462z1, nx40459z1, 
      nx41456z1, nx42453z1, nx43450z1, nx44447z1, nx45444z1, nx46441z1, 
      nx48437z1, nx49434z1, nx50431z1, nx51428z1, nx52425z1, nx53422z1, 
      nx54419z1, nx55416z1, nx56413z1, nx57410z1, nx59406z1, nx60403z1, 
      nx61400z1, nx62397z1, nx63394z1, nx64391z1, nx65388z1, nx849z1, 
      nx1846z1, nx2843z1, nx4839z1, nx5836z1, nx6833z1, nx7830z1, nx8827z1, 
      nx9824z1, nx10821z1, nx11818z1, nx12815z1, nx13812z1, nx15808z1, 
      nx16805z1, nx17802z1, nx18799z1, nx19796z1, nx20793z1, nx21790z1, 
      nx22787z1, nx23784z1, nx24781z1, nx26777z1, nx27774z1, nx28771z1, 
      nx29768z1, nx30765z1, nx31762z1, nx32759z1, nx33756z1, nx34753z1, 
      nx35750z1, nx37746z1, nx38743z1, nx39740z1, nx40737z1, nx41734z1, 
      nx42731z1, nx43728z1, nx44725z1, nx45722z1, nx46719z1, nx48715z1, 
      nx49712z1, nx50709z1, nx51706z1, nx52703z1, nx53700z1, nx54697z1, 
      nx55694z1, nx56691z1, nx57688z1, nx59684z1, nx60681z1, nx61678z1, 
      nx62675z1, nx63672z1, nx64669z1, nx130z1, nx1127z1, nx2124z1, nx3121z1, 
      nx5117z1, nx6114z1, nx7111z1, nx8108z1, nx9105z1, nx10102z1, nx11099z1, 
      nx12096z1, nx13093z1, nx14090z1, nx29049z1, nx30046z1, nx31043z1, 
      nx32040z1, nx33037z1, nx34034z1, nx35031z1, nx36028z1, nx37025z1, 
      nx38022z1, nx40018z1, nx41015z1, nx42012z1, nx43009z1, nx44006z1, 
      nx45003z1, nx46000z1, nx46997z1, nx47994z1, nx48991z1, nx50987z1, 
      nx51984z1, nx52981z1, nx53978z1, nx54975z1, nx55972z1, nx56969z1, 
      nx57966z1, nx58963z1, nx59960z1, nx61956z1, nx62953z1, nx63950z1, 
      nx64947z1, nx408z1, nx1405z1, nx2402z1, nx3399z1, nx4396z1, nx5393z1, 
      nx7389z1, nx8386z1, nx9383z2, nx10380z1, nx11377z1, nx12374z1, 
      nx13371z1, nx14368z1, nx15365z1, nx16362z1, nx18358z1, nx19355z1, 
      nx20352z1, nx21349z1, nx22346z1, nx23343z1, nx24340z1, nx25337z1, 
      nx26334z1, nx27331z1, nx29327z1, nx30324z1, nx31321z1, nx32318z1, 
      nx33315z1, nx34312z1, nx35309z1, nx36306z1, nx37303z1, nx38300z1, 
      nx40296z1, nx41293z1, nx42290z1, nx43287z1, nx44284z1, nx45281z1, 
      nx46278z1, nx47275z1, nx48272z1, nx49269z1, nx51265z1, nx52262z1, 
      nx53259z1, nx54256z1, nx55253z1, nx56250z1, nx57247z1, nx58244z1, 
      nx9383z1, nx4: std_logic ;

begin
   ix56250z1327 : LUT2
      generic map (INIT => X"D") 
       port map ( O=>nx56250z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      TRIV_CORE_GEN_STATE(3));
   ix57247z1327 : LUT2
      generic map (INIT => X"D") 
       port map ( O=>nx57247z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      TRIV_CORE_GEN_STATE(2));
   ix58244z1327 : LUT2
      generic map (INIT => X"D") 
       port map ( O=>nx58244z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      TRIV_CORE_GEN_STATE(1));
   ix9383z1328 : LUT2
      generic map (INIT => X"E") 
       port map ( O=>nx9383z1, I0=>p_nbus_CORE_CNTRL(1), I1=>
      p_nbus_CORE_CNTRL(0));
   ix23153z39565 : LUT5
      generic map (INIT => X"6A95956A") 
       port map ( O=>nx23153z2, I0=>TRIV_CORE_GEN_STATE(0), I1=>
      TRIV_CORE_GEN_STATE(1), I2=>TRIV_CORE_GEN_STATE(2), I3=>
      TRIV_CORE_GEN_STATE(45), I4=>TRIV_CORE_GEN_STATE(219));
   ix23153z1498 : LUT3
      generic map (INIT => X"B8") 
       port map ( O=>nx23153z1, I0=>nx23153z2, I1=>p_nbus_CORE_CNTRL(0), I2
      =>p_nbus_K_INPUT_int(0));
   ix22156z1542 : LUT3
      generic map (INIT => X"E4") 
       port map ( O=>nx22156z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      p_nbus_K_INPUT_int(1), I2=>TRIV_CORE_GEN_STATE(287));
   ix21159z1542 : LUT3
      generic map (INIT => X"E4") 
       port map ( O=>nx21159z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      p_nbus_K_INPUT_int(2), I2=>TRIV_CORE_GEN_STATE(286));
   ix20162z1542 : LUT3
      generic map (INIT => X"E4") 
       port map ( O=>nx20162z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      p_nbus_K_INPUT_int(3), I2=>TRIV_CORE_GEN_STATE(285));
   ix19165z1542 : LUT3
      generic map (INIT => X"E4") 
       port map ( O=>nx19165z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      p_nbus_K_INPUT_int(4), I2=>TRIV_CORE_GEN_STATE(284));
   ix18168z1542 : LUT3
      generic map (INIT => X"E4") 
       port map ( O=>nx18168z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      p_nbus_K_INPUT_int(5), I2=>TRIV_CORE_GEN_STATE(283));
   ix17171z1542 : LUT3
      generic map (INIT => X"E4") 
       port map ( O=>nx17171z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      p_nbus_K_INPUT_int(6), I2=>TRIV_CORE_GEN_STATE(282));
   ix16174z1542 : LUT3
      generic map (INIT => X"E4") 
       port map ( O=>nx16174z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      p_nbus_K_INPUT_int(7), I2=>TRIV_CORE_GEN_STATE(281));
   ix15177z1542 : LUT3
      generic map (INIT => X"E4") 
       port map ( O=>nx15177z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      p_nbus_K_INPUT_int(8), I2=>TRIV_CORE_GEN_STATE(280));
   ix14180z1542 : LUT3
      generic map (INIT => X"E4") 
       port map ( O=>nx14180z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      p_nbus_K_INPUT_int(9), I2=>TRIV_CORE_GEN_STATE(279));
   ix3120z1542 : LUT3
      generic map (INIT => X"E4") 
       port map ( O=>nx3120z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      p_nbus_K_INPUT_int(10), I2=>TRIV_CORE_GEN_STATE(278));
   ix4117z1542 : LUT3
      generic map (INIT => X"E4") 
       port map ( O=>nx4117z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      p_nbus_K_INPUT_int(11), I2=>TRIV_CORE_GEN_STATE(277));
   ix5114z1542 : LUT3
      generic map (INIT => X"E4") 
       port map ( O=>nx5114z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      p_nbus_K_INPUT_int(12), I2=>TRIV_CORE_GEN_STATE(276));
   ix6111z1542 : LUT3
      generic map (INIT => X"E4") 
       port map ( O=>nx6111z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      p_nbus_K_INPUT_int(13), I2=>TRIV_CORE_GEN_STATE(275));
   ix7108z1542 : LUT3
      generic map (INIT => X"E4") 
       port map ( O=>nx7108z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      p_nbus_K_INPUT_int(14), I2=>TRIV_CORE_GEN_STATE(274));
   ix8105z1542 : LUT3
      generic map (INIT => X"E4") 
       port map ( O=>nx8105z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      p_nbus_K_INPUT_int(15), I2=>TRIV_CORE_GEN_STATE(273));
   ix9102z1542 : LUT3
      generic map (INIT => X"E4") 
       port map ( O=>nx9102z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      p_nbus_K_INPUT_int(16), I2=>TRIV_CORE_GEN_STATE(272));
   ix10099z1542 : LUT3
      generic map (INIT => X"E4") 
       port map ( O=>nx10099z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      p_nbus_K_INPUT_int(17), I2=>TRIV_CORE_GEN_STATE(271));
   ix11096z1542 : LUT3
      generic map (INIT => X"E4") 
       port map ( O=>nx11096z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      p_nbus_K_INPUT_int(18), I2=>TRIV_CORE_GEN_STATE(270));
   ix12093z1542 : LUT3
      generic map (INIT => X"E4") 
       port map ( O=>nx12093z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      p_nbus_K_INPUT_int(19), I2=>TRIV_CORE_GEN_STATE(269));
   ix14089z1542 : LUT3
      generic map (INIT => X"E4") 
       port map ( O=>nx14089z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      p_nbus_K_INPUT_int(20), I2=>TRIV_CORE_GEN_STATE(268));
   ix15086z1542 : LUT3
      generic map (INIT => X"E4") 
       port map ( O=>nx15086z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      p_nbus_K_INPUT_int(21), I2=>TRIV_CORE_GEN_STATE(267));
   ix16083z1542 : LUT3
      generic map (INIT => X"E4") 
       port map ( O=>nx16083z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      p_nbus_K_INPUT_int(22), I2=>TRIV_CORE_GEN_STATE(266));
   ix17080z1542 : LUT3
      generic map (INIT => X"E4") 
       port map ( O=>nx17080z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      p_nbus_K_INPUT_int(23), I2=>TRIV_CORE_GEN_STATE(265));
   ix18077z1542 : LUT3
      generic map (INIT => X"E4") 
       port map ( O=>nx18077z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      p_nbus_K_INPUT_int(24), I2=>TRIV_CORE_GEN_STATE(264));
   ix19074z1542 : LUT3
      generic map (INIT => X"E4") 
       port map ( O=>nx19074z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      p_nbus_K_INPUT_int(25), I2=>TRIV_CORE_GEN_STATE(263));
   ix20071z1542 : LUT3
      generic map (INIT => X"E4") 
       port map ( O=>nx20071z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      p_nbus_K_INPUT_int(26), I2=>TRIV_CORE_GEN_STATE(262));
   ix21068z1542 : LUT3
      generic map (INIT => X"E4") 
       port map ( O=>nx21068z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      p_nbus_K_INPUT_int(27), I2=>TRIV_CORE_GEN_STATE(261));
   ix22065z1542 : LUT3
      generic map (INIT => X"E4") 
       port map ( O=>nx22065z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      p_nbus_K_INPUT_int(28), I2=>TRIV_CORE_GEN_STATE(260));
   ix23062z1542 : LUT3
      generic map (INIT => X"E4") 
       port map ( O=>nx23062z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      p_nbus_K_INPUT_int(29), I2=>TRIV_CORE_GEN_STATE(259));
   ix25058z1542 : LUT3
      generic map (INIT => X"E4") 
       port map ( O=>nx25058z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      p_nbus_K_INPUT_int(30), I2=>TRIV_CORE_GEN_STATE(258));
   ix26055z1542 : LUT3
      generic map (INIT => X"E4") 
       port map ( O=>nx26055z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      p_nbus_K_INPUT_int(31), I2=>TRIV_CORE_GEN_STATE(257));
   ix27052z1542 : LUT3
      generic map (INIT => X"E4") 
       port map ( O=>nx27052z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      p_nbus_K_INPUT_int(32), I2=>TRIV_CORE_GEN_STATE(256));
   ix28049z1542 : LUT3
      generic map (INIT => X"E4") 
       port map ( O=>nx28049z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      p_nbus_K_INPUT_int(33), I2=>TRIV_CORE_GEN_STATE(255));
   ix29046z1542 : LUT3
      generic map (INIT => X"E4") 
       port map ( O=>nx29046z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      p_nbus_K_INPUT_int(34), I2=>TRIV_CORE_GEN_STATE(254));
   ix30043z1542 : LUT3
      generic map (INIT => X"E4") 
       port map ( O=>nx30043z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      p_nbus_K_INPUT_int(35), I2=>TRIV_CORE_GEN_STATE(253));
   ix31040z1542 : LUT3
      generic map (INIT => X"E4") 
       port map ( O=>nx31040z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      p_nbus_K_INPUT_int(36), I2=>TRIV_CORE_GEN_STATE(252));
   ix32037z1542 : LUT3
      generic map (INIT => X"E4") 
       port map ( O=>nx32037z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      p_nbus_K_INPUT_int(37), I2=>TRIV_CORE_GEN_STATE(251));
   ix33034z1542 : LUT3
      generic map (INIT => X"E4") 
       port map ( O=>nx33034z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      p_nbus_K_INPUT_int(38), I2=>TRIV_CORE_GEN_STATE(250));
   ix34031z1542 : LUT3
      generic map (INIT => X"E4") 
       port map ( O=>nx34031z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      p_nbus_K_INPUT_int(39), I2=>TRIV_CORE_GEN_STATE(249));
   ix36027z1542 : LUT3
      generic map (INIT => X"E4") 
       port map ( O=>nx36027z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      p_nbus_K_INPUT_int(40), I2=>TRIV_CORE_GEN_STATE(248));
   ix37024z1542 : LUT3
      generic map (INIT => X"E4") 
       port map ( O=>nx37024z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      p_nbus_K_INPUT_int(41), I2=>TRIV_CORE_GEN_STATE(247));
   ix38021z1542 : LUT3
      generic map (INIT => X"E4") 
       port map ( O=>nx38021z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      p_nbus_K_INPUT_int(42), I2=>TRIV_CORE_GEN_STATE(246));
   ix39018z1542 : LUT3
      generic map (INIT => X"E4") 
       port map ( O=>nx39018z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      p_nbus_K_INPUT_int(43), I2=>TRIV_CORE_GEN_STATE(245));
   ix40015z1542 : LUT3
      generic map (INIT => X"E4") 
       port map ( O=>nx40015z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      p_nbus_K_INPUT_int(44), I2=>TRIV_CORE_GEN_STATE(244));
   ix41012z1542 : LUT3
      generic map (INIT => X"E4") 
       port map ( O=>nx41012z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      p_nbus_K_INPUT_int(45), I2=>TRIV_CORE_GEN_STATE(243));
   ix42009z1542 : LUT3
      generic map (INIT => X"E4") 
       port map ( O=>nx42009z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      p_nbus_K_INPUT_int(46), I2=>TRIV_CORE_GEN_STATE(242));
   ix43006z1542 : LUT3
      generic map (INIT => X"E4") 
       port map ( O=>nx43006z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      p_nbus_K_INPUT_int(47), I2=>TRIV_CORE_GEN_STATE(241));
   ix44003z1542 : LUT3
      generic map (INIT => X"E4") 
       port map ( O=>nx44003z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      p_nbus_K_INPUT_int(48), I2=>TRIV_CORE_GEN_STATE(240));
   ix45000z1542 : LUT3
      generic map (INIT => X"E4") 
       port map ( O=>nx45000z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      p_nbus_K_INPUT_int(49), I2=>TRIV_CORE_GEN_STATE(239));
   ix46996z1542 : LUT3
      generic map (INIT => X"E4") 
       port map ( O=>nx46996z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      p_nbus_K_INPUT_int(50), I2=>TRIV_CORE_GEN_STATE(238));
   ix47993z1542 : LUT3
      generic map (INIT => X"E4") 
       port map ( O=>nx47993z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      p_nbus_K_INPUT_int(51), I2=>TRIV_CORE_GEN_STATE(237));
   ix48990z1542 : LUT3
      generic map (INIT => X"E4") 
       port map ( O=>nx48990z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      p_nbus_K_INPUT_int(52), I2=>TRIV_CORE_GEN_STATE(236));
   ix49987z1542 : LUT3
      generic map (INIT => X"E4") 
       port map ( O=>nx49987z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      p_nbus_K_INPUT_int(53), I2=>TRIV_CORE_GEN_STATE(235));
   ix50984z1542 : LUT3
      generic map (INIT => X"E4") 
       port map ( O=>nx50984z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      p_nbus_K_INPUT_int(54), I2=>TRIV_CORE_GEN_STATE(234));
   ix51981z1542 : LUT3
      generic map (INIT => X"E4") 
       port map ( O=>nx51981z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      p_nbus_K_INPUT_int(55), I2=>TRIV_CORE_GEN_STATE(233));
   ix52978z1542 : LUT3
      generic map (INIT => X"E4") 
       port map ( O=>nx52978z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      p_nbus_K_INPUT_int(56), I2=>TRIV_CORE_GEN_STATE(232));
   ix53975z1542 : LUT3
      generic map (INIT => X"E4") 
       port map ( O=>nx53975z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      p_nbus_K_INPUT_int(57), I2=>TRIV_CORE_GEN_STATE(231));
   ix54972z1542 : LUT3
      generic map (INIT => X"E4") 
       port map ( O=>nx54972z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      p_nbus_K_INPUT_int(58), I2=>TRIV_CORE_GEN_STATE(230));
   ix55969z1542 : LUT3
      generic map (INIT => X"E4") 
       port map ( O=>nx55969z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      p_nbus_K_INPUT_int(59), I2=>TRIV_CORE_GEN_STATE(229));
   ix57965z1542 : LUT3
      generic map (INIT => X"E4") 
       port map ( O=>nx57965z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      p_nbus_K_INPUT_int(60), I2=>TRIV_CORE_GEN_STATE(228));
   ix58962z1542 : LUT3
      generic map (INIT => X"E4") 
       port map ( O=>nx58962z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      p_nbus_K_INPUT_int(61), I2=>TRIV_CORE_GEN_STATE(227));
   ix59959z1542 : LUT3
      generic map (INIT => X"E4") 
       port map ( O=>nx59959z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      p_nbus_K_INPUT_int(62), I2=>TRIV_CORE_GEN_STATE(226));
   ix60956z1542 : LUT3
      generic map (INIT => X"E4") 
       port map ( O=>nx60956z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      p_nbus_K_INPUT_int(63), I2=>TRIV_CORE_GEN_STATE(225));
   ix61953z1542 : LUT3
      generic map (INIT => X"E4") 
       port map ( O=>nx61953z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      p_nbus_K_INPUT_int(64), I2=>TRIV_CORE_GEN_STATE(224));
   ix62950z1542 : LUT3
      generic map (INIT => X"E4") 
       port map ( O=>nx62950z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      p_nbus_K_INPUT_int(65), I2=>TRIV_CORE_GEN_STATE(223));
   ix63947z1542 : LUT3
      generic map (INIT => X"E4") 
       port map ( O=>nx63947z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      p_nbus_K_INPUT_int(66), I2=>TRIV_CORE_GEN_STATE(222));
   ix64944z1542 : LUT3
      generic map (INIT => X"E4") 
       port map ( O=>nx64944z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      p_nbus_K_INPUT_int(67), I2=>TRIV_CORE_GEN_STATE(221));
   ix405z1542 : LUT3
      generic map (INIT => X"E4") 
       port map ( O=>nx405z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      p_nbus_K_INPUT_int(68), I2=>TRIV_CORE_GEN_STATE(220));
   ix1402z1542 : LUT3
      generic map (INIT => X"E4") 
       port map ( O=>nx1402z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      p_nbus_K_INPUT_int(69), I2=>TRIV_CORE_GEN_STATE(219));
   ix3398z1542 : LUT3
      generic map (INIT => X"E4") 
       port map ( O=>nx3398z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      p_nbus_K_INPUT_int(70), I2=>TRIV_CORE_GEN_STATE(218));
   ix4395z1542 : LUT3
      generic map (INIT => X"E4") 
       port map ( O=>nx4395z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      p_nbus_K_INPUT_int(71), I2=>TRIV_CORE_GEN_STATE(217));
   ix5392z1542 : LUT3
      generic map (INIT => X"E4") 
       port map ( O=>nx5392z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      p_nbus_K_INPUT_int(72), I2=>TRIV_CORE_GEN_STATE(216));
   ix6389z1542 : LUT3
      generic map (INIT => X"E4") 
       port map ( O=>nx6389z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      p_nbus_K_INPUT_int(73), I2=>TRIV_CORE_GEN_STATE(215));
   ix7386z1542 : LUT3
      generic map (INIT => X"E4") 
       port map ( O=>nx7386z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      p_nbus_K_INPUT_int(74), I2=>TRIV_CORE_GEN_STATE(214));
   ix8383z1542 : LUT3
      generic map (INIT => X"E4") 
       port map ( O=>nx8383z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      p_nbus_K_INPUT_int(75), I2=>TRIV_CORE_GEN_STATE(213));
   ix9380z1542 : LUT3
      generic map (INIT => X"E4") 
       port map ( O=>nx9380z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      p_nbus_K_INPUT_int(76), I2=>TRIV_CORE_GEN_STATE(212));
   ix10377z1542 : LUT3
      generic map (INIT => X"E4") 
       port map ( O=>nx10377z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      p_nbus_K_INPUT_int(77), I2=>TRIV_CORE_GEN_STATE(211));
   ix11374z1542 : LUT3
      generic map (INIT => X"E4") 
       port map ( O=>nx11374z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      p_nbus_K_INPUT_int(78), I2=>TRIV_CORE_GEN_STATE(210));
   ix12371z1542 : LUT3
      generic map (INIT => X"E4") 
       port map ( O=>nx12371z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      p_nbus_K_INPUT_int(79), I2=>TRIV_CORE_GEN_STATE(209));
   ix14367z1322 : LUT2
      generic map (INIT => X"8") 
       port map ( O=>nx14367z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      TRIV_CORE_GEN_STATE(208));
   ix15364z1322 : LUT2
      generic map (INIT => X"8") 
       port map ( O=>nx15364z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      TRIV_CORE_GEN_STATE(207));
   ix16361z1322 : LUT2
      generic map (INIT => X"8") 
       port map ( O=>nx16361z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      TRIV_CORE_GEN_STATE(206));
   ix17358z1322 : LUT2
      generic map (INIT => X"8") 
       port map ( O=>nx17358z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      TRIV_CORE_GEN_STATE(205));
   ix18355z1322 : LUT2
      generic map (INIT => X"8") 
       port map ( O=>nx18355z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      TRIV_CORE_GEN_STATE(204));
   ix19352z1322 : LUT2
      generic map (INIT => X"8") 
       port map ( O=>nx19352z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      TRIV_CORE_GEN_STATE(203));
   ix20349z1322 : LUT2
      generic map (INIT => X"8") 
       port map ( O=>nx20349z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      TRIV_CORE_GEN_STATE(202));
   ix21346z1322 : LUT2
      generic map (INIT => X"8") 
       port map ( O=>nx21346z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      TRIV_CORE_GEN_STATE(201));
   ix22343z1322 : LUT2
      generic map (INIT => X"8") 
       port map ( O=>nx22343z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      TRIV_CORE_GEN_STATE(200));
   ix23340z1322 : LUT2
      generic map (INIT => X"8") 
       port map ( O=>nx23340z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      TRIV_CORE_GEN_STATE(199));
   ix25336z1322 : LUT2
      generic map (INIT => X"8") 
       port map ( O=>nx25336z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      TRIV_CORE_GEN_STATE(198));
   ix26333z1322 : LUT2
      generic map (INIT => X"8") 
       port map ( O=>nx26333z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      TRIV_CORE_GEN_STATE(197));
   ix27330z1322 : LUT2
      generic map (INIT => X"8") 
       port map ( O=>nx27330z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      TRIV_CORE_GEN_STATE(196));
   ix28327z39817 : LUT5
      generic map (INIT => X"69999666") 
       port map ( O=>nx28327z2, I0=>TRIV_CORE_GEN_STATE(117), I1=>
      TRIV_CORE_GEN_STATE(195), I2=>TRIV_CORE_GEN_STATE(196), I3=>
      TRIV_CORE_GEN_STATE(197), I4=>TRIV_CORE_GEN_STATE(222));
   ix28327z1498 : LUT3
      generic map (INIT => X"B8") 
       port map ( O=>nx28327z1, I0=>nx28327z2, I1=>p_nbus_CORE_CNTRL(0), I2
      =>p_nbus_IV_INPUT_int(0));
   ix29324z1542 : LUT3
      generic map (INIT => X"E4") 
       port map ( O=>nx29324z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      p_nbus_IV_INPUT_int(1), I2=>TRIV_CORE_GEN_STATE(194));
   ix30321z1542 : LUT3
      generic map (INIT => X"E4") 
       port map ( O=>nx30321z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      p_nbus_IV_INPUT_int(2), I2=>TRIV_CORE_GEN_STATE(193));
   ix31318z1542 : LUT3
      generic map (INIT => X"E4") 
       port map ( O=>nx31318z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      p_nbus_IV_INPUT_int(3), I2=>TRIV_CORE_GEN_STATE(192));
   ix32315z1542 : LUT3
      generic map (INIT => X"E4") 
       port map ( O=>nx32315z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      p_nbus_IV_INPUT_int(4), I2=>TRIV_CORE_GEN_STATE(191));
   ix33312z1542 : LUT3
      generic map (INIT => X"E4") 
       port map ( O=>nx33312z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      p_nbus_IV_INPUT_int(5), I2=>TRIV_CORE_GEN_STATE(190));
   ix34309z1542 : LUT3
      generic map (INIT => X"E4") 
       port map ( O=>nx34309z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      p_nbus_IV_INPUT_int(6), I2=>TRIV_CORE_GEN_STATE(189));
   ix37468z1542 : LUT3
      generic map (INIT => X"E4") 
       port map ( O=>nx37468z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      p_nbus_IV_INPUT_int(7), I2=>TRIV_CORE_GEN_STATE(188));
   ix38465z1542 : LUT3
      generic map (INIT => X"E4") 
       port map ( O=>nx38465z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      p_nbus_IV_INPUT_int(8), I2=>TRIV_CORE_GEN_STATE(187));
   ix39462z1542 : LUT3
      generic map (INIT => X"E4") 
       port map ( O=>nx39462z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      p_nbus_IV_INPUT_int(9), I2=>TRIV_CORE_GEN_STATE(186));
   ix40459z1542 : LUT3
      generic map (INIT => X"E4") 
       port map ( O=>nx40459z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      p_nbus_IV_INPUT_int(10), I2=>TRIV_CORE_GEN_STATE(185));
   ix41456z1542 : LUT3
      generic map (INIT => X"E4") 
       port map ( O=>nx41456z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      p_nbus_IV_INPUT_int(11), I2=>TRIV_CORE_GEN_STATE(184));
   ix42453z1542 : LUT3
      generic map (INIT => X"E4") 
       port map ( O=>nx42453z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      p_nbus_IV_INPUT_int(12), I2=>TRIV_CORE_GEN_STATE(183));
   ix43450z1542 : LUT3
      generic map (INIT => X"E4") 
       port map ( O=>nx43450z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      p_nbus_IV_INPUT_int(13), I2=>TRIV_CORE_GEN_STATE(182));
   ix44447z1542 : LUT3
      generic map (INIT => X"E4") 
       port map ( O=>nx44447z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      p_nbus_IV_INPUT_int(14), I2=>TRIV_CORE_GEN_STATE(181));
   ix45444z1542 : LUT3
      generic map (INIT => X"E4") 
       port map ( O=>nx45444z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      p_nbus_IV_INPUT_int(15), I2=>TRIV_CORE_GEN_STATE(180));
   ix46441z1542 : LUT3
      generic map (INIT => X"E4") 
       port map ( O=>nx46441z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      p_nbus_IV_INPUT_int(16), I2=>TRIV_CORE_GEN_STATE(179));
   ix48437z1542 : LUT3
      generic map (INIT => X"E4") 
       port map ( O=>nx48437z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      p_nbus_IV_INPUT_int(17), I2=>TRIV_CORE_GEN_STATE(178));
   ix49434z1542 : LUT3
      generic map (INIT => X"E4") 
       port map ( O=>nx49434z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      p_nbus_IV_INPUT_int(18), I2=>TRIV_CORE_GEN_STATE(177));
   ix50431z1542 : LUT3
      generic map (INIT => X"E4") 
       port map ( O=>nx50431z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      p_nbus_IV_INPUT_int(19), I2=>TRIV_CORE_GEN_STATE(176));
   ix51428z1542 : LUT3
      generic map (INIT => X"E4") 
       port map ( O=>nx51428z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      p_nbus_IV_INPUT_int(20), I2=>TRIV_CORE_GEN_STATE(175));
   ix52425z1542 : LUT3
      generic map (INIT => X"E4") 
       port map ( O=>nx52425z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      p_nbus_IV_INPUT_int(21), I2=>TRIV_CORE_GEN_STATE(174));
   ix53422z1542 : LUT3
      generic map (INIT => X"E4") 
       port map ( O=>nx53422z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      p_nbus_IV_INPUT_int(22), I2=>TRIV_CORE_GEN_STATE(173));
   ix54419z1542 : LUT3
      generic map (INIT => X"E4") 
       port map ( O=>nx54419z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      p_nbus_IV_INPUT_int(23), I2=>TRIV_CORE_GEN_STATE(172));
   ix55416z1542 : LUT3
      generic map (INIT => X"E4") 
       port map ( O=>nx55416z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      p_nbus_IV_INPUT_int(24), I2=>TRIV_CORE_GEN_STATE(171));
   ix56413z1542 : LUT3
      generic map (INIT => X"E4") 
       port map ( O=>nx56413z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      p_nbus_IV_INPUT_int(25), I2=>TRIV_CORE_GEN_STATE(170));
   ix57410z1542 : LUT3
      generic map (INIT => X"E4") 
       port map ( O=>nx57410z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      p_nbus_IV_INPUT_int(26), I2=>TRIV_CORE_GEN_STATE(169));
   ix59406z1542 : LUT3
      generic map (INIT => X"E4") 
       port map ( O=>nx59406z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      p_nbus_IV_INPUT_int(27), I2=>TRIV_CORE_GEN_STATE(168));
   ix60403z1542 : LUT3
      generic map (INIT => X"E4") 
       port map ( O=>nx60403z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      p_nbus_IV_INPUT_int(28), I2=>TRIV_CORE_GEN_STATE(167));
   ix61400z1542 : LUT3
      generic map (INIT => X"E4") 
       port map ( O=>nx61400z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      p_nbus_IV_INPUT_int(29), I2=>TRIV_CORE_GEN_STATE(166));
   ix62397z1542 : LUT3
      generic map (INIT => X"E4") 
       port map ( O=>nx62397z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      p_nbus_IV_INPUT_int(30), I2=>TRIV_CORE_GEN_STATE(165));
   ix63394z1542 : LUT3
      generic map (INIT => X"E4") 
       port map ( O=>nx63394z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      p_nbus_IV_INPUT_int(31), I2=>TRIV_CORE_GEN_STATE(164));
   ix64391z1542 : LUT3
      generic map (INIT => X"E4") 
       port map ( O=>nx64391z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      p_nbus_IV_INPUT_int(32), I2=>TRIV_CORE_GEN_STATE(163));
   ix65388z1542 : LUT3
      generic map (INIT => X"E4") 
       port map ( O=>nx65388z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      p_nbus_IV_INPUT_int(33), I2=>TRIV_CORE_GEN_STATE(162));
   ix849z1542 : LUT3
      generic map (INIT => X"E4") 
       port map ( O=>nx849z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      p_nbus_IV_INPUT_int(34), I2=>TRIV_CORE_GEN_STATE(161));
   ix1846z1542 : LUT3
      generic map (INIT => X"E4") 
       port map ( O=>nx1846z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      p_nbus_IV_INPUT_int(35), I2=>TRIV_CORE_GEN_STATE(160));
   ix2843z1542 : LUT3
      generic map (INIT => X"E4") 
       port map ( O=>nx2843z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      p_nbus_IV_INPUT_int(36), I2=>TRIV_CORE_GEN_STATE(159));
   ix4839z1542 : LUT3
      generic map (INIT => X"E4") 
       port map ( O=>nx4839z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      p_nbus_IV_INPUT_int(37), I2=>TRIV_CORE_GEN_STATE(158));
   ix5836z1542 : LUT3
      generic map (INIT => X"E4") 
       port map ( O=>nx5836z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      p_nbus_IV_INPUT_int(38), I2=>TRIV_CORE_GEN_STATE(157));
   ix6833z1542 : LUT3
      generic map (INIT => X"E4") 
       port map ( O=>nx6833z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      p_nbus_IV_INPUT_int(39), I2=>TRIV_CORE_GEN_STATE(156));
   ix7830z1542 : LUT3
      generic map (INIT => X"E4") 
       port map ( O=>nx7830z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      p_nbus_IV_INPUT_int(40), I2=>TRIV_CORE_GEN_STATE(155));
   ix8827z1542 : LUT3
      generic map (INIT => X"E4") 
       port map ( O=>nx8827z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      p_nbus_IV_INPUT_int(41), I2=>TRIV_CORE_GEN_STATE(154));
   ix9824z1542 : LUT3
      generic map (INIT => X"E4") 
       port map ( O=>nx9824z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      p_nbus_IV_INPUT_int(42), I2=>TRIV_CORE_GEN_STATE(153));
   ix10821z1542 : LUT3
      generic map (INIT => X"E4") 
       port map ( O=>nx10821z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      p_nbus_IV_INPUT_int(43), I2=>TRIV_CORE_GEN_STATE(152));
   ix11818z1542 : LUT3
      generic map (INIT => X"E4") 
       port map ( O=>nx11818z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      p_nbus_IV_INPUT_int(44), I2=>TRIV_CORE_GEN_STATE(151));
   ix12815z1542 : LUT3
      generic map (INIT => X"E4") 
       port map ( O=>nx12815z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      p_nbus_IV_INPUT_int(45), I2=>TRIV_CORE_GEN_STATE(150));
   ix13812z1542 : LUT3
      generic map (INIT => X"E4") 
       port map ( O=>nx13812z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      p_nbus_IV_INPUT_int(46), I2=>TRIV_CORE_GEN_STATE(149));
   ix15808z1542 : LUT3
      generic map (INIT => X"E4") 
       port map ( O=>nx15808z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      p_nbus_IV_INPUT_int(47), I2=>TRIV_CORE_GEN_STATE(148));
   ix16805z1542 : LUT3
      generic map (INIT => X"E4") 
       port map ( O=>nx16805z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      p_nbus_IV_INPUT_int(48), I2=>TRIV_CORE_GEN_STATE(147));
   ix17802z1542 : LUT3
      generic map (INIT => X"E4") 
       port map ( O=>nx17802z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      p_nbus_IV_INPUT_int(49), I2=>TRIV_CORE_GEN_STATE(146));
   ix18799z1542 : LUT3
      generic map (INIT => X"E4") 
       port map ( O=>nx18799z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      p_nbus_IV_INPUT_int(50), I2=>TRIV_CORE_GEN_STATE(145));
   ix19796z1542 : LUT3
      generic map (INIT => X"E4") 
       port map ( O=>nx19796z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      p_nbus_IV_INPUT_int(51), I2=>TRIV_CORE_GEN_STATE(144));
   ix20793z1542 : LUT3
      generic map (INIT => X"E4") 
       port map ( O=>nx20793z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      p_nbus_IV_INPUT_int(52), I2=>TRIV_CORE_GEN_STATE(143));
   ix21790z1542 : LUT3
      generic map (INIT => X"E4") 
       port map ( O=>nx21790z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      p_nbus_IV_INPUT_int(53), I2=>TRIV_CORE_GEN_STATE(142));
   ix22787z1542 : LUT3
      generic map (INIT => X"E4") 
       port map ( O=>nx22787z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      p_nbus_IV_INPUT_int(54), I2=>TRIV_CORE_GEN_STATE(141));
   ix23784z1542 : LUT3
      generic map (INIT => X"E4") 
       port map ( O=>nx23784z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      p_nbus_IV_INPUT_int(55), I2=>TRIV_CORE_GEN_STATE(140));
   ix24781z1542 : LUT3
      generic map (INIT => X"E4") 
       port map ( O=>nx24781z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      p_nbus_IV_INPUT_int(56), I2=>TRIV_CORE_GEN_STATE(139));
   ix26777z1542 : LUT3
      generic map (INIT => X"E4") 
       port map ( O=>nx26777z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      p_nbus_IV_INPUT_int(57), I2=>TRIV_CORE_GEN_STATE(138));
   ix27774z1542 : LUT3
      generic map (INIT => X"E4") 
       port map ( O=>nx27774z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      p_nbus_IV_INPUT_int(58), I2=>TRIV_CORE_GEN_STATE(137));
   ix28771z1542 : LUT3
      generic map (INIT => X"E4") 
       port map ( O=>nx28771z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      p_nbus_IV_INPUT_int(59), I2=>TRIV_CORE_GEN_STATE(136));
   ix29768z1542 : LUT3
      generic map (INIT => X"E4") 
       port map ( O=>nx29768z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      p_nbus_IV_INPUT_int(60), I2=>TRIV_CORE_GEN_STATE(135));
   ix30765z1542 : LUT3
      generic map (INIT => X"E4") 
       port map ( O=>nx30765z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      p_nbus_IV_INPUT_int(61), I2=>TRIV_CORE_GEN_STATE(134));
   ix31762z1542 : LUT3
      generic map (INIT => X"E4") 
       port map ( O=>nx31762z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      p_nbus_IV_INPUT_int(62), I2=>TRIV_CORE_GEN_STATE(133));
   ix32759z1542 : LUT3
      generic map (INIT => X"E4") 
       port map ( O=>nx32759z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      p_nbus_IV_INPUT_int(63), I2=>TRIV_CORE_GEN_STATE(132));
   ix33756z1542 : LUT3
      generic map (INIT => X"E4") 
       port map ( O=>nx33756z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      p_nbus_IV_INPUT_int(64), I2=>TRIV_CORE_GEN_STATE(131));
   ix34753z1542 : LUT3
      generic map (INIT => X"E4") 
       port map ( O=>nx34753z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      p_nbus_IV_INPUT_int(65), I2=>TRIV_CORE_GEN_STATE(130));
   ix35750z1542 : LUT3
      generic map (INIT => X"E4") 
       port map ( O=>nx35750z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      p_nbus_IV_INPUT_int(66), I2=>TRIV_CORE_GEN_STATE(129));
   ix37746z1542 : LUT3
      generic map (INIT => X"E4") 
       port map ( O=>nx37746z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      p_nbus_IV_INPUT_int(67), I2=>TRIV_CORE_GEN_STATE(128));
   ix38743z1542 : LUT3
      generic map (INIT => X"E4") 
       port map ( O=>nx38743z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      p_nbus_IV_INPUT_int(68), I2=>TRIV_CORE_GEN_STATE(127));
   ix39740z1542 : LUT3
      generic map (INIT => X"E4") 
       port map ( O=>nx39740z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      p_nbus_IV_INPUT_int(69), I2=>TRIV_CORE_GEN_STATE(126));
   ix40737z1542 : LUT3
      generic map (INIT => X"E4") 
       port map ( O=>nx40737z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      p_nbus_IV_INPUT_int(70), I2=>TRIV_CORE_GEN_STATE(125));
   ix41734z1542 : LUT3
      generic map (INIT => X"E4") 
       port map ( O=>nx41734z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      p_nbus_IV_INPUT_int(71), I2=>TRIV_CORE_GEN_STATE(124));
   ix42731z1542 : LUT3
      generic map (INIT => X"E4") 
       port map ( O=>nx42731z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      p_nbus_IV_INPUT_int(72), I2=>TRIV_CORE_GEN_STATE(123));
   ix43728z1542 : LUT3
      generic map (INIT => X"E4") 
       port map ( O=>nx43728z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      p_nbus_IV_INPUT_int(73), I2=>TRIV_CORE_GEN_STATE(122));
   ix44725z1542 : LUT3
      generic map (INIT => X"E4") 
       port map ( O=>nx44725z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      p_nbus_IV_INPUT_int(74), I2=>TRIV_CORE_GEN_STATE(121));
   ix45722z1542 : LUT3
      generic map (INIT => X"E4") 
       port map ( O=>nx45722z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      p_nbus_IV_INPUT_int(75), I2=>TRIV_CORE_GEN_STATE(120));
   ix46719z1542 : LUT3
      generic map (INIT => X"E4") 
       port map ( O=>nx46719z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      p_nbus_IV_INPUT_int(76), I2=>TRIV_CORE_GEN_STATE(119));
   ix48715z1542 : LUT3
      generic map (INIT => X"E4") 
       port map ( O=>nx48715z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      p_nbus_IV_INPUT_int(77), I2=>TRIV_CORE_GEN_STATE(118));
   ix49712z1542 : LUT3
      generic map (INIT => X"E4") 
       port map ( O=>nx49712z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      p_nbus_IV_INPUT_int(78), I2=>TRIV_CORE_GEN_STATE(117));
   ix50709z1542 : LUT3
      generic map (INIT => X"E4") 
       port map ( O=>nx50709z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      p_nbus_IV_INPUT_int(79), I2=>TRIV_CORE_GEN_STATE(116));
   ix51706z1322 : LUT2
      generic map (INIT => X"8") 
       port map ( O=>nx51706z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      TRIV_CORE_GEN_STATE(115));
   ix52703z1322 : LUT2
      generic map (INIT => X"8") 
       port map ( O=>nx52703z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      TRIV_CORE_GEN_STATE(114));
   ix53700z1322 : LUT2
      generic map (INIT => X"8") 
       port map ( O=>nx53700z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      TRIV_CORE_GEN_STATE(113));
   ix54697z1322 : LUT2
      generic map (INIT => X"8") 
       port map ( O=>nx54697z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      TRIV_CORE_GEN_STATE(112));
   ix55694z11594 : LUT6
      generic map (INIT => X"2882828282282828") 
       port map ( O=>nx55694z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      TRIV_CORE_GEN_STATE(24), I2=>TRIV_CORE_GEN_STATE(111), I3=>
      TRIV_CORE_GEN_STATE(112), I4=>TRIV_CORE_GEN_STATE(113), I5=>
      TRIV_CORE_GEN_STATE(126));
   ix56691z1322 : LUT2
      generic map (INIT => X"8") 
       port map ( O=>nx56691z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      TRIV_CORE_GEN_STATE(110));
   ix57688z1322 : LUT2
      generic map (INIT => X"8") 
       port map ( O=>nx57688z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      TRIV_CORE_GEN_STATE(109));
   ix59684z1322 : LUT2
      generic map (INIT => X"8") 
       port map ( O=>nx59684z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      TRIV_CORE_GEN_STATE(108));
   ix60681z1322 : LUT2
      generic map (INIT => X"8") 
       port map ( O=>nx60681z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      TRIV_CORE_GEN_STATE(107));
   ix61678z1322 : LUT2
      generic map (INIT => X"8") 
       port map ( O=>nx61678z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      TRIV_CORE_GEN_STATE(106));
   ix62675z1322 : LUT2
      generic map (INIT => X"8") 
       port map ( O=>nx62675z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      TRIV_CORE_GEN_STATE(105));
   ix63672z1322 : LUT2
      generic map (INIT => X"8") 
       port map ( O=>nx63672z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      TRIV_CORE_GEN_STATE(104));
   ix64669z1322 : LUT2
      generic map (INIT => X"8") 
       port map ( O=>nx64669z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      TRIV_CORE_GEN_STATE(103));
   ix130z1322 : LUT2
      generic map (INIT => X"8") 
       port map ( O=>nx130z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      TRIV_CORE_GEN_STATE(102));
   ix1127z1322 : LUT2
      generic map (INIT => X"8") 
       port map ( O=>nx1127z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      TRIV_CORE_GEN_STATE(101));
   ix2124z1322 : LUT2
      generic map (INIT => X"8") 
       port map ( O=>nx2124z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      TRIV_CORE_GEN_STATE(100));
   ix3121z1322 : LUT2
      generic map (INIT => X"8") 
       port map ( O=>nx3121z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      TRIV_CORE_GEN_STATE(99));
   ix5117z1322 : LUT2
      generic map (INIT => X"8") 
       port map ( O=>nx5117z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      TRIV_CORE_GEN_STATE(98));
   ix6114z1322 : LUT2
      generic map (INIT => X"8") 
       port map ( O=>nx6114z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      TRIV_CORE_GEN_STATE(97));
   ix7111z1322 : LUT2
      generic map (INIT => X"8") 
       port map ( O=>nx7111z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      TRIV_CORE_GEN_STATE(96));
   ix8108z1322 : LUT2
      generic map (INIT => X"8") 
       port map ( O=>nx8108z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      TRIV_CORE_GEN_STATE(95));
   ix9105z1322 : LUT2
      generic map (INIT => X"8") 
       port map ( O=>nx9105z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      TRIV_CORE_GEN_STATE(94));
   ix10102z1322 : LUT2
      generic map (INIT => X"8") 
       port map ( O=>nx10102z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      TRIV_CORE_GEN_STATE(93));
   ix11099z1322 : LUT2
      generic map (INIT => X"8") 
       port map ( O=>nx11099z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      TRIV_CORE_GEN_STATE(92));
   ix12096z1322 : LUT2
      generic map (INIT => X"8") 
       port map ( O=>nx12096z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      TRIV_CORE_GEN_STATE(91));
   ix13093z1322 : LUT2
      generic map (INIT => X"8") 
       port map ( O=>nx13093z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      TRIV_CORE_GEN_STATE(90));
   ix14090z1322 : LUT2
      generic map (INIT => X"8") 
       port map ( O=>nx14090z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      TRIV_CORE_GEN_STATE(89));
   ix29049z1322 : LUT2
      generic map (INIT => X"8") 
       port map ( O=>nx29049z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      TRIV_CORE_GEN_STATE(88));
   ix30046z1322 : LUT2
      generic map (INIT => X"8") 
       port map ( O=>nx30046z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      TRIV_CORE_GEN_STATE(87));
   ix31043z1322 : LUT2
      generic map (INIT => X"8") 
       port map ( O=>nx31043z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      TRIV_CORE_GEN_STATE(86));
   ix32040z1322 : LUT2
      generic map (INIT => X"8") 
       port map ( O=>nx32040z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      TRIV_CORE_GEN_STATE(85));
   ix33037z1322 : LUT2
      generic map (INIT => X"8") 
       port map ( O=>nx33037z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      TRIV_CORE_GEN_STATE(84));
   ix34034z1322 : LUT2
      generic map (INIT => X"8") 
       port map ( O=>nx34034z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      TRIV_CORE_GEN_STATE(83));
   ix35031z1322 : LUT2
      generic map (INIT => X"8") 
       port map ( O=>nx35031z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      TRIV_CORE_GEN_STATE(82));
   ix36028z1322 : LUT2
      generic map (INIT => X"8") 
       port map ( O=>nx36028z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      TRIV_CORE_GEN_STATE(81));
   ix37025z1322 : LUT2
      generic map (INIT => X"8") 
       port map ( O=>nx37025z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      TRIV_CORE_GEN_STATE(80));
   ix38022z1322 : LUT2
      generic map (INIT => X"8") 
       port map ( O=>nx38022z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      TRIV_CORE_GEN_STATE(79));
   ix40018z1322 : LUT2
      generic map (INIT => X"8") 
       port map ( O=>nx40018z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      TRIV_CORE_GEN_STATE(78));
   ix41015z1322 : LUT2
      generic map (INIT => X"8") 
       port map ( O=>nx41015z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      TRIV_CORE_GEN_STATE(77));
   ix42012z1322 : LUT2
      generic map (INIT => X"8") 
       port map ( O=>nx42012z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      TRIV_CORE_GEN_STATE(76));
   ix43009z1322 : LUT2
      generic map (INIT => X"8") 
       port map ( O=>nx43009z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      TRIV_CORE_GEN_STATE(75));
   ix44006z1322 : LUT2
      generic map (INIT => X"8") 
       port map ( O=>nx44006z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      TRIV_CORE_GEN_STATE(74));
   ix45003z1322 : LUT2
      generic map (INIT => X"8") 
       port map ( O=>nx45003z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      TRIV_CORE_GEN_STATE(73));
   ix46000z1322 : LUT2
      generic map (INIT => X"8") 
       port map ( O=>nx46000z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      TRIV_CORE_GEN_STATE(72));
   ix46997z1322 : LUT2
      generic map (INIT => X"8") 
       port map ( O=>nx46997z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      TRIV_CORE_GEN_STATE(71));
   ix47994z1322 : LUT2
      generic map (INIT => X"8") 
       port map ( O=>nx47994z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      TRIV_CORE_GEN_STATE(70));
   ix48991z1322 : LUT2
      generic map (INIT => X"8") 
       port map ( O=>nx48991z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      TRIV_CORE_GEN_STATE(69));
   ix50987z1322 : LUT2
      generic map (INIT => X"8") 
       port map ( O=>nx50987z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      TRIV_CORE_GEN_STATE(68));
   ix51984z1322 : LUT2
      generic map (INIT => X"8") 
       port map ( O=>nx51984z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      TRIV_CORE_GEN_STATE(67));
   ix52981z1322 : LUT2
      generic map (INIT => X"8") 
       port map ( O=>nx52981z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      TRIV_CORE_GEN_STATE(66));
   ix53978z1322 : LUT2
      generic map (INIT => X"8") 
       port map ( O=>nx53978z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      TRIV_CORE_GEN_STATE(65));
   ix54975z1322 : LUT2
      generic map (INIT => X"8") 
       port map ( O=>nx54975z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      TRIV_CORE_GEN_STATE(64));
   ix55972z1322 : LUT2
      generic map (INIT => X"8") 
       port map ( O=>nx55972z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      TRIV_CORE_GEN_STATE(63));
   ix56969z1322 : LUT2
      generic map (INIT => X"8") 
       port map ( O=>nx56969z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      TRIV_CORE_GEN_STATE(62));
   ix57966z1322 : LUT2
      generic map (INIT => X"8") 
       port map ( O=>nx57966z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      TRIV_CORE_GEN_STATE(61));
   ix58963z1322 : LUT2
      generic map (INIT => X"8") 
       port map ( O=>nx58963z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      TRIV_CORE_GEN_STATE(60));
   ix59960z1322 : LUT2
      generic map (INIT => X"8") 
       port map ( O=>nx59960z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      TRIV_CORE_GEN_STATE(59));
   ix61956z1322 : LUT2
      generic map (INIT => X"8") 
       port map ( O=>nx61956z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      TRIV_CORE_GEN_STATE(58));
   ix62953z1322 : LUT2
      generic map (INIT => X"8") 
       port map ( O=>nx62953z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      TRIV_CORE_GEN_STATE(57));
   ix63950z1322 : LUT2
      generic map (INIT => X"8") 
       port map ( O=>nx63950z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      TRIV_CORE_GEN_STATE(56));
   ix64947z1322 : LUT2
      generic map (INIT => X"8") 
       port map ( O=>nx64947z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      TRIV_CORE_GEN_STATE(55));
   ix408z1322 : LUT2
      generic map (INIT => X"8") 
       port map ( O=>nx408z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      TRIV_CORE_GEN_STATE(54));
   ix1405z1322 : LUT2
      generic map (INIT => X"8") 
       port map ( O=>nx1405z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      TRIV_CORE_GEN_STATE(53));
   ix2402z1322 : LUT2
      generic map (INIT => X"8") 
       port map ( O=>nx2402z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      TRIV_CORE_GEN_STATE(52));
   ix3399z1322 : LUT2
      generic map (INIT => X"8") 
       port map ( O=>nx3399z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      TRIV_CORE_GEN_STATE(51));
   ix4396z1322 : LUT2
      generic map (INIT => X"8") 
       port map ( O=>nx4396z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      TRIV_CORE_GEN_STATE(50));
   ix5393z1322 : LUT2
      generic map (INIT => X"8") 
       port map ( O=>nx5393z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      TRIV_CORE_GEN_STATE(49));
   ix7389z1322 : LUT2
      generic map (INIT => X"8") 
       port map ( O=>nx7389z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      TRIV_CORE_GEN_STATE(48));
   ix8386z1322 : LUT2
      generic map (INIT => X"8") 
       port map ( O=>nx8386z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      TRIV_CORE_GEN_STATE(47));
   ix9383z1323 : LUT2
      generic map (INIT => X"8") 
       port map ( O=>nx9383z2, I0=>p_nbus_CORE_CNTRL(0), I1=>
      TRIV_CORE_GEN_STATE(46));
   ix10380z1322 : LUT2
      generic map (INIT => X"8") 
       port map ( O=>nx10380z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      TRIV_CORE_GEN_STATE(45));
   ix11377z1322 : LUT2
      generic map (INIT => X"8") 
       port map ( O=>nx11377z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      TRIV_CORE_GEN_STATE(44));
   ix12374z1322 : LUT2
      generic map (INIT => X"8") 
       port map ( O=>nx12374z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      TRIV_CORE_GEN_STATE(43));
   ix13371z1322 : LUT2
      generic map (INIT => X"8") 
       port map ( O=>nx13371z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      TRIV_CORE_GEN_STATE(42));
   ix14368z1322 : LUT2
      generic map (INIT => X"8") 
       port map ( O=>nx14368z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      TRIV_CORE_GEN_STATE(41));
   ix15365z1322 : LUT2
      generic map (INIT => X"8") 
       port map ( O=>nx15365z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      TRIV_CORE_GEN_STATE(40));
   ix16362z1322 : LUT2
      generic map (INIT => X"8") 
       port map ( O=>nx16362z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      TRIV_CORE_GEN_STATE(39));
   ix18358z1322 : LUT2
      generic map (INIT => X"8") 
       port map ( O=>nx18358z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      TRIV_CORE_GEN_STATE(38));
   ix19355z1322 : LUT2
      generic map (INIT => X"8") 
       port map ( O=>nx19355z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      TRIV_CORE_GEN_STATE(37));
   ix20352z1322 : LUT2
      generic map (INIT => X"8") 
       port map ( O=>nx20352z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      TRIV_CORE_GEN_STATE(36));
   ix21349z1322 : LUT2
      generic map (INIT => X"8") 
       port map ( O=>nx21349z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      TRIV_CORE_GEN_STATE(35));
   ix22346z1322 : LUT2
      generic map (INIT => X"8") 
       port map ( O=>nx22346z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      TRIV_CORE_GEN_STATE(34));
   ix23343z1322 : LUT2
      generic map (INIT => X"8") 
       port map ( O=>nx23343z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      TRIV_CORE_GEN_STATE(33));
   ix24340z1322 : LUT2
      generic map (INIT => X"8") 
       port map ( O=>nx24340z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      TRIV_CORE_GEN_STATE(32));
   ix25337z1322 : LUT2
      generic map (INIT => X"8") 
       port map ( O=>nx25337z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      TRIV_CORE_GEN_STATE(31));
   ix26334z1322 : LUT2
      generic map (INIT => X"8") 
       port map ( O=>nx26334z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      TRIV_CORE_GEN_STATE(30));
   ix27331z1322 : LUT2
      generic map (INIT => X"8") 
       port map ( O=>nx27331z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      TRIV_CORE_GEN_STATE(29));
   ix29327z1322 : LUT2
      generic map (INIT => X"8") 
       port map ( O=>nx29327z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      TRIV_CORE_GEN_STATE(28));
   ix30324z1322 : LUT2
      generic map (INIT => X"8") 
       port map ( O=>nx30324z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      TRIV_CORE_GEN_STATE(27));
   ix31321z1322 : LUT2
      generic map (INIT => X"8") 
       port map ( O=>nx31321z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      TRIV_CORE_GEN_STATE(26));
   ix32318z1322 : LUT2
      generic map (INIT => X"8") 
       port map ( O=>nx32318z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      TRIV_CORE_GEN_STATE(25));
   ix33315z1322 : LUT2
      generic map (INIT => X"8") 
       port map ( O=>nx33315z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      TRIV_CORE_GEN_STATE(24));
   ix34312z1322 : LUT2
      generic map (INIT => X"8") 
       port map ( O=>nx34312z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      TRIV_CORE_GEN_STATE(23));
   ix35309z1322 : LUT2
      generic map (INIT => X"8") 
       port map ( O=>nx35309z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      TRIV_CORE_GEN_STATE(22));
   ix36306z1322 : LUT2
      generic map (INIT => X"8") 
       port map ( O=>nx36306z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      TRIV_CORE_GEN_STATE(21));
   ix37303z1322 : LUT2
      generic map (INIT => X"8") 
       port map ( O=>nx37303z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      TRIV_CORE_GEN_STATE(20));
   ix38300z1322 : LUT2
      generic map (INIT => X"8") 
       port map ( O=>nx38300z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      TRIV_CORE_GEN_STATE(19));
   ix40296z1322 : LUT2
      generic map (INIT => X"8") 
       port map ( O=>nx40296z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      TRIV_CORE_GEN_STATE(18));
   ix41293z1322 : LUT2
      generic map (INIT => X"8") 
       port map ( O=>nx41293z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      TRIV_CORE_GEN_STATE(17));
   ix42290z1322 : LUT2
      generic map (INIT => X"8") 
       port map ( O=>nx42290z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      TRIV_CORE_GEN_STATE(16));
   ix43287z1322 : LUT2
      generic map (INIT => X"8") 
       port map ( O=>nx43287z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      TRIV_CORE_GEN_STATE(15));
   ix44284z1322 : LUT2
      generic map (INIT => X"8") 
       port map ( O=>nx44284z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      TRIV_CORE_GEN_STATE(14));
   ix45281z1322 : LUT2
      generic map (INIT => X"8") 
       port map ( O=>nx45281z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      TRIV_CORE_GEN_STATE(13));
   ix46278z1322 : LUT2
      generic map (INIT => X"8") 
       port map ( O=>nx46278z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      TRIV_CORE_GEN_STATE(12));
   ix47275z1322 : LUT2
      generic map (INIT => X"8") 
       port map ( O=>nx47275z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      TRIV_CORE_GEN_STATE(11));
   ix48272z1322 : LUT2
      generic map (INIT => X"8") 
       port map ( O=>nx48272z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      TRIV_CORE_GEN_STATE(10));
   ix49269z1322 : LUT2
      generic map (INIT => X"8") 
       port map ( O=>nx49269z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      TRIV_CORE_GEN_STATE(9));
   ix51265z1322 : LUT2
      generic map (INIT => X"8") 
       port map ( O=>nx51265z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      TRIV_CORE_GEN_STATE(8));
   ix52262z1322 : LUT2
      generic map (INIT => X"8") 
       port map ( O=>nx52262z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      TRIV_CORE_GEN_STATE(7));
   ix53259z1322 : LUT2
      generic map (INIT => X"8") 
       port map ( O=>nx53259z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      TRIV_CORE_GEN_STATE(6));
   ix54256z1322 : LUT2
      generic map (INIT => X"8") 
       port map ( O=>nx54256z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      TRIV_CORE_GEN_STATE(5));
   ix55253z1322 : LUT2
      generic map (INIT => X"8") 
       port map ( O=>nx55253z1, I0=>p_nbus_CORE_CNTRL(0), I1=>
      TRIV_CORE_GEN_STATE(4));
   ix49842z1465 : LUT3
      generic map (INIT => X"96") 
       port map ( O=>nx49842z2, I0=>p_PLAINTEXT_IN_int, I1=>
      TRIV_CORE_GEN_STATE(45), I2=>TRIV_CORE_GEN_STATE(111));
   ix49842z35178 : LUT6
      generic map (INIT => X"8448488448848448") 
       port map ( O=>px716, I0=>nx49842z2, I1=>p_nbus_pr_state(5), I2=>
      TRIV_CORE_GEN_STATE(0), I3=>TRIV_CORE_GEN_STATE(126), I4=>
      TRIV_CORE_GEN_STATE(195), I5=>TRIV_CORE_GEN_STATE(222));
   reg_STATE_287_I17_FD_GND : GND port map ( G=>nx4);
   reg_STATE_287 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(0), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx58244z1, R=>nx4);
   reg_STATE_286 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(1), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx57247z1, R=>nx4);
   reg_STATE_285 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(2), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx56250z1, R=>nx4);
   reg_STATE_284 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(3), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx55253z1, R=>nx4);
   reg_STATE_283 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(4), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx54256z1, R=>nx4);
   reg_STATE_282 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(5), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx53259z1, R=>nx4);
   reg_STATE_281 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(6), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx52262z1, R=>nx4);
   reg_STATE_280 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(7), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx51265z1, R=>nx4);
   reg_STATE_279 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(8), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx49269z1, R=>nx4);
   reg_STATE_278 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(9), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx48272z1, R=>nx4);
   reg_STATE_277 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(10), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx47275z1, R=>nx4);
   reg_STATE_276 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(11), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx46278z1, R=>nx4);
   reg_STATE_275 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(12), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx45281z1, R=>nx4);
   reg_STATE_274 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(13), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx44284z1, R=>nx4);
   reg_STATE_273 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(14), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx43287z1, R=>nx4);
   reg_STATE_272 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(15), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx42290z1, R=>nx4);
   reg_STATE_271 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(16), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx41293z1, R=>nx4);
   reg_STATE_270 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(17), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx40296z1, R=>nx4);
   reg_STATE_269 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(18), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx38300z1, R=>nx4);
   reg_STATE_268 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(19), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx37303z1, R=>nx4);
   reg_STATE_267 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(20), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx36306z1, R=>nx4);
   reg_STATE_266 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(21), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx35309z1, R=>nx4);
   reg_STATE_265 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(22), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx34312z1, R=>nx4);
   reg_STATE_264 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(23), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx33315z1, R=>nx4);
   reg_STATE_263 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(24), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx32318z1, R=>nx4);
   reg_STATE_262 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(25), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx31321z1, R=>nx4);
   reg_STATE_261 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(26), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx30324z1, R=>nx4);
   reg_STATE_260 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(27), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx29327z1, R=>nx4);
   reg_STATE_259 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(28), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx27331z1, R=>nx4);
   reg_STATE_258 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(29), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx26334z1, R=>nx4);
   reg_STATE_257 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(30), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx25337z1, R=>nx4);
   reg_STATE_256 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(31), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx24340z1, R=>nx4);
   reg_STATE_255 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(32), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx23343z1, R=>nx4);
   reg_STATE_254 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(33), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx22346z1, R=>nx4);
   reg_STATE_253 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(34), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx21349z1, R=>nx4);
   reg_STATE_252 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(35), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx20352z1, R=>nx4);
   reg_STATE_251 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(36), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx19355z1, R=>nx4);
   reg_STATE_250 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(37), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx18358z1, R=>nx4);
   reg_STATE_249 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(38), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx16362z1, R=>nx4);
   reg_STATE_248 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(39), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx15365z1, R=>nx4);
   reg_STATE_247 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(40), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx14368z1, R=>nx4);
   reg_STATE_246 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(41), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx13371z1, R=>nx4);
   reg_STATE_245 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(42), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx12374z1, R=>nx4);
   reg_STATE_244 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(43), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx11377z1, R=>nx4);
   reg_STATE_243 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(44), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx10380z1, R=>nx4);
   reg_STATE_242 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(45), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx9383z2, R=>nx4);
   reg_STATE_241 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(46), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx8386z1, R=>nx4);
   reg_STATE_240 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(47), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx7389z1, R=>nx4);
   reg_STATE_239 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(48), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx5393z1, R=>nx4);
   reg_STATE_238 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(49), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx4396z1, R=>nx4);
   reg_STATE_237 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(50), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx3399z1, R=>nx4);
   reg_STATE_236 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(51), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx2402z1, R=>nx4);
   reg_STATE_235 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(52), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx1405z1, R=>nx4);
   reg_STATE_234 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(53), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx408z1, R=>nx4);
   reg_STATE_233 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(54), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx64947z1, R=>nx4);
   reg_STATE_232 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(55), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx63950z1, R=>nx4);
   reg_STATE_231 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(56), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx62953z1, R=>nx4);
   reg_STATE_230 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(57), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx61956z1, R=>nx4);
   reg_STATE_229 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(58), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx59960z1, R=>nx4);
   reg_STATE_228 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(59), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx58963z1, R=>nx4);
   reg_STATE_227 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(60), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx57966z1, R=>nx4);
   reg_STATE_226 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(61), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx56969z1, R=>nx4);
   reg_STATE_225 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(62), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx55972z1, R=>nx4);
   reg_STATE_224 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(63), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx54975z1, R=>nx4);
   reg_STATE_223 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(64), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx53978z1, R=>nx4);
   reg_STATE_222 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(65), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx52981z1, R=>nx4);
   reg_STATE_221 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(66), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx51984z1, R=>nx4);
   reg_STATE_220 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(67), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx50987z1, R=>nx4);
   reg_STATE_219 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(68), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx48991z1, R=>nx4);
   reg_STATE_218 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(69), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx47994z1, R=>nx4);
   reg_STATE_217 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(70), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx46997z1, R=>nx4);
   reg_STATE_216 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(71), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx46000z1, R=>nx4);
   reg_STATE_215 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(72), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx45003z1, R=>nx4);
   reg_STATE_214 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(73), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx44006z1, R=>nx4);
   reg_STATE_213 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(74), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx43009z1, R=>nx4);
   reg_STATE_212 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(75), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx42012z1, R=>nx4);
   reg_STATE_211 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(76), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx41015z1, R=>nx4);
   reg_STATE_210 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(77), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx40018z1, R=>nx4);
   reg_STATE_209 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(78), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx38022z1, R=>nx4);
   reg_STATE_208 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(79), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx37025z1, R=>nx4);
   reg_STATE_207 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(80), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx36028z1, R=>nx4);
   reg_STATE_206 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(81), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx35031z1, R=>nx4);
   reg_STATE_205 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(82), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx34034z1, R=>nx4);
   reg_STATE_204 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(83), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx33037z1, R=>nx4);
   reg_STATE_203 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(84), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx32040z1, R=>nx4);
   reg_STATE_202 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(85), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx31043z1, R=>nx4);
   reg_STATE_201 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(86), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx30046z1, R=>nx4);
   reg_STATE_200 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(87), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx29049z1, R=>nx4);
   reg_STATE_199 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(88), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx14090z1, R=>nx4);
   reg_STATE_198 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(89), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx13093z1, R=>nx4);
   reg_STATE_197 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(90), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx12096z1, R=>nx4);
   reg_STATE_196 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(91), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx11099z1, R=>nx4);
   reg_STATE_195 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(92), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx10102z1, R=>nx4);
   reg_STATE_194 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(93), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx9105z1, R=>nx4);
   reg_STATE_193 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(94), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx8108z1, R=>nx4);
   reg_STATE_192 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(95), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx7111z1, R=>nx4);
   reg_STATE_191 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(96), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx6114z1, R=>nx4);
   reg_STATE_190 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(97), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx5117z1, R=>nx4);
   reg_STATE_189 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(98), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx3121z1, R=>nx4);
   reg_STATE_188 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(99), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx2124z1, R=>nx4);
   reg_STATE_187 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(100), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx1127z1, R=>nx4);
   reg_STATE_186 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(101), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx130z1, R=>nx4);
   reg_STATE_185 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(102), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx64669z1, R=>nx4);
   reg_STATE_184 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(103), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx63672z1, R=>nx4);
   reg_STATE_183 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(104), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx62675z1, R=>nx4);
   reg_STATE_182 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(105), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx61678z1, R=>nx4);
   reg_STATE_181 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(106), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx60681z1, R=>nx4);
   reg_STATE_180 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(107), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx59684z1, R=>nx4);
   reg_STATE_179 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(108), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx57688z1, R=>nx4);
   reg_STATE_178 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(109), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx56691z1, R=>nx4);
   reg_STATE_177 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(110), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx55694z1, R=>nx4);
   reg_STATE_176 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(111), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx54697z1, R=>nx4);
   reg_STATE_175 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(112), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx53700z1, R=>nx4);
   reg_STATE_174 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(113), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx52703z1, R=>nx4);
   reg_STATE_173 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(114), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx51706z1, R=>nx4);
   reg_STATE_172 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(115), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx50709z1, R=>nx4);
   reg_STATE_171 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(116), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx49712z1, R=>nx4);
   reg_STATE_170 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(117), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx48715z1, R=>nx4);
   reg_STATE_169 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(118), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx46719z1, R=>nx4);
   reg_STATE_168 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(119), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx45722z1, R=>nx4);
   reg_STATE_167 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(120), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx44725z1, R=>nx4);
   reg_STATE_166 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(121), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx43728z1, R=>nx4);
   reg_STATE_165 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(122), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx42731z1, R=>nx4);
   reg_STATE_164 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(123), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx41734z1, R=>nx4);
   reg_STATE_163 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(124), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx40737z1, R=>nx4);
   reg_STATE_162 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(125), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx39740z1, R=>nx4);
   reg_STATE_161 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(126), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx38743z1, R=>nx4);
   reg_STATE_160 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(127), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx37746z1, R=>nx4);
   reg_STATE_159 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(128), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx35750z1, R=>nx4);
   reg_STATE_158 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(129), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx34753z1, R=>nx4);
   reg_STATE_157 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(130), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx33756z1, R=>nx4);
   reg_STATE_156 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(131), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx32759z1, R=>nx4);
   reg_STATE_155 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(132), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx31762z1, R=>nx4);
   reg_STATE_154 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(133), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx30765z1, R=>nx4);
   reg_STATE_153 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(134), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx29768z1, R=>nx4);
   reg_STATE_152 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(135), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx28771z1, R=>nx4);
   reg_STATE_151 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(136), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx27774z1, R=>nx4);
   reg_STATE_150 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(137), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx26777z1, R=>nx4);
   reg_STATE_149 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(138), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx24781z1, R=>nx4);
   reg_STATE_148 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(139), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx23784z1, R=>nx4);
   reg_STATE_147 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(140), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx22787z1, R=>nx4);
   reg_STATE_146 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(141), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx21790z1, R=>nx4);
   reg_STATE_145 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(142), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx20793z1, R=>nx4);
   reg_STATE_144 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(143), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx19796z1, R=>nx4);
   reg_STATE_143 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(144), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx18799z1, R=>nx4);
   reg_STATE_142 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(145), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx17802z1, R=>nx4);
   reg_STATE_141 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(146), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx16805z1, R=>nx4);
   reg_STATE_140 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(147), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx15808z1, R=>nx4);
   reg_STATE_139 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(148), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx13812z1, R=>nx4);
   reg_STATE_138 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(149), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx12815z1, R=>nx4);
   reg_STATE_137 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(150), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx11818z1, R=>nx4);
   reg_STATE_136 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(151), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx10821z1, R=>nx4);
   reg_STATE_135 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(152), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx9824z1, R=>nx4);
   reg_STATE_134 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(153), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx8827z1, R=>nx4);
   reg_STATE_133 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(154), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx7830z1, R=>nx4);
   reg_STATE_132 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(155), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx6833z1, R=>nx4);
   reg_STATE_131 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(156), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx5836z1, R=>nx4);
   reg_STATE_130 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(157), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx4839z1, R=>nx4);
   reg_STATE_129 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(158), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx2843z1, R=>nx4);
   reg_STATE_128 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(159), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx1846z1, R=>nx4);
   reg_STATE_127 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(160), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx849z1, R=>nx4);
   reg_STATE_126 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(161), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx65388z1, R=>nx4);
   reg_STATE_125 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(162), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx64391z1, R=>nx4);
   reg_STATE_124 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(163), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx63394z1, R=>nx4);
   reg_STATE_123 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(164), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx62397z1, R=>nx4);
   reg_STATE_122 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(165), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx61400z1, R=>nx4);
   reg_STATE_121 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(166), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx60403z1, R=>nx4);
   reg_STATE_120 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(167), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx59406z1, R=>nx4);
   reg_STATE_119 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(168), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx57410z1, R=>nx4);
   reg_STATE_118 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(169), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx56413z1, R=>nx4);
   reg_STATE_117 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(170), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx55416z1, R=>nx4);
   reg_STATE_116 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(171), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx54419z1, R=>nx4);
   reg_STATE_115 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(172), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx53422z1, R=>nx4);
   reg_STATE_114 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(173), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx52425z1, R=>nx4);
   reg_STATE_113 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(174), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx51428z1, R=>nx4);
   reg_STATE_112 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(175), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx50431z1, R=>nx4);
   reg_STATE_111 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(176), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx49434z1, R=>nx4);
   reg_STATE_110 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(177), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx48437z1, R=>nx4);
   reg_STATE_109 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(178), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx46441z1, R=>nx4);
   reg_STATE_108 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(179), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx45444z1, R=>nx4);
   reg_STATE_107 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(180), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx44447z1, R=>nx4);
   reg_STATE_106 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(181), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx43450z1, R=>nx4);
   reg_STATE_105 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(182), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx42453z1, R=>nx4);
   reg_STATE_104 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(183), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx41456z1, R=>nx4);
   reg_STATE_103 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(184), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx40459z1, R=>nx4);
   reg_STATE_102 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(185), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx39462z1, R=>nx4);
   reg_STATE_101 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(186), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx38465z1, R=>nx4);
   reg_STATE_100 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(187), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx37468z1, R=>nx4);
   reg_STATE_99 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(188), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx34309z1, R=>nx4);
   reg_STATE_98 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(189), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx33312z1, R=>nx4);
   reg_STATE_97 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(190), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx32315z1, R=>nx4);
   reg_STATE_96 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(191), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx31318z1, R=>nx4);
   reg_STATE_95 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(192), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx30321z1, R=>nx4);
   reg_STATE_94 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(193), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx29324z1, R=>nx4);
   reg_STATE_93 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(194), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx28327z1, R=>nx4);
   reg_STATE_92 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(195), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx27330z1, R=>nx4);
   reg_STATE_91 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(196), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx26333z1, R=>nx4);
   reg_STATE_90 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(197), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx25336z1, R=>nx4);
   reg_STATE_89 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(198), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx23340z1, R=>nx4);
   reg_STATE_88 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(199), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx22343z1, R=>nx4);
   reg_STATE_87 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(200), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx21346z1, R=>nx4);
   reg_STATE_86 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(201), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx20349z1, R=>nx4);
   reg_STATE_85 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(202), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx19352z1, R=>nx4);
   reg_STATE_84 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(203), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx18355z1, R=>nx4);
   reg_STATE_83 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(204), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx17358z1, R=>nx4);
   reg_STATE_82 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(205), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx16361z1, R=>nx4);
   reg_STATE_81 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(206), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx15364z1, R=>nx4);
   reg_STATE_80 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(207), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx14367z1, R=>nx4);
   reg_STATE_79 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(208), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx12371z1, R=>nx4);
   reg_STATE_78 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(209), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx11374z1, R=>nx4);
   reg_STATE_77 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(210), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx10377z1, R=>nx4);
   reg_STATE_76 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(211), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx9380z1, R=>nx4);
   reg_STATE_75 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(212), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx8383z1, R=>nx4);
   reg_STATE_74 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(213), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx7386z1, R=>nx4);
   reg_STATE_73 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(214), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx6389z1, R=>nx4);
   reg_STATE_72 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(215), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx5392z1, R=>nx4);
   reg_STATE_71 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(216), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx4395z1, R=>nx4);
   reg_STATE_70 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(217), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx3398z1, R=>nx4);
   reg_STATE_69 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(218), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx1402z1, R=>nx4);
   reg_STATE_68 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(219), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx405z1, R=>nx4);
   reg_STATE_67 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(220), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx64944z1, R=>nx4);
   reg_STATE_66 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(221), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx63947z1, R=>nx4);
   reg_STATE_65 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(222), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx62950z1, R=>nx4);
   reg_STATE_64 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(223), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx61953z1, R=>nx4);
   reg_STATE_63 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(224), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx60956z1, R=>nx4);
   reg_STATE_62 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(225), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx59959z1, R=>nx4);
   reg_STATE_61 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(226), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx58962z1, R=>nx4);
   reg_STATE_60 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(227), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx57965z1, R=>nx4);
   reg_STATE_59 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(228), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx55969z1, R=>nx4);
   reg_STATE_58 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(229), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx54972z1, R=>nx4);
   reg_STATE_57 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(230), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx53975z1, R=>nx4);
   reg_STATE_56 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(231), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx52978z1, R=>nx4);
   reg_STATE_55 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(232), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx51981z1, R=>nx4);
   reg_STATE_54 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(233), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx50984z1, R=>nx4);
   reg_STATE_53 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(234), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx49987z1, R=>nx4);
   reg_STATE_52 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(235), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx48990z1, R=>nx4);
   reg_STATE_51 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(236), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx47993z1, R=>nx4);
   reg_STATE_50 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(237), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx46996z1, R=>nx4);
   reg_STATE_49 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(238), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx45000z1, R=>nx4);
   reg_STATE_48 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(239), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx44003z1, R=>nx4);
   reg_STATE_47 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(240), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx43006z1, R=>nx4);
   reg_STATE_46 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(241), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx42009z1, R=>nx4);
   reg_STATE_45 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(242), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx41012z1, R=>nx4);
   reg_STATE_44 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(243), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx40015z1, R=>nx4);
   reg_STATE_43 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(244), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx39018z1, R=>nx4);
   reg_STATE_42 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(245), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx38021z1, R=>nx4);
   reg_STATE_41 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(246), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx37024z1, R=>nx4);
   reg_STATE_40 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(247), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx36027z1, R=>nx4);
   reg_STATE_39 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(248), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx34031z1, R=>nx4);
   reg_STATE_38 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(249), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx33034z1, R=>nx4);
   reg_STATE_37 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(250), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx32037z1, R=>nx4);
   reg_STATE_36 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(251), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx31040z1, R=>nx4);
   reg_STATE_35 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(252), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx30043z1, R=>nx4);
   reg_STATE_34 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(253), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx29046z1, R=>nx4);
   reg_STATE_33 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(254), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx28049z1, R=>nx4);
   reg_STATE_32 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(255), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx27052z1, R=>nx4);
   reg_STATE_31 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(256), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx26055z1, R=>nx4);
   reg_STATE_30 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(257), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx25058z1, R=>nx4);
   reg_STATE_29 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(258), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx23062z1, R=>nx4);
   reg_STATE_28 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(259), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx22065z1, R=>nx4);
   reg_STATE_27 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(260), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx21068z1, R=>nx4);
   reg_STATE_26 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(261), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx20071z1, R=>nx4);
   reg_STATE_25 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(262), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx19074z1, R=>nx4);
   reg_STATE_24 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(263), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx18077z1, R=>nx4);
   reg_STATE_23 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(264), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx17080z1, R=>nx4);
   reg_STATE_22 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(265), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx16083z1, R=>nx4);
   reg_STATE_21 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(266), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx15086z1, R=>nx4);
   reg_STATE_20 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(267), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx14089z1, R=>nx4);
   reg_STATE_19 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(268), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx12093z1, R=>nx4);
   reg_STATE_18 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(269), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx11096z1, R=>nx4);
   reg_STATE_17 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(270), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx10099z1, R=>nx4);
   reg_STATE_16 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(271), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx9102z1, R=>nx4);
   reg_STATE_15 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(272), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx8105z1, R=>nx4);
   reg_STATE_14 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(273), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx7108z1, R=>nx4);
   reg_STATE_13 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(274), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx6111z1, R=>nx4);
   reg_STATE_12 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(275), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx5114z1, R=>nx4);
   reg_STATE_11 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(276), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx4117z1, R=>nx4);
   reg_STATE_10 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(277), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx3120z1, R=>nx4);
   reg_STATE_9 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(278), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx14180z1, R=>nx4);
   reg_STATE_8 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(279), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx15177z1, R=>nx4);
   reg_STATE_7 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(280), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx16174z1, R=>nx4);
   reg_STATE_6 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(281), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx17171z1, R=>nx4);
   reg_STATE_5 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(282), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx18168z1, R=>nx4);
   reg_STATE_4 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(283), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx19165z1, R=>nx4);
   reg_STATE_3 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(284), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx20162z1, R=>nx4);
   reg_STATE_2 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(285), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx21159z1, R=>nx4);
   reg_STATE_1 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(286), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx22156z1, R=>nx4);
   reg_STATE_0 : FDRE port map ( Q=>TRIV_CORE_GEN_STATE(287), C=>
      p_SYS_CLK_int, CE=>nx9383z1, D=>nx23153z1, R=>nx4);
end INTERFACE ;

library IEEE;
use IEEE.STD_LOGIC_1164.all;
-- Library use clause for technology cells
library unisim,simprim ;
use unisim.vcomponents.all,simprim.vcomponents.all;

entity Trivium_Generator_vvect is 
   port (
      SYS_CLK : IN std_logic ;
      RST : IN std_logic ;
      PLAINTEXT_IN : IN std_logic ;
      CIPHERTEXT_OUT : OUT std_logic ;
      K_INPUT : IN std_logic_vector (79 DOWNTO 0) ;
      IV_INPUT : IN std_logic_vector (79 DOWNTO 0) ;
      PLNTXT_EN : IN std_logic ;
      CPHRTXT_RDY : OUT std_logic) ;
end Trivium_Generator_vvect ;

architecture Behavioral of Trivium_Generator_vvect is 
   component TRIVIUM_CORE_0
      port (
         p_nbus_pr_state : IN std_logic_vector (5 DOWNTO 5) ;
         px716 : OUT std_logic ;
         p_PLAINTEXT_IN_int : IN std_logic ;
         p_nbus_IV_INPUT_int : IN std_logic_vector (79 DOWNTO 0) ;
         p_nbus_K_INPUT_int : IN std_logic_vector (79 DOWNTO 0) ;
         p_nbus_CORE_CNTRL : IN std_logic_vector (1 DOWNTO 0) ;
         p_SYS_CLK_int : IN std_logic) ;
   end component ;
   signal CIPHERTEXT_OUT_1_0, CPHRTXT_RDY_1_0: std_logic ;
   
   signal CORE_CNTRL: std_logic_vector (1 DOWNTO 0) ;
   
   signal INIT_COUNTER: std_logic_vector (10 DOWNTO 0) ;
   
   signal pr_state: std_logic_vector (5 DOWNTO 0) ;
   
   signal inc_d_0, nx8474z1, inc_d_1, nx8475z1, inc_d_2, nx8476z1, inc_d_3, 
      nx8477z1, inc_d_4, nx51683z1, inc_d_5, nx8479z1, inc_d_6, nx8480z1, 
      inc_d_7, nx8481z1, inc_d_8, nx51679z1, inc_d_9, nx20595z1, inc_d_10, 
      SYS_CLK_int, RST_int, PLAINTEXT_IN_int: std_logic ;
   
   signal K_INPUT_int: std_logic_vector (79 DOWNTO 0) ;
   
   signal IV_INPUT_int: std_logic_vector (79 DOWNTO 0) ;
   
   signal PLNTXT_EN_int, nx55036z1, nx27334z1, nx8473z2, nx45059z1, 
      nx47053z1, nx8473z1, nx51271z1, nx17096z1, nx49344z2, nx49344z1, 
      nx55036z2, nx28331z1, nx45059z4, nx45059z3, nx45059z2, nx46056z1: 
   std_logic ;

begin
   reg_q_10 : FDRE port map ( Q=>INIT_COUNTER(10), C=>SYS_CLK_int, CE=>
      nx17096z1, D=>inc_d_10, R=>nx51271z1);
   reg_q_9 : FDRE port map ( Q=>INIT_COUNTER(9), C=>SYS_CLK_int, CE=>
      nx17096z1, D=>inc_d_9, R=>nx51271z1);
   reg_q_8 : FDRE port map ( Q=>INIT_COUNTER(8), C=>SYS_CLK_int, CE=>
      nx17096z1, D=>inc_d_8, R=>nx51271z1);
   reg_q_7 : FDRE port map ( Q=>INIT_COUNTER(7), C=>SYS_CLK_int, CE=>
      nx17096z1, D=>inc_d_7, R=>nx51271z1);
   reg_q_6 : FDRE port map ( Q=>INIT_COUNTER(6), C=>SYS_CLK_int, CE=>
      nx17096z1, D=>inc_d_6, R=>nx51271z1);
   reg_q_5 : FDRE port map ( Q=>INIT_COUNTER(5), C=>SYS_CLK_int, CE=>
      nx17096z1, D=>inc_d_5, R=>nx51271z1);
   reg_q_4 : FDRE port map ( Q=>INIT_COUNTER(4), C=>SYS_CLK_int, CE=>
      nx17096z1, D=>inc_d_4, R=>nx51271z1);
   reg_q_3 : FDRE port map ( Q=>INIT_COUNTER(3), C=>SYS_CLK_int, CE=>
      nx17096z1, D=>inc_d_3, R=>nx51271z1);
   reg_q_2 : FDRE port map ( Q=>INIT_COUNTER(2), C=>SYS_CLK_int, CE=>
      nx17096z1, D=>inc_d_2, R=>nx51271z1);
   reg_q_1 : FDRE port map ( Q=>INIT_COUNTER(1), C=>SYS_CLK_int, CE=>
      nx17096z1, D=>inc_d_1, R=>nx51271z1);
   reg_q_0 : FDRE port map ( Q=>INIT_COUNTER(0), C=>SYS_CLK_int, CE=>
      nx17096z1, D=>inc_d_0, R=>nx51271z1);
   xorcy_0 : XORCY port map ( O=>inc_d_0, CI=>nx8473z1, LI=>INIT_COUNTER(0)
   );
   xorcy_1 : XORCY port map ( O=>inc_d_1, CI=>nx8474z1, LI=>INIT_COUNTER(1)
   );
   xorcy_2 : XORCY port map ( O=>inc_d_2, CI=>nx8475z1, LI=>INIT_COUNTER(2)
   );
   xorcy_3 : XORCY port map ( O=>inc_d_3, CI=>nx8476z1, LI=>INIT_COUNTER(3)
   );
   xorcy_4 : XORCY port map ( O=>inc_d_4, CI=>nx8477z1, LI=>INIT_COUNTER(4)
   );
   xorcy_5 : XORCY port map ( O=>inc_d_5, CI=>nx51683z1, LI=>INIT_COUNTER(5)
   );
   xorcy_6 : XORCY port map ( O=>inc_d_6, CI=>nx8479z1, LI=>INIT_COUNTER(6)
   );
   xorcy_7 : XORCY port map ( O=>inc_d_7, CI=>nx8480z1, LI=>INIT_COUNTER(7)
   );
   xorcy_8 : XORCY port map ( O=>inc_d_8, CI=>nx8481z1, LI=>INIT_COUNTER(8)
   );
   xorcy_9 : XORCY port map ( O=>inc_d_9, CI=>nx51679z1, LI=>INIT_COUNTER(9)
   );
   xorcy_10 : XORCY port map ( O=>inc_d_10, CI=>nx20595z1, LI=>
      INIT_COUNTER(10));
   CPHRTXT_RDY_obuf : OBUF port map ( O=>CPHRTXT_RDY, I=>CPHRTXT_RDY_1_0);
   CIPHERTEXT_OUT_obuf : OBUF port map ( O=>CIPHERTEXT_OUT, I=>
      CIPHERTEXT_OUT_1_0);
   PLNTXT_EN_ibuf : IBUF port map ( O=>PLNTXT_EN_int, I=>PLNTXT_EN);
   IV_INPUT_ibuf_0 : IBUF port map ( O=>IV_INPUT_int(0), I=>IV_INPUT(0));
   IV_INPUT_ibuf_1 : IBUF port map ( O=>IV_INPUT_int(1), I=>IV_INPUT(1));
   IV_INPUT_ibuf_2 : IBUF port map ( O=>IV_INPUT_int(2), I=>IV_INPUT(2));
   IV_INPUT_ibuf_3 : IBUF port map ( O=>IV_INPUT_int(3), I=>IV_INPUT(3));
   IV_INPUT_ibuf_4 : IBUF port map ( O=>IV_INPUT_int(4), I=>IV_INPUT(4));
   IV_INPUT_ibuf_5 : IBUF port map ( O=>IV_INPUT_int(5), I=>IV_INPUT(5));
   IV_INPUT_ibuf_6 : IBUF port map ( O=>IV_INPUT_int(6), I=>IV_INPUT(6));
   IV_INPUT_ibuf_7 : IBUF port map ( O=>IV_INPUT_int(7), I=>IV_INPUT(7));
   IV_INPUT_ibuf_8 : IBUF port map ( O=>IV_INPUT_int(8), I=>IV_INPUT(8));
   IV_INPUT_ibuf_9 : IBUF port map ( O=>IV_INPUT_int(9), I=>IV_INPUT(9));
   IV_INPUT_ibuf_10 : IBUF port map ( O=>IV_INPUT_int(10), I=>IV_INPUT(10));
   IV_INPUT_ibuf_11 : IBUF port map ( O=>IV_INPUT_int(11), I=>IV_INPUT(11));
   IV_INPUT_ibuf_12 : IBUF port map ( O=>IV_INPUT_int(12), I=>IV_INPUT(12));
   IV_INPUT_ibuf_13 : IBUF port map ( O=>IV_INPUT_int(13), I=>IV_INPUT(13));
   IV_INPUT_ibuf_14 : IBUF port map ( O=>IV_INPUT_int(14), I=>IV_INPUT(14));
   IV_INPUT_ibuf_15 : IBUF port map ( O=>IV_INPUT_int(15), I=>IV_INPUT(15));
   IV_INPUT_ibuf_16 : IBUF port map ( O=>IV_INPUT_int(16), I=>IV_INPUT(16));
   IV_INPUT_ibuf_17 : IBUF port map ( O=>IV_INPUT_int(17), I=>IV_INPUT(17));
   IV_INPUT_ibuf_18 : IBUF port map ( O=>IV_INPUT_int(18), I=>IV_INPUT(18));
   IV_INPUT_ibuf_19 : IBUF port map ( O=>IV_INPUT_int(19), I=>IV_INPUT(19));
   IV_INPUT_ibuf_20 : IBUF port map ( O=>IV_INPUT_int(20), I=>IV_INPUT(20));
   IV_INPUT_ibuf_21 : IBUF port map ( O=>IV_INPUT_int(21), I=>IV_INPUT(21));
   IV_INPUT_ibuf_22 : IBUF port map ( O=>IV_INPUT_int(22), I=>IV_INPUT(22));
   IV_INPUT_ibuf_23 : IBUF port map ( O=>IV_INPUT_int(23), I=>IV_INPUT(23));
   IV_INPUT_ibuf_24 : IBUF port map ( O=>IV_INPUT_int(24), I=>IV_INPUT(24));
   IV_INPUT_ibuf_25 : IBUF port map ( O=>IV_INPUT_int(25), I=>IV_INPUT(25));
   IV_INPUT_ibuf_26 : IBUF port map ( O=>IV_INPUT_int(26), I=>IV_INPUT(26));
   IV_INPUT_ibuf_27 : IBUF port map ( O=>IV_INPUT_int(27), I=>IV_INPUT(27));
   IV_INPUT_ibuf_28 : IBUF port map ( O=>IV_INPUT_int(28), I=>IV_INPUT(28));
   IV_INPUT_ibuf_29 : IBUF port map ( O=>IV_INPUT_int(29), I=>IV_INPUT(29));
   IV_INPUT_ibuf_30 : IBUF port map ( O=>IV_INPUT_int(30), I=>IV_INPUT(30));
   IV_INPUT_ibuf_31 : IBUF port map ( O=>IV_INPUT_int(31), I=>IV_INPUT(31));
   IV_INPUT_ibuf_32 : IBUF port map ( O=>IV_INPUT_int(32), I=>IV_INPUT(32));
   IV_INPUT_ibuf_33 : IBUF port map ( O=>IV_INPUT_int(33), I=>IV_INPUT(33));
   IV_INPUT_ibuf_34 : IBUF port map ( O=>IV_INPUT_int(34), I=>IV_INPUT(34));
   IV_INPUT_ibuf_35 : IBUF port map ( O=>IV_INPUT_int(35), I=>IV_INPUT(35));
   IV_INPUT_ibuf_36 : IBUF port map ( O=>IV_INPUT_int(36), I=>IV_INPUT(36));
   IV_INPUT_ibuf_37 : IBUF port map ( O=>IV_INPUT_int(37), I=>IV_INPUT(37));
   IV_INPUT_ibuf_38 : IBUF port map ( O=>IV_INPUT_int(38), I=>IV_INPUT(38));
   IV_INPUT_ibuf_39 : IBUF port map ( O=>IV_INPUT_int(39), I=>IV_INPUT(39));
   IV_INPUT_ibuf_40 : IBUF port map ( O=>IV_INPUT_int(40), I=>IV_INPUT(40));
   IV_INPUT_ibuf_41 : IBUF port map ( O=>IV_INPUT_int(41), I=>IV_INPUT(41));
   IV_INPUT_ibuf_42 : IBUF port map ( O=>IV_INPUT_int(42), I=>IV_INPUT(42));
   IV_INPUT_ibuf_43 : IBUF port map ( O=>IV_INPUT_int(43), I=>IV_INPUT(43));
   IV_INPUT_ibuf_44 : IBUF port map ( O=>IV_INPUT_int(44), I=>IV_INPUT(44));
   IV_INPUT_ibuf_45 : IBUF port map ( O=>IV_INPUT_int(45), I=>IV_INPUT(45));
   IV_INPUT_ibuf_46 : IBUF port map ( O=>IV_INPUT_int(46), I=>IV_INPUT(46));
   IV_INPUT_ibuf_47 : IBUF port map ( O=>IV_INPUT_int(47), I=>IV_INPUT(47));
   IV_INPUT_ibuf_48 : IBUF port map ( O=>IV_INPUT_int(48), I=>IV_INPUT(48));
   IV_INPUT_ibuf_49 : IBUF port map ( O=>IV_INPUT_int(49), I=>IV_INPUT(49));
   IV_INPUT_ibuf_50 : IBUF port map ( O=>IV_INPUT_int(50), I=>IV_INPUT(50));
   IV_INPUT_ibuf_51 : IBUF port map ( O=>IV_INPUT_int(51), I=>IV_INPUT(51));
   IV_INPUT_ibuf_52 : IBUF port map ( O=>IV_INPUT_int(52), I=>IV_INPUT(52));
   IV_INPUT_ibuf_53 : IBUF port map ( O=>IV_INPUT_int(53), I=>IV_INPUT(53));
   IV_INPUT_ibuf_54 : IBUF port map ( O=>IV_INPUT_int(54), I=>IV_INPUT(54));
   IV_INPUT_ibuf_55 : IBUF port map ( O=>IV_INPUT_int(55), I=>IV_INPUT(55));
   IV_INPUT_ibuf_56 : IBUF port map ( O=>IV_INPUT_int(56), I=>IV_INPUT(56));
   IV_INPUT_ibuf_57 : IBUF port map ( O=>IV_INPUT_int(57), I=>IV_INPUT(57));
   IV_INPUT_ibuf_58 : IBUF port map ( O=>IV_INPUT_int(58), I=>IV_INPUT(58));
   IV_INPUT_ibuf_59 : IBUF port map ( O=>IV_INPUT_int(59), I=>IV_INPUT(59));
   IV_INPUT_ibuf_60 : IBUF port map ( O=>IV_INPUT_int(60), I=>IV_INPUT(60));
   IV_INPUT_ibuf_61 : IBUF port map ( O=>IV_INPUT_int(61), I=>IV_INPUT(61));
   IV_INPUT_ibuf_62 : IBUF port map ( O=>IV_INPUT_int(62), I=>IV_INPUT(62));
   IV_INPUT_ibuf_63 : IBUF port map ( O=>IV_INPUT_int(63), I=>IV_INPUT(63));
   IV_INPUT_ibuf_64 : IBUF port map ( O=>IV_INPUT_int(64), I=>IV_INPUT(64));
   IV_INPUT_ibuf_65 : IBUF port map ( O=>IV_INPUT_int(65), I=>IV_INPUT(65));
   IV_INPUT_ibuf_66 : IBUF port map ( O=>IV_INPUT_int(66), I=>IV_INPUT(66));
   IV_INPUT_ibuf_67 : IBUF port map ( O=>IV_INPUT_int(67), I=>IV_INPUT(67));
   IV_INPUT_ibuf_68 : IBUF port map ( O=>IV_INPUT_int(68), I=>IV_INPUT(68));
   IV_INPUT_ibuf_69 : IBUF port map ( O=>IV_INPUT_int(69), I=>IV_INPUT(69));
   IV_INPUT_ibuf_70 : IBUF port map ( O=>IV_INPUT_int(70), I=>IV_INPUT(70));
   IV_INPUT_ibuf_71 : IBUF port map ( O=>IV_INPUT_int(71), I=>IV_INPUT(71));
   IV_INPUT_ibuf_72 : IBUF port map ( O=>IV_INPUT_int(72), I=>IV_INPUT(72));
   IV_INPUT_ibuf_73 : IBUF port map ( O=>IV_INPUT_int(73), I=>IV_INPUT(73));
   IV_INPUT_ibuf_74 : IBUF port map ( O=>IV_INPUT_int(74), I=>IV_INPUT(74));
   IV_INPUT_ibuf_75 : IBUF port map ( O=>IV_INPUT_int(75), I=>IV_INPUT(75));
   IV_INPUT_ibuf_76 : IBUF port map ( O=>IV_INPUT_int(76), I=>IV_INPUT(76));
   IV_INPUT_ibuf_77 : IBUF port map ( O=>IV_INPUT_int(77), I=>IV_INPUT(77));
   IV_INPUT_ibuf_78 : IBUF port map ( O=>IV_INPUT_int(78), I=>IV_INPUT(78));
   IV_INPUT_ibuf_79 : IBUF port map ( O=>IV_INPUT_int(79), I=>IV_INPUT(79));
   K_INPUT_ibuf_0 : IBUF port map ( O=>K_INPUT_int(0), I=>K_INPUT(0));
   K_INPUT_ibuf_1 : IBUF port map ( O=>K_INPUT_int(1), I=>K_INPUT(1));
   K_INPUT_ibuf_2 : IBUF port map ( O=>K_INPUT_int(2), I=>K_INPUT(2));
   K_INPUT_ibuf_3 : IBUF port map ( O=>K_INPUT_int(3), I=>K_INPUT(3));
   K_INPUT_ibuf_4 : IBUF port map ( O=>K_INPUT_int(4), I=>K_INPUT(4));
   K_INPUT_ibuf_5 : IBUF port map ( O=>K_INPUT_int(5), I=>K_INPUT(5));
   K_INPUT_ibuf_6 : IBUF port map ( O=>K_INPUT_int(6), I=>K_INPUT(6));
   K_INPUT_ibuf_7 : IBUF port map ( O=>K_INPUT_int(7), I=>K_INPUT(7));
   K_INPUT_ibuf_8 : IBUF port map ( O=>K_INPUT_int(8), I=>K_INPUT(8));
   K_INPUT_ibuf_9 : IBUF port map ( O=>K_INPUT_int(9), I=>K_INPUT(9));
   K_INPUT_ibuf_10 : IBUF port map ( O=>K_INPUT_int(10), I=>K_INPUT(10));
   K_INPUT_ibuf_11 : IBUF port map ( O=>K_INPUT_int(11), I=>K_INPUT(11));
   K_INPUT_ibuf_12 : IBUF port map ( O=>K_INPUT_int(12), I=>K_INPUT(12));
   K_INPUT_ibuf_13 : IBUF port map ( O=>K_INPUT_int(13), I=>K_INPUT(13));
   K_INPUT_ibuf_14 : IBUF port map ( O=>K_INPUT_int(14), I=>K_INPUT(14));
   K_INPUT_ibuf_15 : IBUF port map ( O=>K_INPUT_int(15), I=>K_INPUT(15));
   K_INPUT_ibuf_16 : IBUF port map ( O=>K_INPUT_int(16), I=>K_INPUT(16));
   K_INPUT_ibuf_17 : IBUF port map ( O=>K_INPUT_int(17), I=>K_INPUT(17));
   K_INPUT_ibuf_18 : IBUF port map ( O=>K_INPUT_int(18), I=>K_INPUT(18));
   K_INPUT_ibuf_19 : IBUF port map ( O=>K_INPUT_int(19), I=>K_INPUT(19));
   K_INPUT_ibuf_20 : IBUF port map ( O=>K_INPUT_int(20), I=>K_INPUT(20));
   K_INPUT_ibuf_21 : IBUF port map ( O=>K_INPUT_int(21), I=>K_INPUT(21));
   K_INPUT_ibuf_22 : IBUF port map ( O=>K_INPUT_int(22), I=>K_INPUT(22));
   K_INPUT_ibuf_23 : IBUF port map ( O=>K_INPUT_int(23), I=>K_INPUT(23));
   K_INPUT_ibuf_24 : IBUF port map ( O=>K_INPUT_int(24), I=>K_INPUT(24));
   K_INPUT_ibuf_25 : IBUF port map ( O=>K_INPUT_int(25), I=>K_INPUT(25));
   K_INPUT_ibuf_26 : IBUF port map ( O=>K_INPUT_int(26), I=>K_INPUT(26));
   K_INPUT_ibuf_27 : IBUF port map ( O=>K_INPUT_int(27), I=>K_INPUT(27));
   K_INPUT_ibuf_28 : IBUF port map ( O=>K_INPUT_int(28), I=>K_INPUT(28));
   K_INPUT_ibuf_29 : IBUF port map ( O=>K_INPUT_int(29), I=>K_INPUT(29));
   K_INPUT_ibuf_30 : IBUF port map ( O=>K_INPUT_int(30), I=>K_INPUT(30));
   K_INPUT_ibuf_31 : IBUF port map ( O=>K_INPUT_int(31), I=>K_INPUT(31));
   K_INPUT_ibuf_32 : IBUF port map ( O=>K_INPUT_int(32), I=>K_INPUT(32));
   K_INPUT_ibuf_33 : IBUF port map ( O=>K_INPUT_int(33), I=>K_INPUT(33));
   K_INPUT_ibuf_34 : IBUF port map ( O=>K_INPUT_int(34), I=>K_INPUT(34));
   K_INPUT_ibuf_35 : IBUF port map ( O=>K_INPUT_int(35), I=>K_INPUT(35));
   K_INPUT_ibuf_36 : IBUF port map ( O=>K_INPUT_int(36), I=>K_INPUT(36));
   K_INPUT_ibuf_37 : IBUF port map ( O=>K_INPUT_int(37), I=>K_INPUT(37));
   K_INPUT_ibuf_38 : IBUF port map ( O=>K_INPUT_int(38), I=>K_INPUT(38));
   K_INPUT_ibuf_39 : IBUF port map ( O=>K_INPUT_int(39), I=>K_INPUT(39));
   K_INPUT_ibuf_40 : IBUF port map ( O=>K_INPUT_int(40), I=>K_INPUT(40));
   K_INPUT_ibuf_41 : IBUF port map ( O=>K_INPUT_int(41), I=>K_INPUT(41));
   K_INPUT_ibuf_42 : IBUF port map ( O=>K_INPUT_int(42), I=>K_INPUT(42));
   K_INPUT_ibuf_43 : IBUF port map ( O=>K_INPUT_int(43), I=>K_INPUT(43));
   K_INPUT_ibuf_44 : IBUF port map ( O=>K_INPUT_int(44), I=>K_INPUT(44));
   K_INPUT_ibuf_45 : IBUF port map ( O=>K_INPUT_int(45), I=>K_INPUT(45));
   K_INPUT_ibuf_46 : IBUF port map ( O=>K_INPUT_int(46), I=>K_INPUT(46));
   K_INPUT_ibuf_47 : IBUF port map ( O=>K_INPUT_int(47), I=>K_INPUT(47));
   K_INPUT_ibuf_48 : IBUF port map ( O=>K_INPUT_int(48), I=>K_INPUT(48));
   K_INPUT_ibuf_49 : IBUF port map ( O=>K_INPUT_int(49), I=>K_INPUT(49));
   K_INPUT_ibuf_50 : IBUF port map ( O=>K_INPUT_int(50), I=>K_INPUT(50));
   K_INPUT_ibuf_51 : IBUF port map ( O=>K_INPUT_int(51), I=>K_INPUT(51));
   K_INPUT_ibuf_52 : IBUF port map ( O=>K_INPUT_int(52), I=>K_INPUT(52));
   K_INPUT_ibuf_53 : IBUF port map ( O=>K_INPUT_int(53), I=>K_INPUT(53));
   K_INPUT_ibuf_54 : IBUF port map ( O=>K_INPUT_int(54), I=>K_INPUT(54));
   K_INPUT_ibuf_55 : IBUF port map ( O=>K_INPUT_int(55), I=>K_INPUT(55));
   K_INPUT_ibuf_56 : IBUF port map ( O=>K_INPUT_int(56), I=>K_INPUT(56));
   K_INPUT_ibuf_57 : IBUF port map ( O=>K_INPUT_int(57), I=>K_INPUT(57));
   K_INPUT_ibuf_58 : IBUF port map ( O=>K_INPUT_int(58), I=>K_INPUT(58));
   K_INPUT_ibuf_59 : IBUF port map ( O=>K_INPUT_int(59), I=>K_INPUT(59));
   K_INPUT_ibuf_60 : IBUF port map ( O=>K_INPUT_int(60), I=>K_INPUT(60));
   K_INPUT_ibuf_61 : IBUF port map ( O=>K_INPUT_int(61), I=>K_INPUT(61));
   K_INPUT_ibuf_62 : IBUF port map ( O=>K_INPUT_int(62), I=>K_INPUT(62));
   K_INPUT_ibuf_63 : IBUF port map ( O=>K_INPUT_int(63), I=>K_INPUT(63));
   K_INPUT_ibuf_64 : IBUF port map ( O=>K_INPUT_int(64), I=>K_INPUT(64));
   K_INPUT_ibuf_65 : IBUF port map ( O=>K_INPUT_int(65), I=>K_INPUT(65));
   K_INPUT_ibuf_66 : IBUF port map ( O=>K_INPUT_int(66), I=>K_INPUT(66));
   K_INPUT_ibuf_67 : IBUF port map ( O=>K_INPUT_int(67), I=>K_INPUT(67));
   K_INPUT_ibuf_68 : IBUF port map ( O=>K_INPUT_int(68), I=>K_INPUT(68));
   K_INPUT_ibuf_69 : IBUF port map ( O=>K_INPUT_int(69), I=>K_INPUT(69));
   K_INPUT_ibuf_70 : IBUF port map ( O=>K_INPUT_int(70), I=>K_INPUT(70));
   K_INPUT_ibuf_71 : IBUF port map ( O=>K_INPUT_int(71), I=>K_INPUT(71));
   K_INPUT_ibuf_72 : IBUF port map ( O=>K_INPUT_int(72), I=>K_INPUT(72));
   K_INPUT_ibuf_73 : IBUF port map ( O=>K_INPUT_int(73), I=>K_INPUT(73));
   K_INPUT_ibuf_74 : IBUF port map ( O=>K_INPUT_int(74), I=>K_INPUT(74));
   K_INPUT_ibuf_75 : IBUF port map ( O=>K_INPUT_int(75), I=>K_INPUT(75));
   K_INPUT_ibuf_76 : IBUF port map ( O=>K_INPUT_int(76), I=>K_INPUT(76));
   K_INPUT_ibuf_77 : IBUF port map ( O=>K_INPUT_int(77), I=>K_INPUT(77));
   K_INPUT_ibuf_78 : IBUF port map ( O=>K_INPUT_int(78), I=>K_INPUT(78));
   K_INPUT_ibuf_79 : IBUF port map ( O=>K_INPUT_int(79), I=>K_INPUT(79));
   PLAINTEXT_IN_ibuf : IBUF port map ( O=>PLAINTEXT_IN_int, I=>PLAINTEXT_IN
   );
   RST_ibuf : IBUF port map ( O=>RST_int, I=>RST);
   ix55036z1568 : LUT3
      generic map (INIT => X"FE") 
       port map ( O=>nx55036z1, I0=>pr_state(5), I1=>pr_state(1), I2=>
      pr_state(0));
   ix27334z1328 : LUT2
      generic map (INIT => X"E") 
       port map ( O=>nx27334z1, I0=>pr_state(3), I1=>pr_state(2));
   ps_gnd : GND port map ( G=>nx8473z2);
   ix45059z1314 : LUT6
      generic map (INIT => X"FFFFFFFF7FFF0000") 
       port map ( O=>nx45059z1, I0=>nx45059z2, I1=>nx45059z3, I2=>nx45059z4, 
      I3=>INIT_COUNTER(10), I4=>pr_state(3), I5=>pr_state(2));
   ix47053z1328 : LUT2
      generic map (INIT => X"E") 
       port map ( O=>nx47053z1, I0=>pr_state(5), I1=>pr_state(4));
   ps_vcc : VCC port map ( P=>nx8473z1);
   ix51271z1328 : LUT2
      generic map (INIT => X"E") 
       port map ( O=>nx51271z1, I0=>pr_state(1), I1=>pr_state(0));
   ix17096z1568 : LUT3
      generic map (INIT => X"FE") 
       port map ( O=>nx17096z1, I0=>pr_state(3), I1=>pr_state(1), I2=>
      pr_state(0));
   ix49344z886 : LUT4
      generic map (INIT => X"FE54") 
       port map ( O=>nx49344z1, I0=>pr_state(5), I1=>pr_state(1), I2=>
      pr_state(0), I3=>PLNTXT_EN_int);
   ix55036z1323 : LUT2
      generic map (INIT => X"8") 
       port map ( O=>nx55036z2, I0=>pr_state(5), I1=>PLNTXT_EN_int);
   ix28331z1315 : LUT5
      generic map (INIT => X"00030001") 
       port map ( O=>nx28331z1, I0=>pr_state(5), I1=>pr_state(2), I2=>
      pr_state(1), I3=>pr_state(0), I4=>PLNTXT_EN_int);
   ix45059z17701 : LUT4
      generic map (INIT => X"4000") 
       port map ( O=>nx45059z4, I0=>INIT_COUNTER(8), I1=>INIT_COUNTER(6), I2
      =>INIT_COUNTER(2), I3=>INIT_COUNTER(1));
   ix45059z5412 : LUT4
      generic map (INIT => X"1000") 
       port map ( O=>nx45059z3, I0=>INIT_COUNTER(9), I1=>INIT_COUNTER(7), I2
      =>INIT_COUNTER(4), I3=>INIT_COUNTER(0));
   ix45059z1323 : LUT2
      generic map (INIT => X"8") 
       port map ( O=>nx45059z2, I0=>INIT_COUNTER(5), I1=>INIT_COUNTER(3));
   ix46056z1314 : LUT6
      generic map (INIT => X"8000000000000000") 
       port map ( O=>nx46056z1, I0=>INIT_COUNTER(10), I1=>INIT_COUNTER(5), 
      I2=>INIT_COUNTER(3), I3=>pr_state(3), I4=>nx45059z3, I5=>nx45059z4);
   TRIV_CORE_GEN : TRIVIUM_CORE_0 port map ( p_nbus_pr_state(5)=>pr_state(5), 
      px716=>nx49344z2, p_PLAINTEXT_IN_int=>PLAINTEXT_IN_int, 
      p_nbus_IV_INPUT_int(79)=>IV_INPUT_int(72), p_nbus_IV_INPUT_int(78)=>
      IV_INPUT_int(73), p_nbus_IV_INPUT_int(77)=>IV_INPUT_int(74), 
      p_nbus_IV_INPUT_int(76)=>IV_INPUT_int(75), p_nbus_IV_INPUT_int(75)=>
      IV_INPUT_int(76), p_nbus_IV_INPUT_int(74)=>IV_INPUT_int(77), 
      p_nbus_IV_INPUT_int(73)=>IV_INPUT_int(78), p_nbus_IV_INPUT_int(72)=>
      IV_INPUT_int(79), p_nbus_IV_INPUT_int(71)=>IV_INPUT_int(64), 
      p_nbus_IV_INPUT_int(70)=>IV_INPUT_int(65), p_nbus_IV_INPUT_int(69)=>
      IV_INPUT_int(66), p_nbus_IV_INPUT_int(68)=>IV_INPUT_int(67), 
      p_nbus_IV_INPUT_int(67)=>IV_INPUT_int(68), p_nbus_IV_INPUT_int(66)=>
      IV_INPUT_int(69), p_nbus_IV_INPUT_int(65)=>IV_INPUT_int(70), 
      p_nbus_IV_INPUT_int(64)=>IV_INPUT_int(71), p_nbus_IV_INPUT_int(63)=>
      IV_INPUT_int(56), p_nbus_IV_INPUT_int(62)=>IV_INPUT_int(57), 
      p_nbus_IV_INPUT_int(61)=>IV_INPUT_int(58), p_nbus_IV_INPUT_int(60)=>
      IV_INPUT_int(59), p_nbus_IV_INPUT_int(59)=>IV_INPUT_int(60), 
      p_nbus_IV_INPUT_int(58)=>IV_INPUT_int(61), p_nbus_IV_INPUT_int(57)=>
      IV_INPUT_int(62), p_nbus_IV_INPUT_int(56)=>IV_INPUT_int(63), 
      p_nbus_IV_INPUT_int(55)=>IV_INPUT_int(48), p_nbus_IV_INPUT_int(54)=>
      IV_INPUT_int(49), p_nbus_IV_INPUT_int(53)=>IV_INPUT_int(50), 
      p_nbus_IV_INPUT_int(52)=>IV_INPUT_int(51), p_nbus_IV_INPUT_int(51)=>
      IV_INPUT_int(52), p_nbus_IV_INPUT_int(50)=>IV_INPUT_int(53), 
      p_nbus_IV_INPUT_int(49)=>IV_INPUT_int(54), p_nbus_IV_INPUT_int(48)=>
      IV_INPUT_int(55), p_nbus_IV_INPUT_int(47)=>IV_INPUT_int(40), 
      p_nbus_IV_INPUT_int(46)=>IV_INPUT_int(41), p_nbus_IV_INPUT_int(45)=>
      IV_INPUT_int(42), p_nbus_IV_INPUT_int(44)=>IV_INPUT_int(43), 
      p_nbus_IV_INPUT_int(43)=>IV_INPUT_int(44), p_nbus_IV_INPUT_int(42)=>
      IV_INPUT_int(45), p_nbus_IV_INPUT_int(41)=>IV_INPUT_int(46), 
      p_nbus_IV_INPUT_int(40)=>IV_INPUT_int(47), p_nbus_IV_INPUT_int(39)=>
      IV_INPUT_int(32), p_nbus_IV_INPUT_int(38)=>IV_INPUT_int(33), 
      p_nbus_IV_INPUT_int(37)=>IV_INPUT_int(34), p_nbus_IV_INPUT_int(36)=>
      IV_INPUT_int(35), p_nbus_IV_INPUT_int(35)=>IV_INPUT_int(36), 
      p_nbus_IV_INPUT_int(34)=>IV_INPUT_int(37), p_nbus_IV_INPUT_int(33)=>
      IV_INPUT_int(38), p_nbus_IV_INPUT_int(32)=>IV_INPUT_int(39), 
      p_nbus_IV_INPUT_int(31)=>IV_INPUT_int(24), p_nbus_IV_INPUT_int(30)=>
      IV_INPUT_int(25), p_nbus_IV_INPUT_int(29)=>IV_INPUT_int(26), 
      p_nbus_IV_INPUT_int(28)=>IV_INPUT_int(27), p_nbus_IV_INPUT_int(27)=>
      IV_INPUT_int(28), p_nbus_IV_INPUT_int(26)=>IV_INPUT_int(29), 
      p_nbus_IV_INPUT_int(25)=>IV_INPUT_int(30), p_nbus_IV_INPUT_int(24)=>
      IV_INPUT_int(31), p_nbus_IV_INPUT_int(23)=>IV_INPUT_int(16), 
      p_nbus_IV_INPUT_int(22)=>IV_INPUT_int(17), p_nbus_IV_INPUT_int(21)=>
      IV_INPUT_int(18), p_nbus_IV_INPUT_int(20)=>IV_INPUT_int(19), 
      p_nbus_IV_INPUT_int(19)=>IV_INPUT_int(20), p_nbus_IV_INPUT_int(18)=>
      IV_INPUT_int(21), p_nbus_IV_INPUT_int(17)=>IV_INPUT_int(22), 
      p_nbus_IV_INPUT_int(16)=>IV_INPUT_int(23), p_nbus_IV_INPUT_int(15)=>
      IV_INPUT_int(8), p_nbus_IV_INPUT_int(14)=>IV_INPUT_int(9), 
      p_nbus_IV_INPUT_int(13)=>IV_INPUT_int(10), p_nbus_IV_INPUT_int(12)=>
      IV_INPUT_int(11), p_nbus_IV_INPUT_int(11)=>IV_INPUT_int(12), 
      p_nbus_IV_INPUT_int(10)=>IV_INPUT_int(13), p_nbus_IV_INPUT_int(9)=>
      IV_INPUT_int(14), p_nbus_IV_INPUT_int(8)=>IV_INPUT_int(15), 
      p_nbus_IV_INPUT_int(7)=>IV_INPUT_int(0), p_nbus_IV_INPUT_int(6)=>
      IV_INPUT_int(1), p_nbus_IV_INPUT_int(5)=>IV_INPUT_int(2), 
      p_nbus_IV_INPUT_int(4)=>IV_INPUT_int(3), p_nbus_IV_INPUT_int(3)=>
      IV_INPUT_int(4), p_nbus_IV_INPUT_int(2)=>IV_INPUT_int(5), 
      p_nbus_IV_INPUT_int(1)=>IV_INPUT_int(6), p_nbus_IV_INPUT_int(0)=>
      IV_INPUT_int(7), p_nbus_K_INPUT_int(79)=>K_INPUT_int(72), 
      p_nbus_K_INPUT_int(78)=>K_INPUT_int(73), p_nbus_K_INPUT_int(77)=>
      K_INPUT_int(74), p_nbus_K_INPUT_int(76)=>K_INPUT_int(75), 
      p_nbus_K_INPUT_int(75)=>K_INPUT_int(76), p_nbus_K_INPUT_int(74)=>
      K_INPUT_int(77), p_nbus_K_INPUT_int(73)=>K_INPUT_int(78), 
      p_nbus_K_INPUT_int(72)=>K_INPUT_int(79), p_nbus_K_INPUT_int(71)=>
      K_INPUT_int(64), p_nbus_K_INPUT_int(70)=>K_INPUT_int(65), 
      p_nbus_K_INPUT_int(69)=>K_INPUT_int(66), p_nbus_K_INPUT_int(68)=>
      K_INPUT_int(67), p_nbus_K_INPUT_int(67)=>K_INPUT_int(68), 
      p_nbus_K_INPUT_int(66)=>K_INPUT_int(69), p_nbus_K_INPUT_int(65)=>
      K_INPUT_int(70), p_nbus_K_INPUT_int(64)=>K_INPUT_int(71), 
      p_nbus_K_INPUT_int(63)=>K_INPUT_int(56), p_nbus_K_INPUT_int(62)=>
      K_INPUT_int(57), p_nbus_K_INPUT_int(61)=>K_INPUT_int(58), 
      p_nbus_K_INPUT_int(60)=>K_INPUT_int(59), p_nbus_K_INPUT_int(59)=>
      K_INPUT_int(60), p_nbus_K_INPUT_int(58)=>K_INPUT_int(61), 
      p_nbus_K_INPUT_int(57)=>K_INPUT_int(62), p_nbus_K_INPUT_int(56)=>
      K_INPUT_int(63), p_nbus_K_INPUT_int(55)=>K_INPUT_int(48), 
      p_nbus_K_INPUT_int(54)=>K_INPUT_int(49), p_nbus_K_INPUT_int(53)=>
      K_INPUT_int(50), p_nbus_K_INPUT_int(52)=>K_INPUT_int(51), 
      p_nbus_K_INPUT_int(51)=>K_INPUT_int(52), p_nbus_K_INPUT_int(50)=>
      K_INPUT_int(53), p_nbus_K_INPUT_int(49)=>K_INPUT_int(54), 
      p_nbus_K_INPUT_int(48)=>K_INPUT_int(55), p_nbus_K_INPUT_int(47)=>
      K_INPUT_int(40), p_nbus_K_INPUT_int(46)=>K_INPUT_int(41), 
      p_nbus_K_INPUT_int(45)=>K_INPUT_int(42), p_nbus_K_INPUT_int(44)=>
      K_INPUT_int(43), p_nbus_K_INPUT_int(43)=>K_INPUT_int(44), 
      p_nbus_K_INPUT_int(42)=>K_INPUT_int(45), p_nbus_K_INPUT_int(41)=>
      K_INPUT_int(46), p_nbus_K_INPUT_int(40)=>K_INPUT_int(47), 
      p_nbus_K_INPUT_int(39)=>K_INPUT_int(32), p_nbus_K_INPUT_int(38)=>
      K_INPUT_int(33), p_nbus_K_INPUT_int(37)=>K_INPUT_int(34), 
      p_nbus_K_INPUT_int(36)=>K_INPUT_int(35), p_nbus_K_INPUT_int(35)=>
      K_INPUT_int(36), p_nbus_K_INPUT_int(34)=>K_INPUT_int(37), 
      p_nbus_K_INPUT_int(33)=>K_INPUT_int(38), p_nbus_K_INPUT_int(32)=>
      K_INPUT_int(39), p_nbus_K_INPUT_int(31)=>K_INPUT_int(24), 
      p_nbus_K_INPUT_int(30)=>K_INPUT_int(25), p_nbus_K_INPUT_int(29)=>
      K_INPUT_int(26), p_nbus_K_INPUT_int(28)=>K_INPUT_int(27), 
      p_nbus_K_INPUT_int(27)=>K_INPUT_int(28), p_nbus_K_INPUT_int(26)=>
      K_INPUT_int(29), p_nbus_K_INPUT_int(25)=>K_INPUT_int(30), 
      p_nbus_K_INPUT_int(24)=>K_INPUT_int(31), p_nbus_K_INPUT_int(23)=>
      K_INPUT_int(16), p_nbus_K_INPUT_int(22)=>K_INPUT_int(17), 
      p_nbus_K_INPUT_int(21)=>K_INPUT_int(18), p_nbus_K_INPUT_int(20)=>
      K_INPUT_int(19), p_nbus_K_INPUT_int(19)=>K_INPUT_int(20), 
      p_nbus_K_INPUT_int(18)=>K_INPUT_int(21), p_nbus_K_INPUT_int(17)=>
      K_INPUT_int(22), p_nbus_K_INPUT_int(16)=>K_INPUT_int(23), 
      p_nbus_K_INPUT_int(15)=>K_INPUT_int(8), p_nbus_K_INPUT_int(14)=>
      K_INPUT_int(9), p_nbus_K_INPUT_int(13)=>K_INPUT_int(10), 
      p_nbus_K_INPUT_int(12)=>K_INPUT_int(11), p_nbus_K_INPUT_int(11)=>
      K_INPUT_int(12), p_nbus_K_INPUT_int(10)=>K_INPUT_int(13), 
      p_nbus_K_INPUT_int(9)=>K_INPUT_int(14), p_nbus_K_INPUT_int(8)=>
      K_INPUT_int(15), p_nbus_K_INPUT_int(7)=>K_INPUT_int(0), 
      p_nbus_K_INPUT_int(6)=>K_INPUT_int(1), p_nbus_K_INPUT_int(5)=>
      K_INPUT_int(2), p_nbus_K_INPUT_int(4)=>K_INPUT_int(3), 
      p_nbus_K_INPUT_int(3)=>K_INPUT_int(4), p_nbus_K_INPUT_int(2)=>
      K_INPUT_int(5), p_nbus_K_INPUT_int(1)=>K_INPUT_int(6), 
      p_nbus_K_INPUT_int(0)=>K_INPUT_int(7), p_nbus_CORE_CNTRL(1)=>
      CORE_CNTRL(1), p_nbus_CORE_CNTRL(0)=>CORE_CNTRL(0), p_SYS_CLK_int=>
      SYS_CLK_int);
   SYS_CLK_ibuf : BUFGP port map ( O=>SYS_CLK_int, I=>SYS_CLK);
   muxcy_0 : MUXCY port map ( O=>nx8474z1, CI=>nx8473z1, DI=>nx8473z2, S=>
      INIT_COUNTER(0));
   muxcy_1 : MUXCY port map ( O=>nx8475z1, CI=>nx8474z1, DI=>nx8473z2, S=>
      INIT_COUNTER(1));
   muxcy_2 : MUXCY port map ( O=>nx8476z1, CI=>nx8475z1, DI=>nx8473z2, S=>
      INIT_COUNTER(2));
   muxcy_3 : MUXCY port map ( O=>nx8477z1, CI=>nx8476z1, DI=>nx8473z2, S=>
      INIT_COUNTER(3));
   muxcy_4 : MUXCY port map ( O=>nx51683z1, CI=>nx8477z1, DI=>nx8473z2, S=>
      INIT_COUNTER(4));
   muxcy_5 : MUXCY port map ( O=>nx8479z1, CI=>nx51683z1, DI=>nx8473z2, S=>
      INIT_COUNTER(5));
   muxcy_6 : MUXCY port map ( O=>nx8480z1, CI=>nx8479z1, DI=>nx8473z2, S=>
      INIT_COUNTER(6));
   muxcy_7 : MUXCY port map ( O=>nx8481z1, CI=>nx8480z1, DI=>nx8473z2, S=>
      INIT_COUNTER(7));
   muxcy_8 : MUXCY port map ( O=>nx51679z1, CI=>nx8481z1, DI=>nx8473z2, S=>
      INIT_COUNTER(8));
   muxcy_9 : MUXCY port map ( O=>nx20595z1, CI=>nx51679z1, DI=>nx8473z2, S=>
      INIT_COUNTER(9));
   reg_pr_state_5 : FDRE port map ( Q=>pr_state(5), C=>SYS_CLK_int, CE=>
      nx8473z1, D=>nx47053z1, R=>RST_int);
   reg_pr_state_4 : FDRE port map ( Q=>pr_state(4), C=>SYS_CLK_int, CE=>
      nx8473z1, D=>nx46056z1, R=>RST_int);
   reg_pr_state_3 : FDRE port map ( Q=>pr_state(3), C=>SYS_CLK_int, CE=>
      nx8473z1, D=>nx45059z1, R=>RST_int);
   reg_pr_state_2 : FDRE port map ( Q=>pr_state(2), C=>SYS_CLK_int, CE=>
      nx8473z1, D=>pr_state(1), R=>RST_int);
   reg_pr_state_1 : FDRE port map ( Q=>pr_state(1), C=>SYS_CLK_int, CE=>
      nx8473z1, D=>pr_state(0), R=>RST_int);
   reg_pr_state_0 : FDSE port map ( Q=>pr_state(0), C=>SYS_CLK_int, CE=>
      nx8473z1, D=>nx8473z2, S=>RST_int);
   reg_CORE_CNTRL_1 : FDRE port map ( Q=>CORE_CNTRL(1), C=>SYS_CLK_int, CE=>
      nx8473z1, D=>nx27334z1, R=>nx8473z2);
   reg_CORE_CNTRL_0 : FDRE port map ( Q=>CORE_CNTRL(0), C=>SYS_CLK_int, CE=>
      nx8473z1, D=>nx28331z1, R=>nx8473z2);
   reg_CPHRTXT_RDY : FDRE port map ( Q=>CPHRTXT_RDY_1_0, C=>SYS_CLK_int, CE
      =>nx55036z1, D=>nx55036z2, R=>nx8473z2);
   reg_CIPHERTEXT_OUT : FDRE port map ( Q=>CIPHERTEXT_OUT_1_0, C=>
      SYS_CLK_int, CE=>nx49344z1, D=>nx49344z2, R=>nx8473z2);
end Behavioral ;

