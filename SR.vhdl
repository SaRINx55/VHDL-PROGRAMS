library ieee;
use ieee.std_logic_1164.all;

entity SR is
  port(
  s,r,clk, reset : in std_logic;
  q,qb : out std_logic
  );
end SR;

architecture bhv of SR is
  begin
    process(s,r,clk,reset)
  begin
    if(reset = '1') then
      q <= '0';
      qb <= '0';
    elsif(rising_edge(clk)) then
      if(s /= r) then
        q <= s;
        qb <= r;
      elsif(s = '1' and r = '1') then
        q <= 'Z';
        qb <= 'Z';
      elsif(s = '0' and r = '0') then
        q <= '0';
        qb <= '0;
      end if;
    end if;
  end process;

end bhv;
