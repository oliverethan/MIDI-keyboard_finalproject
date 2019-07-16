if {[catch {

# define run engine funtion
source [file join {C:/lscc/radiant/1.0} scripts tcl flow run_engine.tcl]
# define global variables
global para
set para(gui_mode) 1
set para(prj_dir) "C:/Users/ellesh01/Desktop/midi_final_proj_2"
# synthesize IPs
# synthesize VMs
# synthesize top design
file delete -force -- midi_final_proj_2_impl_1.vm midi_final_proj_2_impl_1.ldc
run_engine_newmsg synthesis -f "midi_final_proj_2_impl_1_lattice.synproj"
run_postsyn [list -a iCE40UP -p iCE40UP5K -t SG48 -sp High-Performance_1.2V -oc Industrial -top -keeprtl -w -o midi_final_proj_2_impl_1.udb midi_final_proj_2_impl_1.vm] "C:/Users/ellesh01/Desktop/midi_final_proj_2/impl_1/midi_final_proj_2_impl_1.ldc"

} out]} {
   runtime_log $out
   exit 1
}
