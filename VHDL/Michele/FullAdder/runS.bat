@echo off
echo Running ghdl commands
del *.cf *.vcd
ghdl -a "C:\Users\Angelo&Michele\Documents\uni\ASE\componenti\FullAdder\half_adder.vhd"
ghdl -a "C:\Users\Angelo&Michele\Documents\uni\ASE\componenti\FullAdder\full_adder.vhd"
ghdl -a "C:\Users\Angelo&Michele\Documents\uni\ASE\componenti\FullAdder\full_adder_testbench.vhd"
ghdl -e full_adder_testbench
ghdl -r full_adder_testbench --vcd=full_adder.vcd
echo Done