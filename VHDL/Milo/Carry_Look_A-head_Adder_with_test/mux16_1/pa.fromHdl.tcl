
# PlanAhead Launch Script for Pre-Synthesis Floorplanning, created by Project Navigator

create_project -name mux16_1 -dir "/home/sav/ASE/mux16_1/planAhead_run_1" -part xc3s100evq100-5
set_param project.pinAheadLayout yes
set srcset [get_property srcset [current_run -impl]]
set_property target_constrs_file "/media/sf_ASE/scheda/BasysRevEGeneral.ucf" [current_fileset -constrset]
set hdlfile [add_files [list {../../../../media/sf_ASE/VHDL/Mux4x1/mux2_1.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {../../../../media/sf_ASE/VHDL/Mux4x1/mux4_1.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set hdlfile [add_files [list {mux16_1.vhd}]]
set_property file_type VHDL $hdlfile
set_property library work $hdlfile
set_property top mux16_1 $srcset
add_files [list {/media/sf_ASE/scheda/BasysRevEGeneral.ucf}] -fileset [get_property constrset [current_run]]
open_rtl_design -part xc3s100evq100-5
