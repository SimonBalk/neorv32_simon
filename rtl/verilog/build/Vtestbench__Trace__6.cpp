// Verilated -*- C++ -*-
// DESCRIPTION: Verilator output: Tracing implementation internals
#include "verilated_fst_c.h"
#include "Vtestbench__Syms.h"


void Vtestbench___024root__trace_chg_0_sub_6(Vtestbench___024root* vlSelf, VerilatedFst::Buffer* bufp) {
    if (false && vlSelf) {}  // Prevent unused
    Vtestbench__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtestbench___024root__trace_chg_0_sub_6\n"); );
    // Init
    uint32_t* const oldp VL_ATTR_UNUSED = bufp->oldp(vlSymsp->__Vm_baseCode + 11576);
    // Body
    bufp->chgBit(oldp+0,((1U & ((4U == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_tracer_enabled_neorv32_tracer_inst__DOT__n8455_o))
                                 ? (IData)((vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_tracer_enabled_neorv32_tracer_inst__DOT__trace_buffer_inst__DOT__n18623_data 
                                            >> 4U))
                                 : ((2U == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_tracer_enabled_neorv32_tracer_inst__DOT__n8455_o))
                                     ? (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_tracer_enabled_neorv32_tracer_inst__DOT__n8671_q 
                                        >> 3U) : ((1U 
                                                   == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_tracer_enabled_neorv32_tracer_inst__DOT__n8455_o))
                                                   ? 
                                                  vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_tracer_enabled_neorv32_tracer_inst__DOT__n8673_o[0U]
                                                   : (IData)(
                                                             (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_tracer_enabled_neorv32_tracer_inst__DOT__trace_buffer_inst__DOT__n18623_data 
                                                              >> 0x24U))))))));
    bufp->chgIData(oldp+1,(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_tracer_enabled_neorv32_tracer_inst__DOT__n8491_o),32);
    bufp->chgIData(oldp+2,(((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_tracer_enabled_neorv32_tracer_inst__DOT__n8437_o)
                             ? vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_tracer_enabled_neorv32_tracer_inst__DOT__n8491_o
                             : 0U)),32);
    bufp->chgQData(oldp+3,((((QData)((IData)(((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_tracer_enabled_neorv32_tracer_inst__DOT__n8437_o)
                                               ? vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_tracer_enabled_neorv32_tracer_inst__DOT__n8491_o
                                               : 0U))) 
                             << 2U) | (QData)((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_tracer_enabled_neorv32_tracer_inst__DOT__n8392_o)))),34);
    bufp->chgQData(oldp+5,((((QData)((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_twi_enabled_neorv32_twi_inst__DOT__tx_fifo_inst__DOT__match)) 
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
    bufp->chgCData(oldp+7,(((0x80U & vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_bus_io_switch_inst__DOT__neorv32_bus_reg_inst__DOT__n17930_q[0U])
                             ? 0U : ((0x10U & (((~ (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_twi_enabled_neorv32_twi_inst__DOT__tx_fifo_inst__DOT__match)) 
                                                << 4U) 
                                               | (0x3fff0U 
                                                  & (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_twi_enabled_neorv32_twi_inst__DOT__n6402_o 
                                                     >> 0xeU)))) 
                                     | ((8U & ((~ (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_twi_enabled_neorv32_twi_inst__DOT__rx_fifo_inst__DOT__match)) 
                                               << 3U)) 
                                        | ((4U & ((~ (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_twi_enabled_neorv32_twi_inst__DOT__tx_fifo_inst__DOT__match)) 
                                                  << 2U)) 
                                           | ((2U & (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_twi_enabled_neorv32_twi_inst__DOT__n6403_q)) 
                                              | (1U 
                                                 & ((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_twi_enabled_neorv32_twi_inst__DOT__n6404_q) 
                                                    >> 1U)))))))),5);
    bufp->chgCData(oldp+8,(((0x400U & vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_bus_io_switch_inst__DOT__neorv32_bus_reg_inst__DOT__n17930_q[2U])
                             ? 0U : ((0x80U & vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_bus_io_switch_inst__DOT__neorv32_bus_reg_inst__DOT__n17930_q[0U])
                                      ? 0U : ((0x10U 
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
    bufp->chgCData(oldp+9,(((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_twi_enabled_neorv32_twi_inst__DOT__n6034_o)
                             ? ((0x400U & vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_bus_io_switch_inst__DOT__neorv32_bus_reg_inst__DOT__n17930_q[2U])
                                 ? 0U : ((0x80U & vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_bus_io_switch_inst__DOT__neorv32_bus_reg_inst__DOT__n17930_q[0U])
                                          ? 0U : ((0x10U 
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
    bufp->chgQData(oldp+10,((((QData)((IData)(((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_twi_enabled_neorv32_twi_inst__DOT__n6034_o)
                                                ? (
                                                   (0x400U 
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
    bufp->chgCData(oldp+12,(((1U & ((8U & (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_twi_enabled_neorv32_twi_inst__DOT__n6396_q))
                                     ? ((4U & (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_twi_enabled_neorv32_twi_inst__DOT__n6396_q))
                                         ? ((2U & (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_twi_enabled_neorv32_twi_inst__DOT__n6396_q))
                                             ? ((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__soc_generators_neorv32_sys_clock_inst__DOT__edge) 
                                                >> 0xbU)
                                             : ((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__soc_generators_neorv32_sys_clock_inst__DOT__edge) 
                                                >> 0xaU))
                                         : ((2U & (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_twi_enabled_neorv32_twi_inst__DOT__n6396_q))
                                             ? ((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__soc_generators_neorv32_sys_clock_inst__DOT__edge) 
                                                >> 9U)
                                             : ((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__soc_generators_neorv32_sys_clock_inst__DOT__edge) 
                                                >> 6U)))
                                     : ((4U & (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_twi_enabled_neorv32_twi_inst__DOT__n6396_q))
                                         ? ((2U & (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_twi_enabled_neorv32_twi_inst__DOT__n6396_q))
                                             ? ((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__soc_generators_neorv32_sys_clock_inst__DOT__edge) 
                                                >> 5U)
                                             : ((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__soc_generators_neorv32_sys_clock_inst__DOT__edge) 
                                                >> 2U))
                                         : ((2U & (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_twi_enabled_neorv32_twi_inst__DOT__n6396_q))
                                             ? ((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__soc_generators_neorv32_sys_clock_inst__DOT__edge) 
                                                >> 1U)
                                             : (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__soc_generators_neorv32_sys_clock_inst__DOT__edge)))))
                              ? (((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_twi_enabled_neorv32_twi_inst__DOT__n6167_o) 
                                  << 4U) | ((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_twi_enabled_neorv32_twi_inst__DOT__n6167_o)
                                             ? 0U : 
                                            (0xfU & 
                                             ((IData)(1U) 
                                              + vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_twi_enabled_neorv32_twi_inst__DOT__n6400_o))))
                              : (0xfU & vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_twi_enabled_neorv32_twi_inst__DOT__n6400_o))),5);
    bufp->chgCData(oldp+13,(((1U & (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_twi_enabled_neorv32_twi_inst__DOT__n6396_q))
                              ? ((1U & ((8U & (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_twi_enabled_neorv32_twi_inst__DOT__n6396_q))
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
                                  : (0xfU & vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_twi_enabled_neorv32_twi_inst__DOT__n6400_o))
                              : 0U)),5);
    bufp->chgBit(oldp+14,((1U & ((~ (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_twi_enabled_neorv32_twi_inst__DOT__n6318_o)) 
                                 & ((0x4000U & vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_twi_enabled_neorv32_twi_inst__DOT__n6400_o)
                                     ? (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_twi_enabled_neorv32_twi_inst__DOT__n6402_o 
                                        >> 0xfU) : (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_twi_enabled_neorv32_twi_inst__DOT__n6405_q))))));
    bufp->chgCData(oldp+15,(((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_twi_enabled_neorv32_twi_inst__DOT__n6318_o)
                              ? 0U : (3U & vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_twi_enabled_neorv32_twi_inst__DOT__n6402_o))),2);
    bufp->chgIData(oldp+16,((((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_uart0_enabled_neorv32_uart0_inst__DOT__rx_engine_fifo_inst__DOT__n18110_q) 
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
    bufp->chgSData(oldp+17,(((0x80U & vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_bus_io_switch_inst__DOT__neorv32_bus_reg_inst__DOT__n17930_q[0U])
                              ? (0x6600U | (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_uart0_enabled_neorv32_uart0_inst__DOT__rx_engine_fifo_inst__DOT__n18114_data))
                              : (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_uart0_enabled_neorv32_uart0_inst__DOT__n5298_o))),16);
    bufp->chgIData(oldp+18,(((((0x80U & vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_bus_io_switch_inst__DOT__neorv32_bus_reg_inst__DOT__n17930_q[0U])
                                ? 0U : ((0xf0U & (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_uart0_enabled_neorv32_uart0_inst__DOT__n5608_q 
                                                  >> 0xcU)) 
                                        | ((8U & ((~ (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_uart0_enabled_neorv32_uart0_inst__DOT__tx_engine_fifo_inst__DOT__full)) 
                                                  << 3U)) 
                                           | ((4U & 
                                               ((~ (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_uart0_enabled_neorv32_uart0_inst__DOT__tx_engine_fifo_inst__DOT__n18110_q)) 
                                                << 2U)) 
                                              | (((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_uart0_enabled_neorv32_uart0_inst__DOT__rx_engine_fifo_inst__DOT__full) 
                                                  << 1U) 
                                                 | (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_uart0_enabled_neorv32_uart0_inst__DOT__rx_engine_fifo_inst__DOT__n18110_q)))))) 
                              << 0x10U) | ((0x80U & 
                                            vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_bus_io_switch_inst__DOT__neorv32_bus_reg_inst__DOT__n17930_q[0U])
                                            ? (0x6600U 
                                               | (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_uart0_enabled_neorv32_uart0_inst__DOT__rx_engine_fifo_inst__DOT__n18114_data))
                                            : (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_uart0_enabled_neorv32_uart0_inst__DOT__n5298_o)))),24);
    bufp->chgIData(oldp+19,(((0x400U & vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_bus_io_switch_inst__DOT__neorv32_bus_reg_inst__DOT__n17930_q[2U])
                              ? 0U : ((((0x80U & vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_bus_io_switch_inst__DOT__neorv32_bus_reg_inst__DOT__n17930_q[0U])
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
                                       << 0x10U) | 
                                      ((0x80U & vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_bus_io_switch_inst__DOT__neorv32_bus_reg_inst__DOT__n17930_q[0U])
                                        ? (0x6600U 
                                           | (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_uart0_enabled_neorv32_uart0_inst__DOT__rx_engine_fifo_inst__DOT__n18114_data))
                                        : (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_uart0_enabled_neorv32_uart0_inst__DOT__n5298_o))))),24);
    bufp->chgIData(oldp+20,(((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_uart0_enabled_neorv32_uart0_inst__DOT__n5248_o)
                              ? ((0x400U & vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_bus_io_switch_inst__DOT__neorv32_bus_reg_inst__DOT__n17930_q[2U])
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
                                              : (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_uart0_enabled_neorv32_uart0_inst__DOT__n5298_o))))
                              : 0U)),24);
    bufp->chgQData(oldp+21,((((QData)((IData)(((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_uart0_enabled_neorv32_uart0_inst__DOT__n5248_o)
                                                ? (
                                                   (0x400U 
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
    bufp->chgIData(oldp+23,(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_uart0_enabled_neorv32_uart0_inst__DOT__n5493_o),29);
    bufp->chgBit(oldp+24,(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__neorv32_ocd_enabled_neorv32_debug_dm_inst__DOT__authenticator_enabled_neorv32_debug_auth_inst__DOT__n18629_o));
    bufp->chgCData(oldp+25,(((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_wdt_enabled_neorv32_wdt_inst__DOT__n5068_q)
                              ? 2U : ((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_wdt_enabled_neorv32_wdt_inst__DOT__n5069_q)
                                       ? 3U : (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_wdt_enabled_neorv32_wdt_inst__DOT__n5067_q)))),2);
    bufp->chgCData(oldp+26,(((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__neorv32_ocd_enabled_neorv32_debug_dm_inst__DOT__n9425_o)
                              ? 1U : ((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_wdt_enabled_neorv32_wdt_inst__DOT__n5068_q)
                                       ? 2U : ((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_wdt_enabled_neorv32_wdt_inst__DOT__n5069_q)
                                                ? 3U
                                                : (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_wdt_enabled_neorv32_wdt_inst__DOT__n5067_q))))),2);
    bufp->chgBit(oldp+27,((1U & ((2U == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__neorv32_bus_gateway_inst__DOT__n3858_o))
                                  ? (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__neorv32_bus_gateway_inst__DOT__n3878_o 
                                     >> 3U) : ((1U 
                                                == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__neorv32_bus_gateway_inst__DOT__n3858_o))
                                                ? ((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__neorv32_bus_gateway_inst__DOT__n3874_o) 
                                                   >> 3U)
                                                : (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__neorv32_bus_gateway_inst__DOT__n3878_o 
                                                   >> 3U))))));
    bufp->chgSData(oldp+28,(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__neorv32_bus_gateway_inst__DOT__n3866_o),16);
    bufp->chgIData(oldp+29,(((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__neorv32_ocd_enabled_neorv32_debug_dm_inst__DOT__n9435_o)
                              ? (IData)((vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__neorv32_ocd_enabled_neorv32_debug_dtm_inst__DOT__n9222_q 
                                         >> 9U)) : 
                             ((IData)(((0x1000U == 
                                        (0x1800U & 
                                         vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_bus_io_switch_inst__DOT__neorv32_bus_reg_inst__DOT__n17930_q[0U])) 
                                       & (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__neorv32_ocd_enabled_neorv32_debug_dm_inst__DOT__wren)))
                               ? ((((0x100U & vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_bus_io_switch_inst__DOT__neorv32_bus_reg_inst__DOT__n17930_q[2U])
                                     ? ((vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_bus_io_switch_inst__DOT__neorv32_bus_reg_inst__DOT__n17930_q[2U] 
                                         << 3U) | (
                                                   vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_bus_io_switch_inst__DOT__neorv32_bus_reg_inst__DOT__n17930_q[1U] 
                                                   >> 0x1dU))
                                     : (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__neorv32_ocd_enabled_neorv32_debug_dm_inst__DOT__n10286_q 
                                        >> 0x18U)) 
                                   << 0x18U) | ((0xff0000U 
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
    bufp->chgCData(oldp+30,((0xffU & ((4U == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__neorv32_ocd_enabled_neorv32_debug_dm_inst__DOT__n10195_o))
                                       ? vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__neorv32_ocd_enabled_neorv32_debug_dm_inst__DOT__n10286_q
                                       : ((2U == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__neorv32_ocd_enabled_neorv32_debug_dm_inst__DOT__n10195_o))
                                           ? vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__neorv32_ocd_enabled_neorv32_debug_dm_inst__DOT__n10300_o
                                           : ((1U == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__neorv32_ocd_enabled_neorv32_debug_dm_inst__DOT__n10195_o))
                                               ? vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__neorv32_ocd_enabled_neorv32_debug_dm_inst__DOT__n10294_data
                                               : 0U))))),8);
    bufp->chgBit(oldp+31,((1U & ((4U == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__neorv32_ocd_enabled_neorv32_debug_dm_inst__DOT__n10195_o))
                                  ? (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__neorv32_ocd_enabled_neorv32_debug_dm_inst__DOT__n10286_q 
                                     >> 8U) : ((2U 
                                                == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__neorv32_ocd_enabled_neorv32_debug_dm_inst__DOT__n10195_o))
                                                ? (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__neorv32_ocd_enabled_neorv32_debug_dm_inst__DOT__n10300_o 
                                                   >> 8U)
                                                : (
                                                   (1U 
                                                    == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__neorv32_ocd_enabled_neorv32_debug_dm_inst__DOT__n10195_o))
                                                    ? 
                                                   (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__neorv32_ocd_enabled_neorv32_debug_dm_inst__DOT__n10294_data 
                                                    >> 8U)
                                                    : 
                                                   ((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__neorv32_ocd_enabled_neorv32_debug_dm_inst__DOT__n10284_q) 
                                                    >> 1U)))))));
    bufp->chgCData(oldp+32,((0x7fU & ((4U == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__neorv32_ocd_enabled_neorv32_debug_dm_inst__DOT__n10195_o))
                                       ? (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__neorv32_ocd_enabled_neorv32_debug_dm_inst__DOT__n10286_q 
                                          >> 9U) : 
                                      ((2U == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__neorv32_ocd_enabled_neorv32_debug_dm_inst__DOT__n10195_o))
                                        ? (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__neorv32_ocd_enabled_neorv32_debug_dm_inst__DOT__n10300_o 
                                           >> 9U) : 
                                       ((1U == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__neorv32_ocd_enabled_neorv32_debug_dm_inst__DOT__n10195_o))
                                         ? (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__neorv32_ocd_enabled_neorv32_debug_dm_inst__DOT__n10294_data 
                                            >> 9U) : 0U))))),7);
    bufp->chgBit(oldp+33,((1U & ((4U == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__neorv32_ocd_enabled_neorv32_debug_dm_inst__DOT__n10195_o))
                                  ? (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__neorv32_ocd_enabled_neorv32_debug_dm_inst__DOT__n10286_q 
                                     >> 0x10U) : ((2U 
                                                   == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__neorv32_ocd_enabled_neorv32_debug_dm_inst__DOT__n10195_o))
                                                   ? 
                                                  (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__neorv32_ocd_enabled_neorv32_debug_dm_inst__DOT__n10300_o 
                                                   >> 0x10U)
                                                   : 
                                                  ((1U 
                                                    == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__neorv32_ocd_enabled_neorv32_debug_dm_inst__DOT__n10195_o))
                                                    ? 
                                                   (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__neorv32_ocd_enabled_neorv32_debug_dm_inst__DOT__n10294_data 
                                                    >> 0x10U)
                                                    : (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__neorv32_ocd_enabled_neorv32_debug_dm_inst__DOT__n10093_o)))))));
    bufp->chgSData(oldp+34,((0x7fffU & ((4U == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__neorv32_ocd_enabled_neorv32_debug_dm_inst__DOT__n10195_o))
                                         ? (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__neorv32_ocd_enabled_neorv32_debug_dm_inst__DOT__n10286_q 
                                            >> 0x11U)
                                         : ((2U == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__neorv32_ocd_enabled_neorv32_debug_dm_inst__DOT__n10195_o))
                                             ? (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__neorv32_ocd_enabled_neorv32_debug_dm_inst__DOT__n10300_o 
                                                >> 0x11U)
                                             : ((1U 
                                                 == (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__neorv32_ocd_enabled_neorv32_debug_dm_inst__DOT__n10195_o))
                                                 ? 
                                                (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__neorv32_ocd_enabled_neorv32_debug_dm_inst__DOT__n10294_data 
                                                 >> 0x11U)
                                                 : 0U))))),15);
    bufp->chgIData(oldp+35,((((~ (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_bus_io_switch_inst__DOT__neorv32_bus_reg_inst__DOT__n17930_q[2U] 
                                  >> 0xaU)) & (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__neorv32_ocd_enabled_neorv32_debug_dm_inst__DOT__accen))
                              ? vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__neorv32_ocd_enabled_neorv32_debug_dm_inst__DOT__n10219_o
                              : 0U)),32);
    bufp->chgQData(oldp+36,((((QData)((IData)((((~ 
                                                 (vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_bus_io_switch_inst__DOT__neorv32_bus_reg_inst__DOT__n17930_q[2U] 
                                                  >> 0xaU)) 
                                                & (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__neorv32_ocd_enabled_neorv32_debug_dm_inst__DOT__accen))
                                                ? vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__neorv32_ocd_enabled_neorv32_debug_dm_inst__DOT__n10219_o
                                                : 0U))) 
                              << 2U) | (QData)((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__neorv32_ocd_enabled_neorv32_debug_dm_inst__DOT__accen)))),34);
    bufp->chgBit(oldp+38,((1U & (~ (IData)(vlSelf->neorv32_verilog_tb__DOT__nrst)))));
    bufp->chgCData(oldp+39,((((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__io_system_neorv32_wdt_enabled_neorv32_wdt_inst__DOT__n5045_o) 
                              | (IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__neorv32_ocd_enabled_neorv32_debug_dm_inst__DOT__n9425_o))
                              ? 0U : (1U | (0xeU & 
                                            ((IData)(vlSelf->neorv32_verilog_tb__DOT__neorv32_verilog_inst__DOT__neorv32_top_inst__DOT__soc_generators_neorv32_sys_reset_inst__DOT__n1073_q) 
                                             << 1U))))),4);
}

void Vtestbench___024root__trace_cleanup(void* voidSelf, VerilatedFst* /*unused*/) {
    VL_DEBUG_IF(VL_DBG_MSGF("+    Vtestbench___024root__trace_cleanup\n"); );
    // Init
    Vtestbench___024root* const __restrict vlSelf VL_ATTR_UNUSED = static_cast<Vtestbench___024root*>(voidSelf);
    IData/*31:0*/ __Vilp;
    Vtestbench__Syms* const __restrict vlSymsp VL_ATTR_UNUSED = vlSelf->vlSymsp;
    // Body
    vlSymsp->__Vm_activity = false;
    __Vilp = 0U;
    while ((__Vilp <= 0x55U)) {
        vlSymsp->TOP.__Vm_traceActivity[__Vilp] = 0U;
        __Vilp = ((IData)(1U) + __Vilp);
    }
}
