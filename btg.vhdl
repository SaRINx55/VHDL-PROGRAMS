library ieee;
use ieee.std_logic_1164.all;

entity btg is
  port(
  a,b,c,d : in std_logic;
  r1,r2,r3,r4 : out std_logic
    );
  end btg;

  architecture b of btg is
    begin
      process(a,b,c,d)
      begin
        r1 <= a;
        r2 <= a xor b;
        r3 <= a xor b xor c;
        r4 <= a xor b xor c xor d;
      end process;
    end b;
