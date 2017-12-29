@echo off
echo Running ghdl commands
del *.cf *.vcd
ghdl -a "C:\Users\Michele\Documents\uni\VHDL\comparatore\BitStringComparator\bit_comparator.vhd"
ghdl -a "C:\Users\Michele\Documents\uni\VHDL\comparatore\BitStringComparator\bit_string_comparator.vhd"
ghdl -a "C:\Users\Michele\Documents\uni\VHDL\comparatore\BitStringComparator\tb_bit_string_comparator.vhd"
ghdl -e tb_bit_string_comparator
ghdl -r tb_bit_string_comparator --vcd=bit_string_comparator.vcd
echo Done