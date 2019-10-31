library ieee;
use ieee.std_logic_1164.all;

entity gtbTB is
end gtbTB;

architecture bhv of gtbTB is
  component gtb
  port (
    a,b,c,d : in std_logic;
    r1,r2,r3,r4 : out std_logic
  );
end component;

signal a : std_logic := '0';
signal b : std_logic := '0';
signal c : std_logic := '0';
signal d : std_logic := '0';
signal r1 : std_logic;
signal r2 : std_logic;
signal r3 : std_logic;
signal r4 : std_logic;

begin
  uut : gtb port map(
  a => a,
  b => b,
  c => c,
  d => d,
  r1 => r1,
  r2 => r2,
  r3 => r3,
  r4 => r4
  );

  stim_proc : process
  begin
    a <= '1';
    b <= '0';
    c <= '1';
    d <= '1';
    wait for 50 ns;
  end process;
end bhv;
