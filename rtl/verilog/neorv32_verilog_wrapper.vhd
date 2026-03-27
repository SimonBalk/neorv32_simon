-- ================================================================================ --
-- NEORV32 Wrapper with 4-bit Up-Counter                                            --
-- ================================================================================ --

library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;  -- standard for arithmetic

library neorv32;
use neorv32.neorv32_package.all;

entity neorv32_verilog_wrapper is
  port (
    -- Global control --
    clk_i       : in  std_ulogic; -- global clock, rising edge
    rstn_i      : in  std_ulogic; -- global reset, low-active, async
    -- UART0 --
    uart0_txd_o : out std_ulogic; -- UART0 send data
    uart0_rxd_i : in  std_ulogic;  -- UART0 receive data
    -- Up-counter output --
    counter_o   : out std_logic_vector(3 downto 0)  -- 4-bit counter
  );
end entity;

architecture neorv32_verilog_wrapper_rtl of neorv32_verilog_wrapper is

  -- ------------------------------------------------
  -- 4-bit up-counter signal
  -- ------------------------------------------------
  signal counter_up : unsigned(3 downto 0) := (others => '0');

begin

  -- ------------------------------------------------
  -- Up-counter process (async reset, increment on rising clk)
  -- ------------------------------------------------
  upcounter_proc: process(clk_i, rstn_i)
  begin
    if rstn_i = '0' then
      counter_up <= (others => '0');  -- reset
    elsif rising_edge(clk_i) then
      counter_up <= counter_up + 1;   -- increment
    end if;
  end process;

  -- Connect to output
  counter_o <= std_logic_vector(counter_up);

  -- ------------------------------------------------
  -- NEORV32 top instance
  -- ------------------------------------------------
  neorv32_top_inst: neorv32_top
    generic map (
      CLOCK_FREQUENCY     => 100_000_000,
      BOOT_MODE_SELECT    => 0,
      OCD_EN              => true,
      OCD_AUTHENTICATION  => true,
      RISCV_ISA_C         => true,
      RISCV_ISA_M         => true,
      RISCV_ISA_U         => true,
      RISCV_ISA_Zalrsc    => true,
      RISCV_ISA_Zaamo     => true,
      RISCV_ISA_Zba       => true,
      RISCV_ISA_Zbb       => true,
      RISCV_ISA_Zbkb      => true,
      RISCV_ISA_Zbkc      => true,
      RISCV_ISA_Zbkx      => true,
      RISCV_ISA_Zbs       => true,
      RISCV_ISA_Zcb       => true,
      RISCV_ISA_Zfinx     => true,
      RISCV_ISA_Zicntr    => true,
      RISCV_ISA_Zicond    => true,
      RISCV_ISA_Zihpm     => true,
      RISCV_ISA_Zimop     => true,
      RISCV_ISA_Zknd      => true,
      RISCV_ISA_Zkne      => true,
      RISCV_ISA_Zknh      => true,
      RISCV_ISA_Zksed     => true,
      RISCV_ISA_Zksh      => true,
      RISCV_ISA_Smcntrpmf => true,
      RISCV_ISA_Xcfu      => true,
      CPU_FAST_MUL_EN     => true,
      CPU_FAST_SHIFT_EN   => true,
      PMP_NUM_REGIONS     => 4,
      PMP_MIN_GRANULARITY => 4,
      PMP_TOR_MODE_EN     => true,
      PMP_NAP_MODE_EN     => true,
      HPM_NUM_CNTS        => 6,
      HPM_CNT_WIDTH       => 40,
      IMEM_EN             => true,
      IMEM_SIZE           => 16*1024,
      IMEM_OUTREG_EN      => false,
      DMEM_EN             => true,
      DMEM_SIZE           => 8*1024,
      DMEM_OUTREG_EN      => true,
      ICACHE_EN           => true,
      ICACHE_NUM_BLOCKS   => 8,
      DCACHE_EN           => true,
      DCACHE_NUM_BLOCKS   => 4,
      CACHE_BLOCK_SIZE    => 64,
      XBUS_EN             => true,
      XBUS_REGSTAGE_EN    => true,
      IO_CLINT_EN         => true,
      IO_UART0_EN         => true,
      IO_UART0_RX_FIFO    => 64,
      IO_UART0_TX_FIFO    => 64,
      IO_SPI_EN           => true,
      IO_TWI_EN           => true,
      IO_TWD_EN           => true,
      IO_PWM_NUM          => 4,
      IO_WDT_EN           => true,
      IO_NEOLED_EN        => true,
      IO_GPTMR_NUM        => 4,
      IO_ONEWIRE_EN       => true,
      IO_DMA_EN           => true,
      IO_SLINK_EN         => true,
      IO_TRACER_EN        => true,
      IO_TRACER_BUFFER    => 32,
      IO_TRACER_SIMLOG_EN => true
    )
    port map (
      clk_i       => clk_i,
      rstn_i      => rstn_i,
      uart0_txd_o => uart0_txd_o,
      uart0_rxd_i => uart0_rxd_i
    );

end architecture;
