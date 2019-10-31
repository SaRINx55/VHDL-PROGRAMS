library ieee;
use ieee.std_logic_1164.all;

entity FA is
  port(
  a,b,cin : in std_logic;
  s,cout : out std_logic
  );
end FA;

architecture b of FA is
  begin
    process(a,b,cin)
  begin
    s <= a xor b xor cin;
    cout <= (a and b) or ((a xor b) and cin);
  end process;
end b;
