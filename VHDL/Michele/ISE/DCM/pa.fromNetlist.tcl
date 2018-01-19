
# PlanAhead Launch Script for Post-Synthesis floorplanning, created by Project Navigator

create_project -name DCM -dir "/media/sf_ASE/VHDL/Michele/ISE/DCM/planAhead_run_2" -part xc3s100etq144-5
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "/media/sf_ASE/VHDL/Michele/ISE/DCM/display_cu.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {/media/sf_ASE/VHDL/Michele/ISE/DCM} }
set_property target_constrs_file "BasysRevEGeneral.ucf" [current_fileset -constrset]
add_files [list {BasysRevEGeneral.ucf}] -fileset [get_property constrset [current_run]]
link_design
