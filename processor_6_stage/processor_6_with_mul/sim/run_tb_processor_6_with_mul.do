vdel -lib work -all
vlib work
vlog -sv tb_processor_6_with_mul.sv ../rtl/processor_6_with_mul.sv 
vlog -sv ../../../single_cycle_processor/controller/rtl/controller.sv ../../../single_cycle_processor/ALUdecoder/rtl/ALUdecoder.sv 
vlog -sv ../../../single_cycle_processor/opdecoder/rtl/opdecoder.sv ../../../single_cycle_processor/extend/rtl/extend.sv
vlog -sv ../../../single_cycle_processor/adder/rtl/adder.sv ../../../single_cycle_processor/ALU/rtl/ALU.sv 
vlog -sv ../../../single_cycle_processor/flipflop/rtl/flip_flop.sv ../../../single_cycle_processor/memory/rtl/memory.v
vlog -sv E:/intelFPGA_lite/19.1/modelsim_ase/altera/verilog/src/altera_mf.v
vlog -sv ../../forwordingunit_up/rtl/forwordingunit_up.sv ../../../pipelined_5_stage/register_up/rtl/register_up.sv
vlog -sv ../../hazardunit_up/rtl/hazardunit_up.sv
vlog -sv ../../MultWithCarrySave/MWCS.sv ../../MultWithCarrySave/CSA.v
vsim -novopt tb_processor_6_with_mul
#add wave *
do wave_tb_processor_6_with_mul.do
run -a