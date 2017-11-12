@echo off
echo Comandi ghdl
del *.cf *.vcd
ghdl -a --ieee=synopsys "C:\Users\Angelo&Michele\Documents\uni\ASE\componenti\7segmenti\cathode_encoder.vhd"
ghdl -a --ieee=synopsys "C:\Users\Angelo&Michele\Documents\uni\ASE\componenti\7segmenti\cathode_encoder_testbench.vhd"
ghdl -e --ieee=synopsys cathode_encoder_testbench
ghdl -r --ieee=synopsys cathode_encoder_testbench --vcd=cathode_encoder.vcd
echo Fine