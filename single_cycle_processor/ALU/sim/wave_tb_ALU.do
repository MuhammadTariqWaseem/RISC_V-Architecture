onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -divider Inputs
add wave -noupdate -radix hexadecimal /tb_ALU/A
add wave -noupdate -radix hexadecimal /tb_ALU/B
add wave -noupdate -divider {Control Pins}
add wave -noupdate -radix hexadecimal -childformat {{{/tb_ALU/ALUOp[2]} -radix hexadecimal} {{/tb_ALU/ALUOp[1]} -radix hexadecimal} {{/tb_ALU/ALUOp[0]} -radix hexadecimal}} -expand -subitemconfig {{/tb_ALU/ALUOp[2]} {-radix hexadecimal} {/tb_ALU/ALUOp[1]} {-radix hexadecimal} {/tb_ALU/ALUOp[0]} {-radix hexadecimal}} /tb_ALU/ALUOp
add wave -noupdate -radix hexadecimal -childformat {{{/tb_ALU/funct3[2]} -radix hexadecimal} {{/tb_ALU/funct3[1]} -radix hexadecimal} {{/tb_ALU/funct3[0]} -radix hexadecimal}} -expand -subitemconfig {{/tb_ALU/funct3[2]} {-radix hexadecimal} {/tb_ALU/funct3[1]} {-radix hexadecimal} {/tb_ALU/funct3[0]} {-radix hexadecimal}} /tb_ALU/funct3
add wave -noupdate -divider Output
add wave -noupdate -radix hexadecimal /tb_ALU/Result
add wave -noupdate -radix hexadecimal /tb_ALU/zero
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 0}
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
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ps} {336 ps}
