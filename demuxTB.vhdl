library ieee;
use ieee.std_logic_1164.all;

entity demuxTB is
end demuxTB;

architecture bhv of demuxTB is
  component demux
  port(
  i, s0,s1 : in std_logic;
  a,b,c,d : out std_logic
  );
end component;

signal i : std_logic := '0';
signal s0 : std_logic := '0';
signal s1 : std_logic := '0';

signal a : std_logic;
signal b : std_logic;
signal c : std_logic;
signal d : std_logic;

begin
  uut : demux port map(
  i => i,
  s0 => s0,
  s1 => s1,
  a => a,
  b => b,
  c => c,
  d => d
  );

  stim_proc : process
  begin
    i <= '1';

    s1 <= '0';
    s0 <= '0';
    wait for 50 ns;

    s1 <= '0';
    s0 <= '1';
    wait for 50 ns;


    s1 <= '1';
    s0 <= '0';
    wait for 50 ns;

    s1 <= '1';
    s0 <= '1';
    wait for 50 ns;
    wait;
end process;
end bhv;
