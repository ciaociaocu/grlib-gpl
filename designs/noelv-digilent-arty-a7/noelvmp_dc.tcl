catch {sh mkdir synopsys}
set objects synopsys
#set trans_dc_max_depth 1
#set hdlin_seqmap_sync_search_depth 1
#set hdlin_nba_rewrite false
set hdlin_ff_always_sync_set_reset true
set hdlin_ff_always_async_set_reset false
#set hdlin_infer_complex_set_reset true
#set hdlin_translate_off_skip_text true
set suppress_errors VHDL-2285
#set hdlin_use_carry_in true
source  compile.dc
analyze -f VHDL -library work ./rtl/axi_mig3_7series.vhd
analyze -f VHDL -library work ./../../boards/digilent-arty-a7/ahb2axi_mig3_arty_a7.vhd
analyze -f VHDL -library work ./rtl/clockers_mig.vhd
analyze -f VHDL -library work ./config.vhd
analyze -f VHDL -library work ./cfg/config_local.vhd
analyze -f VHDL -library work ./../noelv-generic/rtl/core/rev.vhd
analyze -f VHDL -library work ./../noelv-generic/rtl/core/cfgmap.vhd
analyze -f VHDL -library work ./../noelv-generic/rtl/core/noelvcore.vhd
analyze -f VHDL -library work ./rtl/ahbrom.vhd
analyze -f VHDL -library work ./rtl/ahbrom64.vhd
analyze -f VHDL -library work ./rtl/ahbrom128.vhd
analyze -f VHDL -library work ./rtl/noelvmp.vhd
elaborate noelvmp
