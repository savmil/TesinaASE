@echo off
echo Comandi GHDL
del *.cf *.vcd
ghdl -a --ieee=synopsys "C:\Users\Angelo&Michele\Documents\uni\ASE\componenti\Demux1x4\demux1_4.vhd"
ghdl -a --ieee=synopsys "C:\Users\Angelo&Michele\Documents\uni\ASE\componenti\Demux1x4\demux1_4_testbench.vhd"
ghdl -e --ieee=synopsys demux1_4_testbench
ghdl -r --ieee=synopsys demux1_4_testbench --vcd=demux1_4.vcd
echo Fine