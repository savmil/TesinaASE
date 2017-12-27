@echo off
echo Running ghdl commands
del *.cf *.vcd
ghdl -a "C:\Users\Michele\Documents\uni\VHDL\MAC\half_adder.vhd"
ghdl -a "C:\Users\Michele\Documents\uni\VHDL\MAC\full_adder.vhd"
ghdl -a "C:\Users\Michele\Documents\uni\VHDL\MAC\mac_cell.vhd"
ghdl -a "C:\Users\Michele\Documents\uni\VHDL\MAC\mac_multiplier.vhd"
ghdl -a "C:\Users\Michele\Documents\uni\VHDL\MAC\tb_mac_multiplier.vhd"
ghdl -e tb_mac_multiplier
ghdl -r tb_mac_multiplier --vcd=mac_multiplier.vcd
echo Done