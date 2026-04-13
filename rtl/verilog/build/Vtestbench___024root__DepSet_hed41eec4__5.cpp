// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Design implementation internals
// See Vtestbench.h for the primary calling header

#include "Vtestbench__pch.h"
#include "Vtestbench___024root.h"

VL_INLINE_OPT void Vtestbench___024root___nba_comb__TOP__52(Vtestbench___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtestbench__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtestbench___024root___nba_comb__TOP__52\n"); );
    // Body
    vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_alu_inst__DOT__neorv32_cpu_alu_muldiv_enabled_neorv32_cpu_alu_muldiv_inst__DOT__n19807_o 
        = ((((2U == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_alu_inst__DOT__neorv32_cpu_alu_muldiv_enabled_neorv32_cpu_alu_muldiv_inst__DOT__n19803_o))
              ? 0x1eU : ((1U == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_alu_inst__DOT__neorv32_cpu_alu_muldiv_enabled_neorv32_cpu_alu_muldiv_inst__DOT__n19803_o))
                          ? (0x1fU & (((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_alu_inst__DOT__neorv32_cpu_alu_muldiv_enabled_neorv32_cpu_alu_muldiv_inst__DOT__n20061_q) 
                                       >> 2U) - (IData)(1U)))
                          : 0x1eU)) << 2U) | ((2U == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_alu_inst__DOT__neorv32_cpu_alu_muldiv_enabled_neorv32_cpu_alu_muldiv_inst__DOT__n19803_o))
                                               ? 0U
                                               : (3U 
                                                  & ((1U 
                                                      == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_alu_inst__DOT__neorv32_cpu_alu_muldiv_enabled_neorv32_cpu_alu_muldiv_inst__DOT__n19803_o))
                                                      ? 
                                                     ((1U 
                                                       & ((~ (IData)(
                                                                     (0U 
                                                                      != 
                                                                      (0x7cU 
                                                                       & (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_alu_inst__DOT__neorv32_cpu_alu_muldiv_enabled_neorv32_cpu_alu_muldiv_inst__DOT__n20061_q))))) 
                                                          | (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13732_o[2U] 
                                                             >> 0x1fU)))
                                                       ? 2U
                                                       : (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_alu_inst__DOT__neorv32_cpu_alu_muldiv_enabled_neorv32_cpu_alu_muldiv_inst__DOT__n20061_q))
                                                      : 
                                                     ((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_alu_inst__DOT__neorv32_cpu_alu_muldiv_enabled_neorv32_cpu_alu_muldiv_inst__DOT__valid_cmd)
                                                       ? 
                                                      ((0x40000U 
                                                        & vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13725_q[0U])
                                                        ? 1U
                                                        : 2U)
                                                       : (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_alu_inst__DOT__neorv32_cpu_alu_muldiv_enabled_neorv32_cpu_alu_muldiv_inst__DOT__n20061_q))))));
    vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_alu_inst__DOT__n15369_o 
        = (((((((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_alu_inst__DOT__neorv32_cpu_alu_shifter_inst__DOT__valid_cmd) 
                | (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_alu_inst__DOT__neorv32_cpu_alu_bitmanip_enabled_neorv32_cpu_alu_bitmanip_inst__DOT__n23764_q)) 
               | ((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_alu_inst__DOT__neorv32_cpu_alu_fpu_enabled_neorv32_cpu_alu_fpu_inst__DOT__n26097_q) 
                  >> 2U)) | (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_alu_inst__DOT__n15364_o)) 
             | (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_alu_inst__DOT__neorv32_cpu_alu_cond_enabled_neorv32_cpu_alu_cond_inst__DOT__valid_cmd)) 
            | (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_alu_inst__DOT__neorv32_cpu_alu_crypto_enabled_neorv32_cpu_alu_crypto_inst__DOT__n27929_q)) 
           | (2U == (3U & (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_alu_inst__DOT__neorv32_cpu_alu_muldiv_enabled_neorv32_cpu_alu_muldiv_inst__DOT__n20061_q))));
}

VL_INLINE_OPT void Vtestbench___024root___nba_comb__TOP__54(Vtestbench___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtestbench__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtestbench___024root___nba_comb__TOP__54\n"); );
    // Body
    vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_alu_inst__DOT__neorv32_cpu_alu_fpu_enabled_neorv32_cpu_alu_fpu_inst__DOT__n24575_o 
        = (((((((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_alu_inst__DOT__neorv32_cpu_alu_fpu_enabled_neorv32_cpu_alu_fpu_inst__DOT__n26106_q) 
                | (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_alu_inst__DOT__neorv32_cpu_alu_fpu_enabled_neorv32_cpu_alu_fpu_inst__DOT__n26105_o 
                   >> 0x26U)) | (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_alu_inst__DOT__neorv32_cpu_alu_fpu_enabled_neorv32_cpu_alu_fpu_inst__DOT__n26108_o 
                                 >> 0x26U)) | (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_alu_inst__DOT__neorv32_cpu_alu_fpu_enabled_neorv32_cpu_alu_fpu_inst__DOT__n26109_q)) 
             | (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_alu_inst__DOT__neorv32_cpu_alu_fpu_enabled_neorv32_cpu_alu_fpu_inst__DOT__neorv32_cpu_alu_fpu_normalizer_inst__DOT__n29529_q)) 
            | (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_alu_inst__DOT__neorv32_cpu_alu_fpu_enabled_neorv32_cpu_alu_fpu_inst__DOT__neorv32_cpu_alu_fpu_f2i_inst__DOT__n28757_q)) 
           | (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13732_o[2U] 
              >> 0x1fU));
    vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_alu_inst__DOT__neorv32_cpu_alu_fpu_enabled_neorv32_cpu_alu_fpu_inst__DOT__n24598_o 
        = ((((2U == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_alu_inst__DOT__neorv32_cpu_alu_fpu_enabled_neorv32_cpu_alu_fpu_inst__DOT__n24584_o)) 
             && (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_alu_inst__DOT__neorv32_cpu_alu_fpu_enabled_neorv32_cpu_alu_fpu_inst__DOT__n24575_o)) 
            << 2U) | ((((2U != (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_alu_inst__DOT__neorv32_cpu_alu_fpu_enabled_neorv32_cpu_alu_fpu_inst__DOT__n24584_o)) 
                        && ((1U == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_alu_inst__DOT__neorv32_cpu_alu_fpu_enabled_neorv32_cpu_alu_fpu_inst__DOT__n24584_o)) 
                            && (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_alu_inst__DOT__neorv32_cpu_alu_fpu_enabled_neorv32_cpu_alu_fpu_inst__DOT__n24558_o))) 
                       << 1U) | (1U & ((2U == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_alu_inst__DOT__neorv32_cpu_alu_fpu_enabled_neorv32_cpu_alu_fpu_inst__DOT__n24584_o))
                                        ? ((~ (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_alu_inst__DOT__neorv32_cpu_alu_fpu_enabled_neorv32_cpu_alu_fpu_inst__DOT__n24575_o)) 
                                           & (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_alu_inst__DOT__neorv32_cpu_alu_fpu_enabled_neorv32_cpu_alu_fpu_inst__DOT__n26097_q))
                                        : ((1U == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_alu_inst__DOT__neorv32_cpu_alu_fpu_enabled_neorv32_cpu_alu_fpu_inst__DOT__n24584_o)) 
                                           && (1U & 
                                               ((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_alu_inst__DOT__neorv32_cpu_alu_fpu_enabled_neorv32_cpu_alu_fpu_inst__DOT__n24558_o) 
                                                | (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_alu_inst__DOT__neorv32_cpu_alu_fpu_enabled_neorv32_cpu_alu_fpu_inst__DOT__n26097_q))))))));
}

