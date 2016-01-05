onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -format Logic -radix unsigned /ALT_MULTADD_tb/iCLK
add wave -noupdate -format Logic /ALT_MULTADD_tb/EN
add wave -noupdate -format Logic -radix unsigned /ALT_MULTADD_tb/iRST_N
add wave -noupdate -format Logic -radix unsigned /ALT_MULTADD_tb/iSEL
add wave -noupdate -format Literal -radix unsigned /ALT_MULTADD_tb/iA0
add wave -noupdate -format Literal -radix unsigned /ALT_MULTADD_tb/iA1
add wave -noupdate -format Literal -radix unsigned /ALT_MULTADD_tb/iB0
add wave -noupdate -format Literal -radix unsigned /ALT_MULTADD_tb/iB1
add wave -noupdate -format Literal -radix unsigned /ALT_MULTADD_tb/oRESULT
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {15301221 ps} 0}
configure wave -namecolwidth 194
configure wave -valuecolwidth 39
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
WaveRestoreZoom {0 ps} {63 us}
