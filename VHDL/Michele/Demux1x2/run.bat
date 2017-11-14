@echo off
echo Comandi ghdl
del *.cf *.vcd
ghdl -a "C:\Users\Angelo&Michele\Documents\uni\ASE\componenti\Demux1x2\demux1_2.vhd"
ghdl -a "C:\Users\Angelo&Michele\Documents\uni\ASE\componenti\Demux1x2\demux1_2_testbench.vhd"
ghdl -e demux1_2_testbench
ghdl -r demux1_2_testbench --vcd=demux1_2.vcd
echo Fine