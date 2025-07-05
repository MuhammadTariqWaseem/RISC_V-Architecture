vdel -lib work -all
vlib work
vlog -sv tb_ALUdecoder.sv ../rtl/ALUdecoder.sv 
vsim -novopt tb_ALUdecoder
#add wave *
do wave_tb_ALUdecoder.do
run -a