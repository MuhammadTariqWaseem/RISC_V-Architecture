vdel -lib work -all
vlib work
vlog -sv tb_opdecoder.sv ../rtl/opdecoder.sv 
vsim -novopt tb_opdecoder
#add wave *
do wave_tb_opdecoder.do
run -a