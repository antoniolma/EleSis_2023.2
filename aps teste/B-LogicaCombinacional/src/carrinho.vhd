library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity carrinho is
	port (
    x1, x2, x3, x4 : in  STD_LOGIC;
    y1, y2: out STD_LOGIC_VECTOR(1 downto 0));
end entity;

architecture arch of carrinho is

begin
	y1(1) <= (not(x1) and not(x2)) and (not(x4) or x3);
	y1(0) <= x1 and not(x3) and not(x4);
	y2(1) <= (not(x1) and not(x2)) and (not(x3) or x4);
	y2(0) <= x2 and not(x3) and not(x4);
end architecture;
