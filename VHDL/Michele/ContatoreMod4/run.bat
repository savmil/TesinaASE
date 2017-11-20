@echo off
echo Running ghdl commands
del *.cf *.vcd
ghdl -a --ieee=synopsys "C:\Users\Angelo&Michele\Documents\uni\ASE\componenti\ContatoreMod4\counter_mod4.vhd"
ghdl -a --ieee=synopsys "C:\Users\Angelo&Michele\Documents\uni\ASE\componenti\ContatoreMod4\counter_mod4_testbench.vhd"
ghdl -e --ieee=synopsys counter_mod4_testbench
ghdl -r --ieee=synopsys counter_mod4_testbench --vcd=counter_mod4.vcd
echo Done