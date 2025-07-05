vdel -lib work -all
vlib work
vlog -sv tb_single_cycle_processor.sv ../rtl/single_cycle_processor.sv 
vlog -sv ../../controller/rtl/controller.sv ../../ALUdecoder/rtl/ALUdecoder.sv ../../opdecoder/rtl/opdecoder.sv
vlog -sv ../../adder/rtl/adder.sv ../../ALU/rtl/ALU.sv ../../datapath/rtl/datapath.sv ../../extend/rtl/extend.sv 
vlog -sv ../../flipflop/rtl/flip_flop.sv ../../register/rtl/register.sv
vlog -sv ../../memory/rtl/memory.v
vlog -sv ../../processor_without_memory/rtl/processor_without_memory.sv
vlog -sv E:/intelFPGA_lite/19.1/modelsim_ase/altera/verilog/src/altera_mf.v
vsim -novopt tb_single_cycle_processor
#add wave *
do wave_tb_single_cycle_processor.do
run -a