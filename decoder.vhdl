library ieee;
use ieee.std_logic_1164.all;

entity decoder is
  port(
  a : in  std_logic_vector(1 downto 0);
  r : out std_logic_vector(3 downto 0)
  );
end decoder;

--architecture b of decoder is
  --  begin
    --  with (a) select
--      r <= "0001" when "00",
--           "0010" when "01",
--           "0100" when "10",
  --         "1000" when "11";
--end b;
--architecture b of decoder is
--  begin
--    r <= "0001" when (a = "00") else
--         "0010" when (a = "01") else
--         "0100" when (a = "10") else
--         "1000" when (a = "11");
--       end b;

architecture b of decoder is
  begin
    process(a)
    begin
      if (a = "00") then
        r <= "0001";
      elsif (a = "01") then
        r <= "0010";
      elsif (a = "10") then
        r <= "0100";
      else
        r <= "1000";
      end if;

    end process;
  end b;
