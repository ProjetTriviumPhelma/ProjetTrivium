vsim -voptargs=+acc lib_BENCH.tb_generateur
#vcd file trivium.vcd
#vcd add sim:/tb_generateur/uutref/*
#vcd add -ports /tb_generateur/uutref/*
vcd dumpports -file myvcdfile.vcd /tb_generateur/uutref/*
run 2590 us
#checkpoint trivium.vcd
quit -f


#https://stackoverflow.com/questions/7003098/vcd-dump-of-only-a-sub-part-of-the-design-via-modelsim