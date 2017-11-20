@echo off
echo Running ghdl commands
del *.cf *.vcd
ghdl -a "C:\Users\Angelo&Michele\Documents\uni\ASE\componenti\EdgeTriggeredDN\edge_triggered_d_n.vhd"
ghdl -a --ieee=synopsys "C:\Users\Angelo&Michele\Documents\uni\ASE\componenti\EdgeTriggeredDN\edge_triggered_d_n_testbench.vhd"
ghdl -e --ieee=synopsys edge_triggered_d_n_testbench
ghdl -r --ieee=synopsys edge_triggered_d_n_testbench --vcd=edge_triggered_d_n.vcd
echo Done