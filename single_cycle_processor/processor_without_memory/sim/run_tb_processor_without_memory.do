vdel -lib work -all
vlib work
vlog -sv tb_processor_without_memory.sv ../rtl/processor_without_memory.sv 
vlog -sv ../../controller/rtl/controller.sv ../../ALUdecoder/rtl/ALUdecoder.sv ../../opdecoder/rtl/opdecoder.sv ../../mux/rtl/mux.sv
vlog -sv ../../adder/rtl/adder.sv ../../ALU/rtl/ALU.sv ../../datapath/rtl/datapath.sv ../../extend/rtl/extend.sv 
vlog -sv ../../flipflop/rtl/flipflop.sv ../../register/rtl/register.sv
vsim -novopt tb_processor_without_memory
#add wave *
do wave_tb_processor_without_memory.do
run -a