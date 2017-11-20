@echo off
echo Comandi ghdl
del *.cf *.vcd
ghdl -a --ieee=synopsys "C:\Users\Angelo&Michele\Documents\uni\ASE\componenti\CathodeManager\cathode_encoder.vhd"
ghdl -a --ieee=synopsys "C:\Users\Angelo&Michele\Documents\uni\ASE\componenti\CathodeManager\muxn_1.vhd"
ghdl -a --ieee=synopsys "C:\Users\Angelo&Michele\Documents\uni\ASE\componenti\CathodeManager\cathode_manager.vhd"
ghdl -a --ieee=synopsys "C:\Users\Angelo&Michele\Documents\uni\ASE\componenti\CathodeManager\cathode_manager_testbench.vhd"
ghdl -e --ieee=synopsys cathode_manager_testbench
ghdl -r --ieee=synopsys cathode_manager_testbench --vcd=cathode_manager.vcd
echo Fine