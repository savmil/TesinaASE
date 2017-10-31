@echo off
echo Comandi GHDL
del *.cf *.vcd
ghdl -a --ieee=synopsys "C:\Users\Angelo&Michele\Documents\uni\ASE\componenti\Demux1xN\demux1_n.vhd"
ghdl -a --ieee=synopsys "C:\Users\Angelo&Michele\Documents\uni\ASE\componenti\Demux1xN\demux1_n_testbench.vhd"
ghdl -e --ieee=synopsys demux1_n_testbench
ghdl -r --ieee=synopsys demux1_n_testbench --vcd=demux1_n.vcd
echo Fine