VL_INLINE_OPT void Vtestbench___024root___nba_comb__TOP__56(Vtestbench___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtestbench__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtestbench___024root___nba_comb__TOP__56\n"); );
    // Init
    VlWide<3>/*95:0*/ __Vtemp_1;
    VlWide<3>/*95:0*/ __Vtemp_2;
    VlWide<3>/*95:0*/ __Vtemp_6;
    VlWide<5>/*159:0*/ __Vtemp_7;
    VlWide<6>/*191:0*/ __Vtemp_8;
    VlWide<7>/*223:0*/ __Vtemp_12;
    // Body
    vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13737_o 
        = (((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n12698_o) 
            << 4U) | (((IData)(((vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13732_o[3U] 
                                 >> 5U) & ((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n12708_o) 
                                           | ((~ vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13733_q[0U]) 
                                              & (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13733_q[6U] 
                                                 >> 3U))))) 
                       << 3U) | (((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n12690_o) 
                                  << 1U) | (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13736_q))));
    vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__cnts_enabled_neorv32_cpu_counters_inst__DOT__n14632_o 
        = (IData)((((~ ((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__cnts_enabled_neorv32_cpu_counters_inst__DOT__n15187_q) 
                        >> 8U)) & (~ (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13737_o))) 
                   & (0U != (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__cnts_enabled_neorv32_cpu_counters_inst__DOT__n14597_o))));
    vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__cnts_enabled_neorv32_cpu_counters_inst__DOT__n14593_o 
        = (IData)((((~ ((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__cnts_enabled_neorv32_cpu_counters_inst__DOT__n15187_q) 
                        >> 7U)) & (~ (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13737_o))) 
                   & (0U != (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__cnts_enabled_neorv32_cpu_counters_inst__DOT__n14558_o))));
    vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__cnts_enabled_neorv32_cpu_counters_inst__DOT__n14554_o 
        = (IData)((((~ ((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__cnts_enabled_neorv32_cpu_counters_inst__DOT__n15187_q) 
                        >> 6U)) & (~ (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13737_o))) 
                   & (0U != (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__cnts_enabled_neorv32_cpu_counters_inst__DOT__n14519_o))));
    vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__cnts_enabled_neorv32_cpu_counters_inst__DOT__n14515_o 
        = (IData)((((~ ((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__cnts_enabled_neorv32_cpu_counters_inst__DOT__n15187_q) 
                        >> 5U)) & (~ (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13737_o))) 
                   & (0U != (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__cnts_enabled_neorv32_cpu_counters_inst__DOT__n14480_o))));
    vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__cnts_enabled_neorv32_cpu_counters_inst__DOT__n14476_o 
        = (IData)((((~ ((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__cnts_enabled_neorv32_cpu_counters_inst__DOT__n15187_q) 
                        >> 4U)) & (~ (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13737_o))) 
                   & (0U != (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__cnts_enabled_neorv32_cpu_counters_inst__DOT__n14441_o))));
    vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__cnts_enabled_neorv32_cpu_counters_inst__DOT__n14437_o 
        = (IData)((((~ ((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__cnts_enabled_neorv32_cpu_counters_inst__DOT__n15187_q) 
                        >> 3U)) & (~ (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13737_o))) 
                   & (0U != (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__cnts_enabled_neorv32_cpu_counters_inst__DOT__n14402_o))));
    vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__cnts_enabled_neorv32_cpu_counters_inst__DOT__n14398_o 
        = ((~ (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__cnts_enabled_neorv32_cpu_counters_inst__DOT__n14376_o)) 
           & ((~ ((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__cnts_enabled_neorv32_cpu_counters_inst__DOT__n15187_q) 
                  >> 2U)) & ((~ (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13737_o)) 
                             & (4U == (0xfU & vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13725_q[0U])))));
    vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__cnts_enabled_neorv32_cpu_counters_inst__DOT__n14387_o 
        = ((~ (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__cnts_enabled_neorv32_cpu_counters_inst__DOT__n14370_o)) 
           & ((~ (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__cnts_enabled_neorv32_cpu_counters_inst__DOT__n15187_q)) 
              & ((~ (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13737_o)) 
                 & (0xaU != (0xfU & vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13725_q[0U])))));
    vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_frontend_inst__DOT__n10376_o 
        = (((QData)((IData)((1U & ((4U == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_frontend_inst__DOT__n10366_o))
                                    ? (IData)((vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_frontend_inst__DOT__n10569_q 
                                               >> 0x24U))
                                    : ((2U == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_frontend_inst__DOT__n10366_o))
                                        ? (IData)((vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_frontend_inst__DOT__n10569_q 
                                                   >> 0x24U))
                                        : ((1U == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_frontend_inst__DOT__n10366_o))
                                            ? (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13737_o)
                                            : (IData)(
                                                      (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_frontend_inst__DOT__n10569_q 
                                                       >> 0x24U)))))))) 
            << 0x24U) | (((QData)((IData)((1U & ((4U 
                                                  == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_frontend_inst__DOT__n10366_o))
                                                  ? (IData)(
                                                            (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_frontend_inst__DOT__n10569_q 
                                                             >> 0x23U))
                                                  : 
                                                 ((2U 
                                                   == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_frontend_inst__DOT__n10366_o))
                                                   ? (IData)(
                                                             (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_frontend_inst__DOT__n10569_q 
                                                              >> 0x23U))
                                                   : 
                                                  ((1U 
                                                    == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_frontend_inst__DOT__n10366_o))
                                                    ? 
                                                   vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13733_q[0U]
                                                    : (IData)(
                                                              (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_frontend_inst__DOT__n10569_q 
                                                               >> 0x23U)))))))) 
                          << 0x23U) | (((QData)((IData)(
                                                        ((4U 
                                                          == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_frontend_inst__DOT__n10366_o))
                                                          ? 
                                                         ((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_icache_enabled_neorv32_icache_inst__DOT__n1812_o)
                                                           ? 
                                                          ((0xfffffffcU 
                                                            & ((IData)(4U) 
                                                               + (IData)(
                                                                         (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_frontend_inst__DOT__n10569_q 
                                                                          >> 3U)))) 
                                                           | (1U 
                                                              & (IData)(
                                                                        (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_frontend_inst__DOT__n10569_q 
                                                                         >> 3U))))
                                                           : (IData)(
                                                                     (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_frontend_inst__DOT__n10569_q 
                                                                      >> 3U)))
                                                          : 
                                                         ((2U 
                                                           == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_frontend_inst__DOT__n10366_o))
                                                           ? (IData)(
                                                                     (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_frontend_inst__DOT__n10569_q 
                                                                      >> 3U))
                                                           : 
                                                          ((1U 
                                                            == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_frontend_inst__DOT__n10366_o))
                                                            ? 
                                                           (0xfffffffeU 
                                                            & ((vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13725_q[3U] 
                                                                << 0x1bU) 
                                                               | (0x7fffffeU 
                                                                  & (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13725_q[2U] 
                                                                     >> 5U))))
                                                            : (IData)(
                                                                      (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_frontend_inst__DOT__n10569_q 
                                                                       >> 3U))))))) 
                                        << 3U) | (QData)((IData)(
                                                                 ((((4U 
                                                                     == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_frontend_inst__DOT__n10366_o))
                                                                     ? (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_frontend_inst__DOT__restart)
                                                                     : 
                                                                    ((2U 
                                                                      == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_frontend_inst__DOT__n10366_o))
                                                                      ? (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_frontend_inst__DOT__restart)
                                                                      : 
                                                                     ((1U 
                                                                       != (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_frontend_inst__DOT__n10366_o)) 
                                                                      && (1U 
                                                                          & (IData)(
                                                                                (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_frontend_inst__DOT__n10569_q 
                                                                                >> 2U)))))) 
                                                                   << 2U) 
                                                                  | (3U 
                                                                     & ((4U 
                                                                         == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_frontend_inst__DOT__n10366_o))
                                                                         ? 
                                                                        ((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_icache_enabled_neorv32_icache_inst__DOT__n1812_o)
                                                                          ? 
                                                                         ((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_frontend_inst__DOT__restart)
                                                                           ? 0U
                                                                           : 1U)
                                                                          : (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_frontend_inst__DOT__n10569_q))
                                                                         : 
                                                                        ((2U 
                                                                          == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_frontend_inst__DOT__n10366_o))
                                                                          ? 
                                                                         ((3U 
                                                                           == 
                                                                           (3U 
                                                                            & (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_frontend_inst__DOT__n10570_o[2U] 
                                                                               >> 8U)))
                                                                           ? 2U
                                                                           : 
                                                                          ((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_frontend_inst__DOT__restart)
                                                                            ? 0U
                                                                            : (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_frontend_inst__DOT__n10569_q)))
                                                                          : 
                                                                         ((1U 
                                                                           == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_frontend_inst__DOT__n10366_o))
                                                                           ? 1U
                                                                           : 0U))))))))));
    __Vtemp_1[1U] = (((IData)((((QData)((IData)(((2U 
                                                  == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_lsu_inst__DOT__n15830_o))
                                                  ? 
                                                 ((vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_regfile_inst__DOT__n15262_data 
                                                   << 0x10U) 
                                                  | (0xffffU 
                                                     & vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_regfile_inst__DOT__n15262_data))
                                                  : 
                                                 ((1U 
                                                   == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_lsu_inst__DOT__n15830_o))
                                                   ? 
                                                  ((0xffff0000U 
                                                    & ((vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_regfile_inst__DOT__n15262_data 
                                                        << 0x18U) 
                                                       | (0xff0000U 
                                                          & (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_regfile_inst__DOT__n15262_data 
                                                             << 0x10U)))) 
                                                   | ((0xff00U 
                                                       & (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_regfile_inst__DOT__n15262_data 
                                                          << 8U)) 
                                                      | (0xffU 
                                                         & vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_regfile_inst__DOT__n15262_data)))
                                                   : vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_regfile_inst__DOT__n15262_data)))) 
                                << 0x20U) | (QData)((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_alu_inst__DOT__addsub)))) 
                      >> 0x1bU) | ((IData)(((((QData)((IData)(
                                                              ((2U 
                                                                == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_lsu_inst__DOT__n15830_o))
                                                                ? 
                                                               ((vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_regfile_inst__DOT__n15262_data 
                                                                 << 0x10U) 
                                                                | (0xffffU 
                                                                   & vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_regfile_inst__DOT__n15262_data))
                                                                : 
                                                               ((1U 
                                                                 == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_lsu_inst__DOT__n15830_o))
                                                                 ? 
                                                                ((0xffff0000U 
                                                                  & ((vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_regfile_inst__DOT__n15262_data 
                                                                      << 0x18U) 
                                                                     | (0xff0000U 
                                                                        & (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_regfile_inst__DOT__n15262_data 
                                                                           << 0x10U)))) 
                                                                 | ((0xff00U 
                                                                     & (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_regfile_inst__DOT__n15262_data 
                                                                        << 8U)) 
                                                                    | (0xffU 
                                                                       & vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_regfile_inst__DOT__n15262_data)))
                                                                 : vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_regfile_inst__DOT__n15262_data)))) 
                                              << 0x20U) 
                                             | (QData)((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_alu_inst__DOT__addsub))) 
                                            >> 0x20U)) 
                                   << 5U));
    __Vtemp_2[2U] = ((0x20U & (((2U == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_lsu_inst__DOT__n15830_o))
                                 ? (~ (IData)((vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_alu_inst__DOT__addsub 
                                               >> 1U)))
                                 : ((1U != (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_lsu_inst__DOT__n15830_o)) 
                                    || (IData)((0ULL 
                                                == 
                                                (3ULL 
                                                 & vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_alu_inst__DOT__addsub))))) 
                               << 5U)) | ((IData)((
                                                   (((QData)((IData)(
                                                                     ((2U 
                                                                       == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_lsu_inst__DOT__n15830_o))
                                                                       ? 
                                                                      ((vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_regfile_inst__DOT__n15262_data 
                                                                        << 0x10U) 
                                                                       | (0xffffU 
                                                                          & vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_regfile_inst__DOT__n15262_data))
                                                                       : 
                                                                      ((1U 
                                                                        == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_lsu_inst__DOT__n15830_o))
                                                                        ? 
                                                                       ((0xffff0000U 
                                                                         & ((vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_regfile_inst__DOT__n15262_data 
                                                                             << 0x18U) 
                                                                            | (0xff0000U 
                                                                               & (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_regfile_inst__DOT__n15262_data 
                                                                                << 0x10U)))) 
                                                                        | ((0xff00U 
                                                                            & (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_regfile_inst__DOT__n15262_data 
                                                                               << 8U)) 
                                                                           | (0xffU 
                                                                              & vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_regfile_inst__DOT__n15262_data)))
                                                                        : vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_regfile_inst__DOT__n15262_data)))) 
                                                     << 0x20U) 
                                                    | (QData)((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_alu_inst__DOT__addsub))) 
                                                   >> 0x20U)) 
                                          >> 0x1bU));
    vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_lsu_inst__DOT__n15855_o[0U] 
        = (((IData)((((QData)((IData)(((2U == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_lsu_inst__DOT__n15830_o))
                                        ? ((vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_regfile_inst__DOT__n15262_data 
                                            << 0x10U) 
                                           | (0xffffU 
                                              & vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_regfile_inst__DOT__n15262_data))
                                        : ((1U == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_lsu_inst__DOT__n15830_o))
                                            ? ((0xffff0000U 
                                                & ((vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_regfile_inst__DOT__n15262_data 
                                                    << 0x18U) 
                                                   | (0xff0000U 
                                                      & (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_regfile_inst__DOT__n15262_data 
                                                         << 0x10U)))) 
                                               | ((0xff00U 
                                                   & (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_regfile_inst__DOT__n15262_data 
                                                      << 8U)) 
                                                  | (0xffU 
                                                     & vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_regfile_inst__DOT__n15262_data)))
                                            : vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_regfile_inst__DOT__n15262_data)))) 
                      << 0x20U) | (QData)((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_alu_inst__DOT__addsub)))) 
            << 5U) | ((4U & ((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13737_o) 
                             << 2U)) | ((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_lsu_inst__DOT__n15781_o) 
                                        << 1U)));
    vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_lsu_inst__DOT__n15855_o[1U] 
        = __Vtemp_1[1U];
    vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_lsu_inst__DOT__n15855_o[2U] 
        = ((0x100U & (((2U == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_lsu_inst__DOT__n15830_o))
                        ? (IData)((vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_alu_inst__DOT__addsub 
                                   >> 1U)) : ((1U != (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_lsu_inst__DOT__n15830_o)) 
                                              || (IData)(
                                                         (3ULL 
                                                          == 
                                                          (3ULL 
                                                           & vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_alu_inst__DOT__addsub))))) 
                      << 8U)) | ((0x80U & (((2U == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_lsu_inst__DOT__n15830_o))
                                             ? (IData)(
                                                       (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_alu_inst__DOT__addsub 
                                                        >> 1U))
                                             : ((1U 
                                                 != (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_lsu_inst__DOT__n15830_o)) 
                                                || (IData)(
                                                           (2ULL 
                                                            == 
                                                            (3ULL 
                                                             & vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_alu_inst__DOT__addsub))))) 
                                           << 7U)) 
                                 | ((0x40U & (((2U 
                                                == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_lsu_inst__DOT__n15830_o))
                                                ? (~ (IData)(
                                                             (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_alu_inst__DOT__addsub 
                                                              >> 1U)))
                                                : (
                                                   (1U 
                                                    != (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_lsu_inst__DOT__n15830_o)) 
                                                   || (IData)(
                                                              (1ULL 
                                                               == 
                                                               (3ULL 
                                                                & vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_alu_inst__DOT__addsub))))) 
                                              << 6U)) 
                                    | __Vtemp_2[2U])));
    vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11305_o 
        = (((((((((0x200U == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o)) 
                  | (0x100U == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o))) 
                 | (0x80U == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o))) 
                | (0x40U == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o))) 
               | (0x20U == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o))) 
              | (0x10U == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o))) 
             | (8U == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o))) 
            | (4U == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o)))
            ? ((0x200U == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o))
                ? ((vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13725_q[3U] 
                    << 0x1bU) | (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13725_q[2U] 
                                 >> 5U)) : ((0x100U 
                                             == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o))
                                             ? ((vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13725_q[3U] 
                                                 << 0x1bU) 
                                                | (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13725_q[2U] 
                                                   >> 5U))
                                             : ((0x80U 
                                                 == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o))
                                                 ? 
                                                ((vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13725_q[3U] 
                                                  << 0x1bU) 
                                                 | (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13725_q[2U] 
                                                    >> 5U))
                                                 : 
                                                ((0x40U 
                                                  == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o))
                                                  ? 
                                                 ((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__branch_taken)
                                                   ? 
                                                  ((IData)(
                                                           (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_alu_inst__DOT__addsub 
                                                            >> 1U)) 
                                                   << 1U)
                                                   : 
                                                  ((vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13725_q[3U] 
                                                    << 0x1bU) 
                                                   | (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13725_q[2U] 
                                                      >> 5U)))
                                                  : 
                                                 ((0x20U 
                                                   == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o))
                                                   ? 
                                                  ((vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13725_q[3U] 
                                                    << 0x1bU) 
                                                   | (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13725_q[2U] 
                                                      >> 5U))
                                                   : 
                                                  ((0x10U 
                                                    == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o))
                                                    ? 
                                                   ((IData)(
                                                            (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_alu_inst__DOT__addsub 
                                                             >> 1U)) 
                                                    << 1U)
                                                    : 
                                                   ((8U 
                                                     == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o))
                                                     ? 
                                                    ((1U 
                                                      & (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13737_o))
                                                      ? 
                                                     (0xfffffffeU 
                                                      & ((vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13733_q[7U] 
                                                          << 0x17U) 
                                                         | (0x7ffffeU 
                                                            & (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13733_q[6U] 
                                                               >> 9U))))
                                                      : 
                                                     (0xfffffffeU 
                                                      & ((vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13733_q[1U] 
                                                          << 7U) 
                                                         | (0x7eU 
                                                            & (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13733_q[0U] 
                                                               >> 0x19U)))))
                                                     : 
                                                    ((0x10000000U 
                                                      & vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13732_o[1U])
                                                      ? 0xffffff04U
                                                      : 
                                                     ((1U 
                                                       & (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13737_o))
                                                       ? 0xffffff00U
                                                       : 
                                                      (((vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13732_o[1U] 
                                                         >> 0x1dU) 
                                                        & (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13733_q[1U] 
                                                           >> 0x1fU))
                                                        ? 
                                                       ((0xffffff80U 
                                                         & (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13733_q[2U] 
                                                            << 1U)) 
                                                        | (0x7cU 
                                                           & (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13732_o[1U] 
                                                              >> 0x15U)))
                                                        : 
                                                       (0xfffffffcU 
                                                        & (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13733_q[2U] 
                                                           << 1U))))))))))))
            : ((vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13725_q[3U] 
                << 0x1bU) | (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13725_q[2U] 
                             >> 5U)));
    vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n12392_o 
        = (((QData)((IData)((1U & (((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13737_o) 
                                    >> 1U) | ((vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13732_o[2U] 
                                               >> 0x1eU) 
                                              & (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13732_o[1U] 
                                                 >> 0x14U)))))) 
            << 0x27U) | (((QData)((IData)((1U & (((
                                                   vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13732_o[0U] 
                                                   >> 0x1fU) 
                                                  & (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13733_q[0U] 
                                                     >> 0x18U)) 
                                                 | ((vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13732_o[2U] 
                                                     >> 0x1eU) 
                                                    & (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13732_o[1U] 
                                                       >> 0x13U)))))) 
                          << 0x26U) | (((QData)((IData)(
                                                        (1U 
                                                         & (((vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13732_o[0U] 
                                                              >> 0x1eU) 
                                                             & (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13733_q[0U] 
                                                                >> 0x17U)) 
                                                            | ((vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13732_o[2U] 
                                                                >> 0x1eU) 
                                                               & (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13732_o[1U] 
                                                                  >> 0x12U)))))) 
                                        << 0x25U) | 
                                       (((QData)((IData)(
                                                         (1U 
                                                          & (((vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13732_o[0U] 
                                                               >> 0x1dU) 
                                                              & (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13733_q[0U] 
                                                                 >> 0x16U)) 
                                                             | ((vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13732_o[2U] 
                                                                 >> 0x1eU) 
                                                                & (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13732_o[1U] 
                                                                   >> 0x11U)))))) 
                                         << 0x24U) 
                                        | (((QData)((IData)(
                                                            (1U 
                                                             & (((vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13732_o[0U] 
                                                                  >> 0x1cU) 
                                                                 & (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13733_q[0U] 
                                                                    >> 0x15U)) 
                                                                | ((vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13732_o[2U] 
                                                                    >> 0x1eU) 
                                                                   & (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13732_o[1U] 
                                                                      >> 0x10U)))))) 
                                            << 0x23U) 
                                           | (((QData)((IData)(
                                                               (1U 
                                                                & (((vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13732_o[0U] 
                                                                     >> 0x1bU) 
                                                                    & (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13733_q[0U] 
                                                                       >> 0x14U)) 
                                                                   | ((vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13732_o[2U] 
                                                                       >> 0x1eU) 
                                                                      & (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13732_o[1U] 
                                                                         >> 0xfU)))))) 
                                               << 0x22U) 
                                              | (((QData)((IData)(
                                                                  (1U 
                                                                   & (((vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13732_o[0U] 
                                                                        >> 0x1aU) 
                                                                       & (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13733_q[0U] 
                                                                          >> 0x13U)) 
                                                                      | ((vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13732_o[2U] 
                                                                          >> 0x1eU) 
                                                                         & (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13732_o[1U] 
                                                                            >> 0xeU)))))) 
                                                  << 0x21U) 
                                                 | (((QData)((IData)(
                                                                     (1U 
                                                                      & (((vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13732_o[0U] 
                                                                           >> 0x19U) 
                                                                          & (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13733_q[0U] 
                                                                             >> 0x12U)) 
                                                                         | ((vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13732_o[2U] 
                                                                             >> 0x1eU) 
                                                                            & (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13732_o[1U] 
                                                                               >> 0xdU)))))) 
                                                     << 0x20U) 
                                                    | (QData)((IData)(
                                                                      ((0x80000000U 
                                                                        & (((vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13732_o[0U] 
                                                                             << 7U) 
                                                                            & (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13733_q[0U] 
                                                                               << 0xeU)) 
                                                                           | ((vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13732_o[2U] 
                                                                               << 1U) 
                                                                              & (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13732_o[1U] 
                                                                                << 0x13U)))) 
                                                                       | ((0x40000000U 
                                                                           & (((vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13732_o[0U] 
                                                                                << 7U) 
                                                                               & (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13733_q[0U] 
                                                                                << 0xeU)) 
                                                                              | (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13732_o[2U] 
                                                                                & (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13732_o[1U] 
                                                                                << 0x13U)))) 
                                                                          | ((0x20000000U 
                                                                              & ((0xe0000000U 
                                                                                & ((vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13732_o[0U] 
                                                                                << 7U) 
                                                                                & (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13733_q[0U] 
                                                                                << 0xeU))) 
                                                                                | (0x60000000U 
                                                                                & ((vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13732_o[2U] 
                                                                                >> 1U) 
                                                                                & (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13732_o[1U] 
                                                                                << 0x13U))))) 
                                                                             | ((0x10000000U 
                                                                                & ((0xf0000000U 
                                                                                & ((vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13732_o[0U] 
                                                                                << 7U) 
                                                                                & (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13733_q[0U] 
                                                                                << 0xeU))) 
                                                                                | (0x30000000U 
                                                                                & ((vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13732_o[2U] 
                                                                                >> 2U) 
                                                                                & (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13732_o[1U] 
                                                                                << 0x13U))))) 
                                                                                | ((0x8000000U 
                                                                                & ((0xf8000000U 
                                                                                & ((vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13732_o[0U] 
                                                                                << 7U) 
                                                                                & (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13733_q[0U] 
                                                                                << 0xeU))) 
                                                                                | (0x18000000U 
                                                                                & ((vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13732_o[2U] 
                                                                                >> 3U) 
                                                                                & (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13732_o[1U] 
                                                                                << 0x13U))))) 
                                                                                | ((0x4000000U 
                                                                                & ((0xfc000000U 
                                                                                & ((vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13732_o[0U] 
                                                                                << 7U) 
                                                                                & (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13733_q[0U] 
                                                                                << 0xeU))) 
                                                                                | (0xc000000U 
                                                                                & ((vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13732_o[2U] 
                                                                                >> 4U) 
                                                                                & (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13732_o[1U] 
                                                                                << 0x13U))))) 
                                                                                | ((0x2000000U 
                                                                                & ((0xfe000000U 
                                                                                & ((vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13732_o[0U] 
                                                                                << 7U) 
                                                                                & (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13733_q[0U] 
                                                                                << 0xeU))) 
                                                                                | (0x6000000U 
                                                                                & ((vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13732_o[2U] 
                                                                                >> 5U) 
                                                                                & (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13732_o[1U] 
                                                                                << 0x13U))))) 
                                                                                | ((0x1000000U 
                                                                                & ((0xff000000U 
                                                                                & ((vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13732_o[0U] 
                                                                                << 7U) 
                                                                                & (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13733_q[0U] 
                                                                                << 0xeU))) 
                                                                                | (0x3000000U 
                                                                                & ((vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13732_o[2U] 
                                                                                >> 6U) 
                                                                                & (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13732_o[1U] 
                                                                                << 0x13U))))) 
                                                                                | ((0x800000U 
                                                                                & ((0xff800000U 
                                                                                & ((vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13732_o[0U] 
                                                                                << 7U) 
                                                                                & (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13733_q[0U] 
                                                                                << 0xeU))) 
                                                                                | (0x1800000U 
                                                                                & ((vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13732_o[2U] 
                                                                                >> 7U) 
                                                                                & (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13732_o[1U] 
                                                                                << 0x13U))))) 
                                                                                | ((0x400000U 
                                                                                & ((0xffc00000U 
                                                                                & ((vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13732_o[0U] 
                                                                                << 7U) 
                                                                                & (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13733_q[0U] 
                                                                                << 0xfU))) 
                                                                                | (0xc00000U 
                                                                                & ((vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13732_o[2U] 
                                                                                >> 8U) 
                                                                                & (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13732_o[1U] 
                                                                                << 0x13U))))) 
                                                                                | ((0x200000U 
                                                                                & ((0xffe00000U 
                                                                                & ((vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13732_o[0U] 
                                                                                << 7U) 
                                                                                & (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13733_q[0U] 
                                                                                << 0xdU))) 
                                                                                | (0x600000U 
                                                                                & ((vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13732_o[2U] 
                                                                                >> 9U) 
                                                                                & (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13732_o[1U] 
                                                                                << 0x13U))))) 
                                                                                | ((0x100000U 
                                                                                & ((0xfff00000U 
                                                                                & ((vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13732_o[0U] 
                                                                                << 7U) 
                                                                                & (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13733_q[0U] 
                                                                                << 0xeU))) 
                                                                                | (0x300000U 
                                                                                & ((vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13732_o[2U] 
                                                                                >> 0xaU) 
                                                                                & (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13732_o[1U] 
                                                                                << 0x13U))))) 
                                                                                | ((((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_slink_enabled_neorv32_slink_inst__DOT__n8380_q) 
                                                                                << 0x11U) 
                                                                                | (((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_onewire_enabled_neorv32_onewire_inst__DOT__n8140_q) 
                                                                                << 0x10U) 
                                                                                | (((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_gptmr_enabled_neorv32_gptmr_inst__DOT__n7711_o) 
                                                                                << 0xfU) 
                                                                                | ((0x2000U 
                                                                                & ((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__neorv32_dma_complex_enabled_neorv32_dma_inst__DOT__n3139_q) 
                                                                                << 0xaU)) 
                                                                                | (((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_neoled_enabled_neorv32_neoled_inst__DOT__n7413_q) 
                                                                                << 0xcU) 
                                                                                | (((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_twi_enabled_neorv32_twi_inst__DOT__n6408_q) 
                                                                                << 0xaU) 
                                                                                | (((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_spi_enabled_neorv32_spi_inst__DOT__n5969_q) 
                                                                                << 9U) 
                                                                                | (((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_tracer_enabled_neorv32_tracer_inst__DOT__n8678_q) 
                                                                                << 8U) 
                                                                                | (((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_twd_enabled_neorv32_twd_inst__DOT__n6881_q) 
                                                                                << 7U) 
                                                                                | ((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_uart0_enabled_neorv32_uart0_inst__DOT__n5617_q) 
                                                                                << 5U)))))))))) 
                                                                                | (((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_clint_enabled_neorv32_clint_inst__DOT__neorv32_clint_mtimecmp_gen_n1_neorv32_clint_mtimecmp_inst__DOT__n18033_q) 
                                                                                << 1U) 
                                                                                | (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_clint_enabled_neorv32_clint_inst__DOT__n5224_q)))))))))))))))))))))))));
    vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n12941_o 
        = (0xfffffffffULL & ((((~ (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13737_o)) 
                               & (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13732_o[1U] 
                                  >> 0x1cU)) & (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13732_o[2U] 
                                                >> 0x1fU))
                              ? (((QData)((IData)((0xfffffffeU 
                                                   & ((vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13732_o[2U] 
                                                       << 2U) 
                                                      | (2U 
                                                         & (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13732_o[1U] 
                                                            >> 0x1eU)))))) 
                                  << 4U) | (QData)((IData)(
                                                           ((0xeU 
                                                             & (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13732_o[1U] 
                                                                >> 0x16U)) 
                                                            | (1U 
                                                               & vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13733_q[0U])))))
                              : (((QData)((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13733_q[7U])) 
                                  << 0x3bU) | (((QData)((IData)(
                                                                vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13733_q[7U])) 
                                                << 0x1bU) 
                                               | ((QData)((IData)(
                                                                  vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13733_q[6U])) 
                                                  >> 5U)))));
    vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n12675_o 
        = ((~ (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13737_o)) 
           & (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13732_o[2U] 
              >> 0x1fU));
    vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n12982_o 
        = (0x1fU & ((1U & vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13732_o[3U])
                     ? ((0x10U & (((1U & (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13737_o))
                                    ? ((vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13733_q[6U] 
                                        >> 5U) & (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13733_q[0U] 
                                                  >> 4U))
                                    : (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n12968_o)) 
                                  << 4U)) | ((0xeU 
                                              & (((1U 
                                                   & (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13737_o))
                                                   ? 
                                                  ((vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13733_q[0U] 
                                                    << 0x1fU) 
                                                   | (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13733_q[0U] 
                                                      >> 1U))
                                                   : 
                                                  (2U 
                                                   | (1U 
                                                      & (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13733_q[0U] 
                                                         >> 2U)))) 
                                                 << 1U)) 
                                             | (1U 
                                                & ((1U 
                                                    & (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13737_o))
                                                    ? 
                                                   (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13733_q[6U] 
                                                    >> 5U)
                                                    : 
                                                   (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13733_q[0U] 
                                                    >> 3U)))))
                     : vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13733_q[0U]));
    if ((7U == (0xfU & vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13725_q[0U]))) {
        vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_lsu_inst__DOT__n16061_o[0U] 
            = vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_lsu_inst__DOT__n15855_o[0U];
        vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_lsu_inst__DOT__n16061_o[1U] 
            = vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_lsu_inst__DOT__n15855_o[1U];
        vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_lsu_inst__DOT__n16061_o[2U] 
            = vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_lsu_inst__DOT__n15855_o[2U];
    } else {
        vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_lsu_inst__DOT__n16061_o[0U] 
            = vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_lsu_inst__DOT__n16062_q[0U];
        vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_lsu_inst__DOT__n16061_o[1U] 
            = vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_lsu_inst__DOT__n16062_q[1U];
        vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_lsu_inst__DOT__n16061_o[2U] 
            = vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_lsu_inst__DOT__n16062_q[2U];
    }
    vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n12946_o 
        = (0x3fffffffffULL & ((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n12675_o)
                               ? ((0x10000000U & vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13732_o[1U])
                                   ? (((QData)((IData)(
                                                       vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13733_q[1U])) 
                                       << 0x27U) | 
                                      (((QData)((IData)(
                                                        vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13733_q[1U])) 
                                        << 7U) | ((QData)((IData)(
                                                                  vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13733_q[0U])) 
                                                  >> 0x19U)))
                                   : (((QData)((IData)(
                                                       ((0x20U 
                                                         & (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13732_o[1U] 
                                                            >> 0x18U)) 
                                                        | (0x1fU 
                                                           & (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13732_o[1U] 
                                                              >> 0x17U))))) 
                                       << 0x20U) | (QData)((IData)(
                                                                   (0xfffffffeU 
                                                                    & ((vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13732_o[2U] 
                                                                        << 2U) 
                                                                       | (2U 
                                                                          & (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13732_o[1U] 
                                                                             >> 0x1eU))))))))
                               : (((QData)((IData)(
                                                   vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13733_q[1U])) 
                                   << 0x27U) | (((QData)((IData)(
                                                                 vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13733_q[1U])) 
                                                 << 7U) 
                                                | ((QData)((IData)(
                                                                   vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13733_q[0U])) 
                                                   >> 0x19U)))));
    if ((vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13732_o[2U] 
         >> 0x1fU)) {
        vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n12987_o 
            = (1U & (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13733_q[0U] 
                     >> 4U));
        vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n12984_o 
            = (0xfU & ((1U & (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13737_o))
                        ? vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13733_q[0U]
                        : (1U | (0xeU & (((0x10000000U 
                                           & vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13732_o[1U])
                                           ? ((vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13733_q[0U] 
                                               << 0x1fU) 
                                              | (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13733_q[0U] 
                                                 >> 1U))
                                           : ((4U & 
                                               (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13733_q[0U] 
                                                << 2U)) 
                                              | (2U 
                                                 & vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13733_q[0U]))) 
                                         << 1U)))));
    } else {
        vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n12987_o 
            = (1U & ((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n12982_o) 
                     >> 4U));
        vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n12984_o 
            = (0xfU & (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n12982_o));
    }
    __Vtemp_6[1U] = (IData)(((0x20U & vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13727_q[5U])
                              ? (((QData)((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13733_q[4U])) 
                                  << 0x21U) | (((QData)((IData)(
                                                                vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13733_q[3U])) 
                                                << 1U) 
                                               | ((QData)((IData)(
                                                                  vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13733_q[2U])) 
                                                  >> 0x1fU)))
                              : ((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n12675_o)
                                  ? ((0x10000000U & 
                                      vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13732_o[1U])
                                      ? (((QData)((IData)(
                                                          vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13733_q[4U])) 
                                          << 0x21U) 
                                         | (((QData)((IData)(
                                                             vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13733_q[3U])) 
                                             << 1U) 
                                            | ((QData)((IData)(
                                                               vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13733_q[2U])) 
                                               >> 0x1fU)))
                                      : (((QData)((IData)(
                                                          (0x3fffffffU 
                                                           & ((vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13725_q[1U] 
                                                               << 0x1aU) 
                                                              | (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13725_q[0U] 
                                                                 >> 6U))))) 
                                          << 0x22U) 
                                         | (((QData)((IData)(
                                                             (1U 
                                                              & ((~ 
                                                                  (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13725_q[1U] 
                                                                   >> 4U)) 
                                                                 & (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13725_q[0U] 
                                                                    >> 5U))))) 
                                             << 0x21U) 
                                            | (((QData)((IData)(
                                                                (1U 
                                                                 & (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13725_q[0U] 
                                                                    >> 4U)))) 
                                                << 0x20U) 
                                               | (QData)((IData)(
                                                                 ((IData)(
                                                                          (0x2000000U 
                                                                           == 
                                                                           (0x22000000U 
                                                                            & vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13732_o[1U])))
                                                                   ? 
                                                                  ((vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_lsu_inst__DOT__n16062_q[1U] 
                                                                    << 0x1bU) 
                                                                   | (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_lsu_inst__DOT__n16062_q[0U] 
                                                                      >> 5U))
                                                                   : 0U)))))))
                                  : (((QData)((IData)(
                                                      vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13733_q[4U])) 
                                      << 0x21U) | (
                                                   ((QData)((IData)(
                                                                    vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13733_q[3U])) 
                                                    << 1U) 
                                                   | ((QData)((IData)(
                                                                      vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13733_q[2U])) 
                                                      >> 0x1fU))))));
    __Vtemp_6[2U] = (IData)((((0x20U & vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13727_q[5U])
                               ? (((QData)((IData)(
                                                   vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13733_q[4U])) 
                                   << 0x21U) | (((QData)((IData)(
                                                                 vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13733_q[3U])) 
                                                 << 1U) 
                                                | ((QData)((IData)(
                                                                   vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13733_q[2U])) 
                                                   >> 0x1fU)))
                               : ((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n12675_o)
                                   ? ((0x10000000U 
                                       & vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13732_o[1U])
                                       ? (((QData)((IData)(
                                                           vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13733_q[4U])) 
                                           << 0x21U) 
                                          | (((QData)((IData)(
                                                              vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13733_q[3U])) 
                                              << 1U) 
                                             | ((QData)((IData)(
                                                                vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13733_q[2U])) 
                                                >> 0x1fU)))
                                       : (((QData)((IData)(
                                                           (0x3fffffffU 
                                                            & ((vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13725_q[1U] 
                                                                << 0x1aU) 
                                                               | (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13725_q[0U] 
                                                                  >> 6U))))) 
                                           << 0x22U) 
                                          | (((QData)((IData)(
                                                              (1U 
                                                               & ((~ 
                                                                   (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13725_q[1U] 
                                                                    >> 4U)) 
                                                                  & (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13725_q[0U] 
                                                                     >> 5U))))) 
                                              << 0x21U) 
                                             | (((QData)((IData)(
                                                                 (1U 
                                                                  & (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13725_q[0U] 
                                                                     >> 4U)))) 
                                                 << 0x20U) 
                                                | (QData)((IData)(
                                                                  ((IData)(
                                                                           (0x2000000U 
                                                                            == 
                                                                            (0x22000000U 
                                                                             & vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13732_o[1U])))
                                                                    ? 
                                                                   ((vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_lsu_inst__DOT__n16062_q[1U] 
                                                                     << 0x1bU) 
                                                                    | (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_lsu_inst__DOT__n16062_q[0U] 
                                                                       >> 5U))
                                                                    : 0U)))))))
                                   : (((QData)((IData)(
                                                       vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13733_q[4U])) 
                                       << 0x21U) | 
                                      (((QData)((IData)(
                                                        vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13733_q[3U])) 
                                        << 1U) | ((QData)((IData)(
                                                                  vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13733_q[2U])) 
                                                  >> 0x1fU))))) 
                             >> 0x20U));
    __Vtemp_7[0U] = (IData)((((QData)((IData)((0x3fU 
                                               & ((0x20U 
                                                   & vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13727_q[5U])
                                                   ? 
                                                  ((vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13733_q[1U] 
                                                    << 7U) 
                                                   | (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13733_q[1U] 
                                                      >> 0x19U))
                                                   : (IData)(
                                                             (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n12946_o 
                                                              >> 0x20U)))))) 
                              << 0x39U) | (((QData)((IData)(
                                                            ((0x20U 
                                                              & vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13727_q[5U])
                                                              ? vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n12871_o
                                                              : (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n12946_o)))) 
                                            << 0x19U) 
                                           | (QData)((IData)(
                                                             ((0x1ffffe0U 
                                                               & (((0x20U 
                                                                    & vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13727_q[5U])
                                                                    ? 
                                                                   (((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n12869_o) 
                                                                     << 4U) 
                                                                    | (((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n12867_o) 
                                                                        << 3U) 
                                                                       | (((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n12865_o) 
                                                                           << 2U) 
                                                                          | (((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n12863_o) 
                                                                              << 1U) 
                                                                             | (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n12861_o)))))
                                                                    : 
                                                                   ((vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13733_q[0U] 
                                                                     << 0x1bU) 
                                                                    | (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13733_q[0U] 
                                                                       >> 5U))) 
                                                                  << 5U)) 
                                                              | ((((0x20U 
                                                                    & vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13727_q[5U])
                                                                    ? (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13002_o)
                                                                    : 
                                                                   (((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n12987_o) 
                                                                     << 3U) 
                                                                    | (7U 
                                                                       & ((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n12984_o) 
                                                                          >> 1U)))) 
                                                                  << 1U) 
                                                                 | (1U 
                                                                    & ((0x20U 
                                                                        & vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13727_q[5U])
                                                                        ? 
                                                                       vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13733_q[0U]
                                                                        : (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n12984_o))))))))));
    __Vtemp_7[1U] = ((((0x20U & vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13727_q[5U])
                        ? vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n12873_o
                        : ((vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13733_q[2U] 
                            << 1U) | (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13733_q[1U] 
                                      >> 0x1fU))) << 0x1fU) 
                     | (IData)(((((QData)((IData)((0x3fU 
                                                   & ((0x20U 
                                                       & vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13727_q[5U])
                                                       ? 
                                                      ((vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13733_q[1U] 
                                                        << 7U) 
                                                       | (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13733_q[1U] 
                                                          >> 0x19U))
                                                       : (IData)(
                                                                 (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n12946_o 
                                                                  >> 0x20U)))))) 
                                  << 0x39U) | (((QData)((IData)(
                                                                ((0x20U 
                                                                  & vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13727_q[5U])
                                                                  ? vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n12871_o
                                                                  : (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n12946_o)))) 
                                                << 0x19U) 
                                               | (QData)((IData)(
                                                                 ((0x1ffffe0U 
                                                                   & (((0x20U 
                                                                        & vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13727_q[5U])
                                                                        ? 
                                                                       (((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n12869_o) 
                                                                         << 4U) 
                                                                        | (((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n12867_o) 
                                                                            << 3U) 
                                                                           | (((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n12865_o) 
                                                                               << 2U) 
                                                                              | (((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n12863_o) 
                                                                                << 1U) 
                                                                                | (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n12861_o)))))
                                                                        : 
                                                                       ((vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13733_q[0U] 
                                                                         << 0x1bU) 
                                                                        | (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13733_q[0U] 
                                                                           >> 5U))) 
                                                                      << 5U)) 
                                                                  | ((((0x20U 
                                                                        & vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13727_q[5U])
                                                                        ? (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13002_o)
                                                                        : 
                                                                       (((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n12987_o) 
                                                                         << 3U) 
                                                                        | (7U 
                                                                           & ((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n12984_o) 
                                                                              >> 1U)))) 
                                                                      << 1U) 
                                                                     | (1U 
                                                                        & ((0x20U 
                                                                            & vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13727_q[5U])
                                                                            ? 
                                                                           vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13733_q[0U]
                                                                            : (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n12984_o))))))))) 
                                >> 0x20U)));
    __Vtemp_8[5U] = (((IData)((0x1ffffffffULL & ((0x20U 
                                                  & vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13727_q[5U])
                                                  ? 
                                                 (((QData)((IData)(
                                                                   (1U 
                                                                    & (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n12877_o)))) 
                                                   << 0x20U) 
                                                  | (QData)((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n12875_o)))
                                                  : 
                                                 (((QData)((IData)(
                                                                   vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13733_q[5U])) 
                                                   << 0x21U) 
                                                  | (((QData)((IData)(
                                                                      vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13733_q[5U])) 
                                                      << 1U) 
                                                     | ((QData)((IData)(
                                                                        vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13733_q[4U])) 
                                                        >> 0x1fU)))))) 
                      >> 1U) | ((IData)(((0x1ffffffffULL 
                                          & ((0x20U 
                                              & vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13727_q[5U])
                                              ? (((QData)((IData)(
                                                                  (1U 
                                                                   & (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n12877_o)))) 
                                                  << 0x20U) 
                                                 | (QData)((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n12875_o)))
                                              : (((QData)((IData)(
                                                                  vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13733_q[5U])) 
                                                  << 0x21U) 
                                                 | (((QData)((IData)(
                                                                     vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13733_q[5U])) 
                                                     << 1U) 
                                                    | ((QData)((IData)(
                                                                       vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13733_q[4U])) 
                                                       >> 0x1fU))))) 
                                         >> 0x20U)) 
                                << 0x1fU));
    __Vtemp_12[6U] = ((0x1c0U & (((0x20U & vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13727_q[5U])
                                   ? ((vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13733_q[6U] 
                                       << 0x1aU) | 
                                      (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13733_q[6U] 
                                       >> 6U)) : (IData)(
                                                         (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n12941_o 
                                                          >> 1U))) 
                                 << 6U)) | ((0x20U 
                                             & (((0x20U 
                                                  & vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13727_q[5U])
                                                  ? (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n12885_o)
                                                  : (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n12941_o)) 
                                                << 5U)) 
                                            | (0x1eU 
                                               & (((0x20U 
                                                    & vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13727_q[5U])
                                                    ? 
                                                   (((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n12883_o) 
                                                     << 3U) 
                                                    | (((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n12881_o) 
                                                        << 2U) 
                                                       | (((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n12879_o) 
                                                           << 1U) 
                                                          | (1U 
                                                             & ((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n12877_o) 
                                                                >> 2U)))))
                                                    : 
                                                   ((vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13733_q[6U] 
                                                     << 0x1fU) 
                                                    | (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13733_q[6U] 
                                                       >> 1U))) 
                                                  << 1U))));
    vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13039_o[0U] 
        = __Vtemp_7[0U];
    vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13039_o[1U] 
        = __Vtemp_7[1U];
    vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13039_o[2U] 
        = ((((0x20U & vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13727_q[5U])
              ? vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n12873_o
              : ((vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13733_q[2U] 
                  << 1U) | (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13733_q[1U] 
                            >> 0x1fU))) >> 1U) | (__Vtemp_6[1U] 
                                                  << 0x1fU));
    vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13039_o[3U] 
        = ((__Vtemp_6[1U] >> 1U) | (__Vtemp_6[2U] << 0x1fU));
    vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13039_o[4U] 
        = (((IData)((0x1ffffffffULL & ((0x20U & vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13727_q[5U])
                                        ? (((QData)((IData)(
                                                            (1U 
                                                             & (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n12877_o)))) 
                                            << 0x20U) 
                                           | (QData)((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n12875_o)))
                                        : (((QData)((IData)(
                                                            vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13733_q[5U])) 
                                            << 0x21U) 
                                           | (((QData)((IData)(
                                                               vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13733_q[5U])) 
                                               << 1U) 
                                              | ((QData)((IData)(
                                                                 vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13733_q[4U])) 
                                                 >> 0x1fU)))))) 
            << 0x1fU) | (__Vtemp_6[2U] >> 1U));
    vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13039_o[5U] 
        = __Vtemp_8[5U];
    vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13039_o[6U] 
        = (((IData)((((QData)((IData)(((0x20U & vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13727_q[5U])
                                        ? vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n12889_o
                                        : ((vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13733_q[8U] 
                                            << 0x17U) 
                                           | (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13733_q[7U] 
                                              >> 9U))))) 
                      << 0x20U) | (QData)((IData)((
                                                   (0x20U 
                                                    & vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13727_q[5U])
                                                    ? vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n12887_o
                                                    : (IData)(
                                                              (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n12941_o 
                                                               >> 4U))))))) 
            << 9U) | __Vtemp_12[6U]);
    vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13039_o[7U] 
        = (((IData)((((QData)((IData)(((0x20U & vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13727_q[5U])
                                        ? vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n12889_o
                                        : ((vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13733_q[8U] 
                                            << 0x17U) 
                                           | (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13733_q[7U] 
                                              >> 9U))))) 
                      << 0x20U) | (QData)((IData)((
                                                   (0x20U 
                                                    & vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13727_q[5U])
                                                    ? vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n12887_o
                                                    : (IData)(
                                                              (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n12941_o 
                                                               >> 4U))))))) 
            >> 0x17U) | ((IData)(((((QData)((IData)(
                                                    ((0x20U 
                                                      & vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13727_q[5U])
                                                      ? vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n12889_o
                                                      : 
                                                     ((vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13733_q[8U] 
                                                       << 0x17U) 
                                                      | (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13733_q[7U] 
                                                         >> 9U))))) 
                                    << 0x20U) | (QData)((IData)(
                                                                ((0x20U 
                                                                  & vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13727_q[5U])
                                                                  ? vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n12887_o
                                                                  : (IData)(
                                                                            (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n12941_o 
                                                                             >> 4U)))))) 
                                  >> 0x20U)) << 9U));
    vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13039_o[8U] 
        = ((IData)(((((QData)((IData)(((0x20U & vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13727_q[5U])
                                        ? vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n12889_o
                                        : ((vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13733_q[8U] 
                                            << 0x17U) 
                                           | (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13733_q[7U] 
                                              >> 9U))))) 
                      << 0x20U) | (QData)((IData)((
                                                   (0x20U 
                                                    & vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13727_q[5U])
                                                    ? vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n12887_o
                                                    : (IData)(
                                                              (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n12941_o 
                                                               >> 4U)))))) 
                    >> 0x20U)) >> 0x17U);
}

