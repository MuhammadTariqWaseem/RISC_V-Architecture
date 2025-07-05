vdel -lib work -all
vlib work
vlog -sv tb_extend.sv ../rtl/extend.sv 
vsim -novopt tb_extend
add wave *
#do wave_tb_extend.do
run -a