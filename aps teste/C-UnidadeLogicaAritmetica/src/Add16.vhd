-- Elementos de Sistemas
-- by Luciano Soares
-- Add16.vhd

-- Soma dois valores de 16 bits
-- ignorando o carry mais significativo

library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity Add16 is
	port(
		a   :  in STD_LOGIC_VECTOR(15 downto 0);
		b   :  in STD_LOGIC_VECTOR(15 downto 0);
		q   : out STD_LOGIC_VECTOR(15 downto 0)
	);
end entity;

architecture rtl of Add16 is
  -- Aqui declaramos sinais (fios auxiliares)
  -- e componentes (outros módulos) que serao
  -- utilizados nesse modulo.

  component FullAdder is
    port(
      a,b,c:      in STD_LOGIC;   -- entradas
      soma,vaium: out STD_LOGIC   -- sum e carry
    );
  end component;

SIGNAL d : STD_LOGIC_VECTOR(15 downto 0);
  
begin
  -- Implementação vem aqui!
  u0 : FullAdder port map(a => a(0), b=> b(0), c=> '0', soma => q(0), vaium => d(0));
  u1 : FullAdder port map(a => a(1), b=> b(1), c=> d(0), soma => q(1), vaium => d(1));
  u2 : FullAdder port map(a => a(2), b=> b(2), c=> d(1), soma => q(2), vaium => d(2));
  u3 : FullAdder port map(a => a(3), b=> b(3), c=> d(2), soma => q(3), vaium => d(3));
  u4 : FullAdder port map(a => a(4), b=> b(4), c=> d(3), soma => q(4), vaium => d(4));
  u5 : FullAdder port map(a => a(5), b=> b(5), c=> d(4), soma => q(5), vaium => d(5));
  u6 : FullAdder port map(a => a(6), b=> b(6), c=> d(5), soma => q(6), vaium => d(6));
  u7 : FullAdder port map(a => a(7), b=> b(7), c=> d(6), soma => q(7), vaium => d(7));
  u8 : FullAdder port map(a => a(8), b=> b(8), c=> d(7), soma => q(8), vaium => d(8));
  u9 : FullAdder port map(a => a(9), b=> b(9), c=> d(8), soma => q(9), vaium => d(9));
  u10 : FullAdder port map(a => a(10), b=> b(10), c=> d(9), soma => q(10), vaium => d(10));
  u11 : FullAdder port map(a => a(11), b=> b(11), c=> d(10), soma => q(11), vaium => d(11));
  u12 : FullAdder port map(a => a(12), b=> b(12), c=> d(11), soma => q(12), vaium => d(12));
  u13 : FullAdder port map(a => a(13), b=> b(13), c=> d(12), soma => q(13), vaium => d(13));
  u14 : FullAdder port map(a => a(14), b=> b(14), c=> d(13), soma => q(14), vaium => d(14));
  u15 : FullAdder port map(a => a(15), b=> b(15), c=> d(14), soma => q(15), vaium => d(15));

end architecture;
