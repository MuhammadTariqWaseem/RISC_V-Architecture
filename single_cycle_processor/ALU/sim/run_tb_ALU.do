vdel -lib work -all
vlib work
vlog -sv tb_ALU.sv ../rtl/ALU.sv 
vsim -novopt tb_ALU
#add wave *
do wave_tb_ALU.do
run -a