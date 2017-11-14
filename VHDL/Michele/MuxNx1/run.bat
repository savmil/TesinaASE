@echo off
echo Running ghdl commands
del *.cf *.vcd
ghdl -a --ieee=synopsys "C:\Users\Angelo&Michele\Documents\uni\ASE\componenti\MuxNx1\muxn_1.vhd"
ghdl -a --ieee=synopsys "C:\Users\Angelo&Michele\Documents\uni\ASE\componenti\MuxNx1\muxn_1_testbench.vhd"
ghdl -e --ieee=synopsys muxn_1_testbench
ghdl -r --ieee=synopsys muxn_1_testbench --vcd=muxn_1.vcd
echo Done