VL_INLINE_OPT void Vtestbench___024root___nba_comb__TOP__59(Vtestbench___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtestbench__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtestbench___024root___nba_comb__TOP__59\n"); );
    // Init
    VlWide<4>/*127:0*/ __Vtemp_2;
    VlWide<4>/*127:0*/ __Vtemp_3;
    VlWide<4>/*127:0*/ __Vtemp_7;
    VlWide<4>/*127:0*/ __Vtemp_9;
    VlWide<5>/*159:0*/ __Vtemp_11;
    VlWide<5>/*159:0*/ __Vtemp_12;
    VlWide<5>/*159:0*/ __Vtemp_13;
    VlWide<5>/*159:0*/ __Vtemp_15;
    VlWide<6>/*191:0*/ __Vtemp_18;
    VlWide<6>/*191:0*/ __Vtemp_21;
    VlWide<6>/*191:0*/ __Vtemp_22;
    // Body
    vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11301_o 
        = (0xfU & (((((((((0x200U == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o)) 
                          | (0x100U == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o))) 
                         | (0x80U == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o))) 
                        | (0x40U == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o))) 
                       | (0x20U == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o))) 
                      | (0x10U == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o))) 
                     | (8U == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o))) 
                    | (4U == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o)))
                    ? ((0x200U == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o))
                        ? (((~ (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11100_o)) 
                            & (0U == (0x70000U & vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13725_q[0U])))
                            ? (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11214_o)
                            : 1U) : ((0x100U == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o))
                                      ? ((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11171_o)
                                          ? 1U : vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13725_q[0U])
                                      : ((0x80U == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o))
                                          ? ((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11100_o)
                                              ? 1U : 8U)
                                          : ((0x40U 
                                              == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o))
                                              ? 1U : 
                                             ((0x20U 
                                               == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o))
                                               ? (((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_alu_inst__DOT__n15369_o) 
                                                   | (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11100_o))
                                                   ? 1U
                                                   : 
                                                  vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13725_q[0U])
                                               : ((0x10U 
                                                   == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o))
                                                   ? 
                                                  (((((((((0x80U 
                                                           == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11061_o)) 
                                                          | (0x40U 
                                                             == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11061_o))) 
                                                         | (0x20U 
                                                            == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11061_o))) 
                                                        | (0x10U 
                                                           == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11061_o))) 
                                                       | (8U 
                                                          == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11061_o))) 
                                                      | (4U 
                                                         == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11061_o))) 
                                                     | (2U 
                                                        == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11061_o))) 
                                                    | (1U 
                                                       == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11061_o)))
                                                    ? 
                                                   ((0x80U 
                                                     == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11061_o))
                                                     ? 5U
                                                     : 
                                                    ((0x40U 
                                                      == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11061_o))
                                                      ? 5U
                                                      : 
                                                     ((0x20U 
                                                       == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11061_o))
                                                       ? 0U
                                                       : 
                                                      ((0x10U 
                                                        == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11061_o))
                                                        ? 6U
                                                        : 
                                                       ((8U 
                                                         == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11061_o))
                                                         ? 7U
                                                         : 
                                                        ((4U 
                                                          == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11061_o))
                                                          ? 1U
                                                          : 
                                                         ((2U 
                                                           == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11061_o))
                                                           ? 1U
                                                           : 
                                                          ((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n10970_o)
                                                            ? 1U
                                                            : 5U))))))))
                                                    : 9U)
                                                   : 0U))))))
                    : ((2U == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o))
                        ? ((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n10812_o)
                            ? 2U : vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n10831_o[0U])
                        : ((1U == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o))
                            ? 1U : ((1U & ((IData)(
                                                   (0U 
                                                    != 
                                                    (0x1ffffeU 
                                                     & vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13732_o[1U]))) 
                                           | (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13732_o[0U] 
                                              >> 0xcU)))
                                     ? 1U : vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13725_q[0U])))));
    __Vtemp_2[2U] = ((((((((((0x200U == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o)) 
                             | (0x100U == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o))) 
                            | (0x80U == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o))) 
                           | (0x40U == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o))) 
                          | (0x20U == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o))) 
                         | (0x10U == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o))) 
                        | (8U == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o))) 
                       | (4U == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o)))
                       ? ((0x200U == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o))
                           ? 0U : ((0x100U == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o))
                                    ? 0U : ((0x80U 
                                             == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o))
                                             ? 0U : 
                                            ((0x40U 
                                              == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o))
                                              ? (0xfffffffeU 
                                                 & ((vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13725_q[3U] 
                                                     << 0x1bU) 
                                                    | (0x7fffffeU 
                                                       & (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13725_q[2U] 
                                                          >> 5U))))
                                              : 0U))))
                       : 0U) << 3U);
    __Vtemp_3[3U] = (((((((((((0x200U == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o)) 
                              | (0x100U == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o))) 
                             | (0x80U == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o))) 
                            | (0x40U == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o))) 
                           | (0x20U == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o))) 
                          | (0x10U == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o))) 
                         | (8U == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o))) 
                        | (4U == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o))) 
                       && ((0x200U == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o)) 
                           || ((0x100U == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o))
                                ? ((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11171_o) 
                                   & (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13727_q[4U] 
                                      >> 0x1fU)) : 
                               ((0x80U != (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o)) 
                                && (1U & ((0x40U == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o))
                                           ? (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13725_q[0U] 
                                              >> 6U)
                                           : ((0x20U 
                                               == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o))
                                               ? (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_alu_inst__DOT__n15369_o)
                                               : ((0x10U 
                                                   == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o)) 
                                                  && (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11066_o))))))))) 
                      << 3U) | ((((((((((0x200U == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o)) 
                                        | (0x100U == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o))) 
                                       | (0x80U == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o))) 
                                      | (0x40U == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o))) 
                                     | (0x20U == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o))) 
                                    | (0x10U == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o))) 
                                   | (8U == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o))) 
                                  | (4U == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o)))
                                  ? ((0x200U == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o))
                                      ? 0U : ((0x100U 
                                               == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o))
                                               ? 0U
                                               : ((0x80U 
                                                   == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o))
                                                   ? 0U
                                                   : 
                                                  ((0x40U 
                                                    == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o))
                                                    ? 
                                                   (0xfffffffeU 
                                                    & ((vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13725_q[3U] 
                                                        << 0x1bU) 
                                                       | (0x7fffffeU 
                                                          & (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13725_q[2U] 
                                                             >> 5U))))
                                                    : 0U))))
                                  : 0U) >> 0x1dU));
    __Vtemp_7[3U] = (((((((((((0x200U == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o)) 
                              | (0x100U == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o))) 
                             | (0x80U == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o))) 
                            | (0x40U == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o))) 
                           | (0x20U == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o))) 
                          | (0x10U == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o))) 
                         | (8U == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o))) 
                        | (4U == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o))) 
                       && ((0x200U != (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o)) 
                           && ((0x100U != (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o)) 
                               && ((0x80U != (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o)) 
                                   && ((0x40U != (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o)) 
                                       && ((0x20U != (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o)) 
                                           && ((0x10U 
                                                == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o)) 
                                               && (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11070_o)))))))) 
                      << 0x17U) | (((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11319_o) 
                                    << 0x14U) | (((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11317_o) 
                                                  << 0x13U) 
                                                 | __Vtemp_3[3U])));
    __Vtemp_9[3U] = (((((((((((0x200U == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o)) 
                              | (0x100U == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o))) 
                             | (0x80U == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o))) 
                            | (0x40U == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o))) 
                           | (0x20U == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o))) 
                          | (0x10U == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o))) 
                         | (8U == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o))) 
                        | (4U == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o)))
                        ? (0x33U != (3U | (0x7cU & 
                                           (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13725_q[0U] 
                                            >> 4U))))
                        : ((2U == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o)) 
                           || (0x33U != (3U | (0x7cU 
                                               & (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13725_q[0U] 
                                                  >> 4U)))))) 
                      << 0x19U) | (((((((((((0x200U 
                                             == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o)) 
                                            | (0x100U 
                                               == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o))) 
                                           | (0x80U 
                                              == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o))) 
                                          | (0x40U 
                                             == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o))) 
                                         | (0x20U == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o))) 
                                        | (0x10U == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o))) 
                                       | (8U == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o))) 
                                      | (4U == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o)))
                                      ? (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n10786_o)
                                      : ((2U == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o)) 
                                         || (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n10786_o))) 
                                    << 0x18U) | __Vtemp_7[3U]));
    __Vtemp_11[3U] = (((((((((((0x200U == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o)) 
                               | (0x100U == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o))) 
                              | (0x80U == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o))) 
                             | (0x40U == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o))) 
                            | (0x20U == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o))) 
                           | (0x10U == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o))) 
                          | (8U == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o))) 
                         | (4U == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o)))
                         ? vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n10771_o
                         : ((2U == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o))
                             ? ((1U & (IData)((vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_frontend_inst__DOT__n10551_o 
                                               >> 0x20U)))
                                 ? 2U : 4U) : vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n10771_o)) 
                       << 0x1bU) | ((0x4000000U & (
                                                   ((0x100U 
                                                     & vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13725_q[0U])
                                                     ? 
                                                    (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13725_q[0U] 
                                                     >> 0x10U)
                                                     : 
                                                    (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13725_q[0U] 
                                                     >> 0x11U)) 
                                                   << 0x1aU)) 
                                    | __Vtemp_9[3U]));
    __Vtemp_12[4U] = (((((((((((0x200U == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o)) 
                               | (0x100U == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o))) 
                              | (0x80U == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o))) 
                             | (0x40U == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o))) 
                            | (0x20U == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o))) 
                           | (0x10U == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o))) 
                          | (8U == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o))) 
                         | (4U == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o))) 
                        && ((0x200U != (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o)) 
                            && ((0x100U != (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o)) 
                                && ((0x80U != (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o)) 
                                    && ((0x40U != (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o)) 
                                        && ((0x20U 
                                             != (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o)) 
                                            && ((0x10U 
                                                 == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o)) 
                                                && (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11072_o)))))))) 
                       << 0x1bU) | ((((((((((0x200U 
                                             == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o)) 
                                            | (0x100U 
                                               == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o))) 
                                           | (0x80U 
                                              == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o))) 
                                          | (0x40U 
                                             == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o))) 
                                         | (0x20U == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o))) 
                                        | (0x10U == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o))) 
                                       | (8U == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o))) 
                                      | (4U == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o)))
                                      ? vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n10771_o
                                      : ((2U == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o))
                                          ? ((1U & (IData)(
                                                           (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_frontend_inst__DOT__n10551_o 
                                                            >> 0x20U)))
                                              ? 2U : 4U)
                                          : vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n10771_o)) 
                                    >> 5U));
    __Vtemp_13[4U] = (((((((((((0x200U == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o)) 
                               | (0x100U == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o))) 
                              | (0x80U == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o))) 
                             | (0x40U == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o))) 
                            | (0x20U == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o))) 
                           | (0x10U == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o))) 
                          | (8U == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o))) 
                         | (4U == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o))) 
                        && ((0x200U != (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o)) 
                            && ((0x100U != (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o)) 
                                && ((0x80U != (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o)) 
                                    && ((0x40U != (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o)) 
                                        && ((0x20U 
                                             != (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o)) 
                                            && ((0x10U 
                                                 == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o)) 
                                                && (((((((((0x80U 
                                                            == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11061_o)) 
                                                           | (0x40U 
                                                              == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11061_o))) 
                                                          | (0x20U 
                                                             == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11061_o))) 
                                                         | (0x10U 
                                                            == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11061_o))) 
                                                        | (8U 
                                                           == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11061_o))) 
                                                       | (4U 
                                                          == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11061_o))) 
                                                      | (2U 
                                                         == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11061_o))) 
                                                     | (1U 
                                                        == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11061_o))) 
                                                    && (0x80U 
                                                        == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11061_o)))))))))) 
                       << 0x1cU) | __Vtemp_12[4U]);
    __Vtemp_15[4U] = (((((((((((0x200U == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o)) 
                               | (0x100U == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o))) 
                              | (0x80U == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o))) 
                             | (0x40U == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o))) 
                            | (0x20U == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o))) 
                           | (0x10U == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o))) 
                          | (8U == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o))) 
                         | (4U == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o))) 
                        && ((0x200U != (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o)) 
                            && ((0x100U != (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o)) 
                                && ((0x80U == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o)) 
                                    && (1U & (~ (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11100_o))))))) 
                       << 0x1eU) | (((((((((((0x200U 
                                              == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o)) 
                                             | (0x100U 
                                                == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o))) 
                                            | (0x80U 
                                               == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o))) 
                                           | (0x40U 
                                              == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o))) 
                                          | (0x20U 
                                             == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o))) 
                                         | (0x10U == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o))) 
                                        | (8U == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o))) 
                                       | (4U == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o))) 
                                      && ((0x200U != (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o)) 
                                          && ((0x100U 
                                               != (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o)) 
                                              && ((0x80U 
                                                   != (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o)) 
                                                  && ((0x40U 
                                                       != (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o)) 
                                                      && ((0x20U 
                                                           != (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o)) 
                                                          && ((0x10U 
                                                               == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o)) 
                                                              && (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11076_o)))))))) 
                                     << 0x1dU) | __Vtemp_13[4U]));
    __Vtemp_18[5U] = (((((((((((0x200U == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o)) 
                               | (0x100U == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o))) 
                              | (0x80U == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o))) 
                             | (0x40U == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o))) 
                            | (0x20U == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o))) 
                           | (0x10U == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o))) 
                          | (8U == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o))) 
                         | (4U == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o))) 
                        && ((0x200U != (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o)) 
                            && ((0x100U != (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o)) 
                                && ((0x80U != (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o)) 
                                    && ((0x40U != (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o)) 
                                        && ((0x20U 
                                             != (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o)) 
                                            && ((0x10U 
                                                 == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o)) 
                                                && (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11080_o)))))))) 
                       << 3U) | ((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11334_o) 
                                 >> 1U));
    __Vtemp_21[5U] = (((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11340_o) 
                       << 6U) | (((((((((((0x200U == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o)) 
                                          | (0x100U 
                                             == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o))) 
                                         | (0x80U == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o))) 
                                        | (0x40U == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o))) 
                                       | (0x20U == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o))) 
                                      | (0x10U == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o))) 
                                     | (8U == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o))) 
                                    | (4U == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o))) 
                                   && ((0x200U == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o)) 
                                       && ((~ (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11100_o)) 
                                           & ((0U != 
                                               (7U 
                                                & (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13725_q[0U] 
                                                   >> 0x10U))) 
                                              & ((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11227_o) 
                                                 & (4U 
                                                    != 
                                                    (7U 
                                                     & (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13725_q[0U] 
                                                        >> 0x10U)))))))) 
                                  << 5U) | __Vtemp_18[5U]));
    __Vtemp_22[5U] = ((0x7ff80U & ((((((((((0x200U 
                                            == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o)) 
                                           | (0x100U 
                                              == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o))) 
                                          | (0x80U 
                                             == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o))) 
                                         | (0x40U == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o))) 
                                        | (0x20U == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o))) 
                                       | (0x10U == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o))) 
                                      | (8U == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o))) 
                                     | (4U == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o)))
                                     ? ((vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13727_q[5U] 
                                         << 0x19U) 
                                        | (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13727_q[5U] 
                                           >> 7U)) : 
                                    ((2U == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o))
                                      ? ((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n10812_o)
                                          ? ((vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13727_q[5U] 
                                              << 0x19U) 
                                             | (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13727_q[5U] 
                                                >> 7U))
                                          : ((IData)(
                                                     ((0x70ULL 
                                                       == 
                                                       (0x7cULL 
                                                        & vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_frontend_inst__DOT__n10551_o)) 
                                                      & (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n10814_o)))
                                              ? (IData)(
                                                        (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_frontend_inst__DOT__n10551_o 
                                                         >> 0x14U))
                                              : ((vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13727_q[5U] 
                                                  << 0x19U) 
                                                 | (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13727_q[5U] 
                                                    >> 7U))))
                                      : ((vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13727_q[5U] 
                                          << 0x19U) 
                                         | (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13727_q[5U] 
                                            >> 7U)))) 
                                   << 7U)) | __Vtemp_21[5U]);
    vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__ctrl_nxt[0U] 
        = (((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11311_o) 
            << 1U) | (((((((((0x200U == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o)) 
                             | (0x100U == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o))) 
                            | (0x80U == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o))) 
                           | (0x40U == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o))) 
                          | (0x20U == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o))) 
                         | (0x10U == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o))) 
                        | (8U == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o))) 
                       | (4U == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o))) 
                      && ((0x200U != (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o)) 
                          && ((0x100U != (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o)) 
                              && ((0x80U != (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o)) 
                                  && ((0x40U != (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o)) 
                                      && ((0x20U != (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o)) 
                                          && ((0x10U 
                                               == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o)) 
                                              && (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11064_o)))))))));
    vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__ctrl_nxt[1U] = 0U;
    vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__ctrl_nxt[2U] 
        = __Vtemp_2[2U];
    vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__ctrl_nxt[3U] 
        = __Vtemp_11[3U];
    vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__ctrl_nxt[4U] 
        = (((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11334_o) 
            << 0x1fU) | __Vtemp_15[4U]);
    vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__ctrl_nxt[5U] 
        = __Vtemp_22[5U];
    vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__ctrl_nxt[6U] = 0U;
    vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__ctrl_nxt[7U] = 0U;
}

