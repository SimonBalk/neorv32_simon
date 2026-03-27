`timescale 1 ns/100 ps // time-unit = 1 ns, precision = 100 ps

module neorv32_verilog_tb;

  reg clk, nrst; // generators
  wire uart_txd; // serial TX line
  wire [7:0] char_data; // character detected by UART
  wire char_valid; // valid character

  // Counter output from wrapper
  wire [3:0] counter_o;

  // generator setup
  initial begin
`ifdef DUMP_WAVE
    $dumpfile("wave.fst"); // write waveform data
    $dumpvars();
`endif
    $display ("[TB] NEORV32 Verilog testbench\n");
    clk = 0;
    nrst = 0;
    #100; // active reset for 100 ns
    nrst = 1;
    #15_000_000;
    $display("[TB] Simulation terminated (time out)!");
    $finish;
  end

  // clock generator
  always begin
    #5 clk = !clk; // 100 MHz
  end

  // unit under test
  neorv32_verilog_wrapper neorv32_verilog_inst (
    .clk_i       (clk),
    .rstn_i      (nrst),
    .uart0_rxd_i (1'b0),
    .uart0_txd_o (uart_txd),
    .counter_o   (counter_o) // connect counter output
  );

  // UART simulation module (inline)
  uart_sim_receiver #(
    .CLOCK_FREQ (100_000_000),
    .BAUD_RATE  (19200)
  ) uart_sim_receiver_inst (
    .clk_i   (clk),
    .txd_i   (uart_txd),
    .data_o  (char_data),
    .valid_o (char_valid)
  );

  // line buffer for UART output
  reg [7:0] uart_log [0:63];
  integer i;

  always @(posedge clk or negedge nrst) begin
    if (!nrst) begin
      i <= 0;
    end else begin
      if (char_valid) begin
        if ((char_data == 8'd10) || (char_data == 8'd13)) begin
          i <= 0;
        end else begin
          uart_log[i] <= char_data;
          i <= (i >= 63) ? 0 : i + 1;
        end
      end
      // check for bootloader string "NEORV32"
      if ((uart_log[0] == "N") && (uart_log[1] == "E") &&
          (uart_log[2] == "O") && (uart_log[3] == "R") &&
          (uart_log[4] == "V") && (uart_log[5] == "3") &&
          (uart_log[6] == "2")) begin
        $display("\n[TB] Simulation successful (UART)!");
        // continue to monitor counter
      end
    end
  end

  // ---------------------------
  // Counter monitoring block
  // ---------------------------
  reg [3:0] last_counter;
  always @(posedge clk or negedge nrst) begin
    if (!nrst) begin
      last_counter <= 0;
    end else begin
      if (counter_o !== last_counter) begin
        $display("[TB] Time %0t ns: counter = %0d", $time, counter_o);
        last_counter <= counter_o;
      end
    end
  end

endmodule

// ****************************************************************************
// Inline UART receiver module
// ****************************************************************************
module uart_sim_receiver
#(
  parameter CLOCK_FREQ = 100_000_000,
  parameter BAUD_RATE  = 19200
)(
  input clk_i,
  input txd_i,
  output [7:0] data_o,
  output valid_o
);

  localparam UART_BAUD_VAL = CLOCK_FREQ / BAUD_RATE;

  reg  [4:0] uart_rx_sync = 5'b11111;
  reg  [8:0] uart_rx_sreg = 9'b0;
  reg        uart_rx_busy  = 0;
  integer    uart_rx_baud_cnt = UART_BAUD_VAL / 2;
  integer    uart_rx_bitcnt   = 0;

  always @(posedge clk_i) begin
    uart_rx_sync <= {uart_rx_sync[3:0], txd_i};
    if (!uart_rx_busy) begin
      if (uart_rx_sync[4:1] == 4'b1100) uart_rx_busy <= 1;
      uart_rx_baud_cnt <= UART_BAUD_VAL / 2;
      uart_rx_bitcnt   <= 9;
    end else begin
      if (uart_rx_baud_cnt == 0) begin
        if (uart_rx_bitcnt == 0) begin
          uart_rx_busy <= 0;
        end else begin
          uart_rx_sreg   <= {uart_rx_sync[4], uart_rx_sreg[8:1]};
          uart_rx_bitcnt <= uart_rx_bitcnt - 1;
          uart_rx_baud_cnt <= UART_BAUD_VAL;
        end
      end else uart_rx_baud_cnt <= uart_rx_baud_cnt - 1;
    end
  end

  assign data_o  = uart_rx_sreg[8:1];
  assign valid_o = ((uart_rx_baud_cnt == 0) && (uart_rx_bitcnt == 0));

endmodule
