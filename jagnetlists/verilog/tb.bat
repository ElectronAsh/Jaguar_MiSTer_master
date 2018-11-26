iverilog -D ICARUS -o tb.vvp -s tb -c tb_cmd.txt
@if errorlevel 1 goto end
vvp tb.vvp -v -lxt2
gtkwave -f tb.lxt -a gtkw
:end
