onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -radix hexadecimal /tb_processor_6_with_mul/clk
add wave -noupdate -radix hexadecimal /tb_processor_6_with_mul/reset
add wave -noupdate -radix hexadecimal /tb_processor_6_with_mul/processor_6_with_mul/PC
add wave -noupdate -radix hexadecimal /tb_processor_6_with_mul/processor_6_with_mul/InstrD
add wave -noupdate -radix hexadecimal /tb_processor_6_with_mul/processor_6_with_mul/ImmExt
add wave -noupdate -radix hexadecimal /tb_processor_6_with_mul/processor_6_with_mul/SrcE
add wave -noupdate -radix hexadecimal /tb_processor_6_with_mul/processor_6_with_mul/A32
add wave -noupdate -radix hexadecimal /tb_processor_6_with_mul/processor_6_with_mul/ALUResultX
add wave -noupdate -radix hexadecimal /tb_processor_6_with_mul/processor_6_with_mul/ALUResultM
add wave -noupdate -radix hexadecimal /tb_processor_6_with_mul/processor_6_with_mul/WriteDataW
add wave -noupdate -radix hexadecimal /tb_processor_6_with_mul/processor_6_with_mul/mult_ans
add wave -noupdate -radix hexadecimal /tb_processor_6_with_mul/processor_6_with_mul/controller/opdecoder/op
add wave -noupdate -radix hexadecimal /tb_processor_6_with_mul/processor_6_with_mul/controller/opdecoder/funct7b1
add wave -noupdate -radix hexadecimal /tb_processor_6_with_mul/processor_6_with_mul/controller/opdecoder/ResultSrc
add wave -noupdate -radix hexadecimal /tb_processor_6_with_mul/processor_6_with_mul/controller/opdecoder/ImmSrc
add wave -noupdate -radix hexadecimal /tb_processor_6_with_mul/processor_6_with_mul/controller/opdecoder/ALUOp
add wave -noupdate -radix hexadecimal /tb_processor_6_with_mul/processor_6_with_mul/controller/opdecoder/MemWrite
add wave -noupdate -radix hexadecimal /tb_processor_6_with_mul/processor_6_with_mul/controller/opdecoder/Branch
add wave -noupdate -radix hexadecimal /tb_processor_6_with_mul/processor_6_with_mul/controller/opdecoder/ALUSrc
add wave -noupdate -radix hexadecimal /tb_processor_6_with_mul/processor_6_with_mul/controller/opdecoder/RegWrite
add wave -noupdate -radix hexadecimal /tb_processor_6_with_mul/processor_6_with_mul/controller/opdecoder/Jump
add wave -noupdate -radix hexadecimal /tb_processor_6_with_mul/processor_6_with_mul/controller/opdecoder/controls
add wave -noupdate -divider {All Signals}
add wave -noupdate -radix hexadecimal /tb_processor_6_with_mul/processor_6_with_mul/clk
add wave -noupdate -radix hexadecimal /tb_processor_6_with_mul/processor_6_with_mul/reset
add wave -noupdate -radix hexadecimal /tb_processor_6_with_mul/processor_6_with_mul/PCPlus4
add wave -noupdate -radix hexadecimal /tb_processor_6_with_mul/processor_6_with_mul/PCTargetE
add wave -noupdate -radix hexadecimal /tb_processor_6_with_mul/processor_6_with_mul/PCNext
add wave -noupdate -radix hexadecimal /tb_processor_6_with_mul/processor_6_with_mul/PC
add wave -noupdate -radix hexadecimal /tb_processor_6_with_mul/processor_6_with_mul/Instr
add wave -noupdate -radix hexadecimal /tb_processor_6_with_mul/processor_6_with_mul/InstrF
add wave -noupdate -radix hexadecimal /tb_processor_6_with_mul/processor_6_with_mul/PCSrc
add wave -noupdate -radix hexadecimal /tb_processor_6_with_mul/processor_6_with_mul/InstrD
add wave -noupdate -radix hexadecimal /tb_processor_6_with_mul/processor_6_with_mul/InstrL
add wave -noupdate -radix hexadecimal /tb_processor_6_with_mul/processor_6_with_mul/InstrK
add wave -noupdate -radix hexadecimal /tb_processor_6_with_mul/processor_6_with_mul/PCD
add wave -noupdate -radix hexadecimal /tb_processor_6_with_mul/processor_6_with_mul/PCPlus4D
add wave -noupdate -radix hexadecimal /tb_processor_6_with_mul/processor_6_with_mul/WriteDataW
add wave -noupdate -radix hexadecimal /tb_processor_6_with_mul/processor_6_with_mul/RD1
add wave -noupdate -radix hexadecimal /tb_processor_6_with_mul/processor_6_with_mul/RD2
add wave -noupdate -radix hexadecimal /tb_processor_6_with_mul/processor_6_with_mul/ImmExt
add wave -noupdate -radix hexadecimal /tb_processor_6_with_mul/processor_6_with_mul/WriteAddW
add wave -noupdate -radix hexadecimal /tb_processor_6_with_mul/processor_6_with_mul/ALUControl
add wave -noupdate -radix hexadecimal /tb_processor_6_with_mul/processor_6_with_mul/ResultSrc
add wave -noupdate -radix hexadecimal /tb_processor_6_with_mul/processor_6_with_mul/ImmSrc
add wave -noupdate -radix hexadecimal /tb_processor_6_with_mul/processor_6_with_mul/Branch
add wave -noupdate -radix hexadecimal /tb_processor_6_with_mul/processor_6_with_mul/MemWrite
add wave -noupdate -radix hexadecimal /tb_processor_6_with_mul/processor_6_with_mul/ALUSrc
add wave -noupdate -radix hexadecimal /tb_processor_6_with_mul/processor_6_with_mul/RegWrite
add wave -noupdate -radix hexadecimal /tb_processor_6_with_mul/processor_6_with_mul/Jump
add wave -noupdate -radix hexadecimal /tb_processor_6_with_mul/processor_6_with_mul/RegWriteW
add wave -noupdate -radix hexadecimal /tb_processor_6_with_mul/processor_6_with_mul/FF
add wave -noupdate -radix hexadecimal /tb_processor_6_with_mul/processor_6_with_mul/FD
add wave -noupdate -radix hexadecimal /tb_processor_6_with_mul/processor_6_with_mul/FE
add wave -noupdate -radix hexadecimal /tb_processor_6_with_mul/processor_6_with_mul/RD1E
add wave -noupdate -radix hexadecimal /tb_processor_6_with_mul/processor_6_with_mul/RD2E
add wave -noupdate -radix hexadecimal /tb_processor_6_with_mul/processor_6_with_mul/PCE
add wave -noupdate -radix hexadecimal /tb_processor_6_with_mul/processor_6_with_mul/ImmExtE
add wave -noupdate -radix hexadecimal /tb_processor_6_with_mul/processor_6_with_mul/PCPlus4E
add wave -noupdate -radix hexadecimal /tb_processor_6_with_mul/processor_6_with_mul/SrcE
add wave -noupdate -radix hexadecimal /tb_processor_6_with_mul/processor_6_with_mul/ALUResultX
add wave -noupdate -radix hexadecimal /tb_processor_6_with_mul/processor_6_with_mul/A32
add wave -noupdate -radix hexadecimal /tb_processor_6_with_mul/processor_6_with_mul/B32
add wave -noupdate -radix hexadecimal /tb_processor_6_with_mul/processor_6_with_mul/WriteAddE
add wave -noupdate -radix hexadecimal /tb_processor_6_with_mul/processor_6_with_mul/rs1
add wave -noupdate -radix hexadecimal /tb_processor_6_with_mul/processor_6_with_mul/rs2
add wave -noupdate -radix hexadecimal /tb_processor_6_with_mul/processor_6_with_mul/IS1
add wave -noupdate -radix hexadecimal /tb_processor_6_with_mul/processor_6_with_mul/IS2
add wave -noupdate -radix hexadecimal /tb_processor_6_with_mul/processor_6_with_mul/ALUControlE
add wave -noupdate -radix hexadecimal /tb_processor_6_with_mul/processor_6_with_mul/ResultSrcE
add wave -noupdate -radix hexadecimal /tb_processor_6_with_mul/processor_6_with_mul/ResultSrcX
add wave -noupdate -radix hexadecimal /tb_processor_6_with_mul/processor_6_with_mul/forword_path_A
add wave -noupdate -radix hexadecimal /tb_processor_6_with_mul/processor_6_with_mul/forword_path_B
add wave -noupdate -radix hexadecimal /tb_processor_6_with_mul/processor_6_with_mul/RegWriteE
add wave -noupdate -radix hexadecimal /tb_processor_6_with_mul/processor_6_with_mul/MemWriteE
add wave -noupdate -radix hexadecimal /tb_processor_6_with_mul/processor_6_with_mul/RegWriteE1
add wave -noupdate -radix hexadecimal /tb_processor_6_with_mul/processor_6_with_mul/MemWriteE1
add wave -noupdate -radix hexadecimal /tb_processor_6_with_mul/processor_6_with_mul/JumpE
add wave -noupdate -radix hexadecimal /tb_processor_6_with_mul/processor_6_with_mul/JumpE1
add wave -noupdate -radix hexadecimal /tb_processor_6_with_mul/processor_6_with_mul/BranchE
add wave -noupdate -radix hexadecimal /tb_processor_6_with_mul/processor_6_with_mul/BranchE1
add wave -noupdate -radix hexadecimal /tb_processor_6_with_mul/processor_6_with_mul/ALUSrcE
add wave -noupdate -radix hexadecimal /tb_processor_6_with_mul/processor_6_with_mul/RD2X
add wave -noupdate -radix hexadecimal /tb_processor_6_with_mul/processor_6_with_mul/SrcX
add wave -noupdate -radix hexadecimal /tb_processor_6_with_mul/processor_6_with_mul/A32X
add wave -noupdate -radix hexadecimal /tb_processor_6_with_mul/processor_6_with_mul/PCPlus4X
add wave -noupdate -radix hexadecimal /tb_processor_6_with_mul/processor_6_with_mul/C1
add wave -noupdate -radix hexadecimal /tb_processor_6_with_mul/processor_6_with_mul/PCX
add wave -noupdate -radix hexadecimal /tb_processor_6_with_mul/processor_6_with_mul/ImmExtX
add wave -noupdate -radix hexadecimal /tb_processor_6_with_mul/processor_6_with_mul/WriteAddX
add wave -noupdate -radix hexadecimal /tb_processor_6_with_mul/processor_6_with_mul/ALUControlX
add wave -noupdate -radix hexadecimal /tb_processor_6_with_mul/processor_6_with_mul/funct3X
add wave -noupdate -radix hexadecimal /tb_processor_6_with_mul/processor_6_with_mul/RegWriteX
add wave -noupdate -radix hexadecimal /tb_processor_6_with_mul/processor_6_with_mul/MemWriteX
add wave -noupdate -radix hexadecimal /tb_processor_6_with_mul/processor_6_with_mul/JumpX
add wave -noupdate -radix hexadecimal /tb_processor_6_with_mul/processor_6_with_mul/BranchX
add wave -noupdate -radix hexadecimal /tb_processor_6_with_mul/processor_6_with_mul/Zero
add wave -noupdate -radix hexadecimal /tb_processor_6_with_mul/processor_6_with_mul/ALUResultM
add wave -noupdate -radix hexadecimal /tb_processor_6_with_mul/processor_6_with_mul/RD2M
add wave -noupdate -radix hexadecimal /tb_processor_6_with_mul/processor_6_with_mul/PCPlus4M
add wave -noupdate -radix hexadecimal /tb_processor_6_with_mul/processor_6_with_mul/ReadDataM
add wave -noupdate -radix hexadecimal /tb_processor_6_with_mul/processor_6_with_mul/WriteAddM
add wave -noupdate -radix hexadecimal /tb_processor_6_with_mul/processor_6_with_mul/ResultSrcM
add wave -noupdate -radix hexadecimal /tb_processor_6_with_mul/processor_6_with_mul/RegWriteM
add wave -noupdate -radix hexadecimal /tb_processor_6_with_mul/processor_6_with_mul/MemWriteM
add wave -noupdate -radix hexadecimal /tb_processor_6_with_mul/processor_6_with_mul/FF_d
add wave -noupdate -radix hexadecimal /tb_processor_6_with_mul/processor_6_with_mul/s
add wave -noupdate -radix hexadecimal /tb_processor_6_with_mul/processor_6_with_mul/STF
add wave -noupdate -radix hexadecimal /tb_processor_6_with_mul/processor_6_with_mul/STD
add wave -noupdate -radix hexadecimal /tb_processor_6_with_mul/processor_6_with_mul/STE
add wave -noupdate -radix hexadecimal /tb_processor_6_with_mul/processor_6_with_mul/STF1
add wave -noupdate -radix hexadecimal /tb_processor_6_with_mul/processor_6_with_mul/ReadDataW
add wave -noupdate -radix hexadecimal /tb_processor_6_with_mul/processor_6_with_mul/ALUResultW
add wave -noupdate -radix hexadecimal /tb_processor_6_with_mul/processor_6_with_mul/PCPlus4W
add wave -noupdate -radix hexadecimal /tb_processor_6_with_mul/processor_6_with_mul/ResultSrcW
add wave -noupdate -radix hexadecimal /tb_processor_6_with_mul/processor_6_with_mul/E
add wave -noupdate -radix hexadecimal /tb_processor_6_with_mul/processor_6_with_mul/F
add wave -noupdate -radix hexadecimal /tb_processor_6_with_mul/processor_6_with_mul/MWCS/clk
add wave -noupdate -radix hexadecimal /tb_processor_6_with_mul/processor_6_with_mul/MWCS/reset
add wave -noupdate -radix hexadecimal /tb_processor_6_with_mul/processor_6_with_mul/MWCS/s
add wave -noupdate -radix hexadecimal /tb_processor_6_with_mul/processor_6_with_mul/MWCS/A
add wave -noupdate -radix hexadecimal /tb_processor_6_with_mul/processor_6_with_mul/MWCS/B
add wave -noupdate -radix hexadecimal /tb_processor_6_with_mul/processor_6_with_mul/MWCS/O
add wave -noupdate -radix hexadecimal /tb_processor_6_with_mul/processor_6_with_mul/MWCS/s_d
add wave -noupdate -radix hexadecimal /tb_processor_6_with_mul/processor_6_with_mul/MWCS/s_2d
add wave -noupdate -radix hexadecimal /tb_processor_6_with_mul/processor_6_with_mul/MWCS/D
add wave -noupdate -radix hexadecimal /tb_processor_6_with_mul/processor_6_with_mul/MWCS/C0
add wave -noupdate -radix hexadecimal /tb_processor_6_with_mul/processor_6_with_mul/MWCS/S0
add wave -noupdate -radix hexadecimal /tb_processor_6_with_mul/processor_6_with_mul/MWCS/S0f
add wave -noupdate -radix hexadecimal /tb_processor_6_with_mul/processor_6_with_mul/MWCS/C1
add wave -noupdate -radix hexadecimal /tb_processor_6_with_mul/processor_6_with_mul/MWCS/S1
add wave -noupdate -radix hexadecimal /tb_processor_6_with_mul/processor_6_with_mul/MWCS/C1f
add wave -noupdate -radix hexadecimal /tb_processor_6_with_mul/processor_6_with_mul/MWCS/S1f
add wave -noupdate -radix hexadecimal /tb_processor_6_with_mul/processor_6_with_mul/MWCS/C16
add wave -noupdate -radix hexadecimal /tb_processor_6_with_mul/processor_6_with_mul/MWCS/C16f
add wave -noupdate -radix hexadecimal /tb_processor_6_with_mul/processor_6_with_mul/MWCS/S16
add wave -noupdate -radix hexadecimal /tb_processor_6_with_mul/processor_6_with_mul/MWCS/S16f
add wave -noupdate -radix hexadecimal /tb_processor_6_with_mul/processor_6_with_mul/MWCS/C2
add wave -noupdate -radix hexadecimal /tb_processor_6_with_mul/processor_6_with_mul/MWCS/S2
add wave -noupdate -radix hexadecimal /tb_processor_6_with_mul/processor_6_with_mul/MWCS/C24
add wave -noupdate -radix hexadecimal /tb_processor_6_with_mul/processor_6_with_mul/MWCS/C24f
add wave -noupdate -radix hexadecimal /tb_processor_6_with_mul/processor_6_with_mul/MWCS/S24
add wave -noupdate -radix hexadecimal /tb_processor_6_with_mul/processor_6_with_mul/MWCS/C3
add wave -noupdate -radix hexadecimal /tb_processor_6_with_mul/processor_6_with_mul/MWCS/S3
add wave -noupdate -radix hexadecimal /tb_processor_6_with_mul/processor_6_with_mul/MWCS/C32
add wave -noupdate -radix hexadecimal /tb_processor_6_with_mul/processor_6_with_mul/MWCS/S32
add wave -noupdate -radix hexadecimal /tb_processor_6_with_mul/processor_6_with_mul/MWCS/S40
add wave -noupdate -radix hexadecimal /tb_processor_6_with_mul/processor_6_with_mul/MWCS/C40
add wave -noupdate -radix hexadecimal /tb_processor_6_with_mul/processor_6_with_mul/MWCS/S41
add wave -noupdate -radix hexadecimal /tb_processor_6_with_mul/processor_6_with_mul/MWCS/C41
add wave -noupdate -radix hexadecimal /tb_processor_6_with_mul/processor_6_with_mul/MWCS/S5
add wave -noupdate -radix hexadecimal /tb_processor_6_with_mul/processor_6_with_mul/MWCS/C5
add wave -noupdate -radix hexadecimal /tb_processor_6_with_mul/processor_6_with_mul/MWCS/S6
add wave -noupdate -radix hexadecimal /tb_processor_6_with_mul/processor_6_with_mul/MWCS/C6
add wave -noupdate -radix hexadecimal /tb_processor_6_with_mul/processor_6_with_mul/MWCS/S70
add wave -noupdate -radix hexadecimal /tb_processor_6_with_mul/processor_6_with_mul/MWCS/C70
add wave -noupdate -radix hexadecimal /tb_processor_6_with_mul/processor_6_with_mul/MWCS/S71
add wave -noupdate -radix hexadecimal /tb_processor_6_with_mul/processor_6_with_mul/MWCS/C71
add wave -noupdate -radix hexadecimal /tb_processor_6_with_mul/processor_6_with_mul/MWCS/sum
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {1223487 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 146
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
WaveRestoreZoom {1129848 ps} {1287185 ps}
