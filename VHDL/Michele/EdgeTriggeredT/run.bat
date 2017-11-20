@echo off
echo Running ghdl commands
del *.cf *.vcd
ghdl -a "C:\Users\Angelo&Michele\Documents\uni\ASE\componenti\EdgeTriggeredT\edge_triggered_t.vhd"
ghdl -a --ieee=synopsys "C:\Users\Angelo&Michele\Documents\uni\ASE\componenti\EdgeTriggeredT\edge_triggered_t_testbench.vhd"
ghdl -e --ieee=synopsys edge_triggered_t_testbench
ghdl -r --ieee=synopsys edge_triggered_t_testbench --vcd=edge_triggered_t.vcd
echo Done