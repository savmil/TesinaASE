@echo off
echo Comandi ghdl
del *.cf *.vcd
ghdl -a --ieee=synopsys "C:\Users\Angelo&Michele\Documents\uni\ASE\componenti\AnodeManager\demux1_n.vhd"
ghdl -a --ieee=synopsys "C:\Users\Angelo&Michele\Documents\uni\ASE\componenti\AnodeManager\muxn_1.vhd"
ghdl -a --ieee=synopsys "C:\Users\Angelo&Michele\Documents\uni\ASE\componenti\AnodeManager\anode_manager.vhd"
ghdl -a --ieee=synopsys "C:\Users\Angelo&Michele\Documents\uni\ASE\componenti\AnodeManager\anode_manager_testbench.vhd"
ghdl -e --ieee=synopsys anode_manager_testbench
ghdl -r --ieee=synopsys anode_manager_testbench --vcd=anode_manager.vcd
echo Fine