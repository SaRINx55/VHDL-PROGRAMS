library ieee;
use ieee.std_logic_1164.all;

entity SRTB is
end SRTB;

architecture b of SRTB is
  component SR
  port(
  s,r,clk, reset : in std_logic;
  q,qb : out std_logic
  );
  end component;

  signal s : std_logic := '0';
  signal r : std_logic := '0';
  signal clk : std_logic := '0';
  signal reset : std_logic := '0';
  signal q : std_logic;
  signal qb : std_logic;

  constant clk_period : time := 10 ns;

  begin
    uut : SR port map (
      s => s,
      r => r,
      clk => clk,
      reset => reset,
      q => q,
      qb => qb
    );

  clk_process : process
  begin
    clk <= '0';
    wait for clk_period/2;
    clk <= '1';
    wait for clk_period/2;
  end process;

  stim_proc : process
  begin
    reset <= '1';
    s <= '0';
    r <= '0';
    wait for 50 ns;

    reset <= '0';
    s <= '0';
    r <= '0';
    wait for 50 ns;

    reset <= '0';
    s <= '0';
    r <= '1';
    wait for 50 ns;

    reset <= '0';
    s <= '1';
    r <= '0';
    wait for 50 ns;

    reset <= '0';
    s <= '1';
    r <= '1';
    wait for 50 ns;
  end process;
end b;
