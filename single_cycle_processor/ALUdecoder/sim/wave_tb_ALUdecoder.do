onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -divider {Input Controls}
add wave -noupdate -radix hexadecimal /tb_ALUdecoder/funct7b5
add wave -noupdate -radix hexadecimal /tb_ALUdecoder/opb5
add wave -noupdate -radix hexadecimal /tb_ALUdecoder/funct3
add wave -noupdate -radix hexadecimal /tb_ALUdecoder/ALUOp
add wave -noupdate -radix hexadecimal /tb_ALUdecoder/funct7b1
add wave -noupdate -divider Output
add wave -noupdate -radix hexadecimal /tb_ALUdecoder/ALUControl
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 0}
quietly wave cursor active 0
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
WaveRestoreZoom {330 ps} {1889 ps}
