@echo off
echo Running ghdl commands
del *.cf *.vcd
ghdl -a "C:\Users\Angelo&Michele\Documents\uni\ASE\componenti\ContatoreOverflowMod4\counter_hit_mod4.vhd"
ghdl -a "C:\Users\Angelo&Michele\Documents\uni\ASE\componenti\ContatoreOverflowMod4\counter_hit_mod4_testbench.vhd"
ghdl -e counter_hit_mod4_testbench
ghdl -r counter_hit_mod4_testbench --vcd=counter_hit_mod4.vcd
echo Done