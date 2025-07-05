onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -radix hexadecimal /tb_single_cycle_processor/single_cycle_processor/clk
add wave -noupdate -radix hexadecimal /tb_single_cycle_processor/single_cycle_processor/clk1
add wave -noupdate -radix hexadecimal /tb_single_cycle_processor/single_cycle_processor/reset
add wave -noupdate -radix hexadecimal /tb_single_cycle_processor/single_cycle_processor/WriteData
add wave -noupdate -radix hexadecimal /tb_single_cycle_processor/single_cycle_processor/DataAdr
add wave -noupdate -radix hexadecimal /tb_single_cycle_processor/single_cycle_processor/MemWrite
add wave -noupdate -radix hexadecimal /tb_single_cycle_processor/single_cycle_processor/PC
add wave -noupdate -radix hexadecimal /tb_single_cycle_processor/single_cycle_processor/Instr
add wave -noupdate -radix hexadecimal /tb_single_cycle_processor/single_cycle_processor/ReadData
add wave -noupdate -radix hexadecimal /tb_single_cycle_processor/single_cycle_processor/ResultSrc
add wave -noupdate -divider datapath
add wave -noupdate -radix hexadecimal /tb_single_cycle_processor/single_cycle_processor/processor_without_memory/datapath/clk
add wave -noupdate -radix hexadecimal /tb_single_cycle_processor/single_cycle_processor/processor_without_memory/datapath/reset
add wave -noupdate -radix hexadecimal /tb_single_cycle_processor/single_cycle_processor/processor_without_memory/datapath/PCSrc
add wave -noupdate -radix hexadecimal /tb_single_cycle_processor/single_cycle_processor/processor_without_memory/datapath/ALUSrc
add wave -noupdate -radix hexadecimal /tb_single_cycle_processor/single_cycle_processor/processor_without_memory/datapath/RegWrite
add wave -noupdate -radix hexadecimal /tb_single_cycle_processor/single_cycle_processor/processor_without_memory/datapath/ResultSrc
add wave -noupdate -radix hexadecimal /tb_single_cycle_processor/single_cycle_processor/processor_without_memory/datapath/ImmSrc
add wave -noupdate -radix hexadecimal /tb_single_cycle_processor/single_cycle_processor/processor_without_memory/datapath/ALUControl
add wave -noupdate -radix hexadecimal /tb_single_cycle_processor/single_cycle_processor/processor_without_memory/datapath/Instr
add wave -noupdate -radix hexadecimal /tb_single_cycle_processor/single_cycle_processor/processor_without_memory/datapath/ReadData
add wave -noupdate -radix hexadecimal /tb_single_cycle_processor/single_cycle_processor/processor_without_memory/datapath/Zero
add wave -noupdate -radix hexadecimal /tb_single_cycle_processor/single_cycle_processor/processor_without_memory/datapath/PC
add wave -noupdate -radix hexadecimal /tb_single_cycle_processor/single_cycle_processor/processor_without_memory/datapath/ALUResult
add wave -noupdate -radix hexadecimal /tb_single_cycle_processor/single_cycle_processor/processor_without_memory/datapath/WriteData
add wave -noupdate -radix hexadecimal /tb_single_cycle_processor/single_cycle_processor/processor_without_memory/datapath/PCNext
add wave -noupdate -radix hexadecimal /tb_single_cycle_processor/single_cycle_processor/processor_without_memory/datapath/PCPlus4
add wave -noupdate -radix hexadecimal /tb_single_cycle_processor/single_cycle_processor/processor_without_memory/datapath/PCTarget
add wave -noupdate -radix hexadecimal /tb_single_cycle_processor/single_cycle_processor/processor_without_memory/datapath/ImmExt
add wave -noupdate -radix hexadecimal /tb_single_cycle_processor/single_cycle_processor/processor_without_memory/datapath/SrcA
add wave -noupdate -radix hexadecimal /tb_single_cycle_processor/single_cycle_processor/processor_without_memory/datapath/SrcB
add wave -noupdate -radix hexadecimal /tb_single_cycle_processor/single_cycle_processor/processor_without_memory/datapath/Result
add wave -noupdate -divider Controller
add wave -noupdate /tb_single_cycle_processor/single_cycle_processor/processor_without_memory/controller/op
add wave -noupdate /tb_single_cycle_processor/single_cycle_processor/processor_without_memory/controller/funct3
add wave -noupdate /tb_single_cycle_processor/single_cycle_processor/processor_without_memory/controller/funct7b5
add wave -noupdate /tb_single_cycle_processor/single_cycle_processor/processor_without_memory/controller/SS2
add wave -noupdate /tb_single_cycle_processor/single_cycle_processor/processor_without_memory/controller/funct7b1
add wave -noupdate /tb_single_cycle_processor/single_cycle_processor/processor_without_memory/controller/MemWrite
add wave -noupdate /tb_single_cycle_processor/single_cycle_processor/processor_without_memory/controller/Branch
add wave -noupdate /tb_single_cycle_processor/single_cycle_processor/processor_without_memory/controller/ALUSrc
add wave -noupdate /tb_single_cycle_processor/single_cycle_processor/processor_without_memory/controller/RegWrite
add wave -noupdate /tb_single_cycle_processor/single_cycle_processor/processor_without_memory/controller/Jump
add wave -noupdate /tb_single_cycle_processor/single_cycle_processor/processor_without_memory/controller/ALUControl
add wave -noupdate /tb_single_cycle_processor/single_cycle_processor/processor_without_memory/controller/ResultSrc
add wave -noupdate /tb_single_cycle_processor/single_cycle_processor/processor_without_memory/controller/ImmSrc
add wave -noupdate /tb_single_cycle_processor/single_cycle_processor/processor_without_memory/controller/ALUOp
add wave -noupdate /tb_single_cycle_processor/single_cycle_processor/processor_without_memory/controller/ResultSrc1
add wave -noupdate /tb_single_cycle_processor/single_cycle_processor/processor_without_memory/controller/ImmSrc1
add wave -noupdate /tb_single_cycle_processor/single_cycle_processor/processor_without_memory/controller/MemWrite1
add wave -noupdate /tb_single_cycle_processor/single_cycle_processor/processor_without_memory/controller/Branch1
add wave -noupdate /tb_single_cycle_processor/single_cycle_processor/processor_without_memory/controller/ALUSrc1
add wave -noupdate /tb_single_cycle_processor/single_cycle_processor/processor_without_memory/controller/RegWrite1
add wave -noupdate /tb_single_cycle_processor/single_cycle_processor/processor_without_memory/controller/Jump1
add wave -noupdate /tb_single_cycle_processor/single_cycle_processor/processor_without_memory/controller/ALUControl1
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {51049 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {0 ps} {104198 ps}