VL_INLINE_OPT void Vtestbench___024root___nba_comb__TOP__61(Vtestbench___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtestbench__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtestbench___024root___nba_comb__TOP__61\n"); );
    // Init
    VlWide<4>/*127:0*/ __Vtemp_2;
    VlWide<5>/*159:0*/ __Vtemp_6;
    // Body
    __Vtemp_2[2U] = (((IData)((((QData)((IData)((0xfffffffeU 
                                                 & ((vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13727_q[3U] 
                                                     << 0x1dU) 
                                                    | (0x1ffffffeU 
                                                       & (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13727_q[2U] 
                                                          >> 3U)))))) 
                                << 0x20U) | (QData)((IData)(
                                                            (0xfffffffeU 
                                                             & ((vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13725_q[3U] 
                                                                 << 0x1bU) 
                                                                | (0x7fffffeU 
                                                                   & (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13725_q[2U] 
                                                                      >> 5U)))))))) 
                      >> 0x1dU) | ((IData)(((((QData)((IData)(
                                                              (0xfffffffeU 
                                                               & ((vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13727_q[3U] 
                                                                   << 0x1dU) 
                                                                  | (0x1ffffffeU 
                                                                     & (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13727_q[2U] 
                                                                        >> 3U)))))) 
                                              << 0x20U) 
                                             | (QData)((IData)(
                                                               (0xfffffffeU 
                                                                & ((vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13725_q[3U] 
                                                                    << 0x1bU) 
                                                                   | (0x7fffffeU 
                                                                      & (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13725_q[2U] 
                                                                         >> 5U))))))) 
                                            >> 0x20U)) 
                                   << 3U));
    __Vtemp_6[3U] = (((IData)((0xffffffffffULL & (((QData)((IData)(
                                                                   vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13727_q[4U])) 
                                                   << 0xdU) 
                                                  | ((QData)((IData)(
                                                                     vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13727_q[3U])) 
                                                     >> 0x13U)))) 
                      << 0x13U) | ((0x7c000U & (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13725_q[0U] 
                                                << 3U)) 
                                   | ((0x3ff0U & (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13725_q[0U] 
                                                  >> 0xfU)) 
                                      | (((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__trace_enabled_neorv32_cpu_trace_inst__DOT__n17658_o) 
                                          << 3U) | 
                                         ((IData)((
                                                   (((QData)((IData)(
                                                                     (0xfffffffeU 
                                                                      & ((vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13727_q[3U] 
                                                                          << 0x1dU) 
                                                                         | (0x1ffffffeU 
                                                                            & (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13727_q[2U] 
                                                                               >> 3U)))))) 
                                                     << 0x20U) 
                                                    | (QData)((IData)(
                                                                      (0xfffffffeU 
                                                                       & ((vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13725_q[3U] 
                                                                           << 0x1bU) 
                                                                          | (0x7fffffeU 
                                                                             & (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13725_q[2U] 
                                                                                >> 5U))))))) 
                                                   >> 0x20U)) 
                                          >> 0x1dU)))));
    vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_alu_inst__DOT__neorv32_cpu_alu_crypto_enabled_neorv32_cpu_alu_crypto_inst__DOT__n26421_o[0U] 
        = ((0xfffffff0U & ((vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13725_q[2U] 
                            << 0x1eU) | (0x3ffffff0U 
                                         & (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13725_q[1U] 
                                            >> 2U)))) 
           | (((1U == (0xfU & vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13725_q[0U])) 
               << 2U) | (((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11311_o) 
                          << 1U) | (1U & vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13727_q[0U]))));
    vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_alu_inst__DOT__neorv32_cpu_alu_crypto_enabled_neorv32_cpu_alu_crypto_inst__DOT__n26421_o[1U] 
        = ((7U & (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13725_q[2U] 
                  >> 2U)) | ((IData)((((QData)((IData)(
                                                       (0xfffffffeU 
                                                        & ((vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13727_q[3U] 
                                                            << 0x1dU) 
                                                           | (0x1ffffffeU 
                                                              & (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13727_q[2U] 
                                                                 >> 3U)))))) 
                                       << 0x20U) | (QData)((IData)(
                                                                   (0xfffffffeU 
                                                                    & ((vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13725_q[3U] 
                                                                        << 0x1bU) 
                                                                       | (0x7fffffeU 
                                                                          & (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13725_q[2U] 
                                                                             >> 5U)))))))) 
                             << 3U));
    vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_alu_inst__DOT__neorv32_cpu_alu_crypto_enabled_neorv32_cpu_alu_crypto_inst__DOT__n26421_o[2U] 
        = __Vtemp_2[2U];
    vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_alu_inst__DOT__neorv32_cpu_alu_crypto_enabled_neorv32_cpu_alu_crypto_inst__DOT__n26421_o[3U] 
        = __Vtemp_6[3U];
    vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_alu_inst__DOT__neorv32_cpu_alu_crypto_enabled_neorv32_cpu_alu_crypto_inst__DOT__n26421_o[4U] 
        = ((0xc0000000U & vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13727_q[4U]) 
           | (((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_alu_inst__DOT__neorv32_cpu_alu_fpu_enabled_neorv32_cpu_alu_fpu_inst__DOT__n24556_o) 
               << 0x1dU) | (((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_alu_inst__DOT__n15401_o) 
                             << 0x1cU) | (((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_alu_inst__DOT__neorv32_cpu_alu_crypto_enabled_neorv32_cpu_alu_crypto_inst__DOT__n26522_o) 
                                           << 0x1bU) 
                                          | (((IData)(
                                                      (0xffffffffffULL 
                                                       & (((QData)((IData)(
                                                                           vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13727_q[4U])) 
                                                           << 0xdU) 
                                                          | ((QData)((IData)(
                                                                             vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13727_q[3U])) 
                                                             >> 0x13U)))) 
                                              >> 0xdU) 
                                             | ((IData)(
                                                        ((0xffffffffffULL 
                                                          & (((QData)((IData)(
                                                                              vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13727_q[4U])) 
                                                              << 0xdU) 
                                                             | ((QData)((IData)(
                                                                                vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13727_q[3U])) 
                                                                >> 0x13U))) 
                                                         >> 0x20U)) 
                                                << 0x13U))))));
    vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_alu_inst__DOT__neorv32_cpu_alu_crypto_enabled_neorv32_cpu_alu_crypto_inst__DOT__n26421_o[5U] 
        = ((vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n12753_o 
            << 0x13U) | ((0x7ffe0U & vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13727_q[5U]) 
                         | (((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_lsu_inst__DOT__n15781_o) 
                             << 4U) | ((8U & vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13727_q[5U]) 
                                       | (((8U == (0xfU 
                                                   & vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13725_q[0U])) 
                                           << 2U) | 
                                          (((7U == 
                                             (0xfU 
                                              & vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13725_q[0U])) 
                                            << 1U) 
                                           | (1U & 
                                              vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13727_q[5U])))))));
    vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_alu_inst__DOT__neorv32_cpu_alu_crypto_enabled_neorv32_cpu_alu_crypto_inst__DOT__n26421_o[6U] 
        = ((0xc0000000U & (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13725_q[0U] 
                           << 0xeU)) | (((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_alu_inst__DOT__n15414_o) 
                                         << 0x13U) 
                                        | (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n12753_o 
                                           >> 0xdU)));
    vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_alu_inst__DOT__neorv32_cpu_alu_crypto_enabled_neorv32_cpu_alu_crypto_inst__DOT__n26421_o[7U] 
        = ((0x800000U & ((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13737_o) 
                         << 0x17U)) | ((0x400000U & 
                                        (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13732_o[0U] 
                                         << 0xaU)) 
                                       | ((0x200000U 
                                           & (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13732_o[2U] 
                                              >> 0xaU)) 
                                          | ((0x100000U 
                                              & (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13733_q[0U] 
                                                 << 0x14U)) 
                                             | ((0xfe000U 
                                                 & (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13725_q[0U] 
                                                    << 9U)) 
                                                | ((0x1ffeU 
                                                    & ((vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13725_q[1U] 
                                                        << 9U) 
                                                       | (0x1feU 
                                                          & (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13725_q[0U] 
                                                             >> 0x17U)))) 
                                                   | (1U 
                                                      & (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13725_q[0U] 
                                                         >> 0x12U))))))));
}

