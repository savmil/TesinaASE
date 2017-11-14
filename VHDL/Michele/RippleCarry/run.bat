@echo off
echo Running ghdl commands
del *.cf *.vcd
ghdl -a "C:\Users\Angelo&Michele\Documents\uni\ASE\componenti\RippleCarry\half_adder.vhd"
ghdl -a "C:\Users\Angelo&Michele\Documents\uni\ASE\componenti\RippleCarry\full_adder.vhd"
ghdl -a --ieee=synopsys "C:\Users\Angelo&Michele\Documents\uni\ASE\componenti\RippleCarry\ripple_carry_adder.vhd"
ghdl -a --ieee=synopsys "C:\Users\Angelo&Michele\Documents\uni\ASE\componenti\RippleCarry\ripple_carry_adder_testbench.vhd"
ghdl -e --ieee=synopsys ripple_carry_adder_testbench
ghdl -r --ieee=synopsys ripple_carry_adder_testbench --vcd=ripple_carry_adder.vcd
echo Done