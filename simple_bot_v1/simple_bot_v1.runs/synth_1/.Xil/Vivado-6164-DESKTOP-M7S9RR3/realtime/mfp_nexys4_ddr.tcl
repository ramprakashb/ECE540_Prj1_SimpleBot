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
    rt::HARTNDb_startJobStats
    set rt::cmdEcho 0
    rt::set_parameter writeXmsg true
    rt::set_parameter enableParallelHelperSpawn true
    set ::env(RT_TMP) "D:/psu/subject/2nd_quarter/soc/roy_materials/simple_bot/simple_bot_v1/simple_bot_v1.runs/synth_1/.Xil/Vivado-6164-DESKTOP-M7S9RR3/realtime/tmp"
    if { [ info exists ::env(RT_TMP) ] } {
      file mkdir $::env(RT_TMP)
    }

    rt::delete_design

    set rt::partid xc7a100tcsg324-1

    set rt::multiChipSynthesisFlow false
    source $::env(SYNTH_COMMON)/common_vhdl.tcl
    set rt::defaultWorkLibName xil_defaultlib

    # Skipping read_* RTL commands because this is post-elab optimize flow
    set rt::useElabCache true
    if {$rt::useElabCache == false} {
      rt::read_verilog -sv -include {
    D:/psu/subject/2nd_quarter/soc/roy_materials/simple_bot/rtl_n_constraints/rtl_up/core
    D:/psu/subject/2nd_quarter/soc/roy_materials/simple_bot/rtl_n_constraints/rtl_up/system
    d:/psu/subject/2nd_quarter/soc/roy_materials/simple_bot/simple_bot_v1/simple_bot_v1.srcs/sources_1/ip/clk_wiz_0
  } C:/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv
      rt::read_verilog -include {
    D:/psu/subject/2nd_quarter/soc/roy_materials/simple_bot/rtl_n_constraints/rtl_up/core
    D:/psu/subject/2nd_quarter/soc/roy_materials/simple_bot/rtl_n_constraints/rtl_up/system
    d:/psu/subject/2nd_quarter/soc/roy_materials/simple_bot/simple_bot_v1/simple_bot_v1.srcs/sources_1/ip/clk_wiz_0
  } {
      D:/psu/subject/2nd_quarter/soc/roy_materials/simple_bot/simple_bot_v1/simple_bot_v1.runs/synth_1/.Xil/Vivado-6164-DESKTOP-M7S9RR3/realtime/clk_wiz_0_stub.v
      D:/psu/subject/2nd_quarter/soc/roy_materials/simple_bot/rtl_n_constraints/rtl_up/core/RAMB4K_S16.v
      D:/psu/subject/2nd_quarter/soc/roy_materials/simple_bot/rtl_n_constraints/rtl_up/core/RAMB4K_S2.v
      D:/psu/subject/2nd_quarter/soc/roy_materials/simple_bot/rtl_n_constraints/rtl_up/core/RAMB4K_S8.v
      D:/psu/subject/2nd_quarter/soc/roy_materials/simple_bot/rtl_n_constraints/rtl_up/core/d_wsram_2k2way_xilinx.v
      D:/psu/subject/2nd_quarter/soc/roy_materials/simple_bot/rtl_n_constraints/rtl_up/core/dataram_2k2way_xilinx.v
      D:/psu/subject/2nd_quarter/soc/roy_materials/simple_bot/rtl_n_constraints/rtl_up/system/debounce.v
      D:/psu/subject/2nd_quarter/soc/roy_materials/simple_bot/rtl_n_constraints/rtl_up/core/i_wsram_2k2way_xilinx.v
      D:/psu/subject/2nd_quarter/soc/roy_materials/simple_bot/rtl_n_constraints/rtl_up/core/m14k_alu_dsp_stub.v
      D:/psu/subject/2nd_quarter/soc/roy_materials/simple_bot/rtl_n_constraints/rtl_up/core/m14k_alu_shft_32bit.v
      D:/psu/subject/2nd_quarter/soc/roy_materials/simple_bot/rtl_n_constraints/rtl_up/core/m14k_bistctl.v
      D:/psu/subject/2nd_quarter/soc/roy_materials/simple_bot/rtl_n_constraints/rtl_up/core/m14k_biu.v
      D:/psu/subject/2nd_quarter/soc/roy_materials/simple_bot/rtl_n_constraints/rtl_up/core/m14k_cache_cmp.v
      D:/psu/subject/2nd_quarter/soc/roy_materials/simple_bot/rtl_n_constraints/rtl_up/core/m14k_cache_mux.v
      D:/psu/subject/2nd_quarter/soc/roy_materials/simple_bot/rtl_n_constraints/rtl_up/core/m14k_cdmm.v
      D:/psu/subject/2nd_quarter/soc/roy_materials/simple_bot/rtl_n_constraints/rtl_up/core/m14k_cdmm_ctl.v
      D:/psu/subject/2nd_quarter/soc/roy_materials/simple_bot/rtl_n_constraints/rtl_up/core/m14k_cdmm_mpustub.v
      D:/psu/subject/2nd_quarter/soc/roy_materials/simple_bot/rtl_n_constraints/rtl_up/core/m14k_clock_buf.v
      D:/psu/subject/2nd_quarter/soc/roy_materials/simple_bot/rtl_n_constraints/rtl_up/core/m14k_clock_nogate.v
      D:/psu/subject/2nd_quarter/soc/roy_materials/simple_bot/rtl_n_constraints/rtl_up/core/m14k_clockandlatch.v
      D:/psu/subject/2nd_quarter/soc/roy_materials/simple_bot/rtl_n_constraints/rtl_up/core/m14k_clockxnorgate.v
      D:/psu/subject/2nd_quarter/soc/roy_materials/simple_bot/rtl_n_constraints/rtl_up/core/m14k_cop1_stub.v
      D:/psu/subject/2nd_quarter/soc/roy_materials/simple_bot/rtl_n_constraints/rtl_up/core/m14k_cop2_stub.v
      D:/psu/subject/2nd_quarter/soc/roy_materials/simple_bot/rtl_n_constraints/rtl_up/core/m14k_core.v
      D:/psu/subject/2nd_quarter/soc/roy_materials/simple_bot/rtl_n_constraints/rtl_up/core/m14k_cp1_stub.v
      D:/psu/subject/2nd_quarter/soc/roy_materials/simple_bot/rtl_n_constraints/rtl_up/core/m14k_cp2_stub.v
      D:/psu/subject/2nd_quarter/soc/roy_materials/simple_bot/rtl_n_constraints/rtl_up/core/m14k_cpu.v
      D:/psu/subject/2nd_quarter/soc/roy_materials/simple_bot/rtl_n_constraints/rtl_up/core/m14k_cpz.v
      D:/psu/subject/2nd_quarter/soc/roy_materials/simple_bot/rtl_n_constraints/rtl_up/core/m14k_cpz_antitamper_stub.v
      D:/psu/subject/2nd_quarter/soc/roy_materials/simple_bot/rtl_n_constraints/rtl_up/core/m14k_cpz_eicoffset_stub.v
      D:/psu/subject/2nd_quarter/soc/roy_materials/simple_bot/rtl_n_constraints/rtl_up/core/m14k_cpz_guest_srs1.v
      D:/psu/subject/2nd_quarter/soc/roy_materials/simple_bot/rtl_n_constraints/rtl_up/core/m14k_cpz_guest_stub.v
      D:/psu/subject/2nd_quarter/soc/roy_materials/simple_bot/rtl_n_constraints/rtl_up/core/m14k_cpz_pc.v
      D:/psu/subject/2nd_quarter/soc/roy_materials/simple_bot/rtl_n_constraints/rtl_up/core/m14k_cpz_pc_top.v
      D:/psu/subject/2nd_quarter/soc/roy_materials/simple_bot/rtl_n_constraints/rtl_up/core/m14k_cpz_prid.v
      D:/psu/subject/2nd_quarter/soc/roy_materials/simple_bot/rtl_n_constraints/rtl_up/core/m14k_cpz_root_stub.v
      D:/psu/subject/2nd_quarter/soc/roy_materials/simple_bot/rtl_n_constraints/rtl_up/core/m14k_cpz_sps_stub.v
      D:/psu/subject/2nd_quarter/soc/roy_materials/simple_bot/rtl_n_constraints/rtl_up/core/m14k_cpz_srs1.v
      D:/psu/subject/2nd_quarter/soc/roy_materials/simple_bot/rtl_n_constraints/rtl_up/core/m14k_cpz_watch_stub.v
      D:/psu/subject/2nd_quarter/soc/roy_materials/simple_bot/rtl_n_constraints/rtl_up/core/m14k_cscramble_scanio_stub.v
      D:/psu/subject/2nd_quarter/soc/roy_materials/simple_bot/rtl_n_constraints/rtl_up/core/m14k_cscramble_stub.v
      D:/psu/subject/2nd_quarter/soc/roy_materials/simple_bot/rtl_n_constraints/rtl_up/core/m14k_cscramble_tpl.v
      D:/psu/subject/2nd_quarter/soc/roy_materials/simple_bot/rtl_n_constraints/rtl_up/core/m14k_dc.v
      D:/psu/subject/2nd_quarter/soc/roy_materials/simple_bot/rtl_n_constraints/rtl_up/core/m14k_dc_bistctl.v
      D:/psu/subject/2nd_quarter/soc/roy_materials/simple_bot/rtl_n_constraints/rtl_up/core/m14k_dcc.v
      D:/psu/subject/2nd_quarter/soc/roy_materials/simple_bot/rtl_n_constraints/rtl_up/core/m14k_dcc_fb.v
      D:/psu/subject/2nd_quarter/soc/roy_materials/simple_bot/rtl_n_constraints/rtl_up/core/m14k_dcc_mb_stub.v
      D:/psu/subject/2nd_quarter/soc/roy_materials/simple_bot/rtl_n_constraints/rtl_up/core/m14k_dcc_parity_stub.v
      D:/psu/subject/2nd_quarter/soc/roy_materials/simple_bot/rtl_n_constraints/rtl_up/core/m14k_dcc_spmb_stub.v
      D:/psu/subject/2nd_quarter/soc/roy_materials/simple_bot/rtl_n_constraints/rtl_up/core/m14k_dcc_spstub.v
      D:/psu/subject/2nd_quarter/soc/roy_materials/simple_bot/rtl_n_constraints/rtl_up/core/m14k_dspram_ext_stub.v
      D:/psu/subject/2nd_quarter/soc/roy_materials/simple_bot/rtl_n_constraints/rtl_up/core/m14k_edp.v
      D:/psu/subject/2nd_quarter/soc/roy_materials/simple_bot/rtl_n_constraints/rtl_up/core/m14k_edp_add_simple.v
      D:/psu/subject/2nd_quarter/soc/roy_materials/simple_bot/rtl_n_constraints/rtl_up/core/m14k_edp_buf_misc_pro.v
      D:/psu/subject/2nd_quarter/soc/roy_materials/simple_bot/rtl_n_constraints/rtl_up/core/m14k_edp_clz.v
      D:/psu/subject/2nd_quarter/soc/roy_materials/simple_bot/rtl_n_constraints/rtl_up/core/m14k_edp_clz_16b.v
      D:/psu/subject/2nd_quarter/soc/roy_materials/simple_bot/rtl_n_constraints/rtl_up/core/m14k_edp_clz_4b.v
      D:/psu/subject/2nd_quarter/soc/roy_materials/simple_bot/rtl_n_constraints/rtl_up/core/m14k_ejt.v
      D:/psu/subject/2nd_quarter/soc/roy_materials/simple_bot/rtl_n_constraints/rtl_up/core/m14k_ejt_and2.v
      D:/psu/subject/2nd_quarter/soc/roy_materials/simple_bot/rtl_n_constraints/rtl_up/core/m14k_ejt_area.v
      D:/psu/subject/2nd_quarter/soc/roy_materials/simple_bot/rtl_n_constraints/rtl_up/core/m14k_ejt_async_rec.v
      D:/psu/subject/2nd_quarter/soc/roy_materials/simple_bot/rtl_n_constraints/rtl_up/core/m14k_ejt_async_snd.v
      D:/psu/subject/2nd_quarter/soc/roy_materials/simple_bot/rtl_n_constraints/rtl_up/core/m14k_ejt_brk21.v
      D:/psu/subject/2nd_quarter/soc/roy_materials/simple_bot/rtl_n_constraints/rtl_up/core/m14k_ejt_bus32mux2.v
      D:/psu/subject/2nd_quarter/soc/roy_materials/simple_bot/rtl_n_constraints/rtl_up/core/m14k_ejt_dbrk.v
      D:/psu/subject/2nd_quarter/soc/roy_materials/simple_bot/rtl_n_constraints/rtl_up/core/m14k_ejt_fifo_1r1w_stub.v
      D:/psu/subject/2nd_quarter/soc/roy_materials/simple_bot/rtl_n_constraints/rtl_up/core/m14k_ejt_gate.v
      D:/psu/subject/2nd_quarter/soc/roy_materials/simple_bot/rtl_n_constraints/rtl_up/core/m14k_ejt_ibrk.v
      D:/psu/subject/2nd_quarter/soc/roy_materials/simple_bot/rtl_n_constraints/rtl_up/core/m14k_ejt_mux2.v
      D:/psu/subject/2nd_quarter/soc/roy_materials/simple_bot/rtl_n_constraints/rtl_up/core/m14k_ejt_pdttcb_stub.v
      D:/psu/subject/2nd_quarter/soc/roy_materials/simple_bot/rtl_n_constraints/rtl_up/core/m14k_ejt_tap.v
      D:/psu/subject/2nd_quarter/soc/roy_materials/simple_bot/rtl_n_constraints/rtl_up/core/m14k_ejt_tap_dasam.v
      D:/psu/subject/2nd_quarter/soc/roy_materials/simple_bot/rtl_n_constraints/rtl_up/core/m14k_ejt_tap_fdc.v
      D:/psu/subject/2nd_quarter/soc/roy_materials/simple_bot/rtl_n_constraints/rtl_up/core/m14k_ejt_tap_pcsam.v
      D:/psu/subject/2nd_quarter/soc/roy_materials/simple_bot/rtl_n_constraints/rtl_up/core/m14k_ejt_tck.v
      D:/psu/subject/2nd_quarter/soc/roy_materials/simple_bot/rtl_n_constraints/rtl_up/core/m14k_ejt_tripsync.v
      D:/psu/subject/2nd_quarter/soc/roy_materials/simple_bot/rtl_n_constraints/rtl_up/core/m14k_fpuclk1_nogate.v
      D:/psu/subject/2nd_quarter/soc/roy_materials/simple_bot/rtl_n_constraints/rtl_up/core/m14k_gf_mux2.v
      D:/psu/subject/2nd_quarter/soc/roy_materials/simple_bot/rtl_n_constraints/rtl_up/core/m14k_glue.v
      D:/psu/subject/2nd_quarter/soc/roy_materials/simple_bot/rtl_n_constraints/rtl_up/core/m14k_ic.v
      D:/psu/subject/2nd_quarter/soc/roy_materials/simple_bot/rtl_n_constraints/rtl_up/core/m14k_ic_bistctl.v
      D:/psu/subject/2nd_quarter/soc/roy_materials/simple_bot/rtl_n_constraints/rtl_up/core/m14k_icc.v
      D:/psu/subject/2nd_quarter/soc/roy_materials/simple_bot/rtl_n_constraints/rtl_up/core/m14k_icc_mb_stub.v
      D:/psu/subject/2nd_quarter/soc/roy_materials/simple_bot/rtl_n_constraints/rtl_up/core/m14k_icc_parity_stub.v
      D:/psu/subject/2nd_quarter/soc/roy_materials/simple_bot/rtl_n_constraints/rtl_up/core/m14k_icc_spmb_stub.v
      D:/psu/subject/2nd_quarter/soc/roy_materials/simple_bot/rtl_n_constraints/rtl_up/core/m14k_icc_spstub.v
      D:/psu/subject/2nd_quarter/soc/roy_materials/simple_bot/rtl_n_constraints/rtl_up/core/m14k_icc_umips_stub.v
      D:/psu/subject/2nd_quarter/soc/roy_materials/simple_bot/rtl_n_constraints/rtl_up/core/m14k_ispram_ext_stub.v
      D:/psu/subject/2nd_quarter/soc/roy_materials/simple_bot/rtl_n_constraints/rtl_up/core/m14k_mdl.v
      D:/psu/subject/2nd_quarter/soc/roy_materials/simple_bot/rtl_n_constraints/rtl_up/core/m14k_mdl_add_simple.v
      D:/psu/subject/2nd_quarter/soc/roy_materials/simple_bot/rtl_n_constraints/rtl_up/core/m14k_mdl_ctl.v
      D:/psu/subject/2nd_quarter/soc/roy_materials/simple_bot/rtl_n_constraints/rtl_up/core/m14k_mdl_dp.v
      D:/psu/subject/2nd_quarter/soc/roy_materials/simple_bot/rtl_n_constraints/rtl_up/core/m14k_mmuc.v
      D:/psu/subject/2nd_quarter/soc/roy_materials/simple_bot/rtl_n_constraints/rtl_up/core/m14k_mpc.v
      D:/psu/subject/2nd_quarter/soc/roy_materials/simple_bot/rtl_n_constraints/rtl_up/core/m14k_mpc_ctl.v
      D:/psu/subject/2nd_quarter/soc/roy_materials/simple_bot/rtl_n_constraints/rtl_up/core/m14k_mpc_dec.v
      D:/psu/subject/2nd_quarter/soc/roy_materials/simple_bot/rtl_n_constraints/rtl_up/core/m14k_mpc_exc.v
      D:/psu/subject/2nd_quarter/soc/roy_materials/simple_bot/rtl_n_constraints/rtl_up/core/m14k_rf_reg.v
      D:/psu/subject/2nd_quarter/soc/roy_materials/simple_bot/rtl_n_constraints/rtl_up/core/m14k_rf_rngc.v
      D:/psu/subject/2nd_quarter/soc/roy_materials/simple_bot/rtl_n_constraints/rtl_up/core/m14k_rf_stub.v
      D:/psu/subject/2nd_quarter/soc/roy_materials/simple_bot/rtl_n_constraints/rtl_up/core/m14k_siu.v
      D:/psu/subject/2nd_quarter/soc/roy_materials/simple_bot/rtl_n_constraints/rtl_up/core/m14k_siu_int_sync.v
      D:/psu/subject/2nd_quarter/soc/roy_materials/simple_bot/rtl_n_constraints/rtl_up/core/m14k_spram_top.v
      D:/psu/subject/2nd_quarter/soc/roy_materials/simple_bot/rtl_n_constraints/rtl_up/core/m14k_tlb.v
      D:/psu/subject/2nd_quarter/soc/roy_materials/simple_bot/rtl_n_constraints/rtl_up/core/m14k_tlb_collector.v
      D:/psu/subject/2nd_quarter/soc/roy_materials/simple_bot/rtl_n_constraints/rtl_up/core/m14k_tlb_cpy.v
      D:/psu/subject/2nd_quarter/soc/roy_materials/simple_bot/rtl_n_constraints/rtl_up/core/m14k_tlb_ctl.v
      D:/psu/subject/2nd_quarter/soc/roy_materials/simple_bot/rtl_n_constraints/rtl_up/core/m14k_tlb_dtlb.v
      D:/psu/subject/2nd_quarter/soc/roy_materials/simple_bot/rtl_n_constraints/rtl_up/core/m14k_tlb_itlb.v
      D:/psu/subject/2nd_quarter/soc/roy_materials/simple_bot/rtl_n_constraints/rtl_up/core/m14k_tlb_jtlb16.v
      D:/psu/subject/2nd_quarter/soc/roy_materials/simple_bot/rtl_n_constraints/rtl_up/core/m14k_tlb_jtlb16entries.v
      D:/psu/subject/2nd_quarter/soc/roy_materials/simple_bot/rtl_n_constraints/rtl_up/core/m14k_tlb_jtlb1entry.v
      D:/psu/subject/2nd_quarter/soc/roy_materials/simple_bot/rtl_n_constraints/rtl_up/core/m14k_tlb_jtlb4entries.v
      D:/psu/subject/2nd_quarter/soc/roy_materials/simple_bot/rtl_n_constraints/rtl_up/core/m14k_tlb_utlb.v
      D:/psu/subject/2nd_quarter/soc/roy_materials/simple_bot/rtl_n_constraints/rtl_up/core/m14k_tlb_utlbentry.v
      D:/psu/subject/2nd_quarter/soc/roy_materials/simple_bot/rtl_n_constraints/rtl_up/core/m14k_top.v
      D:/psu/subject/2nd_quarter/soc/roy_materials/simple_bot/rtl_n_constraints/rtl_up/core/m14k_udi_custom.v
      D:/psu/subject/2nd_quarter/soc/roy_materials/simple_bot/rtl_n_constraints/rtl_up/core/m14k_udi_scanio_stub.v
      D:/psu/subject/2nd_quarter/soc/roy_materials/simple_bot/rtl_n_constraints/rtl_up/system/mfp_ahb.v
      D:/psu/subject/2nd_quarter/soc/roy_materials/simple_bot/rtl_n_constraints/rtl_up/system/memories/mfp_ahb_b_ram.v
      D:/psu/subject/2nd_quarter/soc/roy_materials/simple_bot/rtl_n_constraints/rtl_up/system/mfp_ahb_gpio.v
      D:/psu/subject/2nd_quarter/soc/roy_materials/simple_bot/rtl_n_constraints/rtl_up/system/memories/mfp_ahb_p_ram.v
      D:/psu/subject/2nd_quarter/soc/roy_materials/simple_bot/rtl_n_constraints/rtl_up/system/mfp_ahb_segment.v
      D:/psu/subject/2nd_quarter/soc/roy_materials/simple_bot/rtl_n_constraints/rtl_up/system/mfp_ahb_sevensegdec.v
      D:/psu/subject/2nd_quarter/soc/roy_materials/simple_bot/rtl_n_constraints/rtl_up/system/mfp_ahb_sevensegtimer.v
      D:/psu/subject/2nd_quarter/soc/roy_materials/simple_bot/rtl_n_constraints/rtl_up/system/mfp_ahb_withloader.v
      D:/psu/subject/2nd_quarter/soc/roy_materials/simple_bot/rtl_n_constraints/rtl_up/system/mfp_ejtag_reset.v
      D:/psu/subject/2nd_quarter/soc/roy_materials/simple_bot/rtl_n_constraints/rtl_up/system/mfp_srec_parser.v
      D:/psu/subject/2nd_quarter/soc/roy_materials/simple_bot/rtl_n_constraints/rtl_up/system/mfp_srec_parser_to_ahb_lite_bridge.v
      D:/psu/subject/2nd_quarter/soc/roy_materials/simple_bot/rtl_n_constraints/rtl_up/system/mfp_sys.v
      D:/psu/subject/2nd_quarter/soc/roy_materials/simple_bot/rtl_n_constraints/rtl_up/system/mfp_uart_receiver.v
      D:/psu/subject/2nd_quarter/soc/roy_materials/simple_bot/rtl_n_constraints/rtl_up/core/mvp_cregister.v
      D:/psu/subject/2nd_quarter/soc/roy_materials/simple_bot/rtl_n_constraints/rtl_up/core/mvp_cregister_c.v
      D:/psu/subject/2nd_quarter/soc/roy_materials/simple_bot/rtl_n_constraints/rtl_up/core/mvp_cregister_ngc.v
      D:/psu/subject/2nd_quarter/soc/roy_materials/simple_bot/rtl_n_constraints/rtl_up/core/mvp_cregister_s.v
      D:/psu/subject/2nd_quarter/soc/roy_materials/simple_bot/rtl_n_constraints/rtl_up/core/mvp_cregister_wide.v
      D:/psu/subject/2nd_quarter/soc/roy_materials/simple_bot/rtl_n_constraints/rtl_up/core/mvp_cregister_wide_tlb.v
      D:/psu/subject/2nd_quarter/soc/roy_materials/simple_bot/rtl_n_constraints/rtl_up/core/mvp_cregister_wide_utlb.v
      D:/psu/subject/2nd_quarter/soc/roy_materials/simple_bot/rtl_n_constraints/rtl_up/core/mvp_latchn.v
      D:/psu/subject/2nd_quarter/soc/roy_materials/simple_bot/rtl_n_constraints/rtl_up/core/mvp_mux16.v
      D:/psu/subject/2nd_quarter/soc/roy_materials/simple_bot/rtl_n_constraints/rtl_up/core/mvp_mux1hot_10.v
      D:/psu/subject/2nd_quarter/soc/roy_materials/simple_bot/rtl_n_constraints/rtl_up/core/mvp_mux1hot_13.v
      D:/psu/subject/2nd_quarter/soc/roy_materials/simple_bot/rtl_n_constraints/rtl_up/core/mvp_mux1hot_24.v
      D:/psu/subject/2nd_quarter/soc/roy_materials/simple_bot/rtl_n_constraints/rtl_up/core/mvp_mux1hot_3.v
      D:/psu/subject/2nd_quarter/soc/roy_materials/simple_bot/rtl_n_constraints/rtl_up/core/mvp_mux1hot_4.v
      D:/psu/subject/2nd_quarter/soc/roy_materials/simple_bot/rtl_n_constraints/rtl_up/core/mvp_mux1hot_5.v
      D:/psu/subject/2nd_quarter/soc/roy_materials/simple_bot/rtl_n_constraints/rtl_up/core/mvp_mux1hot_6.v
      D:/psu/subject/2nd_quarter/soc/roy_materials/simple_bot/rtl_n_constraints/rtl_up/core/mvp_mux1hot_8.v
      D:/psu/subject/2nd_quarter/soc/roy_materials/simple_bot/rtl_n_constraints/rtl_up/core/mvp_mux1hot_9.v
      D:/psu/subject/2nd_quarter/soc/roy_materials/simple_bot/rtl_n_constraints/rtl_up/core/mvp_mux2.v
      D:/psu/subject/2nd_quarter/soc/roy_materials/simple_bot/rtl_n_constraints/rtl_up/core/mvp_mux4.v
      D:/psu/subject/2nd_quarter/soc/roy_materials/simple_bot/rtl_n_constraints/rtl_up/core/mvp_mux8.v
      D:/psu/subject/2nd_quarter/soc/roy_materials/simple_bot/rtl_n_constraints/rtl_up/core/mvp_register.v
      D:/psu/subject/2nd_quarter/soc/roy_materials/simple_bot/rtl_n_constraints/rtl_up/core/mvp_register_c.v
      D:/psu/subject/2nd_quarter/soc/roy_materials/simple_bot/rtl_n_constraints/rtl_up/core/mvp_register_ngc.v
      D:/psu/subject/2nd_quarter/soc/roy_materials/simple_bot/rtl_n_constraints/rtl_up/core/mvp_register_s.v
      D:/psu/subject/2nd_quarter/soc/roy_materials/simple_bot/rtl_n_constraints/rtl_up/core/mvp_ucregister_wide.v
      D:/psu/subject/2nd_quarter/soc/roy_materials/simple_bot/rtl_n_constraints/rtl_up/system/memories/ram_b0.v
      D:/psu/subject/2nd_quarter/soc/roy_materials/simple_bot/rtl_n_constraints/rtl_up/system/memories/ram_b1.v
      D:/psu/subject/2nd_quarter/soc/roy_materials/simple_bot/rtl_n_constraints/rtl_up/system/memories/ram_b2.v
      D:/psu/subject/2nd_quarter/soc/roy_materials/simple_bot/rtl_n_constraints/rtl_up/system/memories/ram_b3.v
      D:/psu/subject/2nd_quarter/soc/roy_materials/simple_bot/rtl_n_constraints/rtl_up/system/memories/ram_p0.v
      D:/psu/subject/2nd_quarter/soc/roy_materials/simple_bot/rtl_n_constraints/rtl_up/system/memories/ram_p1.v
      D:/psu/subject/2nd_quarter/soc/roy_materials/simple_bot/rtl_n_constraints/rtl_up/system/memories/ram_p2.v
      D:/psu/subject/2nd_quarter/soc/roy_materials/simple_bot/rtl_n_constraints/rtl_up/system/memories/ram_p3.v
      D:/psu/subject/2nd_quarter/soc/roy_materials/simple_bot/rtl_n_constraints/rtl_up/core/tagram_2k2way_xilinx.v
      D:/psu/subject/2nd_quarter/soc/roy_materials/simple_bot/rtl_n_constraints/rtl_up/boards/nexys4_ddr/mfp_nexys4_ddr.v
    }
      rt::read_vhdl -lib xpm C:/Xilinx/Vivado/2018.2/data/ip/xpm/xpm_VCOMP.vhd
      rt::filesetChecksum
    }
    rt::set_parameter usePostFindUniquification true
    set rt::SDCFileList D:/psu/subject/2nd_quarter/soc/roy_materials/simple_bot/simple_bot_v1/simple_bot_v1.runs/synth_1/.Xil/Vivado-6164-DESKTOP-M7S9RR3/realtime/mfp_nexys4_ddr_synth.xdc
    rt::sdcChecksum
    set rt::top mfp_nexys4_ddr
    rt::set_parameter enableIncremental true
    set rt::reportTiming false
    rt::set_parameter elaborateOnly false
    rt::set_parameter elaborateRtl false
    rt::set_parameter eliminateRedundantBitOperator true
    rt::set_parameter elaborateRtlOnlyFlow false
    rt::set_parameter writeBlackboxInterface true
    rt::set_parameter ramStyle auto
    rt::set_parameter merge_flipflops true