VL_INLINE_OPT void Vtestbench___024root___nba_comb__TOP__63(Vtestbench___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtestbench__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtestbench___024root___nba_comb__TOP__63\n"); );
    // Init
    VlWide<3>/*95:0*/ __Vtemp_10;
    VlWide<3>/*95:0*/ __Vtemp_12;
    // Body
    if (((((((((0x200U == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o)) 
               | (0x100U == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o))) 
              | (0x80U == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o))) 
             | (0x40U == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o))) 
            | (0x20U == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o))) 
           | (0x10U == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o))) 
          | (8U == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o))) 
         | (4U == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o)))) {
        __Vtemp_10[0U] = ((vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13725_q[1U] 
                           << 0x1cU) | (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13725_q[0U] 
                                        >> 4U));
        __Vtemp_10[1U] = ((vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13725_q[2U] 
                           << 0x1cU) | (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13725_q[1U] 
                                        >> 4U));
    } else if ((2U == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o))) {
        if (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n10812_o) {
            __Vtemp_10[0U] = ((vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13725_q[1U] 
                               << 0x1cU) | (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13725_q[0U] 
                                            >> 4U));
            __Vtemp_10[1U] = ((vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13725_q[2U] 
                               << 0x1cU) | (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13725_q[1U] 
                                            >> 4U));
        } else {
            __Vtemp_10[0U] = ((vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n10831_o[1U] 
                               << 0x1cU) | (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n10831_o[0U] 
                                            >> 4U));
            __Vtemp_10[1U] = ((vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n10831_o[2U] 
                               << 0x1cU) | (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n10831_o[1U] 
                                            >> 4U));
        }
    } else {
        __Vtemp_10[0U] = ((vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13725_q[1U] 
                           << 0x1cU) | (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13725_q[0U] 
                                        >> 4U));
        __Vtemp_10[1U] = ((vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13725_q[2U] 
                           << 0x1cU) | (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13725_q[1U] 
                                        >> 4U));
    }
    __Vtemp_12[2U] = ((__Vtemp_10[1U] >> 0x1cU) | (0x10U 
                                                   & ((((((((((0x200U 
                                                               == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o)) 
                                                              | (0x100U 
                                                                 == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o))) 
                                                             | (0x80U 
                                                                == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o))) 
                                                            | (0x40U 
                                                               == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o))) 
                                                           | (0x20U 
                                                              == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o))) 
                                                          | (0x10U 
                                                             == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o))) 
                                                         | (8U 
                                                            == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o))) 
                                                        | (4U 
                                                           == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o)))
                                                        ? 
                                                       ((vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13725_q[3U] 
                                                         << 0x1cU) 
                                                        | (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13725_q[2U] 
                                                           >> 4U))
                                                        : 
                                                       ((2U 
                                                         == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11300_o))
                                                         ? 
                                                        ((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n10812_o)
                                                          ? 
                                                         ((vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13725_q[3U] 
                                                           << 0x1cU) 
                                                          | (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13725_q[2U] 
                                                             >> 4U))
                                                          : 
                                                         (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n10831_o[2U] 
                                                          >> 4U))
                                                         : 
                                                        ((vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13725_q[3U] 
                                                          << 0x1cU) 
                                                         | (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n13725_q[2U] 
                                                            >> 4U)))) 
                                                      << 4U)));
    vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__exec_nxt[0U] 
        = ((__Vtemp_10[0U] << 4U) | (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11301_o));
    vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__exec_nxt[1U] 
        = ((__Vtemp_10[0U] >> 0x1cU) | (__Vtemp_10[1U] 
                                        << 4U));
    vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__exec_nxt[2U] 
        = ((vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11305_o 
            << 5U) | __Vtemp_12[2U]);
    vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__exec_nxt[3U] 
        = (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__core_complex_gen_n1_neorv32_cpu_inst__DOT__neorv32_cpu_control_inst__DOT__n11305_o 
           >> 0x1bU);
}

