set_property SRC_FILE_INFO {cfile:/home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/designs/noelv-genesys2/vivado/noelv-digilent-genesys2/noelv-digilent-genesys2.srcs/sources_1/ip/clk_100MHz/clk_100MHz.xdc rfile:../../../noelv-digilent-genesys2.srcs/sources_1/ip/clk_100MHz/clk_100MHz.xdc id:1 order:EARLY scoped_inst:inst} [current_design]
current_instance inst
set_property src_info {type:SCOPED_XDC file:1 line:57 export:INPUT save:INPUT read:READ} [current_design]
set_input_jitter [get_clocks -of_objects [get_ports clk_in1_p]] 0.05