# MODE: 
    rt::set_parameter webTalkPath {D:/psu/subject/2nd_quarter/soc/roy_materials/simple_bot/simple_bot_v1/simple_bot_v1.cache/wt}
    rt::set_parameter enableSplitFlowPath "D:/psu/subject/2nd_quarter/soc/roy_materials/simple_bot/simple_bot_v1/simple_bot_v1.runs/synth_1/.Xil/Vivado-6164-DESKTOP-M7S9RR3/"
    set ok_to_delete_rt_tmp true 
    if { [rt::get_parameter parallelDebug] } { 
       set ok_to_delete_rt_tmp false 
    } 
    if {$rt::useElabCache == false} {
        set oldMIITMVal [rt::get_parameter maxInputIncreaseToMerge]; rt::set_parameter maxInputIncreaseToMerge 1000
        set oldCDPCRL [rt::get_parameter createDfgPartConstrRecurLimit]; rt::set_parameter createDfgPartConstrRecurLimit 1
        $rt::db readXRFFile
      rt::run_synthesis -module $rt::top
        rt::set_parameter maxInputIncreaseToMerge $oldMIITMVal
        rt::set_parameter createDfgPartConstrRecurLimit $oldCDPCRL
    }

    set rt::flowresult [ source $::env(SYNTH_COMMON)/flow.tcl ]
    rt::HARTNDb_stopJobStats
    rt::HARTNDb_reportJobStats "Synthesis Optimization Runtime"
    rt::HARTNDb_stopSystemStats
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
