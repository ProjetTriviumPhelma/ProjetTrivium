#project
file mkdir "/tp/xph3app/xph3app604/Trivium/ProjetTrivium/synthese_trivium/Trivium/Precision"
set project_file [file join "/tp/xph3app/xph3app604/Trivium/ProjetTrivium/synthese_trivium/Trivium/Precision" "Precision"]
set project_file $project_file.psp
file delete "/tp/xph3app/xph3app604/Trivium/ProjetTrivium/synthese_trivium/Trivium/Precision/*_temp_*"
if { [file exists $project_file] } {
  open_project $project_file
} else {
  new_project -name Precision -folder "/tp/xph3app/xph3app604/Trivium/ProjetTrivium/synthese_trivium/Trivium/Precision"
}

#implementation
set impl_file [file join "/tp/xph3app/xph3app604/Trivium/ProjetTrivium/synthese_trivium/Trivium/Precision/Precision_impl_Trivium_Generator_vvect" "Precision_impl_Trivium_Generator_vvect"]
set impl_file $impl_file.psi
if { [file exists $impl_file] } {
  activate_impl -impl Precision_impl_Trivium_Generator_vvect
} else {
  new_impl -name Precision_impl_Trivium_Generator_vvect
}
set_input_dir "/tp/xph3app/xph3app604/Trivium/ProjetTrivium/synthese_trivium/Trivium"
