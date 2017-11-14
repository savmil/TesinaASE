
# PlanAhead Launch Script for Post-Synthesis pin planning, created by Project Navigator

create_project -name mux16_1 -dir "/home/sav/ASE/mux16_1/planAhead_run_2" -part xc3s100evq100-5
set_property design_mode GateLvl [get_property srcset [current_run -impl]]
set_property edif_top_file "/home/sav/ASE/mux16_1/mux16_1.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {/home/sav/ASE/mux16_1} }
set_param project.pinAheadLayout  yes
set_property target_constrs_file "/media/sf_ASE/scheda/BasysRevEGeneral.ucf" [current_fileset -constrset]
add_files [list {/media/sf_ASE/scheda/BasysRevEGeneral.ucf}] -fileset [get_property constrset [current_run]]
link_design
