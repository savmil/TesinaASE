@echo off
echo Running ghdl commands
del *.cf *.vcd
ghdl -a "C:\Users\Angelo&Michele\Documents\uni\ASE\componenti\EdgeTriggeredD\edge_triggered.vhd"
ghdl -a --ieee=synopsys "C:\Users\Angelo&Michele\Documents\uni\ASE\componenti\EdgeTriggeredD\edge_triggered_testbench.vhd"
ghdl -e --ieee=synopsys edge_triggered_testbench
ghdl -r --ieee=synopsys edge_triggered_testbench --vcd=edge_triggered.vcd
echo Done