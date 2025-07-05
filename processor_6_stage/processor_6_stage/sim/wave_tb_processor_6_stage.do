onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -radix hexadecimal /tb_processor_6_stage/clk
add wave -noupdate -radix hexadecimal /tb_processor_6_stage/reset
add wave -noupdate -radix hexadecimal /tb_processor_6_stage/processor_6_stage/PC
add wave -noupdate -radix hexadecimal /tb_processor_6_stage/processor_6_stage/InstrD
add wave -noupdate -radix hexadecimal /tb_processor_6_stage/processor_6_stage/ImmExt
add wave -noupdate -radix hexadecimal /tb_processor_6_stage/processor_6_stage/SrcE
add wave -noupdate -radix hexadecimal /tb_processor_6_stage/processor_6_stage/ALUResultX
add wave -noupdate -radix hexadecimal /tb_processor_6_stage/processor_6_stage/ALUResultM
add wave -noupdate -radix hexadecimal /tb_processor_6_stage/processor_6_stage/WriteDataW
add wave -noupdate -radix hexadecimal /tb_processor_6_stage/processor_6_stage/A32
add wave -noupdate -divider {All Signals}
add wave -noupdate -radix hexadecimal /tb_processor_6_stage/processor_6_stage/clk
add wave -noupdate -radix hexadecimal /tb_processor_6_stage/processor_6_stage/reset
add wave -noupdate -radix hexadecimal /tb_processor_6_stage/processor_6_stage/PCPlus4
add wave -noupdate -radix hexadecimal /tb_processor_6_stage/processor_6_stage/PCTargetE
add wave -noupdate -radix hexadecimal /tb_processor_6_stage/processor_6_stage/PCNext
add wave -noupdate -radix hexadecimal /tb_processor_6_stage/processor_6_stage/PC
add wave -noupdate -radix hexadecimal /tb_processor_6_stage/processor_6_stage/Instr
add wave -noupdate -radix hexadecimal /tb_processor_6_stage/processor_6_stage/InstrF
add wave -noupdate -radix hexadecimal /tb_processor_6_stage/processor_6_stage/PCSrc
add wave -noupdate -radix hexadecimal /tb_processor_6_stage/processor_6_stage/InstrD
add wave -noupdate -radix hexadecimal /tb_processor_6_stage/processor_6_stage/InstrL
add wave -noupdate -radix hexadecimal /tb_processor_6_stage/processor_6_stage/InstrK
add wave -noupdate -radix hexadecimal /tb_processor_6_stage/processor_6_stage/PCD
add wave -noupdate -radix hexadecimal /tb_processor_6_stage/processor_6_stage/PCPlus4D
add wave -noupdate -radix hexadecimal /tb_processor_6_stage/processor_6_stage/WriteDataW
add wave -noupdate -radix hexadecimal /tb_processor_6_stage/processor_6_stage/RD1
add wave -noupdate -radix hexadecimal /tb_processor_6_stage/processor_6_stage/RD2
add wave -noupdate -radix hexadecimal /tb_processor_6_stage/processor_6_stage/ImmExt
add wave -noupdate -radix hexadecimal /tb_processor_6_stage/processor_6_stage/WriteAddW
add wave -noupdate -radix hexadecimal /tb_processor_6_stage/processor_6_stage/ALUControl
add wave -noupdate -radix hexadecimal /tb_processor_6_stage/processor_6_stage/ResultSrc
add wave -noupdate -radix hexadecimal /tb_processor_6_stage/processor_6_stage/ImmSrc
add wave -noupdate -radix hexadecimal /tb_processor_6_stage/processor_6_stage/Branch
add wave -noupdate -radix hexadecimal /tb_processor_6_stage/processor_6_stage/MemWrite
add wave -noupdate -radix hexadecimal /tb_processor_6_stage/processor_6_stage/ALUSrc
add wave -noupdate -radix hexadecimal /tb_processor_6_stage/processor_6_stage/RegWrite
add wave -noupdate -radix hexadecimal /tb_processor_6_stage/processor_6_stage/Jump
add wave -noupdate -radix hexadecimal /tb_processor_6_stage/processor_6_stage/RegWriteW
add wave -noupdate -radix hexadecimal /tb_processor_6_stage/processor_6_stage/FF
add wave -noupdate -radix hexadecimal /tb_processor_6_stage/processor_6_stage/FD
add wave -noupdate -radix hexadecimal /tb_processor_6_stage/processor_6_stage/FE
add wave -noupdate -radix hexadecimal /tb_processor_6_stage/processor_6_stage/RD1E
add wave -noupdate -radix hexadecimal /tb_processor_6_stage/processor_6_stage/RD2E
add wave -noupdate -radix hexadecimal /tb_processor_6_stage/processor_6_stage/PCE
add wave -noupdate -radix hexadecimal /tb_processor_6_stage/processor_6_stage/ImmExtE
add wave -noupdate -radix hexadecimal /tb_processor_6_stage/processor_6_stage/PCPlus4E
add wave -noupdate -radix hexadecimal /tb_processor_6_stage/processor_6_stage/SrcE
add wave -noupdate -radix hexadecimal /tb_processor_6_stage/processor_6_stage/ALUResultX
add wave -noupdate -radix hexadecimal /tb_processor_6_stage/processor_6_stage/A32
add wave -noupdate -radix hexadecimal /tb_processor_6_stage/processor_6_stage/B32
add wave -noupdate -radix hexadecimal /tb_processor_6_stage/processor_6_stage/WriteAddE
add wave -noupdate -radix hexadecimal /tb_processor_6_stage/processor_6_stage/rs1
add wave -noupdate -radix hexadecimal /tb_processor_6_stage/processor_6_stage/rs2
add wave -noupdate -radix hexadecimal /tb_processor_6_stage/processor_6_stage/IS1
add wave -noupdate -radix hexadecimal /tb_processor_6_stage/processor_6_stage/IS2
add wave -noupdate -radix hexadecimal /tb_processor_6_stage/processor_6_stage/ALUControlE
add wave -noupdate -radix hexadecimal /tb_processor_6_stage/processor_6_stage/ResultSrcE
add wave -noupdate -radix hexadecimal /tb_processor_6_stage/processor_6_stage/ResultSrcX
add wave -noupdate -radix hexadecimal /tb_processor_6_stage/processor_6_stage/forword_path_A
add wave -noupdate -radix hexadecimal /tb_processor_6_stage/processor_6_stage/forword_path_B
add wave -noupdate -radix hexadecimal /tb_processor_6_stage/processor_6_stage/RegWriteE
add wave -noupdate -radix hexadecimal /tb_processor_6_stage/processor_6_stage/MemWriteE
add wave -noupdate -radix hexadecimal /tb_processor_6_stage/processor_6_stage/RegWriteE1
add wave -noupdate -radix hexadecimal /tb_processor_6_stage/processor_6_stage/MemWriteE1
add wave -noupdate -radix hexadecimal /tb_processor_6_stage/processor_6_stage/JumpE
add wave -noupdate -radix hexadecimal /tb_processor_6_stage/processor_6_stage/JumpE1
add wave -noupdate -radix hexadecimal /tb_processor_6_stage/processor_6_stage/BranchE
add wave -noupdate -radix hexadecimal /tb_processor_6_stage/processor_6_stage/BranchE1
add wave -noupdate -radix hexadecimal /tb_processor_6_stage/processor_6_stage/ALUSrcE
add wave -noupdate -radix hexadecimal /tb_processor_6_stage/processor_6_stage/RD2X
add wave -noupdate -radix hexadecimal /tb_processor_6_stage/processor_6_stage/SrcX
add wave -noupdate -radix hexadecimal /tb_processor_6_stage/processor_6_stage/A32X
add wave -noupdate -radix hexadecimal /tb_processor_6_stage/processor_6_stage/PCPlus4X
add wave -noupdate -radix hexadecimal /tb_processor_6_stage/processor_6_stage/C
add wave -noupdate -radix hexadecimal /tb_processor_6_stage/processor_6_stage/C1
add wave -noupdate -radix hexadecimal /tb_processor_6_stage/processor_6_stage/PCX
add wave -noupdate -radix hexadecimal /tb_processor_6_stage/processor_6_stage/ImmExtX
add wave -noupdate -radix hexadecimal /tb_processor_6_stage/processor_6_stage/WriteAddX
add wave -noupdate -radix hexadecimal /tb_processor_6_stage/processor_6_stage/ALUControlX
add wave -noupdate -radix hexadecimal /tb_processor_6_stage/processor_6_stage/funct3X
add wave -noupdate -radix hexadecimal /tb_processor_6_stage/processor_6_stage/RegWriteX
add wave -noupdate -radix hexadecimal /tb_processor_6_stage/processor_6_stage/MemWriteX
add wave -noupdate -radix hexadecimal /tb_processor_6_stage/processor_6_stage/JumpX
add wave -noupdate -radix hexadecimal /tb_processor_6_stage/processor_6_stage/BranchX
add wave -noupdate -radix hexadecimal /tb_processor_6_stage/processor_6_stage/Zero
add wave -noupdate -radix hexadecimal /tb_processor_6_stage/processor_6_stage/ALUResultM
add wave -noupdate -radix hexadecimal /tb_processor_6_stage/processor_6_stage/RD2M
add wave -noupdate -radix hexadecimal /tb_processor_6_stage/processor_6_stage/PCPlus4M
add wave -noupdate -radix hexadecimal /tb_processor_6_stage/processor_6_stage/ReadDataM
add wave -noupdate -radix hexadecimal /tb_processor_6_stage/processor_6_stage/WriteAddM
add wave -noupdate -radix hexadecimal /tb_processor_6_stage/processor_6_stage/ResultSrcM
add wave -noupdate -radix hexadecimal /tb_processor_6_stage/processor_6_stage/RegWriteM
add wave -noupdate -radix hexadecimal /tb_processor_6_stage/processor_6_stage/MemWriteM
add wave -noupdate -radix hexadecimal /tb_processor_6_stage/processor_6_stage/FF_d
add wave -noupdate -radix hexadecimal /tb_processor_6_stage/processor_6_stage/s
add wave -noupdate -radix hexadecimal /tb_processor_6_stage/processor_6_stage/STF
add wave -noupdate -radix hexadecimal /tb_processor_6_stage/processor_6_stage/STD
add wave -noupdate -radix hexadecimal /tb_processor_6_stage/processor_6_stage/STE
add wave -noupdate -radix hexadecimal /tb_processor_6_stage/processor_6_stage/STF1
add wave -noupdate -radix hexadecimal /tb_processor_6_stage/processor_6_stage/ReadDataW
add wave -noupdate -radix hexadecimal /tb_processor_6_stage/processor_6_stage/ALUResultW
add wave -noupdate -radix hexadecimal /tb_processor_6_stage/processor_6_stage/PCPlus4W
add wave -noupdate -radix hexadecimal /tb_processor_6_stage/processor_6_stage/ResultSrcW
add wave -noupdate -radix hexadecimal /tb_processor_6_stage/processor_6_stage/E
add wave -noupdate -radix hexadecimal /tb_processor_6_stage/processor_6_stage/F
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {210688 ps} 0}
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
WaveRestoreZoom {186386 ps} {327446 ps}
