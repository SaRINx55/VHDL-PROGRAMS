library ieee;
use ieee.std_logic_1164.all;

entity FATB is
end FATB;

architecture bhv of FATB is
 component FA

    port(
    a,b,cin : in std_logic;
    s,cout : out std_logic
    );
  end component;

  signal a : std_logic := '0';
  signal b : std_logic := '0';
  signal cin : std_logic := '0';
  signal s : std_logic;
  signal cout : std_logic;

  begin
    uut : FA port map(
      a => a,
      b => b,
      cin => cin,
      s => s,
      cout => cout
      );


  stim_proc : process
  begin
    a <= '0';
    b <= '0';
    cin <= '1';
    wait for 50 ns;

    a <= '0';
    b <= '1';
    cin <= '0';
    wait for 50 ns;

    a <= '0';
    b <= '1';
    cin <= '1';
    wait for 50 ns;

    a <= '1';
    b <= '0';
    cin <= '0';
    wait for 50 ns;

    a <= '1';
    b <= '0';
    cin <= '1';
    wait for 50 ns;

    a <= '1';
    b <= '1';
    cin <= '0';
    wait for 50 ns;

    a <= '1';
    b <= '1';
    cin <= '1';
    wait for 50 ns;

    a <= '0';
    b <= '0';
    cin <= '0';
    wait;
  end process;
end bhv;
