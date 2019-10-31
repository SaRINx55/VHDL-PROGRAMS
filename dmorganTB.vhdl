library ieee;
use ieee.std_logic_1164.all;

entity dmorganTB is
end dmorganTB;

architecture bhv of dmorganTB is
  component dmorgan
  port(
  a,b : in std_logic;
  s1,s2,s3,s4 : out std_logic
  );
  end component;

  signal a : std_logic := '0';
  signal b : std_logic := '0';
  signal s1 : std_logic;
  signal s2 : std_logic;
  signal s3 : std_logic;
  signal s4 : std_logic;

  begin
    uut :  dmorgan port map(
    a => a,
    b => b,
    s1 => s1,
    s2 => s2,
    s3 => s3,
    s4 => s4
    );

    stim_proc : process
    begin
      a <= '0';
      b <= '0';
      wait for 50 ns;

      a <= '0';
      b <= '1';
      wait for 50 ns;

      a <= '1';
      b <= '0';
      wait for 50 ns;

      a <= '1';
      b <= '1';
      wait;

    end process;
  end bhv;
