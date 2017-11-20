@echo off
echo Running ghdl commands
del *.cf *.vcd
ghdl -a "C:\Users\Angelo&Michele\Documents\uni\ASE\componenti\ClockFilter\clock_filter.vhd"
ghdl -a "C:\Users\Angelo&Michele\Documents\uni\ASE\componenti\ClockFilter\clock_filter_testbench.vhd"
ghdl -e clock_filter_testbench
ghdl -r clock_filter_testbench --vcd=clock_filter.vcd
echo Done