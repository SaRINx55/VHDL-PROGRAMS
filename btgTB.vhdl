library ieee;
use ieee.std_logic_1164.all;

entity btgTB is
end btgTB;

architecture bhv of btgTB is
  component btg
  port(
  a,b,c,d : in std_logic;
  r1,r2,r3,r4 : out std_logic
    );
  end component;

  signal a : std_logic:= '0';
  signal b : std_logic:= '0';
  signal c : std_logic:= '0';
  signal d : std_logic:= '0';

  signal r1 : std_logic;
  signal r2 : std_logic;
  signal r3 : std_logic;
  signal r4 : std_logic;

  begin
    uut : btg port map(
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
      b <= '1';
      c <= '0';
      d <= '1';
      wait for 50 ns;
    end process;
  end bhv;
