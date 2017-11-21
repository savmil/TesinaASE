@echo off
echo Running ghdl commands
del *.cf *.vcd
ghdl -a --ieee=synopsys "C:\Users\Angelo&Michele\Documents\uni\ASE\componenti\ContatoreMod2n\counter_mod2n.vhd"
ghdl -a --ieee=synopsys "C:\Users\Angelo&Michele\Documents\uni\ASE\componenti\ContatoreMod2n\counter_mod2n_testbench.vhd"
ghdl -e --ieee=synopsys counter_mod2n_testbench
ghdl -r --ieee=synopsys counter_mod2n_testbench --vcd=counter_mod2n.vcd
echo Done