void Vtestbench___024root___nba_sequent__TOP__0(Vtestbench___024root* vlSelf);
void Vtestbench___024root___nba_sequent__TOP__1(Vtestbench___024root* vlSelf);
void Vtestbench___024root___nba_sequent__TOP__2(Vtestbench___024root* vlSelf);
void Vtestbench___024root___nba_sequent__TOP__3(Vtestbench___024root* vlSelf);
void Vtestbench___024root___nba_sequent__TOP__4(Vtestbench___024root* vlSelf);
void Vtestbench___024root___nba_sequent__TOP__5(Vtestbench___024root* vlSelf);
void Vtestbench___024root___nba_comb__TOP__0(Vtestbench___024root* vlSelf);
void Vtestbench___024root___act_sequent__TOP__19(Vtestbench___024root* vlSelf);
void Vtestbench___024root___nba_comb__TOP__2(Vtestbench___024root* vlSelf);
void Vtestbench___024root___nba_comb__TOP__3(Vtestbench___024root* vlSelf);
void Vtestbench___024root___nba_comb__TOP__4(Vtestbench___024root* vlSelf);
void Vtestbench___024root___nba_comb__TOP__5(Vtestbench___024root* vlSelf);
void Vtestbench___024root___nba_comb__TOP__6(Vtestbench___024root* vlSelf);
void Vtestbench___024root___act_sequent__TOP__8(Vtestbench___024root* vlSelf);
void Vtestbench___024root___nba_comb__TOP__8(Vtestbench___024root* vlSelf);
void Vtestbench___024root___act_sequent__TOP__24(Vtestbench___024root* vlSelf);
void Vtestbench___024root___act_sequent__TOP__2(Vtestbench___024root* vlSelf);
void Vtestbench___024root___act_sequent__TOP__21(Vtestbench___024root* vlSelf);
void Vtestbench___024root___nba_comb__TOP__12(Vtestbench___024root* vlSelf);
void Vtestbench___024root___nba_comb__TOP__13(Vtestbench___024root* vlSelf);
void Vtestbench___024root___nba_comb__TOP__14(Vtestbench___024root* vlSelf);
void Vtestbench___024root___act_sequent__TOP__4(Vtestbench___024root* vlSelf);
void Vtestbench___024root___nba_comb__TOP__16(Vtestbench___024root* vlSelf);
void Vtestbench___024root___act_sequent__TOP__22(Vtestbench___024root* vlSelf);
void Vtestbench___024root___act_sequent__TOP__1(Vtestbench___024root* vlSelf);
void Vtestbench___024root___act_sequent__TOP__27(Vtestbench___024root* vlSelf);
void Vtestbench___024root___act_sequent__TOP__29(Vtestbench___024root* vlSelf);
void Vtestbench___024root___nba_sequent__TOP__6(Vtestbench___024root* vlSelf);
void Vtestbench___024root___nba_comb__TOP__21(Vtestbench___024root* vlSelf);
void Vtestbench___024root___nba_comb__TOP__22(Vtestbench___024root* vlSelf);
void Vtestbench___024root___nba_sequent__TOP__7(Vtestbench___024root* vlSelf);
void Vtestbench___024root___nba_comb__TOP__23(Vtestbench___024root* vlSelf);
void Vtestbench___024root___act_sequent__TOP__28(Vtestbench___024root* vlSelf);
void Vtestbench___024root___act_sequent__TOP__26(Vtestbench___024root* vlSelf);
void Vtestbench___024root___act_sequent__TOP__30(Vtestbench___024root* vlSelf);
void Vtestbench___024root___act_sequent__TOP__31(Vtestbench___024root* vlSelf);
void Vtestbench___024root___nba_comb__TOP__28(Vtestbench___024root* vlSelf);
void Vtestbench___024root___act_comb__TOP__7(Vtestbench___024root* vlSelf);
void Vtestbench___024root___act_comb__TOP__8(Vtestbench___024root* vlSelf);
void Vtestbench___024root___nba_comb__TOP__31(Vtestbench___024root* vlSelf);
void Vtestbench___024root___act_comb__TOP__2(Vtestbench___024root* vlSelf);
void Vtestbench___024root___act_comb__TOP__3(Vtestbench___024root* vlSelf);
void Vtestbench___024root___act_comb__TOP__4(Vtestbench___024root* vlSelf);
void Vtestbench___024root___act_comb__TOP__5(Vtestbench___024root* vlSelf);
void Vtestbench___024root___nba_comb__TOP__36(Vtestbench___024root* vlSelf);
void Vtestbench___024root___nba_comb__TOP__37(Vtestbench___024root* vlSelf);
void Vtestbench___024root___nba_comb__TOP__38(Vtestbench___024root* vlSelf);
void Vtestbench___024root___nba_comb__TOP__39(Vtestbench___024root* vlSelf);
void Vtestbench___024root___nba_comb__TOP__40(Vtestbench___024root* vlSelf);
void Vtestbench___024root___nba_comb__TOP__41(Vtestbench___024root* vlSelf);
void Vtestbench___024root___act_comb__TOP__9(Vtestbench___024root* vlSelf);
void Vtestbench___024root___act_comb__TOP__13(Vtestbench___024root* vlSelf);
void Vtestbench___024root___act_comb__TOP__10(Vtestbench___024root* vlSelf);
void Vtestbench___024root___act_comb__TOP__11(Vtestbench___024root* vlSelf);
void Vtestbench___024root___act_comb__TOP__12(Vtestbench___024root* vlSelf);
void Vtestbench___024root___nba_comb__TOP__47(Vtestbench___024root* vlSelf);
void Vtestbench___024root___nba_comb__TOP__48(Vtestbench___024root* vlSelf);
void Vtestbench___024root___act_comb__TOP__14(Vtestbench___024root* vlSelf);
void Vtestbench___024root___act_comb__TOP__15(Vtestbench___024root* vlSelf);
void Vtestbench___024root___act_comb__TOP__18(Vtestbench___024root* vlSelf);
void Vtestbench___024root___act_comb__TOP__20(Vtestbench___024root* vlSelf);
void Vtestbench___024root___act_comb__TOP__22(Vtestbench___024root* vlSelf);
void Vtestbench___024root___act_comb__TOP__17(Vtestbench___024root* vlSelf);
void Vtestbench___024root___act_comb__TOP__23(Vtestbench___024root* vlSelf);
void Vtestbench___024root___act_comb__TOP__27(Vtestbench___024root* vlSelf);
void Vtestbench___024root___act_comb__TOP__24(Vtestbench___024root* vlSelf);

