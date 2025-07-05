onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -divider Input
add wave -noupdate /tb_opdecoder/op
add wave -noupdate -divider Output
add wave -noupdate /tb_opdecoder/ResultSrc
add wave -noupdate -expand /tb_opdecoder/ImmSrc
add wave -noupdate -expand /tb_opdecoder/ALUOp
add wave -noupdate /tb_opdecoder/MemWrite
add wave -noupdate /tb_opdecoder/Branch
add wave -noupdate /tb_opdecoder/ALUSrc
add wave -noupdate /tb_opdecoder/RegWrite
add wave -noupdate /tb_opdecoder/Jump
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
WaveRestoreZoom {0 ps} {147 ps}
