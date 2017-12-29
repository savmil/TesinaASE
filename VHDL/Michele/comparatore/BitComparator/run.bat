@echo off
echo Running ghdl commands
del *.cf *.vcd
ghdl -a "C:\Users\Michele\Documents\uni\VHDL\comparatore\BitComparator\bit_comparator.vhd"
ghdl -a "C:\Users\Michele\Documents\uni\VHDL\comparatore\BitComparator\tb_bit_comparator.vhd"
ghdl -e tb_bit_comparator
ghdl -r tb_bit_comparator --vcd=bit_comparator.vcd
echo Done