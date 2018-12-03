vsim -voptargs=+acc lib_VALID.tb_validation_trivium
add wave sim:/tb_validation_trivium/*
run 20 us
