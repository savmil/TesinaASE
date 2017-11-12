@echo off
echo Running ghdl commands
del *.cf *.vcd
ghdl -a "C:\Users\Angelo&Michele\Documents\uni\ASE\componenti\HalfAdder\half_adder.vhd"
ghdl -a "C:\Users\Angelo&Michele\Documents\uni\ASE\componenti\HalfAdder\half_adder_testbench.vhd"
ghdl -e half_adder_testbench
ghdl -r half_adder_testbench --vcd=half_adder.vcd
echo Done