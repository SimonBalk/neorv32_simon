// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Tracing implementation internals
#include "verilated_fst_c.h"
#include "Vtestbench__Syms.h"


VL_ATTR_COLD void Vtestbench___024root__trace_full_0_sub_6(Vtestbench___024root* vlSelf, VerilatedFst::Buffer* bufp) {
    if (false && vlSelf) {}  // Prevent unused
    Vtestbench__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtestbench___024root__trace_full_0_sub_6\n"); );
    // Init
    uint32_t* const oldp VL_ATTR_UNUSED = bufp->oldp(vlSymsp->__Vm_baseCode);
    VlWide<5>/*159:0*/ __Vtemp_5;
    // Body
    __Vtemp_5[0U] = (((IData)((((QData)((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_tracer_enabled_neorv32_tracer_inst__DOT__n8739_o[2U])) 
                                << 0x3bU) | (((QData)((IData)(
                                                              vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_tracer_enabled_neorv32_tracer_inst__DOT__n8739_o[1U])) 
                                              << 0x1bU) 
                                             | ((QData)((IData)(
                                                                vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_tracer_enabled_neorv32_tracer_inst__DOT__n8739_o[0U])) 
                                                >> 5U)))) 
                      << 2U) | (((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_tracer_enabled_neorv32_tracer_inst__DOT__n8686_o) 
                                 << 1U) | (1U & (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_tracer_enabled_neorv32_tracer_inst__DOT__n8739_o[2U] 
                                                 >> 5U))));
    __Vtemp_5[1U] = (((IData)((((QData)((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_tracer_enabled_neorv32_tracer_inst__DOT__n8739_o[2U])) 
                                << 0x3bU) | (((QData)((IData)(
                                                              vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_tracer_enabled_neorv32_tracer_inst__DOT__n8739_o[1U])) 
                                              << 0x1bU) 
                                             | ((QData)((IData)(
                                                                vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_tracer_enabled_neorv32_tracer_inst__DOT__n8739_o[0U])) 
                                                >> 5U)))) 
                      >> 0x1eU) | ((IData)(((((QData)((IData)(
                                                              vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_tracer_enabled_neorv32_tracer_inst__DOT__n8739_o[2U])) 
                                              << 0x3bU) 
                                             | (((QData)((IData)(
                                                                 vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_tracer_enabled_neorv32_tracer_inst__DOT__n8739_o[1U])) 
                                                 << 0x1bU) 
                                                | ((QData)((IData)(
                                                                   vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_tracer_enabled_neorv32_tracer_inst__DOT__n8739_o[0U])) 
                                                   >> 5U))) 
                                            >> 0x20U)) 
                                   << 2U));
    __Vtemp_5[2U] = (((IData)(((((QData)((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_tracer_enabled_neorv32_tracer_inst__DOT__n8739_o[2U])) 
                                 << 0x3bU) | (((QData)((IData)(
                                                               vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_tracer_enabled_neorv32_tracer_inst__DOT__n8739_o[1U])) 
                                               << 0x1bU) 
                                              | ((QData)((IData)(
                                                                 vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_tracer_enabled_neorv32_tracer_inst__DOT__n8739_o[0U])) 
                                                 >> 5U))) 
                               >> 0x20U)) >> 0x1eU) 
                     | ((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_tracer_enabled_neorv32_tracer_inst__DOT__trace_buffer_inst__DOT__n18707_data) 
                        << 2U));
    __Vtemp_5[3U] = (((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_tracer_enabled_neorv32_tracer_inst__DOT__trace_buffer_inst__DOT__n18707_data) 
                      >> 0x1eU) | ((IData)((vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_tracer_enabled_neorv32_tracer_inst__DOT__trace_buffer_inst__DOT__n18707_data 
                                            >> 0x20U)) 
                                   << 2U));
    __Vtemp_5[4U] = ((0x10U & ((~ (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_tracer_enabled_neorv32_tracer_inst__DOT__n8730_q)) 
                               << 4U)) | ((8U & ((~ (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_tracer_enabled_neorv32_tracer_inst__DOT__trace_buffer_inst__DOT__full)) 
                                                 << 3U)) 
                                          | (((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_tracer_enabled_neorv32_tracer_inst__DOT__trace_buffer_inst__DOT__n18703_q) 
                                              << 2U) 
                                             | ((IData)(
                                                        (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_tracer_enabled_neorv32_tracer_inst__DOT__trace_buffer_inst__DOT__n18707_data 
                                                         >> 0x20U)) 
                                                >> 0x1eU))));
    bufp->fullWData(oldp+11601,(__Vtemp_5),133);
    bufp->fullBit(oldp+11606,((1U & ((4U == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_tracer_enabled_neorv32_tracer_inst__DOT__n8521_o))
                                      ? (IData)((vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_tracer_enabled_neorv32_tracer_inst__DOT__trace_buffer_inst__DOT__n18707_data 
                                                 >> 4U))
                                      : ((2U == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_tracer_enabled_neorv32_tracer_inst__DOT__n8521_o))
                                          ? (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_tracer_enabled_neorv32_tracer_inst__DOT__n8737_q 
                                             >> 3U)
                                          : ((1U == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_tracer_enabled_neorv32_tracer_inst__DOT__n8521_o))
                                              ? vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_tracer_enabled_neorv32_tracer_inst__DOT__n8739_o[0U]
                                              : (IData)(
                                                        (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_tracer_enabled_neorv32_tracer_inst__DOT__trace_buffer_inst__DOT__n18707_data 
                                                         >> 0x24U))))))));
    bufp->fullIData(oldp+11607,(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_tracer_enabled_neorv32_tracer_inst__DOT__n8557_o),32);
    bufp->fullIData(oldp+11608,(((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_tracer_enabled_neorv32_tracer_inst__DOT__n8503_o)
                                  ? vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_tracer_enabled_neorv32_tracer_inst__DOT__n8557_o
                                  : 0U)),32);
    bufp->fullQData(oldp+11609,((((QData)((IData)(((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_tracer_enabled_neorv32_tracer_inst__DOT__n8503_o)
                                                    ? vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_tracer_enabled_neorv32_tracer_inst__DOT__n8557_o
                                                    : 0U))) 
                                  << 2U) | (QData)((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_tracer_enabled_neorv32_tracer_inst__DOT__n8458_o)))),34);
    bufp->fullQData(oldp+11611,((((QData)((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_twi_enabled_neorv32_twi_inst__DOT__tx_fifo_inst__DOT__match)) 
                                  << 0x31U) | (((QData)((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_twi_enabled_neorv32_twi_inst__DOT__rx_fifo_inst__DOT__match)) 
                                                << 0x30U) 
                                               | (((QData)((IData)(
                                                                   (1U 
                                                                    & (~ (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_twi_enabled_neorv32_twi_inst__DOT__tx_fifo_inst__DOT__match))))) 
                                                   << 0x2fU) 
                                                  | (((QData)((IData)(
                                                                      (1U 
                                                                       & (~ (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_twi_enabled_neorv32_twi_inst__DOT__rx_fifo_inst__DOT__match))))) 
                                                      << 0x2eU) 
                                                     | (((QData)((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_twi_enabled_neorv32_twi_inst__DOT__tx_fifo_inst__DOT__n18344_q)) 
                                                         << 0x23U) 
                                                        | (((QData)((IData)(
                                                                            (0x7ffU 
                                                                             & (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_bus_io_switch_inst__DOT__neorv32_bus_reg_inst__DOT__n17997_q[1U] 
                                                                                >> 5U)))) 
                                                            << 0x18U) 
                                                           | (QData)((IData)(
                                                                             (((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_twi_enabled_neorv32_twi_inst__DOT__rx_fifo_inst__DOT__n18246_q) 
                                                                               << 0xfU) 
                                                                              | (((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_twi_enabled_neorv32_twi_inst__DOT__n6182_o) 
                                                                                << 6U) 
                                                                                | ((0x20U 
                                                                                & (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_twi_enabled_neorv32_twi_inst__DOT__n6468_o 
                                                                                >> 0xbU)) 
                                                                                | (((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_twi_enabled_neorv32_twi_inst__DOT__n6185_o) 
                                                                                << 4U) 
                                                                                | (((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_twi_enabled_neorv32_twi_inst__DOT__n6164_o) 
                                                                                << 3U) 
                                                                                | ((4U 
                                                                                & (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_twi_enabled_neorv32_twi_inst__DOT__n6468_o 
                                                                                >> 0xfU)) 
                                                                                | (3U 
                                                                                & (- (IData)(
                                                                                (1U 
                                                                                & (~ (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_twi_enabled_neorv32_twi_inst__DOT__n6462_q))))))))))))))))))))),50);
    bufp->fullCData(oldp+11613,(((0x80U & vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_bus_io_switch_inst__DOT__neorv32_bus_reg_inst__DOT__n17997_q[0U])
                                  ? 0U : ((0x10U & 
                                           (((~ (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_twi_enabled_neorv32_twi_inst__DOT__tx_fifo_inst__DOT__match)) 
                                             << 4U) 
                                            | (0x3fff0U 
                                               & (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_twi_enabled_neorv32_twi_inst__DOT__n6468_o 
                                                  >> 0xeU)))) 
                                          | ((8U & 
                                              ((~ (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_twi_enabled_neorv32_twi_inst__DOT__rx_fifo_inst__DOT__match)) 
                                               << 3U)) 
                                             | ((4U 
                                                 & ((~ (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_twi_enabled_neorv32_twi_inst__DOT__tx_fifo_inst__DOT__match)) 
                                                    << 2U)) 
                                                | ((2U 
                                                    & (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_twi_enabled_neorv32_twi_inst__DOT__n6469_q)) 
                                                   | (1U 
                                                      & ((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_twi_enabled_neorv32_twi_inst__DOT__n6470_q) 
                                                         >> 1U)))))))),5);
    bufp->fullCData(oldp+11614,(((0x400U & vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_bus_io_switch_inst__DOT__neorv32_bus_reg_inst__DOT__n17997_q[2U])
                                  ? 0U : ((0x80U & 
                                           vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_bus_io_switch_inst__DOT__neorv32_bus_reg_inst__DOT__n17997_q[0U])
                                           ? 0U : (
                                                   (0x10U 
                                                    & (((~ (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_twi_enabled_neorv32_twi_inst__DOT__tx_fifo_inst__DOT__match)) 
                                                        << 4U) 
                                                       | (0x3fff0U 
                                                          & (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_twi_enabled_neorv32_twi_inst__DOT__n6468_o 
                                                             >> 0xeU)))) 
                                                   | ((8U 
                                                       & ((~ (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_twi_enabled_neorv32_twi_inst__DOT__rx_fifo_inst__DOT__match)) 
                                                          << 3U)) 
                                                      | ((4U 
                                                          & ((~ (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_twi_enabled_neorv32_twi_inst__DOT__tx_fifo_inst__DOT__match)) 
                                                             << 2U)) 
                                                         | ((2U 
                                                             & (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_twi_enabled_neorv32_twi_inst__DOT__n6469_q)) 
                                                            | (1U 
                                                               & ((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_twi_enabled_neorv32_twi_inst__DOT__n6470_q) 
                                                                  >> 1U))))))))),5);
    bufp->fullCData(oldp+11615,(((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_twi_enabled_neorv32_twi_inst__DOT__n6100_o)
                                  ? ((0x400U & vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_bus_io_switch_inst__DOT__neorv32_bus_reg_inst__DOT__n17997_q[2U])
                                      ? 0U : ((0x80U 
                                               & vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_bus_io_switch_inst__DOT__neorv32_bus_reg_inst__DOT__n17997_q[0U])
                                               ? 0U
                                               : ((0x10U 
                                                   & (((~ (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_twi_enabled_neorv32_twi_inst__DOT__tx_fifo_inst__DOT__match)) 
                                                       << 4U) 
                                                      | (0x3fff0U 
                                                         & (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_twi_enabled_neorv32_twi_inst__DOT__n6468_o 
                                                            >> 0xeU)))) 
                                                  | ((8U 
                                                      & ((~ (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_twi_enabled_neorv32_twi_inst__DOT__rx_fifo_inst__DOT__match)) 
                                                         << 3U)) 
                                                     | ((4U 
                                                         & ((~ (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_twi_enabled_neorv32_twi_inst__DOT__tx_fifo_inst__DOT__match)) 
                                                            << 2U)) 
                                                        | ((2U 
                                                            & (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_twi_enabled_neorv32_twi_inst__DOT__n6469_q)) 
                                                           | (1U 
                                                              & ((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_twi_enabled_neorv32_twi_inst__DOT__n6470_q) 
                                                                 >> 1U))))))))
                                  : 0U)),5);
    bufp->fullQData(oldp+11616,((((QData)((IData)(((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_twi_enabled_neorv32_twi_inst__DOT__n6100_o)
                                                    ? 
                                                   ((0x400U 
                                                     & vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_bus_io_switch_inst__DOT__neorv32_bus_reg_inst__DOT__n17997_q[2U])
                                                     ? 0U
                                                     : 
                                                    ((0x80U 
                                                      & vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_bus_io_switch_inst__DOT__neorv32_bus_reg_inst__DOT__n17997_q[0U])
                                                      ? 0U
                                                      : 
                                                     ((0x10U 
                                                       & (((~ (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_twi_enabled_neorv32_twi_inst__DOT__tx_fifo_inst__DOT__match)) 
                                                           << 4U) 
                                                          | (0x3fff0U 
                                                             & (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_twi_enabled_neorv32_twi_inst__DOT__n6468_o 
                                                                >> 0xeU)))) 
                                                      | ((8U 
                                                          & ((~ (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_twi_enabled_neorv32_twi_inst__DOT__rx_fifo_inst__DOT__match)) 
                                                             << 3U)) 
                                                         | ((4U 
                                                             & ((~ (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_twi_enabled_neorv32_twi_inst__DOT__tx_fifo_inst__DOT__match)) 
                                                                << 2U)) 
                                                            | ((2U 
                                                                & (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_twi_enabled_neorv32_twi_inst__DOT__n6469_q)) 
                                                               | (1U 
                                                                  & ((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_twi_enabled_neorv32_twi_inst__DOT__n6470_q) 
                                                                     >> 1U))))))))
                                                    : 0U))) 
                                  << 0x1dU) | (QData)((IData)(
                                                              ((((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_twi_enabled_neorv32_twi_inst__DOT__n6100_o)
                                                                  ? 
                                                                 ((0x400U 
                                                                   & vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_bus_io_switch_inst__DOT__neorv32_bus_reg_inst__DOT__n17997_q[2U])
                                                                   ? 0U
                                                                   : 
                                                                  ((0x80U 
                                                                    & vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_bus_io_switch_inst__DOT__neorv32_bus_reg_inst__DOT__n17997_q[0U])
                                                                    ? (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_twi_enabled_neorv32_twi_inst__DOT__rx_fifo_inst__DOT__n18246_q)
                                                                    : (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_twi_enabled_neorv32_twi_inst__DOT__n6462_q)))
                                                                  : 0U) 
                                                                << 2U) 
                                                               | (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_twi_enabled_neorv32_twi_inst__DOT__n6100_o)))))),34);
    bufp->fullCData(oldp+11618,(((1U & ((8U & (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_twi_enabled_neorv32_twi_inst__DOT__n6462_q))
                                         ? ((4U & (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_twi_enabled_neorv32_twi_inst__DOT__n6462_q))
                                             ? ((2U 
                                                 & (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_twi_enabled_neorv32_twi_inst__DOT__n6462_q))
                                                 ? 
                                                ((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__soc_generators_neorv32_sys_clock_inst__DOT__edge) 
                                                 >> 0xbU)
                                                 : 
                                                ((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__soc_generators_neorv32_sys_clock_inst__DOT__edge) 
                                                 >> 0xaU))
                                             : ((2U 
                                                 & (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_twi_enabled_neorv32_twi_inst__DOT__n6462_q))
                                                 ? 
                                                ((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__soc_generators_neorv32_sys_clock_inst__DOT__edge) 
                                                 >> 9U)
                                                 : 
                                                ((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__soc_generators_neorv32_sys_clock_inst__DOT__edge) 
                                                 >> 6U)))
                                         : ((4U & (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_twi_enabled_neorv32_twi_inst__DOT__n6462_q))
                                             ? ((2U 
                                                 & (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_twi_enabled_neorv32_twi_inst__DOT__n6462_q))
                                                 ? 
                                                ((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__soc_generators_neorv32_sys_clock_inst__DOT__edge) 
                                                 >> 5U)
                                                 : 
                                                ((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__soc_generators_neorv32_sys_clock_inst__DOT__edge) 
                                                 >> 2U))
                                             : ((2U 
                                                 & (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_twi_enabled_neorv32_twi_inst__DOT__n6462_q))
                                                 ? 
                                                ((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__soc_generators_neorv32_sys_clock_inst__DOT__edge) 
                                                 >> 1U)
                                                 : (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__soc_generators_neorv32_sys_clock_inst__DOT__edge)))))
                                  ? (((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_twi_enabled_neorv32_twi_inst__DOT__n6233_o) 
                                      << 4U) | ((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_twi_enabled_neorv32_twi_inst__DOT__n6233_o)
                                                 ? 0U
                                                 : 
                                                (0xfU 
                                                 & ((IData)(1U) 
                                                    + vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_twi_enabled_neorv32_twi_inst__DOT__n6466_o))))
                                  : (0xfU & vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_twi_enabled_neorv32_twi_inst__DOT__n6466_o))),5);
    bufp->fullCData(oldp+11619,(((1U & (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_twi_enabled_neorv32_twi_inst__DOT__n6462_q))
                                  ? ((1U & ((8U & (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_twi_enabled_neorv32_twi_inst__DOT__n6462_q))
                                             ? ((4U 
                                                 & (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_twi_enabled_neorv32_twi_inst__DOT__n6462_q))
                                                 ? 
                                                ((2U 
                                                  & (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_twi_enabled_neorv32_twi_inst__DOT__n6462_q))
                                                  ? 
                                                 ((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__soc_generators_neorv32_sys_clock_inst__DOT__edge) 
                                                  >> 0xbU)
                                                  : 
                                                 ((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__soc_generators_neorv32_sys_clock_inst__DOT__edge) 
                                                  >> 0xaU))
                                                 : 
                                                ((2U 
                                                  & (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_twi_enabled_neorv32_twi_inst__DOT__n6462_q))
                                                  ? 
                                                 ((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__soc_generators_neorv32_sys_clock_inst__DOT__edge) 
                                                  >> 9U)
                                                  : 
                                                 ((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__soc_generators_neorv32_sys_clock_inst__DOT__edge) 
                                                  >> 6U)))
                                             : ((4U 
                                                 & (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_twi_enabled_neorv32_twi_inst__DOT__n6462_q))
                                                 ? 
                                                ((2U 
                                                  & (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_twi_enabled_neorv32_twi_inst__DOT__n6462_q))
                                                  ? 
                                                 ((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__soc_generators_neorv32_sys_clock_inst__DOT__edge) 
                                                  >> 5U)
                                                  : 
                                                 ((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__soc_generators_neorv32_sys_clock_inst__DOT__edge) 
                                                  >> 2U))
                                                 : 
                                                ((2U 
                                                  & (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_twi_enabled_neorv32_twi_inst__DOT__n6462_q))
                                                  ? 
                                                 ((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__soc_generators_neorv32_sys_clock_inst__DOT__edge) 
                                                  >> 1U)
                                                  : (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__soc_generators_neorv32_sys_clock_inst__DOT__edge)))))
                                      ? (((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_twi_enabled_neorv32_twi_inst__DOT__n6233_o) 
                                          << 4U) | 
                                         ((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_twi_enabled_neorv32_twi_inst__DOT__n6233_o)
                                           ? 0U : (0xfU 
                                                   & ((IData)(1U) 
                                                      + vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_twi_enabled_neorv32_twi_inst__DOT__n6466_o))))
                                      : (0xfU & vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_twi_enabled_neorv32_twi_inst__DOT__n6466_o))
                                  : 0U)),5);
    bufp->fullBit(oldp+11620,((1U & ((~ (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_twi_enabled_neorv32_twi_inst__DOT__n6384_o)) 
                                     & ((0x4000U & vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_twi_enabled_neorv32_twi_inst__DOT__n6466_o)
                                         ? (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_twi_enabled_neorv32_twi_inst__DOT__n6468_o 
                                            >> 0xfU)
                                         : (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_twi_enabled_neorv32_twi_inst__DOT__n6471_q))))));
    bufp->fullCData(oldp+11621,(((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_twi_enabled_neorv32_twi_inst__DOT__n6384_o)
                                  ? 0U : (3U & vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_twi_enabled_neorv32_twi_inst__DOT__n6468_o))),2);
    bufp->fullIData(oldp+11622,((((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_uart0_enabled_neorv32_uart0_inst__DOT__rx_engine_fifo_inst__DOT__n18194_q) 
                                  << 0x14U) | ((0x80000U 
                                                & ((~ (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_uart0_enabled_neorv32_uart0_inst__DOT__rx_engine_fifo_inst__DOT__full)) 
                                                   << 0x13U)) 
                                               | (((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_uart0_enabled_neorv32_uart0_inst__DOT__rx_engine_fifo_inst__DOT__n18198_data) 
                                                   << 0xbU) 
                                                  | ((0x7f8U 
                                                      & (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_uart0_enabled_neorv32_uart0_inst__DOT__n5676_q 
                                                         << 1U)) 
                                                     | (((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_uart0_enabled_neorv32_uart0_inst__DOT__n5424_o) 
                                                         << 2U) 
                                                        | ((2U 
                                                            & (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_uart0_enabled_neorv32_uart0_inst__DOT__n5676_q 
                                                               >> 0x1bU)) 
                                                           | (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_uart0_enabled_neorv32_uart0_inst__DOT__n5396_o)))))))),21);
    bufp->fullSData(oldp+11623,(((0x80U & vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_bus_io_switch_inst__DOT__neorv32_bus_reg_inst__DOT__n17997_q[0U])
                                  ? (0x6600U | (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_uart0_enabled_neorv32_uart0_inst__DOT__rx_engine_fifo_inst__DOT__n18198_data))
                                  : (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_uart0_enabled_neorv32_uart0_inst__DOT__n5364_o))),16);
    bufp->fullIData(oldp+11624,(((((0x80U & vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_bus_io_switch_inst__DOT__neorv32_bus_reg_inst__DOT__n17997_q[0U])
                                    ? 0U : ((0xf0U 
                                             & (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_uart0_enabled_neorv32_uart0_inst__DOT__n5674_q 
                                                >> 0xcU)) 
                                            | ((8U 
                                                & ((~ (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_uart0_enabled_neorv32_uart0_inst__DOT__tx_engine_fifo_inst__DOT__full)) 
                                                   << 3U)) 
                                               | ((4U 
                                                   & ((~ (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_uart0_enabled_neorv32_uart0_inst__DOT__tx_engine_fifo_inst__DOT__n18194_q)) 
                                                      << 2U)) 
                                                  | (((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_uart0_enabled_neorv32_uart0_inst__DOT__rx_engine_fifo_inst__DOT__full) 
                                                      << 1U) 
                                                     | (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_uart0_enabled_neorv32_uart0_inst__DOT__rx_engine_fifo_inst__DOT__n18194_q)))))) 
                                  << 0x10U) | ((0x80U 
                                                & vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_bus_io_switch_inst__DOT__neorv32_bus_reg_inst__DOT__n17997_q[0U])
                                                ? (0x6600U 
                                                   | (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_uart0_enabled_neorv32_uart0_inst__DOT__rx_engine_fifo_inst__DOT__n18198_data))
                                                : (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_uart0_enabled_neorv32_uart0_inst__DOT__n5364_o)))),24);
    bufp->fullIData(oldp+11625,(((0x400U & vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_bus_io_switch_inst__DOT__neorv32_bus_reg_inst__DOT__n17997_q[2U])
                                  ? 0U : ((((0x80U 
                                             & vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_bus_io_switch_inst__DOT__neorv32_bus_reg_inst__DOT__n17997_q[0U])
                                             ? 0U : 
                                            ((0xf0U 
                                              & (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_uart0_enabled_neorv32_uart0_inst__DOT__n5674_q 
                                                 >> 0xcU)) 
                                             | ((8U 
                                                 & ((~ (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_uart0_enabled_neorv32_uart0_inst__DOT__tx_engine_fifo_inst__DOT__full)) 
                                                    << 3U)) 
                                                | ((4U 
                                                    & ((~ (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_uart0_enabled_neorv32_uart0_inst__DOT__tx_engine_fifo_inst__DOT__n18194_q)) 
                                                       << 2U)) 
                                                   | (((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_uart0_enabled_neorv32_uart0_inst__DOT__rx_engine_fifo_inst__DOT__full) 
                                                       << 1U) 
                                                      | (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_uart0_enabled_neorv32_uart0_inst__DOT__rx_engine_fifo_inst__DOT__n18194_q)))))) 
                                           << 0x10U) 
                                          | ((0x80U 
                                              & vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_bus_io_switch_inst__DOT__neorv32_bus_reg_inst__DOT__n17997_q[0U])
                                              ? (0x6600U 
                                                 | (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_uart0_enabled_neorv32_uart0_inst__DOT__rx_engine_fifo_inst__DOT__n18198_data))
                                              : (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_uart0_enabled_neorv32_uart0_inst__DOT__n5364_o))))),24);
    bufp->fullIData(oldp+11626,(((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_uart0_enabled_neorv32_uart0_inst__DOT__n5314_o)
                                  ? ((0x400U & vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_bus_io_switch_inst__DOT__neorv32_bus_reg_inst__DOT__n17997_q[2U])
                                      ? 0U : ((((0x80U 
                                                 & vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_bus_io_switch_inst__DOT__neorv32_bus_reg_inst__DOT__n17997_q[0U])
                                                 ? 0U
                                                 : 
                                                ((0xf0U 
                                                  & (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_uart0_enabled_neorv32_uart0_inst__DOT__n5674_q 
                                                     >> 0xcU)) 
                                                 | ((8U 
                                                     & ((~ (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_uart0_enabled_neorv32_uart0_inst__DOT__tx_engine_fifo_inst__DOT__full)) 
                                                        << 3U)) 
                                                    | ((4U 
                                                        & ((~ (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_uart0_enabled_neorv32_uart0_inst__DOT__tx_engine_fifo_inst__DOT__n18194_q)) 
                                                           << 2U)) 
                                                       | (((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_uart0_enabled_neorv32_uart0_inst__DOT__rx_engine_fifo_inst__DOT__full) 
                                                           << 1U) 
                                                          | (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_uart0_enabled_neorv32_uart0_inst__DOT__rx_engine_fifo_inst__DOT__n18194_q)))))) 
                                               << 0x10U) 
                                              | ((0x80U 
                                                  & vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_bus_io_switch_inst__DOT__neorv32_bus_reg_inst__DOT__n17997_q[0U])
                                                  ? 
                                                 (0x6600U 
                                                  | (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_uart0_enabled_neorv32_uart0_inst__DOT__rx_engine_fifo_inst__DOT__n18198_data))
                                                  : (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_uart0_enabled_neorv32_uart0_inst__DOT__n5364_o))))
                                  : 0U)),24);
    bufp->fullQData(oldp+11627,((((QData)((IData)(((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_uart0_enabled_neorv32_uart0_inst__DOT__n5314_o)
                                                    ? 
                                                   ((0x400U 
                                                     & vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_bus_io_switch_inst__DOT__neorv32_bus_reg_inst__DOT__n17997_q[2U])
                                                     ? 0U
                                                     : 
                                                    ((0x80U 
                                                      & vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_bus_io_switch_inst__DOT__neorv32_bus_reg_inst__DOT__n17997_q[0U])
                                                      ? 0U
                                                      : 
                                                     ((2U 
                                                       & ((vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_uart0_enabled_neorv32_uart0_inst__DOT__n5675_q 
                                                           | (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_uart0_enabled_neorv32_uart0_inst__DOT__tx_engine_fifo_inst__DOT__n18194_q)) 
                                                          << 1U)) 
                                                      | (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_uart0_enabled_neorv32_uart0_inst__DOT__n5677_q))))
                                                    : 0U))) 
                                  << 0x20U) | (QData)((IData)(
                                                              ((((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_uart0_enabled_neorv32_uart0_inst__DOT__n5314_o)
                                                                  ? 
                                                                 ((0x400U 
                                                                   & vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_bus_io_switch_inst__DOT__neorv32_bus_reg_inst__DOT__n17997_q[2U])
                                                                   ? 0U
                                                                   : 
                                                                  ((((0x80U 
                                                                      & vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_bus_io_switch_inst__DOT__neorv32_bus_reg_inst__DOT__n17997_q[0U])
                                                                      ? 0U
                                                                      : 
                                                                     ((0xf0U 
                                                                       & (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_uart0_enabled_neorv32_uart0_inst__DOT__n5674_q 
                                                                          >> 0xcU)) 
                                                                      | ((8U 
                                                                          & ((~ (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_uart0_enabled_neorv32_uart0_inst__DOT__tx_engine_fifo_inst__DOT__full)) 
                                                                             << 3U)) 
                                                                         | ((4U 
                                                                             & ((~ (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_uart0_enabled_neorv32_uart0_inst__DOT__tx_engine_fifo_inst__DOT__n18194_q)) 
                                                                                << 2U)) 
                                                                            | (((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_uart0_enabled_neorv32_uart0_inst__DOT__rx_engine_fifo_inst__DOT__full) 
                                                                                << 1U) 
                                                                               | (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_uart0_enabled_neorv32_uart0_inst__DOT__rx_engine_fifo_inst__DOT__n18194_q)))))) 
                                                                    << 0x10U) 
                                                                   | ((0x80U 
                                                                       & vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_bus_io_switch_inst__DOT__neorv32_bus_reg_inst__DOT__n17997_q[0U])
                                                                       ? 
                                                                      (0x6600U 
                                                                       | (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_uart0_enabled_neorv32_uart0_inst__DOT__rx_engine_fifo_inst__DOT__n18198_data))
                                                                       : (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_uart0_enabled_neorv32_uart0_inst__DOT__n5364_o))))
                                                                  : 0U) 
                                                                << 2U) 
                                                               | (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_uart0_enabled_neorv32_uart0_inst__DOT__n5314_o)))))),34);
    bufp->fullIData(oldp+11629,(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_uart0_enabled_neorv32_uart0_inst__DOT__n5559_o),29);
    bufp->fullBit(oldp+11630,(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__neorv32_ocd_enabled_neorv32_debug_dm_inst__DOT__authenticator_enabled_neorv32_debug_auth_inst__DOT__n18713_o));
    bufp->fullCData(oldp+11631,(((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_wdt_enabled_neorv32_wdt_inst__DOT__n5135_q)
                                  ? 3U : (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_wdt_enabled_neorv32_wdt_inst__DOT__n5133_q))),2);
    bufp->fullCData(oldp+11632,(((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_wdt_enabled_neorv32_wdt_inst__DOT__n5134_q)
                                  ? 2U : ((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_wdt_enabled_neorv32_wdt_inst__DOT__n5135_q)
                                           ? 3U : (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_wdt_enabled_neorv32_wdt_inst__DOT__n5133_q)))),2);
    bufp->fullCData(oldp+11633,(((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__neorv32_ocd_enabled_neorv32_debug_dm_inst__DOT__n9491_o)
                                  ? 1U : ((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_wdt_enabled_neorv32_wdt_inst__DOT__n5134_q)
                                           ? 2U : ((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_wdt_enabled_neorv32_wdt_inst__DOT__n5135_q)
                                                    ? 3U
                                                    : (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_wdt_enabled_neorv32_wdt_inst__DOT__n5133_q))))),2);
    bufp->fullBit(oldp+11634,((1U & ((2U == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__neorv32_bus_gateway_inst__DOT__n3872_o))
                                      ? (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__neorv32_bus_gateway_inst__DOT__n3892_o 
                                         >> 3U) : (
                                                   (1U 
                                                    == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__neorv32_bus_gateway_inst__DOT__n3872_o))
                                                    ? 
                                                   ((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__neorv32_bus_gateway_inst__DOT__n3888_o) 
                                                    >> 3U)
                                                    : 
                                                   (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__neorv32_bus_gateway_inst__DOT__n3892_o 
                                                    >> 3U))))));
    bufp->fullSData(oldp+11635,(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__neorv32_bus_gateway_inst__DOT__n3880_o),16);
    bufp->fullIData(oldp+11636,(((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__neorv32_ocd_enabled_neorv32_debug_dm_inst__DOT__n9501_o)
                                  ? (IData)((vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__neorv32_ocd_enabled_neorv32_debug_dtm_inst__DOT__n9288_q 
                                             >> 9U))
                                  : ((IData)(((0x1000U 
                                               == (0x1800U 
                                                   & vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_bus_io_switch_inst__DOT__neorv32_bus_reg_inst__DOT__n17997_q[0U])) 
                                              & (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__neorv32_ocd_enabled_neorv32_debug_dm_inst__DOT__wren)))
                                      ? ((((0x100U 
                                            & vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_bus_io_switch_inst__DOT__neorv32_bus_reg_inst__DOT__n17997_q[2U])
                                            ? ((vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_bus_io_switch_inst__DOT__neorv32_bus_reg_inst__DOT__n17997_q[2U] 
                                                << 3U) 
                                               | (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_bus_io_switch_inst__DOT__neorv32_bus_reg_inst__DOT__n17997_q[1U] 
                                                  >> 0x1dU))
                                            : (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__neorv32_ocd_enabled_neorv32_debug_dm_inst__DOT__n10352_q 
                                               >> 0x18U)) 
                                          << 0x18U) 
                                         | ((0xff0000U 
                                             & (((0x80U 
                                                  & vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_bus_io_switch_inst__DOT__neorv32_bus_reg_inst__DOT__n17997_q[2U])
                                                  ? 
                                                 ((vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_bus_io_switch_inst__DOT__neorv32_bus_reg_inst__DOT__n17997_q[1U] 
                                                   << 0xbU) 
                                                  | (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_bus_io_switch_inst__DOT__neorv32_bus_reg_inst__DOT__n17997_q[1U] 
                                                     >> 0x15U))
                                                  : 
                                                 (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__neorv32_ocd_enabled_neorv32_debug_dm_inst__DOT__n10352_q 
                                                  >> 0x10U)) 
                                                << 0x10U)) 
                                            | ((0xff00U 
                                                & (((0x40U 
                                                     & vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_bus_io_switch_inst__DOT__neorv32_bus_reg_inst__DOT__n17997_q[2U])
                                                     ? 
                                                    ((vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_bus_io_switch_inst__DOT__neorv32_bus_reg_inst__DOT__n17997_q[1U] 
                                                      << 0x13U) 
                                                     | (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_bus_io_switch_inst__DOT__neorv32_bus_reg_inst__DOT__n17997_q[1U] 
                                                        >> 0xdU))
                                                     : 
                                                    (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__neorv32_ocd_enabled_neorv32_debug_dm_inst__DOT__n10352_q 
                                                     >> 8U)) 
                                                   << 8U)) 
                                               | (0xffU 
                                                  & ((0x20U 
                                                      & vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_bus_io_switch_inst__DOT__neorv32_bus_reg_inst__DOT__n17997_q[2U])
                                                      ? 
                                                     ((vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_bus_io_switch_inst__DOT__neorv32_bus_reg_inst__DOT__n17997_q[1U] 
                                                       << 0x1bU) 
                                                      | (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_bus_io_switch_inst__DOT__neorv32_bus_reg_inst__DOT__n17997_q[1U] 
                                                         >> 5U))
                                                      : vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__neorv32_ocd_enabled_neorv32_debug_dm_inst__DOT__n10352_q)))))
                                      : vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__neorv32_ocd_enabled_neorv32_debug_dm_inst__DOT__n10352_q))),32);
    bufp->fullCData(oldp+11637,((0xffU & ((4U == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__neorv32_ocd_enabled_neorv32_debug_dm_inst__DOT__n10261_o))
                                           ? vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__neorv32_ocd_enabled_neorv32_debug_dm_inst__DOT__n10352_q
                                           : ((2U == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__neorv32_ocd_enabled_neorv32_debug_dm_inst__DOT__n10261_o))
                                               ? vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__neorv32_ocd_enabled_neorv32_debug_dm_inst__DOT__n10366_o
                                               : ((1U 
                                                   == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__neorv32_ocd_enabled_neorv32_debug_dm_inst__DOT__n10261_o))
                                                   ? vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__neorv32_ocd_enabled_neorv32_debug_dm_inst__DOT__n10360_data
                                                   : 0U))))),8);
    bufp->fullBit(oldp+11638,((1U & ((4U == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__neorv32_ocd_enabled_neorv32_debug_dm_inst__DOT__n10261_o))
                                      ? (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__neorv32_ocd_enabled_neorv32_debug_dm_inst__DOT__n10352_q 
                                         >> 8U) : (
                                                   (2U 
                                                    == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__neorv32_ocd_enabled_neorv32_debug_dm_inst__DOT__n10261_o))
                                                    ? 
                                                   (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__neorv32_ocd_enabled_neorv32_debug_dm_inst__DOT__n10366_o 
                                                    >> 8U)
                                                    : 
                                                   ((1U 
                                                     == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__neorv32_ocd_enabled_neorv32_debug_dm_inst__DOT__n10261_o))
                                                     ? 
                                                    (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__neorv32_ocd_enabled_neorv32_debug_dm_inst__DOT__n10360_data 
                                                     >> 8U)
                                                     : 
                                                    ((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__neorv32_ocd_enabled_neorv32_debug_dm_inst__DOT__n10350_q) 
                                                     >> 1U)))))));
    bufp->fullCData(oldp+11639,((0x7fU & ((4U == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__neorv32_ocd_enabled_neorv32_debug_dm_inst__DOT__n10261_o))
                                           ? (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__neorv32_ocd_enabled_neorv32_debug_dm_inst__DOT__n10352_q 
                                              >> 9U)
                                           : ((2U == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__neorv32_ocd_enabled_neorv32_debug_dm_inst__DOT__n10261_o))
                                               ? (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__neorv32_ocd_enabled_neorv32_debug_dm_inst__DOT__n10366_o 
                                                  >> 9U)
                                               : ((1U 
                                                   == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__neorv32_ocd_enabled_neorv32_debug_dm_inst__DOT__n10261_o))
                                                   ? 
                                                  (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__neorv32_ocd_enabled_neorv32_debug_dm_inst__DOT__n10360_data 
                                                   >> 9U)
                                                   : 0U))))),7);
    bufp->fullBit(oldp+11640,((1U & ((4U == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__neorv32_ocd_enabled_neorv32_debug_dm_inst__DOT__n10261_o))
                                      ? (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__neorv32_ocd_enabled_neorv32_debug_dm_inst__DOT__n10352_q 
                                         >> 0x10U) : 
                                     ((2U == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__neorv32_ocd_enabled_neorv32_debug_dm_inst__DOT__n10261_o))
                                       ? (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__neorv32_ocd_enabled_neorv32_debug_dm_inst__DOT__n10366_o 
                                          >> 0x10U)
                                       : ((1U == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__neorv32_ocd_enabled_neorv32_debug_dm_inst__DOT__n10261_o))
                                           ? (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__neorv32_ocd_enabled_neorv32_debug_dm_inst__DOT__n10360_data 
                                              >> 0x10U)
                                           : (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__neorv32_ocd_enabled_neorv32_debug_dm_inst__DOT__n10159_o)))))));
    bufp->fullSData(oldp+11641,((0x7fffU & ((4U == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__neorv32_ocd_enabled_neorv32_debug_dm_inst__DOT__n10261_o))
                                             ? (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__neorv32_ocd_enabled_neorv32_debug_dm_inst__DOT__n10352_q 
                                                >> 0x11U)
                                             : ((2U 
                                                 == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__neorv32_ocd_enabled_neorv32_debug_dm_inst__DOT__n10261_o))
                                                 ? 
                                                (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__neorv32_ocd_enabled_neorv32_debug_dm_inst__DOT__n10366_o 
                                                 >> 0x11U)
                                                 : 
                                                ((1U 
                                                  == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__neorv32_ocd_enabled_neorv32_debug_dm_inst__DOT__n10261_o))
                                                  ? 
                                                 (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__neorv32_ocd_enabled_neorv32_debug_dm_inst__DOT__n10360_data 
                                                  >> 0x11U)
                                                  : 0U))))),15);
    bufp->fullIData(oldp+11642,((((~ (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_bus_io_switch_inst__DOT__neorv32_bus_reg_inst__DOT__n17997_q[2U] 
                                      >> 0xaU)) & (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__neorv32_ocd_enabled_neorv32_debug_dm_inst__DOT__accen))
                                  ? vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__neorv32_ocd_enabled_neorv32_debug_dm_inst__DOT__n10285_o
                                  : 0U)),32);
    bufp->fullQData(oldp+11643,((((QData)((IData)((
                                                   ((~ 
                                                     (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_bus_io_switch_inst__DOT__neorv32_bus_reg_inst__DOT__n17997_q[2U] 
                                                      >> 0xaU)) 
                                                    & (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__neorv32_ocd_enabled_neorv32_debug_dm_inst__DOT__accen))
                                                    ? vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__neorv32_ocd_enabled_neorv32_debug_dm_inst__DOT__n10285_o
                                                    : 0U))) 
                                  << 2U) | (QData)((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__neorv32_ocd_enabled_neorv32_debug_dm_inst__DOT__accen)))),34);
    bufp->fullBit(oldp+11645,((1U & (~ (IData)(vlSelf->neorv32_verilog_tb__DOT__nrst)))));
    bufp->fullCData(oldp+11646,((((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_wdt_enabled_neorv32_wdt_inst__DOT__n5111_o) 
                                  | (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__neorv32_ocd_enabled_neorv32_debug_dm_inst__DOT__n9491_o))
                                  ? 0U : (1U | (0xeU 
                                                & ((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__soc_generators_neorv32_sys_reset_inst__DOT__n1087_q) 
                                                   << 1U))))),4);
}
