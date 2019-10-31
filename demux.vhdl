library ieee;
use ieee.std_logic_1164.all;

entity demux is
  port(
  i, s0,s1 : in std_logic;
  a,b,c,d : out std_logic
  );

end demux;

architecture b of demux is
  begin
    process(i, s0,s1)
    begin
      if(s1 = '0' and s0 = '0') then
        a <= i;
      elsif (s1 = '0' and s0 = '1') then
        b <= i;
      elsif(s1 = '1' and s0 = '0') then
        c <= i;
      elsif(s1 = '1' and s0 = '1') then
        d <= i;
      end if;
    end process;
  end b;
  
