#!/bin/sh
echo "Running ghdl commands"
ghdl -a --ieee=synopsys muxn_1.vhd
ghdl -a --ieee=synopsys muxn_1_testbench.vhd
ghdl -e --ieee=synopsys muxn_1_testbench
ghdl -r --ieee=synopsys muxn_1_testbench --vcd=mux4_1.vcd
echo "Done. Running gtkwave"
gtkwave mux4_1.vcd


