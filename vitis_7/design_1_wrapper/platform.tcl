# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct G:\projects\lab6\radio_periph_lab\radio_periph_lab\Radio_periph_lab_lab7\vitis_7\design_1_wrapper\platform.tcl
# 
# OR launch xsct and run below command.
# source G:\projects\lab6\radio_periph_lab\radio_periph_lab\Radio_periph_lab_lab7\vitis_7\design_1_wrapper\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {design_1_wrapper}\
-hw {G:\projects\lab6\radio_periph_lab\radio_periph_lab\Radio_periph_lab_lab7\vivado\design_1_wrapper.xsa}\
-out {G:/projects/lab6/radio_periph_lab/radio_periph_lab/Radio_periph_lab_lab7/vitis_7}

platform write
domain create -name {standalone_ps7_cortexa9_0} -display-name {standalone_ps7_cortexa9_0} -os {standalone} -proc {ps7_cortexa9_0} -runtime {cpp} -arch {32-bit} -support-app {lwip_udp_perf_client}
platform generate -domains 
platform active {design_1_wrapper}
domain active {zynq_fsbl}
domain active {standalone_ps7_cortexa9_0}
platform generate -quick
platform generate
platform active {design_1_wrapper}
platform config -updatehw {G:/projects/lab6/radio_periph_lab/radio_periph_lab/Radio_periph_lab_lab7/vivado/design_1_wrapper.xsa}
