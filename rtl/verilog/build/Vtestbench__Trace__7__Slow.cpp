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
    // Body
    bufp->fullBit(oldp+11576,((1U & ((4U == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_tracer_enabled_neorv32_tracer_inst__DOT__n8455_o))
                                      ? (IData)((vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_tracer_enabled_neorv32_tracer_inst__DOT__trace_buffer_inst__DOT__n18623_data 
                                                 >> 4U))
                                      : ((2U == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_tracer_enabled_neorv32_tracer_inst__DOT__n8455_o))
                                          ? (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_tracer_enabled_neorv32_tracer_inst__DOT__n8671_q 
                                             >> 3U)
                                          : ((1U == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_tracer_enabled_neorv32_tracer_inst__DOT__n8455_o))
                                              ? vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_tracer_enabled_neorv32_tracer_inst__DOT__n8673_o[0U]
                                              : (IData)(
                                                        (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_tracer_enabled_neorv32_tracer_inst__DOT__trace_buffer_inst__DOT__n18623_data 
                                                         >> 0x24U))))))));
    bufp->fullIData(oldp+11577,(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_tracer_enabled_neorv32_tracer_inst__DOT__n8491_o),32);
    bufp->fullIData(oldp+11578,(((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_tracer_enabled_neorv32_tracer_inst__DOT__n8437_o)
                                  ? vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_tracer_enabled_neorv32_tracer_inst__DOT__n8491_o
                                  : 0U)),32);
    bufp->fullQData(oldp+11579,((((QData)((IData)(((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_tracer_enabled_neorv32_tracer_inst__DOT__n8437_o)
                                                    ? vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_tracer_enabled_neorv32_tracer_inst__DOT__n8491_o
                                                    : 0U))) 
                                  << 2U) | (QData)((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_tracer_enabled_neorv32_tracer_inst__DOT__n8392_o)))),34);
    bufp->fullQData(oldp+11581,((((QData)((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_twi_enabled_neorv32_twi_inst__DOT__tx_fifo_inst__DOT__match)) 
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
                                                     | (((QData)((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_twi_enabled_neorv32_twi_inst__DOT__tx_fifo_inst__DOT__n18260_q)) 
                                                         << 0x23U) 
                                                        | (((QData)((IData)(
                                                                            (0x7ffU 
                                                                             & (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_bus_io_switch_inst__DOT__neorv32_bus_reg_inst__DOT__n17930_q[1U] 
                                                                                >> 5U)))) 
                                                            << 0x18U) 
                                                           | (QData)((IData)(
                                                                             (((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_twi_enabled_neorv32_twi_inst__DOT__rx_fifo_inst__DOT__n18162_q) 
                                                                               << 0xfU) 
                                                                              | (((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_twi_enabled_neorv32_twi_inst__DOT__n6116_o) 
                                                                                << 6U) 
                                                                                | ((0x20U 
                                                                                & (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_twi_enabled_neorv32_twi_inst__DOT__n6402_o 
                                                                                >> 0xbU)) 
                                                                                | (((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_twi_enabled_neorv32_twi_inst__DOT__n6119_o) 
                                                                                << 4U) 
                                                                                | (((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_twi_enabled_neorv32_twi_inst__DOT__n6098_o) 
                                                                                << 3U) 
                                                                                | ((4U 
                                                                                & (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_twi_enabled_neorv32_twi_inst__DOT__n6402_o 
                                                                                >> 0xfU)) 
                                                                                | (3U 
                                                                                & (- (IData)(
                                                                                (1U 
                                                                                & (~ (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_twi_enabled_neorv32_twi_inst__DOT__n6396_q))))))))))))))))))))),50);
    bufp->fullCData(oldp+11583,(((0x80U & vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_bus_io_switch_inst__DOT__neorv32_bus_reg_inst__DOT__n17930_q[0U])
                                  ? 0U : ((0x10U & 
                                           (((~ (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_twi_enabled_neorv32_twi_inst__DOT__tx_fifo_inst__DOT__match)) 
                                             << 4U) 
                                            | (0x3fff0U 
                                               & (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_twi_enabled_neorv32_twi_inst__DOT__n6402_o 
                                                  >> 0xeU)))) 
                                          | ((8U & 
                                              ((~ (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_twi_enabled_neorv32_twi_inst__DOT__rx_fifo_inst__DOT__match)) 
                                               << 3U)) 
                                             | ((4U 
                                                 & ((~ (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_twi_enabled_neorv32_twi_inst__DOT__tx_fifo_inst__DOT__match)) 
                                                    << 2U)) 
                                                | ((2U 
                                                    & (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_twi_enabled_neorv32_twi_inst__DOT__n6403_q)) 
                                                   | (1U 
                                                      & ((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_twi_enabled_neorv32_twi_inst__DOT__n6404_q) 
                                                         >> 1U)))))))),5);
    bufp->fullCData(oldp+11584,(((0x400U & vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_bus_io_switch_inst__DOT__neorv32_bus_reg_inst__DOT__n17930_q[2U])
                                  ? 0U : ((0x80U & 
                                           vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_bus_io_switch_inst__DOT__neorv32_bus_reg_inst__DOT__n17930_q[0U])
                                           ? 0U : (
                                                   (0x10U 
                                                    & (((~ (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_twi_enabled_neorv32_twi_inst__DOT__tx_fifo_inst__DOT__match)) 
                                                        << 4U) 
                                                       | (0x3fff0U 
                                                          & (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_twi_enabled_neorv32_twi_inst__DOT__n6402_o 
                                                             >> 0xeU)))) 
                                                   | ((8U 
                                                       & ((~ (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_twi_enabled_neorv32_twi_inst__DOT__rx_fifo_inst__DOT__match)) 
                                                          << 3U)) 
                                                      | ((4U 
                                                          & ((~ (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_twi_enabled_neorv32_twi_inst__DOT__tx_fifo_inst__DOT__match)) 
                                                             << 2U)) 
                                                         | ((2U 
                                                             & (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_twi_enabled_neorv32_twi_inst__DOT__n6403_q)) 
                                                            | (1U 
                                                               & ((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_twi_enabled_neorv32_twi_inst__DOT__n6404_q) 
                                                                  >> 1U))))))))),5);
    bufp->fullCData(oldp+11585,(((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_twi_enabled_neorv32_twi_inst__DOT__n6034_o)
                                  ? ((0x400U & vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_bus_io_switch_inst__DOT__neorv32_bus_reg_inst__DOT__n17930_q[2U])
                                      ? 0U : ((0x80U 
                                               & vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_bus_io_switch_inst__DOT__neorv32_bus_reg_inst__DOT__n17930_q[0U])
                                               ? 0U
                                               : ((0x10U 
                                                   & (((~ (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_twi_enabled_neorv32_twi_inst__DOT__tx_fifo_inst__DOT__match)) 
                                                       << 4U) 
                                                      | (0x3fff0U 
                                                         & (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_twi_enabled_neorv32_twi_inst__DOT__n6402_o 
                                                            >> 0xeU)))) 
                                                  | ((8U 
                                                      & ((~ (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_twi_enabled_neorv32_twi_inst__DOT__rx_fifo_inst__DOT__match)) 
                                                         << 3U)) 
                                                     | ((4U 
                                                         & ((~ (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_twi_enabled_neorv32_twi_inst__DOT__tx_fifo_inst__DOT__match)) 
                                                            << 2U)) 
                                                        | ((2U 
                                                            & (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_twi_enabled_neorv32_twi_inst__DOT__n6403_q)) 
                                                           | (1U 
                                                              & ((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_twi_enabled_neorv32_twi_inst__DOT__n6404_q) 
                                                                 >> 1U))))))))
                                  : 0U)),5);
    bufp->fullQData(oldp+11586,((((QData)((IData)(((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_twi_enabled_neorv32_twi_inst__DOT__n6034_o)
                                                    ? 
                                                   ((0x400U 
                                                     & vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_bus_io_switch_inst__DOT__neorv32_bus_reg_inst__DOT__n17930_q[2U])
                                                     ? 0U
                                                     : 
                                                    ((0x80U 
                                                      & vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_bus_io_switch_inst__DOT__neorv32_bus_reg_inst__DOT__n17930_q[0U])
                                                      ? 0U
                                                      : 
                                                     ((0x10U 
                                                       & (((~ (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_twi_enabled_neorv32_twi_inst__DOT__tx_fifo_inst__DOT__match)) 
                                                           << 4U) 
                                                          | (0x3fff0U 
                                                             & (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_twi_enabled_neorv32_twi_inst__DOT__n6402_o 
                                                                >> 0xeU)))) 
                                                      | ((8U 
                                                          & ((~ (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_twi_enabled_neorv32_twi_inst__DOT__rx_fifo_inst__DOT__match)) 
                                                             << 3U)) 
                                                         | ((4U 
                                                             & ((~ (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_twi_enabled_neorv32_twi_inst__DOT__tx_fifo_inst__DOT__match)) 
                                                                << 2U)) 
                                                            | ((2U 
                                                                & (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_twi_enabled_neorv32_twi_inst__DOT__n6403_q)) 
                                                               | (1U 
                                                                  & ((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_twi_enabled_neorv32_twi_inst__DOT__n6404_q) 
                                                                     >> 1U))))))))
                                                    : 0U))) 
                                  << 0x1dU) | (QData)((IData)(
                                                              ((((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_twi_enabled_neorv32_twi_inst__DOT__n6034_o)
                                                                  ? 
                                                                 ((0x400U 
                                                                   & vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_bus_io_switch_inst__DOT__neorv32_bus_reg_inst__DOT__n17930_q[2U])
                                                                   ? 0U
                                                                   : 
                                                                  ((0x80U 
                                                                    & vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_bus_io_switch_inst__DOT__neorv32_bus_reg_inst__DOT__n17930_q[0U])
                                                                    ? (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_twi_enabled_neorv32_twi_inst__DOT__rx_fifo_inst__DOT__n18162_q)
                                                                    : (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_twi_enabled_neorv32_twi_inst__DOT__n6396_q)))
                                                                  : 0U) 
                                                                << 2U) 
                                                               | (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_twi_enabled_neorv32_twi_inst__DOT__n6034_o)))))),34);
    bufp->fullCData(oldp+11588,(((1U & ((8U & (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_twi_enabled_neorv32_twi_inst__DOT__n6396_q))
                                         ? ((4U & (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_twi_enabled_neorv32_twi_inst__DOT__n6396_q))
                                             ? ((2U 
                                                 & (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_twi_enabled_neorv32_twi_inst__DOT__n6396_q))
                                                 ? 
                                                ((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__soc_generators_neorv32_sys_clock_inst__DOT__edge) 
                                                 >> 0xbU)
                                                 : 
                                                ((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__soc_generators_neorv32_sys_clock_inst__DOT__edge) 
                                                 >> 0xaU))
                                             : ((2U 
                                                 & (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_twi_enabled_neorv32_twi_inst__DOT__n6396_q))
                                                 ? 
                                                ((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__soc_generators_neorv32_sys_clock_inst__DOT__edge) 
                                                 >> 9U)
                                                 : 
                                                ((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__soc_generators_neorv32_sys_clock_inst__DOT__edge) 
                                                 >> 6U)))
                                         : ((4U & (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_twi_enabled_neorv32_twi_inst__DOT__n6396_q))
                                             ? ((2U 
                                                 & (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_twi_enabled_neorv32_twi_inst__DOT__n6396_q))
                                                 ? 
                                                ((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__soc_generators_neorv32_sys_clock_inst__DOT__edge) 
                                                 >> 5U)
                                                 : 
                                                ((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__soc_generators_neorv32_sys_clock_inst__DOT__edge) 
                                                 >> 2U))
                                             : ((2U 
                                                 & (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_twi_enabled_neorv32_twi_inst__DOT__n6396_q))
                                                 ? 
                                                ((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__soc_generators_neorv32_sys_clock_inst__DOT__edge) 
                                                 >> 1U)
                                                 : (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__soc_generators_neorv32_sys_clock_inst__DOT__edge)))))
                                  ? (((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_twi_enabled_neorv32_twi_inst__DOT__n6167_o) 
                                      << 4U) | ((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_twi_enabled_neorv32_twi_inst__DOT__n6167_o)
                                                 ? 0U
                                                 : 
                                                (0xfU 
                                                 & ((IData)(1U) 
                                                    + vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_twi_enabled_neorv32_twi_inst__DOT__n6400_o))))
                                  : (0xfU & vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_twi_enabled_neorv32_twi_inst__DOT__n6400_o))),5);
    bufp->fullCData(oldp+11589,(((1U & (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_twi_enabled_neorv32_twi_inst__DOT__n6396_q))
                                  ? ((1U & ((8U & (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_twi_enabled_neorv32_twi_inst__DOT__n6396_q))
                                             ? ((4U 
                                                 & (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_twi_enabled_neorv32_twi_inst__DOT__n6396_q))
                                                 ? 
                                                ((2U 
                                                  & (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_twi_enabled_neorv32_twi_inst__DOT__n6396_q))
                                                  ? 
                                                 ((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__soc_generators_neorv32_sys_clock_inst__DOT__edge) 
                                                  >> 0xbU)
                                                  : 
                                                 ((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__soc_generators_neorv32_sys_clock_inst__DOT__edge) 
                                                  >> 0xaU))
                                                 : 
                                                ((2U 
                                                  & (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_twi_enabled_neorv32_twi_inst__DOT__n6396_q))
                                                  ? 
                                                 ((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__soc_generators_neorv32_sys_clock_inst__DOT__edge) 
                                                  >> 9U)
                                                  : 
                                                 ((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__soc_generators_neorv32_sys_clock_inst__DOT__edge) 
                                                  >> 6U)))
                                             : ((4U 
                                                 & (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_twi_enabled_neorv32_twi_inst__DOT__n6396_q))
                                                 ? 
                                                ((2U 
                                                  & (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_twi_enabled_neorv32_twi_inst__DOT__n6396_q))
                                                  ? 
                                                 ((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__soc_generators_neorv32_sys_clock_inst__DOT__edge) 
                                                  >> 5U)
                                                  : 
                                                 ((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__soc_generators_neorv32_sys_clock_inst__DOT__edge) 
                                                  >> 2U))
                                                 : 
                                                ((2U 
                                                  & (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_twi_enabled_neorv32_twi_inst__DOT__n6396_q))
                                                  ? 
                                                 ((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__soc_generators_neorv32_sys_clock_inst__DOT__edge) 
                                                  >> 1U)
                                                  : (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__soc_generators_neorv32_sys_clock_inst__DOT__edge)))))
                                      ? (((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_twi_enabled_neorv32_twi_inst__DOT__n6167_o) 
                                          << 4U) | 
                                         ((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_twi_enabled_neorv32_twi_inst__DOT__n6167_o)
                                           ? 0U : (0xfU 
                                                   & ((IData)(1U) 
                                                      + vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_twi_enabled_neorv32_twi_inst__DOT__n6400_o))))
                                      : (0xfU & vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_twi_enabled_neorv32_twi_inst__DOT__n6400_o))
                                  : 0U)),5);
    bufp->fullBit(oldp+11590,((1U & ((~ (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_twi_enabled_neorv32_twi_inst__DOT__n6318_o)) 
                                     & ((0x4000U & vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_twi_enabled_neorv32_twi_inst__DOT__n6400_o)
                                         ? (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_twi_enabled_neorv32_twi_inst__DOT__n6402_o 
                                            >> 0xfU)
                                         : (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_twi_enabled_neorv32_twi_inst__DOT__n6405_q))))));
    bufp->fullCData(oldp+11591,(((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_twi_enabled_neorv32_twi_inst__DOT__n6318_o)
                                  ? 0U : (3U & vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_twi_enabled_neorv32_twi_inst__DOT__n6402_o))),2);
    bufp->fullIData(oldp+11592,((((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_uart0_enabled_neorv32_uart0_inst__DOT__rx_engine_fifo_inst__DOT__n18110_q) 
                                  << 0x14U) | ((0x80000U 
                                                & ((~ (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_uart0_enabled_neorv32_uart0_inst__DOT__rx_engine_fifo_inst__DOT__full)) 
                                                   << 0x13U)) 
                                               | (((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_uart0_enabled_neorv32_uart0_inst__DOT__rx_engine_fifo_inst__DOT__n18114_data) 
                                                   << 0xbU) 
                                                  | ((0x7f8U 
                                                      & (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_uart0_enabled_neorv32_uart0_inst__DOT__n5610_q 
                                                         << 1U)) 
                                                     | (((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_uart0_enabled_neorv32_uart0_inst__DOT__n5358_o) 
                                                         << 2U) 
                                                        | ((2U 
                                                            & (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_uart0_enabled_neorv32_uart0_inst__DOT__n5610_q 
                                                               >> 0x1bU)) 
                                                           | (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_uart0_enabled_neorv32_uart0_inst__DOT__n5330_o)))))))),21);
    bufp->fullSData(oldp+11593,(((0x80U & vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_bus_io_switch_inst__DOT__neorv32_bus_reg_inst__DOT__n17930_q[0U])
                                  ? (0x6600U | (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_uart0_enabled_neorv32_uart0_inst__DOT__rx_engine_fifo_inst__DOT__n18114_data))
                                  : (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_uart0_enabled_neorv32_uart0_inst__DOT__n5298_o))),16);
    bufp->fullIData(oldp+11594,(((((0x80U & vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_bus_io_switch_inst__DOT__neorv32_bus_reg_inst__DOT__n17930_q[0U])
                                    ? 0U : ((0xf0U 
                                             & (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_uart0_enabled_neorv32_uart0_inst__DOT__n5608_q 
                                                >> 0xcU)) 
                                            | ((8U 
                                                & ((~ (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_uart0_enabled_neorv32_uart0_inst__DOT__tx_engine_fifo_inst__DOT__full)) 
                                                   << 3U)) 
                                               | ((4U 
                                                   & ((~ (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_uart0_enabled_neorv32_uart0_inst__DOT__tx_engine_fifo_inst__DOT__n18110_q)) 
                                                      << 2U)) 
                                                  | (((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_uart0_enabled_neorv32_uart0_inst__DOT__rx_engine_fifo_inst__DOT__full) 
                                                      << 1U) 
                                                     | (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_uart0_enabled_neorv32_uart0_inst__DOT__rx_engine_fifo_inst__DOT__n18110_q)))))) 
                                  << 0x10U) | ((0x80U 
                                                & vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_bus_io_switch_inst__DOT__neorv32_bus_reg_inst__DOT__n17930_q[0U])
                                                ? (0x6600U 
                                                   | (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_uart0_enabled_neorv32_uart0_inst__DOT__rx_engine_fifo_inst__DOT__n18114_data))
                                                : (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_uart0_enabled_neorv32_uart0_inst__DOT__n5298_o)))),24);
    bufp->fullIData(oldp+11595,(((0x400U & vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_bus_io_switch_inst__DOT__neorv32_bus_reg_inst__DOT__n17930_q[2U])
                                  ? 0U : ((((0x80U 
                                             & vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_bus_io_switch_inst__DOT__neorv32_bus_reg_inst__DOT__n17930_q[0U])
                                             ? 0U : 
                                            ((0xf0U 
                                              & (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_uart0_enabled_neorv32_uart0_inst__DOT__n5608_q 
                                                 >> 0xcU)) 
                                             | ((8U 
                                                 & ((~ (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_uart0_enabled_neorv32_uart0_inst__DOT__tx_engine_fifo_inst__DOT__full)) 
                                                    << 3U)) 
                                                | ((4U 
                                                    & ((~ (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_uart0_enabled_neorv32_uart0_inst__DOT__tx_engine_fifo_inst__DOT__n18110_q)) 
                                                       << 2U)) 
                                                   | (((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_uart0_enabled_neorv32_uart0_inst__DOT__rx_engine_fifo_inst__DOT__full) 
                                                       << 1U) 
                                                      | (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_uart0_enabled_neorv32_uart0_inst__DOT__rx_engine_fifo_inst__DOT__n18110_q)))))) 
                                           << 0x10U) 
                                          | ((0x80U 
                                              & vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_bus_io_switch_inst__DOT__neorv32_bus_reg_inst__DOT__n17930_q[0U])
                                              ? (0x6600U 
                                                 | (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_uart0_enabled_neorv32_uart0_inst__DOT__rx_engine_fifo_inst__DOT__n18114_data))
                                              : (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_uart0_enabled_neorv32_uart0_inst__DOT__n5298_o))))),24);
    bufp->fullIData(oldp+11596,(((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_uart0_enabled_neorv32_uart0_inst__DOT__n5248_o)
                                  ? ((0x400U & vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_bus_io_switch_inst__DOT__neorv32_bus_reg_inst__DOT__n17930_q[2U])
                                      ? 0U : ((((0x80U 
                                                 & vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_bus_io_switch_inst__DOT__neorv32_bus_reg_inst__DOT__n17930_q[0U])
                                                 ? 0U
                                                 : 
                                                ((0xf0U 
                                                  & (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_uart0_enabled_neorv32_uart0_inst__DOT__n5608_q 
                                                     >> 0xcU)) 
                                                 | ((8U 
                                                     & ((~ (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_uart0_enabled_neorv32_uart0_inst__DOT__tx_engine_fifo_inst__DOT__full)) 
                                                        << 3U)) 
                                                    | ((4U 
                                                        & ((~ (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_uart0_enabled_neorv32_uart0_inst__DOT__tx_engine_fifo_inst__DOT__n18110_q)) 
                                                           << 2U)) 
                                                       | (((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_uart0_enabled_neorv32_uart0_inst__DOT__rx_engine_fifo_inst__DOT__full) 
                                                           << 1U) 
                                                          | (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_uart0_enabled_neorv32_uart0_inst__DOT__rx_engine_fifo_inst__DOT__n18110_q)))))) 
                                               << 0x10U) 
                                              | ((0x80U 
                                                  & vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_bus_io_switch_inst__DOT__neorv32_bus_reg_inst__DOT__n17930_q[0U])
                                                  ? 
                                                 (0x6600U 
                                                  | (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_uart0_enabled_neorv32_uart0_inst__DOT__rx_engine_fifo_inst__DOT__n18114_data))
                                                  : (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_uart0_enabled_neorv32_uart0_inst__DOT__n5298_o))))
                                  : 0U)),24);
    bufp->fullQData(oldp+11597,((((QData)((IData)(((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_uart0_enabled_neorv32_uart0_inst__DOT__n5248_o)
                                                    ? 
                                                   ((0x400U 
                                                     & vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_bus_io_switch_inst__DOT__neorv32_bus_reg_inst__DOT__n17930_q[2U])
                                                     ? 0U
                                                     : 
                                                    ((0x80U 
                                                      & vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_bus_io_switch_inst__DOT__neorv32_bus_reg_inst__DOT__n17930_q[0U])
                                                      ? 0U
                                                      : 
                                                     ((2U 
                                                       & ((vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_uart0_enabled_neorv32_uart0_inst__DOT__n5609_q 
                                                           | (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_uart0_enabled_neorv32_uart0_inst__DOT__tx_engine_fifo_inst__DOT__n18110_q)) 
                                                          << 1U)) 
                                                      | (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_uart0_enabled_neorv32_uart0_inst__DOT__n5611_q))))
                                                    : 0U))) 
                                  << 0x20U) | (QData)((IData)(
                                                              ((((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_uart0_enabled_neorv32_uart0_inst__DOT__n5248_o)
                                                                  ? 
                                                                 ((0x400U 
                                                                   & vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_bus_io_switch_inst__DOT__neorv32_bus_reg_inst__DOT__n17930_q[2U])
                                                                   ? 0U
                                                                   : 
                                                                  ((((0x80U 
                                                                      & vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_bus_io_switch_inst__DOT__neorv32_bus_reg_inst__DOT__n17930_q[0U])
                                                                      ? 0U
                                                                      : 
                                                                     ((0xf0U 
                                                                       & (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_uart0_enabled_neorv32_uart0_inst__DOT__n5608_q 
                                                                          >> 0xcU)) 
                                                                      | ((8U 
                                                                          & ((~ (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_uart0_enabled_neorv32_uart0_inst__DOT__tx_engine_fifo_inst__DOT__full)) 
                                                                             << 3U)) 
                                                                         | ((4U 
                                                                             & ((~ (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_uart0_enabled_neorv32_uart0_inst__DOT__tx_engine_fifo_inst__DOT__n18110_q)) 
                                                                                << 2U)) 
                                                                            | (((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_uart0_enabled_neorv32_uart0_inst__DOT__rx_engine_fifo_inst__DOT__full) 
                                                                                << 1U) 
                                                                               | (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_uart0_enabled_neorv32_uart0_inst__DOT__rx_engine_fifo_inst__DOT__n18110_q)))))) 
                                                                    << 0x10U) 
                                                                   | ((0x80U 
                                                                       & vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_bus_io_switch_inst__DOT__neorv32_bus_reg_inst__DOT__n17930_q[0U])
                                                                       ? 
                                                                      (0x6600U 
                                                                       | (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_uart0_enabled_neorv32_uart0_inst__DOT__rx_engine_fifo_inst__DOT__n18114_data))
                                                                       : (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_uart0_enabled_neorv32_uart0_inst__DOT__n5298_o))))
                                                                  : 0U) 
                                                                << 2U) 
                                                               | (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_uart0_enabled_neorv32_uart0_inst__DOT__n5248_o)))))),34);
    bufp->fullIData(oldp+11599,(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_uart0_enabled_neorv32_uart0_inst__DOT__n5493_o),29);
    bufp->fullBit(oldp+11600,(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__neorv32_ocd_enabled_neorv32_debug_dm_inst__DOT__authenticator_enabled_neorv32_debug_auth_inst__DOT__n18629_o));
    bufp->fullCData(oldp+11601,(((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_wdt_enabled_neorv32_wdt_inst__DOT__n5068_q)
                                  ? 2U : ((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_wdt_enabled_neorv32_wdt_inst__DOT__n5069_q)
                                           ? 3U : (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_wdt_enabled_neorv32_wdt_inst__DOT__n5067_q)))),2);
    bufp->fullCData(oldp+11602,(((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__neorv32_ocd_enabled_neorv32_debug_dm_inst__DOT__n9425_o)
                                  ? 1U : ((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_wdt_enabled_neorv32_wdt_inst__DOT__n5068_q)
                                           ? 2U : ((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_wdt_enabled_neorv32_wdt_inst__DOT__n5069_q)
                                                    ? 3U
                                                    : (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_wdt_enabled_neorv32_wdt_inst__DOT__n5067_q))))),2);
    bufp->fullBit(oldp+11603,((1U & ((2U == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__neorv32_bus_gateway_inst__DOT__n3858_o))
                                      ? (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__neorv32_bus_gateway_inst__DOT__n3878_o 
                                         >> 3U) : (
                                                   (1U 
                                                    == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__neorv32_bus_gateway_inst__DOT__n3858_o))
                                                    ? 
                                                   ((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__neorv32_bus_gateway_inst__DOT__n3874_o) 
                                                    >> 3U)
                                                    : 
                                                   (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__neorv32_bus_gateway_inst__DOT__n3878_o 
                                                    >> 3U))))));
    bufp->fullSData(oldp+11604,(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__neorv32_bus_gateway_inst__DOT__n3866_o),16);
    bufp->fullIData(oldp+11605,(((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__neorv32_ocd_enabled_neorv32_debug_dm_inst__DOT__n9435_o)
                                  ? (IData)((vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__neorv32_ocd_enabled_neorv32_debug_dtm_inst__DOT__n9222_q 
                                             >> 9U))
                                  : ((IData)(((0x1000U 
                                               == (0x1800U 
                                                   & vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_bus_io_switch_inst__DOT__neorv32_bus_reg_inst__DOT__n17930_q[0U])) 
                                              & (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__neorv32_ocd_enabled_neorv32_debug_dm_inst__DOT__wren)))
                                      ? ((((0x100U 
                                            & vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_bus_io_switch_inst__DOT__neorv32_bus_reg_inst__DOT__n17930_q[2U])
                                            ? ((vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_bus_io_switch_inst__DOT__neorv32_bus_reg_inst__DOT__n17930_q[2U] 
                                                << 3U) 
                                               | (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_bus_io_switch_inst__DOT__neorv32_bus_reg_inst__DOT__n17930_q[1U] 
                                                  >> 0x1dU))
                                            : (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__neorv32_ocd_enabled_neorv32_debug_dm_inst__DOT__n10286_q 
                                               >> 0x18U)) 
                                          << 0x18U) 
                                         | ((0xff0000U 
                                             & (((0x80U 
                                                  & vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_bus_io_switch_inst__DOT__neorv32_bus_reg_inst__DOT__n17930_q[2U])
                                                  ? 
                                                 ((vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_bus_io_switch_inst__DOT__neorv32_bus_reg_inst__DOT__n17930_q[1U] 
                                                   << 0xbU) 
                                                  | (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_bus_io_switch_inst__DOT__neorv32_bus_reg_inst__DOT__n17930_q[1U] 
                                                     >> 0x15U))
                                                  : 
                                                 (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__neorv32_ocd_enabled_neorv32_debug_dm_inst__DOT__n10286_q 
                                                  >> 0x10U)) 
                                                << 0x10U)) 
                                            | ((0xff00U 
                                                & (((0x40U 
                                                     & vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_bus_io_switch_inst__DOT__neorv32_bus_reg_inst__DOT__n17930_q[2U])
                                                     ? 
                                                    ((vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_bus_io_switch_inst__DOT__neorv32_bus_reg_inst__DOT__n17930_q[1U] 
                                                      << 0x13U) 
                                                     | (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_bus_io_switch_inst__DOT__neorv32_bus_reg_inst__DOT__n17930_q[1U] 
                                                        >> 0xdU))
                                                     : 
                                                    (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__neorv32_ocd_enabled_neorv32_debug_dm_inst__DOT__n10286_q 
                                                     >> 8U)) 
                                                   << 8U)) 
                                               | (0xffU 
                                                  & ((0x20U 
                                                      & vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_bus_io_switch_inst__DOT__neorv32_bus_reg_inst__DOT__n17930_q[2U])
                                                      ? 
                                                     ((vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_bus_io_switch_inst__DOT__neorv32_bus_reg_inst__DOT__n17930_q[1U] 
                                                       << 0x1bU) 
                                                      | (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_bus_io_switch_inst__DOT__neorv32_bus_reg_inst__DOT__n17930_q[1U] 
                                                         >> 5U))
                                                      : vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__neorv32_ocd_enabled_neorv32_debug_dm_inst__DOT__n10286_q)))))
                                      : vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__neorv32_ocd_enabled_neorv32_debug_dm_inst__DOT__n10286_q))),32);
    bufp->fullCData(oldp+11606,((0xffU & ((4U == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__neorv32_ocd_enabled_neorv32_debug_dm_inst__DOT__n10195_o))
                                           ? vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__neorv32_ocd_enabled_neorv32_debug_dm_inst__DOT__n10286_q
                                           : ((2U == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__neorv32_ocd_enabled_neorv32_debug_dm_inst__DOT__n10195_o))
                                               ? vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__neorv32_ocd_enabled_neorv32_debug_dm_inst__DOT__n10300_o
                                               : ((1U 
                                                   == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__neorv32_ocd_enabled_neorv32_debug_dm_inst__DOT__n10195_o))
                                                   ? vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__neorv32_ocd_enabled_neorv32_debug_dm_inst__DOT__n10294_data
                                                   : 0U))))),8);
    bufp->fullBit(oldp+11607,((1U & ((4U == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__neorv32_ocd_enabled_neorv32_debug_dm_inst__DOT__n10195_o))
                                      ? (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__neorv32_ocd_enabled_neorv32_debug_dm_inst__DOT__n10286_q 
                                         >> 8U) : (
                                                   (2U 
                                                    == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__neorv32_ocd_enabled_neorv32_debug_dm_inst__DOT__n10195_o))
                                                    ? 
                                                   (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__neorv32_ocd_enabled_neorv32_debug_dm_inst__DOT__n10300_o 
                                                    >> 8U)
                                                    : 
                                                   ((1U 
                                                     == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__neorv32_ocd_enabled_neorv32_debug_dm_inst__DOT__n10195_o))
                                                     ? 
                                                    (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__neorv32_ocd_enabled_neorv32_debug_dm_inst__DOT__n10294_data 
                                                     >> 8U)
                                                     : 
                                                    ((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__neorv32_ocd_enabled_neorv32_debug_dm_inst__DOT__n10284_q) 
                                                     >> 1U)))))));
    bufp->fullCData(oldp+11608,((0x7fU & ((4U == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__neorv32_ocd_enabled_neorv32_debug_dm_inst__DOT__n10195_o))
                                           ? (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__neorv32_ocd_enabled_neorv32_debug_dm_inst__DOT__n10286_q 
                                              >> 9U)
                                           : ((2U == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__neorv32_ocd_enabled_neorv32_debug_dm_inst__DOT__n10195_o))
                                               ? (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__neorv32_ocd_enabled_neorv32_debug_dm_inst__DOT__n10300_o 
                                                  >> 9U)
                                               : ((1U 
                                                   == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__neorv32_ocd_enabled_neorv32_debug_dm_inst__DOT__n10195_o))
                                                   ? 
                                                  (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__neorv32_ocd_enabled_neorv32_debug_dm_inst__DOT__n10294_data 
                                                   >> 9U)
                                                   : 0U))))),7);
    bufp->fullBit(oldp+11609,((1U & ((4U == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__neorv32_ocd_enabled_neorv32_debug_dm_inst__DOT__n10195_o))
                                      ? (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__neorv32_ocd_enabled_neorv32_debug_dm_inst__DOT__n10286_q 
                                         >> 0x10U) : 
                                     ((2U == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__neorv32_ocd_enabled_neorv32_debug_dm_inst__DOT__n10195_o))
                                       ? (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__neorv32_ocd_enabled_neorv32_debug_dm_inst__DOT__n10300_o 
                                          >> 0x10U)
                                       : ((1U == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__neorv32_ocd_enabled_neorv32_debug_dm_inst__DOT__n10195_o))
                                           ? (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__neorv32_ocd_enabled_neorv32_debug_dm_inst__DOT__n10294_data 
                                              >> 0x10U)
                                           : (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__neorv32_ocd_enabled_neorv32_debug_dm_inst__DOT__n10093_o)))))));
    bufp->fullSData(oldp+11610,((0x7fffU & ((4U == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__neorv32_ocd_enabled_neorv32_debug_dm_inst__DOT__n10195_o))
                                             ? (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__neorv32_ocd_enabled_neorv32_debug_dm_inst__DOT__n10286_q 
                                                >> 0x11U)
                                             : ((2U 
                                                 == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__neorv32_ocd_enabled_neorv32_debug_dm_inst__DOT__n10195_o))
                                                 ? 
                                                (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__neorv32_ocd_enabled_neorv32_debug_dm_inst__DOT__n10300_o 
                                                 >> 0x11U)
                                                 : 
                                                ((1U 
                                                  == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__neorv32_ocd_enabled_neorv32_debug_dm_inst__DOT__n10195_o))
                                                  ? 
                                                 (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__neorv32_ocd_enabled_neorv32_debug_dm_inst__DOT__n10294_data 
                                                  >> 0x11U)
                                                  : 0U))))),15);
    bufp->fullIData(oldp+11611,((((~ (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_bus_io_switch_inst__DOT__neorv32_bus_reg_inst__DOT__n17930_q[2U] 
                                      >> 0xaU)) & (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__neorv32_ocd_enabled_neorv32_debug_dm_inst__DOT__accen))
                                  ? vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__neorv32_ocd_enabled_neorv32_debug_dm_inst__DOT__n10219_o
                                  : 0U)),32);
    bufp->fullQData(oldp+11612,((((QData)((IData)((
                                                   ((~ 
                                                     (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_bus_io_switch_inst__DOT__neorv32_bus_reg_inst__DOT__n17930_q[2U] 
                                                      >> 0xaU)) 
                                                    & (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__neorv32_ocd_enabled_neorv32_debug_dm_inst__DOT__accen))
                                                    ? vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__neorv32_ocd_enabled_neorv32_debug_dm_inst__DOT__n10219_o
                                                    : 0U))) 
                                  << 2U) | (QData)((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__neorv32_ocd_enabled_neorv32_debug_dm_inst__DOT__accen)))),34);
    bufp->fullBit(oldp+11614,((1U & (~ (IData)(vlSelf->neorv32_verilog_tb__DOT__nrst)))));
    bufp->fullCData(oldp+11615,((((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_wdt_enabled_neorv32_wdt_inst__DOT__n5045_o) 
                                  | (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__neorv32_ocd_enabled_neorv32_debug_dm_inst__DOT__n9425_o))
                                  ? 0U : (1U | (0xeU 
                                                & ((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__soc_generators_neorv32_sys_reset_inst__DOT__n1073_q) 
                                                   << 1U))))),4);
}
