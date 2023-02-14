new_design -name "leon5mp" -family "Kintex7"
set_device -die "XC7K325T" -package " " -speed "2" -voltage "" -iostd "LVTTL" -jtag "yes" -probe "yes" -trst "yes" -temprange "" -voltrange ""
if {[file exist leon5mp.pdc]} {
import_source -format "edif" -edif_flavor "GENERIC" -merge_physical "no" -merge_timing "no" {synplify/leon5mp.edf} -format "pdc" -abort_on_error "no" {leon5mp.pdc}
} else {
import_source -format "edif" -edif_flavor "GENERIC" -merge_physical "no" -merge_timing "no" {synplify/leon5mp.edf}
}

save_design  {leon5mp.adb}

