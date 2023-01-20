# 
# Synthesis run script generated by Vivado
# 

namespace eval rt {
    variable rc
}
set rt::rc [catch {
  uplevel #0 {
    set ::env(BUILTIN_SYNTH) true
    source $::env(HRT_TCL_PATH)/rtSynthPrep.tcl
    rt::HARTNDb_resetJobStats
    rt::HARTNDb_resetSystemStats
    rt::HARTNDb_startSystemStats
    rt::HARTNDb_startJobStats
    set rt::cmdEcho 0
    rt::set_parameter writeXmsg true
    rt::set_parameter enableParallelHelperSpawn true
    set ::env(RT_TMP) "./.Xil/Vivado-3817-coding/realtime/tmp"
    if { [ info exists ::env(RT_TMP) ] } {
      file delete -force $::env(RT_TMP)
      file mkdir $::env(RT_TMP)
    }

    rt::delete_design

    set rt::partid xc7a100ticsg324-1L
     file delete -force synth_hints.os

    set rt::multiChipSynthesisFlow false
    source $::env(SYNTH_COMMON)/common_vhdl.tcl
    set rt::defaultWorkLibName xil_defaultlib

    set rt::useElabCache false
    if {$rt::useElabCache == false} {
      rt::read_verilog -sv {
      /opt/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv
      /opt/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv
    }
      rt::read_verilog {
      ./.Xil/Vivado-3817-coding/realtime/mig_stub.v
      ./.Xil/Vivado-3817-coding/realtime/mig_cdc_stub.v
    }
      rt::read_vhdl -lib grlib {
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/grlib/stdlib/version.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/grlib/stdlib/config_types.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/designs/noelv-digilent-arty-a7/grlib_config.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/grlib/stdlib/stdlib.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/grlib/sparc/sparc.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/grlib/riscv/riscv.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/grlib/modgen/multlib.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/grlib/modgen/leaves.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/grlib/amba/amba.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/grlib/amba/devices.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/grlib/amba/defmst.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/grlib/amba/apbctrl.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/grlib/amba/apbctrlx.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/grlib/amba/apbctrlsp.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/grlib/amba/apbctrldp.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/grlib/amba/apbctrl3p.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/grlib/amba/apbctrl4p.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/grlib/amba/ahbctrl.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/grlib/amba/dma2ahb_pkg.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/grlib/amba/dma2ahb.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/grlib/amba/ahbmst.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/grlib/amba/ahblitm2ahbm.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/grlib/dftlib/dftlib.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/grlib/dftlib/trstmux.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/grlib/dftlib/synciotest.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/grlib/generic_bm/generic_bm_pkg.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/grlib/generic_bm/ahb_be.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/grlib/generic_bm/axi4_be.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/grlib/generic_bm/bmahbmst.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/grlib/generic_bm/bm_fre.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/grlib/generic_bm/bm_me_rc.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/grlib/generic_bm/bm_me_wc.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/grlib/generic_bm/fifo_control_rc.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/grlib/generic_bm/fifo_control_wc.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/grlib/generic_bm/generic_bm_ahb.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/grlib/generic_bm/generic_bm_axi.vhd
    }
      rt::read_vhdl -lib techmap {
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/techmap/gencomp/gencomp.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/techmap/gencomp/netcomp.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/techmap/alltech/allclkgen.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/techmap/alltech/allddr.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/techmap/alltech/allmem.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/techmap/alltech/allmul.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/techmap/alltech/allpads.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/techmap/alltech/alltap.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/techmap/inferred/memory_inferred.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/techmap/inferred/ddr_inferred.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/techmap/inferred/mul_inferred.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/techmap/inferred/ddr_phy_inferred.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/techmap/inferred/ddrphy_datapath.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/techmap/inferred/fifo_inferred.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/techmap/unisim/memory_kintex7.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/techmap/unisim/memory_ultrascale.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/techmap/unisim/memory_unisim.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/techmap/unisim/buffer_unisim.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/techmap/unisim/pads_unisim.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/techmap/unisim/clkgen_unisim.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/techmap/unisim/tap_unisim.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/techmap/unisim/ddr_unisim.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/techmap/unisim/ddr_phy_unisim.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/techmap/unisim/sysmon_unisim.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/techmap/unisim/mul_unisim.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/techmap/unisim/spictrl_unisim.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/techmap/maps/techbuf.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/techmap/maps/clkgen.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/techmap/maps/clkmux.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/techmap/maps/clkinv.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/techmap/maps/clkand.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/techmap/maps/grgates.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/techmap/maps/ddr_ireg.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/techmap/maps/ddr_oreg.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/techmap/maps/clkpad.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/techmap/maps/clkpad_ds.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/techmap/maps/inpad.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/techmap/maps/inpad_ds.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/techmap/maps/iodpad.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/techmap/maps/iopad.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/techmap/maps/iopad_ds.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/techmap/maps/lvds_combo.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/techmap/maps/odpad.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/techmap/maps/outpad.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/techmap/maps/outpad_ds.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/techmap/maps/toutpad.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/techmap/maps/toutpad_ds.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/techmap/maps/skew_outpad.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/techmap/maps/ddrphy.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/techmap/maps/syncram.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/techmap/maps/syncram64.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/techmap/maps/syncram_2p.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/techmap/maps/syncram_dp.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/techmap/maps/syncfifo_2p.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/techmap/maps/regfile_3p.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/techmap/maps/tap.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/techmap/maps/nandtree.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/techmap/maps/grlfpw_net.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/techmap/maps/grfpw_net.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/techmap/maps/leon3_net.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/techmap/maps/leon4_net.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/techmap/maps/mul_61x61.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/techmap/maps/cpu_disas_net.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/techmap/maps/ringosc.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/techmap/maps/grpci2_phy_net.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/techmap/maps/system_monitor.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/techmap/maps/inpad_ddr.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/techmap/maps/outpad_ddr.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/techmap/maps/iopad_ddr.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/techmap/maps/syncram128bw.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/techmap/maps/syncram256bw.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/techmap/maps/syncram128.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/techmap/maps/syncram156bw.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/techmap/maps/techmult.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/techmap/maps/spictrl_net.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/techmap/maps/scanreg.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/techmap/maps/syncrambw.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/techmap/maps/syncram_2pbw.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/techmap/maps/sdram_phy.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/techmap/maps/syncreg.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/techmap/maps/serdes.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/techmap/maps/iopad_tm.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/techmap/maps/toutpad_tm.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/techmap/maps/memrwcol.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/techmap/maps/cdcbus.vhd
    }
      rt::read_vhdl -lib eth {
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/eth/comp/ethcomp.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/eth/core/greth_pkg.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/eth/core/eth_rstgen.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/eth/core/eth_edcl_ahb_mst.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/eth/core/eth_ahb_mst.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/eth/core/greth_tx.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/eth/core/greth_rx.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/eth/core/grethc.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/eth/wrapper/greth_gen.vhd
    }
      rt::read_vhdl -lib gaisler {
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/arith/arith.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/arith/mul32.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/arith/div32.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/memctrl/memctrl.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/memctrl/sdctrl.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/memctrl/sdctrl64.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/memctrl/sdmctrl.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/memctrl/srctrl.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/srmmu/mmuconfig.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/srmmu/mmuiface.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/srmmu/libmmu.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/srmmu/mmutlbcam.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/srmmu/mmulrue.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/srmmu/mmulru.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/srmmu/mmutlb.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/srmmu/mmutw.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/srmmu/mmu.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/leon3/leon3.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/leon3/grfpushwx.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/leon3v3/tbufmem.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/leon3v3/tbufmem_2p.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/leon3v3/dsu3x.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/leon3v3/dsu3.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/leon3v3/dsu3_mb.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/leon3v3/libfpu.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/leon3v3/libiu.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/leon3v3/libcache.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/leon3v3/libleon3.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/leon3v3/regfile_3p_l3.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/leon3v3/mmu_acache.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/leon3v3/mmu_icache.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/leon3v3/mmu_dcache.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/leon3v3/cachemem.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/leon3v3/mmu_cache.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/leon3v3/grfpwx.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/leon3v3/grlfpwx.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/leon3v3/iu3.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/leon3v3/proc3.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/leon3v3/grfpwxsh.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/leon3v3/leon3x.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/leon3v3/leon3cg.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/leon3v3/leon3s.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/leon3v3/leon3sh.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/leon3v3/l3stat.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/leon3v3/cmvalidbits.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/leon4/leon4.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/irqmp/irqmp.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/irqmp/irqamp.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/irqmp/irqmp_bmode.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/l2cache/pkg/l2cache.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/canfd/canfd.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/axi/axi.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/axi/ahbm2axi.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/axi/ahbm2axi3.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/axi/ahbm2axi4.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/axi/axinullslv.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/axi/ahb2axib.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/axi/ahb2axi3b.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/axi/ahb2axi4b.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/axi/ahb2axi_l.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/misc/misc.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/misc/rstgen.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/misc/gptimer.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/misc/ahbram.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/misc/ahbdpram.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/misc/ahbtrace_mmb.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/misc/ahbtrace_mb.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/misc/ahbtrace.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/misc/grgpio.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/misc/ahbstat.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/misc/logan.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/misc/apbps2.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/misc/charrom_package.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/misc/charrom.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/misc/apbvga.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/misc/svgactrl.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/misc/grsysmon.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/misc/gracectrl.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/misc/grgpreg.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/misc/ahb_mst_iface.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/misc/grgprbank.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/misc/grversion.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/misc/apb3cdc.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/misc/ahbsmux.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/misc/ahbmmux.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/misc/grtachom.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/net/net.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/uart/uart.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/uart/libdcom.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/uart/apbuart.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/uart/dcom.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/uart/dcom_uart.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/uart/ahbuart.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/jtag/jtag.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/jtag/libjtagcom.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/jtag/jtagcom.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/jtag/bscanregs.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/jtag/bscanregsbd.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/jtag/jtagcom2.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/jtag/ahbjtag.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/jtag/ahbjtag_bsd.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/jtag/jtagcomrv.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/jtag/ahbjtagrv.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/greth/ethernet_mac.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/greth/greth.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/greth/greth_mb.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/greth/greth_gbit.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/greth/greths.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/greth/greth_gbit_mb.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/greth/greths_mb.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/greth/grethm.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/greth/grethm_mb.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/greth/adapters/rgmii.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/greth/adapters/rgmii_kc705.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/greth/adapters/rgmii_series6.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/greth/adapters/comma_detect.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/greth/adapters/elastic_buffer.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/greth/adapters/gmii_to_mii.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/greth/adapters/word_aligner.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/ddr/ddrpkg.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/ddr/ddrintpkg.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/ddr/ddrphy_wrap.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/ddr/ddr2spax_ahb.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/ddr/ddr2spax_ddr.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/ddr/ddr2buf.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/ddr/ddr2spax.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/ddr/ddr2spa.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/ddr/ddr1spax.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/ddr/ddr1spax_ddr.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/ddr/ddrspa.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/ddr/ahb2mig_7series_pkg.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/ddr/ahb2mig_7series.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/ddr/ahb2mig_7series_ddr2_dq16_ad13_ba3.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/ddr/ahb2mig_7series_ddr3_dq16_ad15_ba3.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/ddr/ahb2mig_7series_cpci_xc7k.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/ddr/ahb2axi_mig_7series.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/ddr/axi_mig_7series.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/ddr/ahb2avl_async.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/ddr/ahb2avl_async_be.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/nand/nandpkg.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/grdmac2/grdmac2_pkg.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/grdmac2/grdmac2_apb.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/grdmac2/mem2buf.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/grdmac2/buf2mem.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/grdmac2/grdmac2_ctrl.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/grdmac2/grdmac2.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/grdmac2/grdmac2_ahb.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/grdmac2/grdmac2_acc.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/grdmac2/grdmac2_axi.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/subsys/subsys.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/subsys/leon_dsu_stat_base.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/plic/plic.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/plic/grplic.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/plic/plic_encoder.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/plic/plic_gateway.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/plic/plic_target.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/plic/grplic_ahb.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/leon5/leon5.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/leon5v0/leon5int.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/leon5v0/itbufmem5.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/leon5v0/bht_pap.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/leon5v0/btb.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/leon5v0/inst_text.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/leon5v0/iu5.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/leon5v0/cctrl5.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/leon5v0/cachemem5.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/leon5v0/regfile5_ram.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/leon5v0/regfile5_dff.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/leon5v0/nanofpu.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/leon5v0/cpucore5.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/leon5v0/tbufmem5.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/leon5v0/dbgmod5.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/leon5v0/irqmp5.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/leon5v0/l5stat.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/leon5v0/leon5sys.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/l2c_lite/l2c_lite.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/l2c_lite/l2c_lite_mem.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/l2c_lite/l2c_lite_ctrl.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/l2c_lite/l2c_lite_ahb.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/l2c_lite/l2c_lite_axi.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/noelv/pkg/noelv_cfg_64.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/noelv/pkg/noelv.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/noelv/pkg/noelv_cpu_cfg.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/noelv/clint/clint.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/noelv/clint/clint_ahb.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/noelv/core/utilnv.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/noelv/core/noelvint.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/noelv/core/nvsupport.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/noelv/core/mmuconfig.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/noelv/core/bhtnv.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/noelv/core/btbnv.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/noelv/core/btbdmnv.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/noelv/core/rasnv.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/noelv/core/tbufmemnv.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/noelv/core/fputilnv.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/noelv/core/cachememnv.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/noelv/core/mul64.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/noelv/core/div64.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/noelv/core/regfile64sramnv.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/noelv/core/regfile64dffnv.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/noelv/core/progbuf.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/noelv/core/alunv.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/noelv/core/rvvi.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/noelv/core/iunv.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/noelv/core/itracenv.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/noelv/core/cpucorenv.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/noelv/core/rvdmx.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/noelv/core/rvdm.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/noelv/core/cctrlnv.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/noelv/core/mulfp.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/noelv/core/nanofpunv.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/noelv/subsys/noelvcpu.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/noelv/subsys/dummy_pnp.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/lib/gaisler/noelv/subsys/noelvsys.vhd
    }
      rt::read_vhdl -lib work {
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/designs/noelv-digilent-arty-a7/rtl/axi_mig3_7series.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/boards/digilent-arty-a7/ahb2axi_mig3_arty_a7.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/designs/noelv-digilent-arty-a7/rtl/clockers_mig.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/designs/noelv-digilent-arty-a7/config.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/designs/noelv-digilent-arty-a7/cfg/config_local.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/designs/noelv-generic/rtl/core/rev.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/designs/noelv-generic/rtl/core/cfgmap.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/designs/noelv-generic/rtl/core/noelvcore.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/designs/noelv-digilent-arty-a7/rtl/ahbrom.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/designs/noelv-digilent-arty-a7/rtl/ahbrom64.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/designs/noelv-digilent-arty-a7/rtl/ahbrom128.vhd
      /home/zhichao/Downloads/GRLIB/grlib-gpl-2022.4-b4280/designs/noelv-digilent-arty-a7/rtl/noelvmp.vhd
    }
      rt::read_vhdl -lib xpm /opt/Xilinx/Vivado/2019.1/data/ip/xpm/xpm_VCOMP.vhd
      rt::filesetChecksum
    }
    rt::set_parameter usePostFindUniquification false
    set rt::top noelvmp
    rt::set_parameter enableIncremental true
    set rt::reportTiming false
    rt::set_parameter elaborateOnly true
    rt::set_parameter elaborateRtl true
    rt::set_parameter eliminateRedundantBitOperator false
    rt::set_parameter elaborateRtlOnlyFlow true
    rt::set_parameter writeBlackboxInterface true
    rt::set_parameter merge_flipflops true
    rt::set_parameter srlDepthThreshold 3
    rt::set_parameter rstSrlDepthThreshold 4
# MODE: 
    rt::set_parameter webTalkPath {}
    rt::set_parameter enableSplitFlowPath "./.Xil/Vivado-3817-coding/"
    set ok_to_delete_rt_tmp true 
    if { [rt::get_parameter parallelDebug] } { 
       set ok_to_delete_rt_tmp false 
    } 
    if {$rt::useElabCache == false} {
        set oldMIITMVal [rt::get_parameter maxInputIncreaseToMerge]; rt::set_parameter maxInputIncreaseToMerge 1000
        set oldCDPCRL [rt::get_parameter createDfgPartConstrRecurLimit]; rt::set_parameter createDfgPartConstrRecurLimit 1
        $rt::db readXRFFile
      rt::run_rtlelab -module $rt::top
        rt::set_parameter maxInputIncreaseToMerge $oldMIITMVal
        rt::set_parameter createDfgPartConstrRecurLimit $oldCDPCRL
    }

    set rt::flowresult [ source $::env(SYNTH_COMMON)/flow.tcl ]
    rt::HARTNDb_stopJobStats
    if { $rt::flowresult == 1 } { return -code error }


  set hsKey [rt::get_parameter helper_shm_key] 
  if { $hsKey != "" && [info exists ::env(BUILTIN_SYNTH)] && [rt::get_parameter enableParallelHelperSpawn] } { 
     $rt::db killSynthHelper $hsKey
  } 
  rt::set_parameter helper_shm_key "" 
    if { [ info exists ::env(RT_TMP) ] } {
      if { [info exists ok_to_delete_rt_tmp] && $ok_to_delete_rt_tmp } { 
        file delete -force $::env(RT_TMP)
      }
    }

    source $::env(HRT_TCL_PATH)/rtSynthCleanup.tcl
  } ; #end uplevel
} rt::result]

if { $rt::rc } {
  $rt::db resetHdlParse
  set hsKey [rt::get_parameter helper_shm_key] 
  if { $hsKey != "" && [info exists ::env(BUILTIN_SYNTH)] && [rt::get_parameter enableParallelHelperSpawn] } { 
     $rt::db killSynthHelper $hsKey
  } 
  source $::env(HRT_TCL_PATH)/rtSynthCleanup.tcl
  return -code "error" $rt::result
}