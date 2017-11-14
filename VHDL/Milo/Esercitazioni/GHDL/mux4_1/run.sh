#!/bin/sh
echo "Running ghdl commands"
ghdl -a mux2_1.vhd
ghdl -a mux4_1.vhd
ghdl -a mux4_1_testbench.vhd
ghdl -e mux4_1_testbench
ghdl -r mux4_1_testbench --vcd=mux4_1.vcd
echo "Done. Running gtkwave"
gtkwave mux4_1.vcd


