@echo off
echo Running ghdl commands
del *.cf *.vcd
ghdl -a "C:\Users\Angelo&Michele\Documents\uni\ASE\componenti\LatchD\latch_d.vhd"
ghdl -a --ieee=synopsys "C:\Users\Angelo&Michele\Documents\uni\ASE\componenti\LatchD\latch_d_testbench.vhd"
ghdl -e --ieee=synopsys latch_d_testbench
ghdl -r --ieee=synopsys latch_d_testbench --vcd=latch_d.vcd
echo Done