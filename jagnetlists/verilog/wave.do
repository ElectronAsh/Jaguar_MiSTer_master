onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -format Logic /tb/xpclk
add wave -noupdate -format Logic /tb/xvclk
add wave -noupdate -format Logic /tb/xresetl
add wave -noupdate -format Logic /tb/tom_inst/clk_inst/cfgw
add wave -noupdate -format Logic /tb/cfgen
add wave -noupdate -format Literal /tb/xd
add wave -noupdate -format Literal /tb/xa
add wave -noupdate -format Literal /tb/xma
add wave -noupdate -format Literal /tb/xrasl
add wave -noupdate -format Literal /tb/xcasl
add wave -noupdate -format Literal /tb/xoel
add wave -noupdate -format Literal /tb/xwel
add wave -noupdate -format Literal /tb/xromcsl
add wave -noupdate -format Logic /tb/xdreql
add wave -noupdate -format Logic /tb/xdtackl
add wave -noupdate -format Logic /tb/tom_inst/aen
add wave -noupdate -format Logic /tb/j68_rst
add wave -noupdate -format Logic /tb/j68_clk
add wave -noupdate -format Literal -radix hexadecimal /tb/j68_address
add wave -noupdate -format Logic /tb/j68_rd_ena
add wave -noupdate -format Logic /tb/j68_wr_ena
add wave -noupdate -format Literal -radix hexadecimal /tb/j68_rd_data
add wave -noupdate -format Literal /tb/j68_wr_data
add wave -noupdate -format Literal /tb/j68_fc
add wave -noupdate -format Literal -radix hexadecimal /tb/j68_inst/dbg_pc_reg
add wave -noupdate -format Literal -radix hexadecimal /tb/j68_inst/r_pc_reg
add wave -noupdate -format Literal -radix hexadecimal /tb/os_rom_inst/a
add wave -noupdate -format Literal -radix hexadecimal /tb/os_rom_inst/q
add wave -noupdate -format Logic /tb/tom_inst/abus_inst/from
add wave -noupdate -format Logic /tb/tom_inst/abus_inst/notdev
add wave -noupdate -format Logic /tb/tom_inst/mem_inst/romcst
add wave -noupdate -format Logic /tb/tom_inst/mem_inst/q5a
add wave -noupdate -format Logic /tb/tom_inst/mem_inst/q5b
add wave -noupdate -format Logic /tb/tom_inst/mem_inst/q5c
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {2952 ns} 0}
configure wave -namecolwidth 189
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
configure wave -timelineunits ns
update
WaveRestoreZoom {2365 ns} {4991 ns}