void Vtestbench___024root___eval_nba(Vtestbench___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtestbench__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtestbench___024root___eval_nba\n"); );
    // Body
    if ((0x800000000ULL & vlSelf->__VnbaTriggered.word(0U))) {
        Vtestbench___024root___nba_sequent__TOP__0(vlSelf);
        vlSelf->__Vm_traceActivity[0x2bU] = 1U;
    }
    if ((0x2000000000ULL & vlSelf->__VnbaTriggered.word(0U))) {
        Vtestbench___024root___nba_sequent__TOP__1(vlSelf);
        vlSelf->__Vm_traceActivity[0x2cU] = 1U;
    }
    if ((0x1000000000ULL & vlSelf->__VnbaTriggered.word(0U))) {
        Vtestbench___024root___nba_sequent__TOP__2(vlSelf);
        vlSelf->__Vm_traceActivity[0x2dU] = 1U;
        Vtestbench___024root___nba_sequent__TOP__3(vlSelf);
    }
    if ((0x4000000000ULL & vlSelf->__VnbaTriggered.word(0U))) {
        Vtestbench___024root___nba_sequent__TOP__4(vlSelf);
        vlSelf->__Vm_traceActivity[0x2eU] = 1U;
    }
    if ((0x2000000000ULL & vlSelf->__VnbaTriggered.word(0U))) {
        Vtestbench___024root___nba_sequent__TOP__5(vlSelf);
        vlSelf->__Vm_traceActivity[0x2fU] = 1U;
    }
    if ((0x1080000000ULL & vlSelf->__VnbaTriggered.word(0U))) {
        Vtestbench___024root___nba_comb__TOP__0(vlSelf);
        vlSelf->__Vm_traceActivity[0x30U] = 1U;
    }
    if ((0x1000800000ULL & vlSelf->__VnbaTriggered.word(0U))) {
        Vtestbench___024root___act_sequent__TOP__19(vlSelf);
        vlSelf->__Vm_traceActivity[0x31U] = 1U;
    }
    if ((0x3000000000ULL & vlSelf->__VnbaTriggered.word(0U))) {
        Vtestbench___024root___nba_comb__TOP__2(vlSelf);
        vlSelf->__Vm_traceActivity[0x32U] = 1U;
    }
    if ((0x1100000000ULL & vlSelf->__VnbaTriggered.word(0U))) {
        Vtestbench___024root___nba_comb__TOP__3(vlSelf);
        vlSelf->__Vm_traceActivity[0x33U] = 1U;
    }
    if ((0x1040000000ULL & vlSelf->__VnbaTriggered.word(0U))) {
        Vtestbench___024root___nba_comb__TOP__4(vlSelf);
        vlSelf->__Vm_traceActivity[0x34U] = 1U;
    }
    if ((0x1004000000ULL & vlSelf->__VnbaTriggered.word(0U))) {
        Vtestbench___024root___nba_comb__TOP__5(vlSelf);
        vlSelf->__Vm_traceActivity[0x35U] = 1U;
    }
    if ((0x1200000000ULL & vlSelf->__VnbaTriggered.word(0U))) {
        Vtestbench___024root___nba_comb__TOP__6(vlSelf);
        vlSelf->__Vm_traceActivity[0x36U] = 1U;
    }
    if ((0x3010000000ULL & vlSelf->__VnbaTriggered.word(0U))) {
        Vtestbench___024root___act_sequent__TOP__8(vlSelf);
        vlSelf->__Vm_traceActivity[0x37U] = 1U;
    }
    if ((0x1020000000ULL & vlSelf->__VnbaTriggered.word(0U))) {
        Vtestbench___024root___nba_comb__TOP__8(vlSelf);
        vlSelf->__Vm_traceActivity[0x38U] = 1U;
    }
    if ((0x3008000000ULL & vlSelf->__VnbaTriggered.word(0U))) {
        Vtestbench___024root___act_sequent__TOP__24(vlSelf);
        vlSelf->__Vm_traceActivity[0x39U] = 1U;
    }
    if ((0x1000100000ULL & vlSelf->__VnbaTriggered.word(0U))) {
        Vtestbench___024root___act_sequent__TOP__2(vlSelf);
        vlSelf->__Vm_traceActivity[0x3aU] = 1U;
    }
    if ((0x1000000010ULL & vlSelf->__VnbaTriggered.word(0U))) {
        Vtestbench___024root___act_sequent__TOP__21(vlSelf);
    }
    if ((0x1000000004ULL & vlSelf->__VnbaTriggered.word(0U))) {
        Vtestbench___024root___nba_comb__TOP__12(vlSelf);
    }
    if ((0x1000000002ULL & vlSelf->__VnbaTriggered.word(0U))) {
        Vtestbench___024root___nba_comb__TOP__13(vlSelf);
        vlSelf->__Vm_traceActivity[0x3bU] = 1U;
    }
    if ((0x3001000000ULL & vlSelf->__VnbaTriggered.word(0U))) {
        Vtestbench___024root___nba_comb__TOP__14(vlSelf);
        vlSelf->__Vm_traceActivity[0x3cU] = 1U;
    }
    if ((0x1000000040ULL & vlSelf->__VnbaTriggered.word(0U))) {
        Vtestbench___024root___act_sequent__TOP__4(vlSelf);
        vlSelf->__Vm_traceActivity[0x3dU] = 1U;
    }
    if ((0x1000000080ULL & vlSelf->__VnbaTriggered.word(0U))) {
        Vtestbench___024root___nba_comb__TOP__16(vlSelf);
    }
    if ((0x3000010000ULL & vlSelf->__VnbaTriggered.word(0U))) {
        Vtestbench___024root___act_sequent__TOP__22(vlSelf);
        vlSelf->__Vm_traceActivity[0x3eU] = 1U;
    }
    if ((0x1000002000ULL & vlSelf->__VnbaTriggered.word(0U))) {
        Vtestbench___024root___act_sequent__TOP__1(vlSelf);
        vlSelf->__Vm_traceActivity[0x3fU] = 1U;
    }
    if ((0x1000040000ULL & vlSelf->__VnbaTriggered.word(0U))) {
        Vtestbench___024root___act_sequent__TOP__27(vlSelf);
        vlSelf->__Vm_traceActivity[0x40U] = 1U;
    }
    if ((0x1000200000ULL & vlSelf->__VnbaTriggered.word(0U))) {
        Vtestbench___024root___act_sequent__TOP__29(vlSelf);
        vlSelf->__Vm_traceActivity[0x41U] = 1U;
    }
    if ((0x1000000000ULL & vlSelf->__VnbaTriggered.word(0U))) {
        Vtestbench___024root___nba_sequent__TOP__6(vlSelf);
        vlSelf->__Vm_traceActivity[0x42U] = 1U;
    }
    if ((0x4400000000ULL & vlSelf->__VnbaTriggered.word(0U))) {
        Vtestbench___024root___nba_comb__TOP__21(vlSelf);
        vlSelf->__Vm_traceActivity[0x43U] = 1U;
    }
    if ((0x5000000000ULL & vlSelf->__VnbaTriggered.word(0U))) {
        Vtestbench___024root___nba_comb__TOP__22(vlSelf);
    }
    if ((0x800000000ULL & vlSelf->__VnbaTriggered.word(0U))) {
        Vtestbench___024root___nba_sequent__TOP__7(vlSelf);
    }
    if ((0x4000000004ULL & vlSelf->__VnbaTriggered.word(0U))) {
        Vtestbench___024root___nba_comb__TOP__23(vlSelf);
    }
    if ((0x3000000020ULL & vlSelf->__VnbaTriggered.word(0U))) {
        Vtestbench___024root___act_sequent__TOP__28(vlSelf);
        vlSelf->__Vm_traceActivity[0x44U] = 1U;
    }
    if ((0x3000020000ULL & vlSelf->__VnbaTriggered.word(0U))) {
        Vtestbench___024root___act_sequent__TOP__26(vlSelf);
        vlSelf->__Vm_traceActivity[0x45U] = 1U;
    }
    if ((0x3000008000ULL & vlSelf->__VnbaTriggered.word(0U))) {
        Vtestbench___024root___act_sequent__TOP__30(vlSelf);
        vlSelf->__Vm_traceActivity[0x46U] = 1U;
    }
    if ((0x3000080000ULL & vlSelf->__VnbaTriggered.word(0U))) {
        Vtestbench___024root___act_sequent__TOP__31(vlSelf);
        vlSelf->__Vm_traceActivity[0x47U] = 1U;
    }
    if ((0x3020000000ULL & vlSelf->__VnbaTriggered.word(0U))) {
        Vtestbench___024root___nba_comb__TOP__28(vlSelf);
        vlSelf->__Vm_traceActivity[0x48U] = 1U;
    }
    if ((0x3030000000ULL & vlSelf->__VnbaTriggered.word(0U))) {
        Vtestbench___024root___act_comb__TOP__7(vlSelf);
    }
    if ((0x3028000000ULL & vlSelf->__VnbaTriggered.word(0U))) {
        Vtestbench___024root___act_comb__TOP__8(vlSelf);
    }
    if ((0x3000000002ULL & vlSelf->__VnbaTriggered.word(0U))) {
        Vtestbench___024root___nba_comb__TOP__31(vlSelf);
    }
    if ((0x3000000802ULL & vlSelf->__VnbaTriggered.word(0U))) {
        Vtestbench___024root___act_comb__TOP__2(vlSelf);
        vlSelf->__Vm_traceActivity[0x49U] = 1U;
    }
    if ((0x1000000090ULL & vlSelf->__VnbaTriggered.word(0U))) {
        Vtestbench___024root___act_comb__TOP__3(vlSelf);
        vlSelf->__Vm_traceActivity[0x4aU] = 1U;
    }
    if ((0x3000010008ULL & vlSelf->__VnbaTriggered.word(0U))) {
        Vtestbench___024root___act_comb__TOP__4(vlSelf);
    }
    if ((0x3000010080ULL & vlSelf->__VnbaTriggered.word(0U))) {
        Vtestbench___024root___act_comb__TOP__5(vlSelf);
    }
    if ((0x5800000000ULL & vlSelf->__VnbaTriggered.word(0U))) {
        Vtestbench___024root___nba_comb__TOP__36(vlSelf);
    }
    if ((0x1100000000ULL & vlSelf->__VnbaTriggered.word(0U))) {
        Vtestbench___024root___nba_comb__TOP__37(vlSelf);
    }
    if ((0x3200000000ULL & vlSelf->__VnbaTriggered.word(0U))) {
        Vtestbench___024root___nba_comb__TOP__38(vlSelf);
    }
    if ((0x3000000000ULL & vlSelf->__VnbaTriggered.word(0U))) {
        Vtestbench___024root___nba_comb__TOP__39(vlSelf);
    }
    if ((0x5400000000ULL & vlSelf->__VnbaTriggered.word(0U))) {
        Vtestbench___024root___nba_comb__TOP__40(vlSelf);
        vlSelf->__Vm_traceActivity[0x4bU] = 1U;
    }
    if ((0x800000400ULL & vlSelf->__VnbaTriggered.word(0U))) {
        Vtestbench___024root___nba_comb__TOP__41(vlSelf);
    }
    if ((0x3000000060ULL & vlSelf->__VnbaTriggered.word(0U))) {
        Vtestbench___024root___act_comb__TOP__9(vlSelf);
    }
    if ((0x3028004000ULL & vlSelf->__VnbaTriggered.word(0U))) {
        Vtestbench___024root___act_comb__TOP__13(vlSelf);
        vlSelf->__Vm_traceActivity[0x4cU] = 1U;
    }
    if ((0x3000020802ULL & vlSelf->__VnbaTriggered.word(0U))) {
        Vtestbench___024root___act_comb__TOP__10(vlSelf);
        vlSelf->__Vm_traceActivity[0x4dU] = 1U;
    }
    if ((0x3000010090ULL & vlSelf->__VnbaTriggered.word(0U))) {
        Vtestbench___024root___act_comb__TOP__11(vlSelf);
        vlSelf->__Vm_traceActivity[0x4eU] = 1U;
    }
    if ((0x3000810080ULL & vlSelf->__VnbaTriggered.word(0U))) {
        Vtestbench___024root___act_comb__TOP__12(vlSelf);
    }
    if ((0x1800000400ULL & vlSelf->__VnbaTriggered.word(0U))) {
        Vtestbench___024root___nba_comb__TOP__47(vlSelf);
        vlSelf->__Vm_traceActivity[0x4fU] = 1U;
    }
    if ((0x3028004005ULL & vlSelf->__VnbaTriggered.word(0U))) {
        Vtestbench___024root___nba_comb__TOP__48(vlSelf);
        vlSelf->__Vm_traceActivity[0x50U] = 1U;
    }
    if ((0x3000810090ULL & vlSelf->__VnbaTriggered.word(0U))) {
        Vtestbench___024root___act_comb__TOP__14(vlSelf);
    }
    if ((0x3000c10080ULL & vlSelf->__VnbaTriggered.word(0U))) {
        Vtestbench___024root___act_comb__TOP__15(vlSelf);
        vlSelf->__Vm_traceActivity[0x51U] = 1U;
    }
    if ((0x3038004005ULL & vlSelf->__VnbaTriggered.word(0U))) {
        Vtestbench___024root___act_comb__TOP__18(vlSelf);
    }
    if ((0x3028004007ULL & vlSelf->__VnbaTriggered.word(0U))) {
        Vtestbench___024root___nba_comb__TOP__52(vlSelf);
    }
    if ((0x3028104005ULL & vlSelf->__VnbaTriggered.word(0U))) {
        Vtestbench___024root___act_comb__TOP__20(vlSelf);
    }
    if ((0x3028004065ULL & vlSelf->__VnbaTriggered.word(0U))) {
        Vtestbench___024root___nba_comb__TOP__54(vlSelf);
    }
    if ((0x3028204005ULL & vlSelf->__VnbaTriggered.word(0U))) {
        Vtestbench___024root___act_comb__TOP__22(vlSelf);
    }
    if ((0x7028004005ULL & vlSelf->__VnbaTriggered.word(0U))) {
        Vtestbench___024root___nba_comb__TOP__56(vlSelf);
        vlSelf->__Vm_traceActivity[0x52U] = 1U;
    }
    if ((0x3000c10090ULL & vlSelf->__VnbaTriggered.word(0U))) {
        Vtestbench___024root___act_comb__TOP__17(vlSelf);
    }
    if ((0x3028c14095ULL & vlSelf->__VnbaTriggered.word(0U))) {
        Vtestbench___024root___act_comb__TOP__23(vlSelf);
    }
    if ((0x3038004007ULL & vlSelf->__VnbaTriggered.word(0U))) {
        Vtestbench___024root___nba_comb__TOP__59(vlSelf);
        vlSelf->__Vm_traceActivity[0x53U] = 1U;
    }
    if ((0x3028104007ULL & vlSelf->__VnbaTriggered.word(0U))) {
        Vtestbench___024root___act_comb__TOP__27(vlSelf);
    }
    if ((0x7028004007ULL & vlSelf->__VnbaTriggered.word(0U))) {
        Vtestbench___024root___nba_comb__TOP__61(vlSelf);
        vlSelf->__Vm_traceActivity[0x54U] = 1U;
    }
    if ((0x7028026807ULL & vlSelf->__VnbaTriggered.word(0U))) {
        Vtestbench___024root___act_comb__TOP__24(vlSelf);
        vlSelf->__Vm_traceActivity[0x55U] = 1U;
    }
    if ((0x7038004007ULL & vlSelf->__VnbaTriggered.word(0U))) {
        Vtestbench___024root___nba_comb__TOP__63(vlSelf);
    }
}

