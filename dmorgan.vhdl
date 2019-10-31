library ieee;
use ieee.std_logic_1164.all;

entity dmorgan is
  port(
  a,b : in std_logic;
  s1,s2,s3,s4 : out std_logic
  );
end dmorgan;

architecture b of dmorgan is
  begin
    process(a,b)
    begin
      s1 <= not(a and b);
      s2 <= (not a) or (not b);
      s3 <= not(a or b);
      s4 <= (not a) and (not b);
    end process;
  end architecture;
