-- Elementos de Sistemas
-- FlipFlopT.vhd

library ieee;
use ieee.std_logic_1164.all;

entity FlipFlopT is
	port(
		clock:  in std_logic;
		t:      in std_logic;
		q:      out std_logic:= '0';
		notq:   out std_logic:= '1'
	);
end entity;

architecture arch of FlipFlopT is

signal saida: std_logic:='0';

begin

	process(clock)

	begin
		if rising_edge(clock) then
			
			if t='0' and saida ='0' then
				saida <= '0';

			elsif t='1' and saida='1' then
				saida <= '0';

			elsif t='0' and saida='1' then
				saida <= '1';

			elsif t='1' and saida='0' then
				saida <= '1';
			end if;

		end if;

	end process;

	q<= saida;
	notq<= not saida;

end architecture;
