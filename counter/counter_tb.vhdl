library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity counter_tb is
end entity;

architecture tb of counter_tb is

  signal clk   : std_logic := '0';
  signal rst   : std_logic := '1';
  signal value : std_logic_vector(3 downto 0);

begin

  -- Instantiate DUT (Device Under Test)
  uut: entity work.counter
    port map (
      clk   => clk,
      rst   => rst,
      value => value
    );

  -- Clock generation (10 ns period)
  clk_process : process
  begin
    while true loop
      clk <= '0';
      wait for 5 ns;
      clk <= '1';
      wait for 5 ns;
    end loop;
  end process;

  -- Stimulus
  stim_proc: process
  begin
    -- Hold reset for a few cycles
    wait for 20 ns;
    rst <= '0';

    -- Run simulation for some time
    wait for 200 ns;

    -- Stop simulation
    assert false report "Simulation finished" severity failure;
  end process;

  -- Output monitor
  monitor: process(clk)
  begin
    if rising_edge(clk) then
      if rst = '0' then
        report "Counter value = " & integer'image(to_integer(unsigned(value)));
      end if;
    end if;
  end process;

end architecture;
