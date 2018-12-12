source /media/mona/d2/xilinx/14.7/ISE_DS/settings64.sh

read -p "-------------------------> Tests for 32/64 with cd-c, press enter to continue"

cd SimonGenerator
python generator.py -b 32 -k 64 -p cd -opt c
cd ../cryptoProc
fuse -incremental -prj projetNum_compil.prj -o projetNum.exe work.cryptoProc_tb 
./projetNum.exe -wdb projetNum.wdb -tclbatch do_sim.do

read -p "Press enter to synthetize (32/64 with cd-c)"

xflow -p xc7z020-3clg400 -synth xst_vhdl.opt projetNum_synth.prj
netgen -sim -ofmt vhdl projetNum_synth.ngc
fuse -incremental -prj projetNum_simsynth.prj -o projetNum_synth.exe work.cryptoProc_tb
./projetNum.exe -wdb projetNum.wdb -tclbatch do_sim.do
