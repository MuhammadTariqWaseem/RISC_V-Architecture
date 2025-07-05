#vdel -lib work -all
vlib work
vlog -sv tb_controller.sv ../rtl/controller.sv ../../ALUdecoder/rtl/ALUdecoder.sv ../../opdecoder/rtl/opdecoder.sv ../../mux/rtl/mux.sv
vsim -novopt tb_controller
add wave *
#do wave_tb_controller.do
run -a