void Vtestbench___024root___timing_resume(Vtestbench___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtestbench__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtestbench___024root___timing_resume\n"); );
    // Body
    if ((0x8000000000ULL & vlSelf->__VactTriggered.word(0U))) {
        vlSelf->__VdlySched.resume();
    }
}

void Vtestbench___024root___eval_triggers__act(Vtestbench___024root* vlSelf);
void Vtestbench___024root___eval_act(Vtestbench___024root* vlSelf);

bool Vtestbench___024root___eval_phase__act(Vtestbench___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtestbench__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtestbench___024root___eval_phase__act\n"); );
    // Init
    VlTriggerVec<40> __VpreTriggered;
    CData/*0:0*/ __VactExecute;
    // Body
    Vtestbench___024root___eval_triggers__act(vlSelf);
    __VactExecute = vlSelf->__VactTriggered.any();
    if (__VactExecute) {
        __VpreTriggered.andNot(vlSelf->__VactTriggered, vlSelf->__VnbaTriggered);
        vlSelf->__VnbaTriggered.thisOr(vlSelf->__VactTriggered);
        Vtestbench___024root___timing_resume(vlSelf);
        Vtestbench___024root___eval_act(vlSelf);
    }
    return (__VactExecute);
}

bool Vtestbench___024root___eval_phase__nba(Vtestbench___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtestbench__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtestbench___024root___eval_phase__nba\n"); );
    // Init
    CData/*0:0*/ __VnbaExecute;
    // Body
    __VnbaExecute = vlSelf->__VnbaTriggered.any();
    if (__VnbaExecute) {
        Vtestbench___024root___eval_nba(vlSelf);
        vlSelf->__VnbaTriggered.clear();
    }
    return (__VnbaExecute);
}

#ifdef VL_DEBUG
VL_ATTR_COLD void Vtestbench___024root___dump_triggers__nba(Vtestbench___024root* vlSelf);
#endif  // VL_DEBUG
#ifdef VL_DEBUG
VL_ATTR_COLD void Vtestbench___024root___dump_triggers__act(Vtestbench___024root* vlSelf);
#endif  // VL_DEBUG

void Vtestbench___024root___eval(Vtestbench___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtestbench__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtestbench___024root___eval\n"); );
    // Init
    IData/*31:0*/ __VnbaIterCount;
    CData/*0:0*/ __VnbaContinue;
    // Body
    __VnbaIterCount = 0U;
    __VnbaContinue = 1U;
    while (__VnbaContinue) {
        if (VL_UNLIKELY((0x64U < __VnbaIterCount))) {
#ifdef VL_DEBUG
            Vtestbench___024root___dump_triggers__nba(vlSelf);
#endif
            VL_FATAL_MT("testbench.v", 16, "", "NBA region did not converge.");
        }
        __VnbaIterCount = ((IData)(1U) + __VnbaIterCount);
        __VnbaContinue = 0U;
        vlSelf->__VactIterCount = 0U;
        vlSelf->__VactContinue = 1U;
        while (vlSelf->__VactContinue) {
            if (VL_UNLIKELY((0x64U < vlSelf->__VactIterCount))) {
#ifdef VL_DEBUG
                Vtestbench___024root___dump_triggers__act(vlSelf);
#endif
                VL_FATAL_MT("testbench.v", 16, "", "Active region did not converge.");
            }
            vlSelf->__VactIterCount = ((IData)(1U) 
                                       + vlSelf->__VactIterCount);
            vlSelf->__VactContinue = 0U;
            if (Vtestbench___024root___eval_phase__act(vlSelf)) {
                vlSelf->__VactContinue = 1U;
            }
        }
        if (Vtestbench___024root___eval_phase__nba(vlSelf)) {
            __VnbaContinue = 1U;
        }
    }
}

#ifdef VL_DEBUG
void Vtestbench___024root___eval_debug_assertions(Vtestbench___024root* vlSelf) {
    if (false && vlSelf) {}  // Prevent unused
    Vtestbench__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtestbench___024root___eval_debug_assertions\n"); );
}
#endif  // VL_DEBUG
