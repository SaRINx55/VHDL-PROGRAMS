library ieee;
use ieee.std_logic_1164.all;

entity gtb is
  port (
    a,b,c,d : in std_logic;
    r1,r2,r3,r4 : out std_logic
  );

end gtb;

architecture b of gtb is
  begin
  process(a,b,c,d)
  begin
    r1 <= a;
    r2 <= a xor b;
    r3 <= b xor c;
    r4 <= c xor d;
  end process;
end b;
