onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -divider INPUTS
add wave -noupdate -format Logic /testfixture/test/CLK
add wave -noupdate -format Logic /testfixture/test/RESET
add wave -noupdate -format Literal /testfixture/test/X
add wave -noupdate -format Literal /testfixture/test/x
add wave -noupdate -format Literal /testfixture/test/Y
add wave -noupdate -format Literal /testfixture/test/y
add wave -noupdate -format Literal /testfixture/test/W
add wave -noupdate -format Literal /testfixture/test/w
add wave -noupdate -divider SUMMATION
add wave -noupdate -format Literal /testfixture/test/SumXW
add wave -noupdate -format Literal /testfixture/test/SumYW
add wave -noupdate -format Literal /testfixture/test/SumW
add wave -noupdate -format Literal /testfixture/test/sumxw
add wave -noupdate -format Literal /testfixture/test/sumyw
add wave -noupdate -format Literal /testfixture/test/sumw
add wave -noupdate -format Literal /testfixture/test/counter
add wave -noupdate -format Literal /testfixture/test/farthest
add wave -noupdate -divider {FIRST POINT}
add wave -noupdate -format Literal /testfixture/test/D0
add wave -noupdate -format Literal /testfixture/test/X0
add wave -noupdate -format Literal /testfixture/test/Y0
add wave -noupdate -format Literal /testfixture/test/W0
add wave -noupdate -divider {SECOND POINT}
add wave -noupdate -format Literal /testfixture/test/D1
add wave -noupdate -format Literal /testfixture/test/X1
add wave -noupdate -format Literal /testfixture/test/Y1
add wave -noupdate -format Literal /testfixture/test/W1
add wave -noupdate -divider {THIRD POINT}
add wave -noupdate -format Literal /testfixture/test/D2
add wave -noupdate -format Literal /testfixture/test/X2
add wave -noupdate -format Literal /testfixture/test/Y2
add wave -noupdate -format Literal /testfixture/test/W2
add wave -noupdate -divider {FOURTH POINT}
add wave -noupdate -format Literal /testfixture/test/D3
add wave -noupdate -format Literal /testfixture/test/X3
add wave -noupdate -format Literal /testfixture/test/Y3
add wave -noupdate -format Literal /testfixture/test/W3
add wave -noupdate -divider {FIFTH POINT}
add wave -noupdate -format Literal /testfixture/test/D4
add wave -noupdate -format Literal /testfixture/test/X4
add wave -noupdate -format Literal /testfixture/test/Y4
add wave -noupdate -format Literal /testfixture/test/W4
add wave -noupdate -divider {SIXTH POINT}
add wave -noupdate -format Literal /testfixture/test/D5
add wave -noupdate -format Literal /testfixture/test/X5
add wave -noupdate -format Literal /testfixture/test/Y5
add wave -noupdate -format Literal /testfixture/test/W5
add wave -noupdate -divider {NEW POINT}
add wave -noupdate -format Literal /testfixture/test/D6
add wave -noupdate -format Literal /testfixture/test/X6
add wave -noupdate -format Literal /testfixture/test/Y6
add wave -noupdate -format Literal /testfixture/test/W6
add wave -noupdate -divider ROUNDING
add wave -noupdate -format Literal /testfixture/test/R
add wave -noupdate -divider OUTPUTS
add wave -noupdate -format Literal /testfixture/test/Xc
add wave -noupdate -format Literal /testfixture/test/Yc
add wave -noupdate -format Logic /testfixture/test/READY
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {440 ps} 0}
configure wave -namecolwidth 150
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits sec
update
WaveRestoreZoom {0 ps} {1 ns}
