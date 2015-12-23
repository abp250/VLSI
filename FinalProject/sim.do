#restart -f
vsim -novopt work.triangle_tb

#view source
#view objects
#view variables
view wave

delete wave *
add wave -noupdate -format Logic /triangle_tb/top/clk
add wave -noupdate -format Logic /triangle_tb/top/reset
add wave -noupdate -format Logic /triangle_tb/top/nt
add wave -noupdate -format Literal -radix unsigned /triangle_tb/top/x_min
add wave -noupdate -format Literal -radix unsigned /triangle_tb/top/x_max
add wave -noupdate -format Literal -radix unsigned /triangle_tb/top/y_min
add wave -noupdate -format Literal -radix unsigned /triangle_tb/top/y_max
add wave -noupdate -format Literal -radix unsigned /triangle_tb/top/xi
add wave -noupdate -format Literal -radix unsigned /triangle_tb/top/yi
add wave -noupdate -format Literal -radix unsigned /triangle_tb/top/xi_ff
add wave -noupdate -format Literal -radix unsigned /triangle_tb/top/yi_ff
add wave -noupdate -format Logic /triangle_tb/top/busy
add wave -noupdate -format Literal -radix decimal /triangle_tb/top/RLO
add wave -noupdate -format Logic /triangle_tb/top/good
add wave -noupdate -format Logic /triangle_tb/top/check
add wave -noupdate -format Logic /triangle_tb/top/po
add wave -noupdate -format Logic /triangle_tb/top/po_
add wave -noupdate -format Logic /triangle_tb/top/inc_x
add wave -noupdate -format Logic /triangle_tb/top/inc_y
add wave -noupdate -format Logic /triangle_tb/top/rst_int
add wave -noupdate -format Literal -radix unsigned /triangle_tb/top/xo
add wave -noupdate -format Literal -radix unsigned /triangle_tb/top/yo
add wave -noupdate -format Literal -radix unsigned /triangle_tb/top/x
add wave -noupdate -format Literal -radix unsigned /triangle_tb/top/y
add wave -noupdate -format Logic /triangle_tb/top/on_line
add wave -noupdate -format Logic /triangle_tb/top/right_line
add wave -noupdate -format Logic /triangle_tb/top/right_triangle
add wave -noupdate -format Logic /triangle_tb/top/top_line
add wave -noupdate -format Literal -radix unsigned /triangle_tb/top/control
add wave -noupdate -format Logic /triangle_tb/top/sub_en
add wave -noupdate -format Literal -radix decimal /triangle_tb/top/sub_op0
add wave -noupdate -format Literal -radix decimal /triangle_tb/top/sub_op1
add wave -noupdate -format Literal -radix decimal /triangle_tb/top/sub_ans
add wave -noupdate -format Logic /triangle_tb/top/mul_en
add wave -noupdate -format Literal -radix decimal /triangle_tb/top/mul_op0
add wave -noupdate -format Literal -radix decimal /triangle_tb/top/mul_op1
add wave -noupdate -format Literal -radix decimal /triangle_tb/top/mul_ans
add wave -noupdate -format Literal -radix decimal /triangle_tb/top/A
add wave -noupdate -format Literal -radix decimal /triangle_tb/top/B
add wave -noupdate -format Literal -radix decimal /triangle_tb/top/C0
add wave -noupdate -format Literal -radix decimal /triangle_tb/top/D0
add wave -noupdate -format Literal -radix decimal /triangle_tb/top/C1
add wave -noupdate -format Literal -radix decimal /triangle_tb/top/D1
add wave -noupdate -format Literal -radix decimal /triangle_tb/top/AD
add wave -noupdate -format Literal -radix decimal /triangle_tb/top/BC



update
run -all

#type do lock.do
