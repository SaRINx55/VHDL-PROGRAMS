library ieee;
use ieee.std_logic_1164.all;

entity decoderTB is
end decoderTB;

architecture bhv of decoderTB is
  component decoder
  port(
  a : in  std_logic_vector(1 downto 0);
  r : out std_logic_vector(3 downto 0)
  );
  end component;

  signal a : std_logic_vector(1 downto 0) := (others => '0');
  signal r : std_logic_vector(3 downto 0);

  begin
    uut : decoder port map(
    a => a,
    r => r
    );

    stim_proc : process
    begin
      a <= "00";
      wait for 50 ns;

      a <= "01";
      wait for 50 ns;

      a <= "10";
      wait for 50 ns;

      a <= "11";
      wait for 50 ns;
    end process;
  end bhv;
