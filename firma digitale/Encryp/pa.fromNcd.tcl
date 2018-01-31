
# PlanAhead Launch Script for Post PAR Floorplanning, created by Project Navigator

create_project -name Encryp -dir "D:/Encryp/planAhead_run_1" -part xc3s250evq100-4
set srcset [get_property srcset [current_run -impl]]
set_property design_mode GateLvl $srcset
set_property edif_top_file "D:/Encryp/Comparator32.ngc" [ get_property srcset [ current_run ] ]
add_files -norecurse { {D:/Encryp} }
set_property target_constrs_file "Comparator32.ucf" [current_fileset -constrset]
add_files [list {Comparator32.ucf}] -fileset [get_property constrset [current_run]]
link_design
read_xdl -file "D:/Encryp/Comparator32.ncd"
if {[catch {read_twx -name results_1 -file "D:/Encryp/Comparator32.twx"} eInfo]} {
   puts "WARNING: there was a problem importing \"D:/Encryp/Comparator32.twx\": $eInfo"
}
