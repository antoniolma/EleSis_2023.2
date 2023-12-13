--
-- Elementos de Sistemas - Aula 5 - Logica Combinacional
-- Rafael . Corsi @ insper . edu . br
--
-- Arquivo exemplo para acionar os LEDs e ler os bottoes
-- da placa DE0-CV utilizada no curso de elementos de
-- sistemas do 3s da eng. da computacao

----------------------------
-- Bibliotecas ieee       --
----------------------------
library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use work.all;

----------------------------
-- Entrada e saidas do bloco
----------------------------
entity TopLevel is
	port(
		CLOCK_50 : in  std_logic;
		SW      : in  std_logic_vector(3 downto 0);
		LEDR: out std_logic_vector(3 downto 0)
	);
end entity;

----------------------------
-- Implementacao do bloco --
----------------------------
architecture rtl of TopLevel is



component carrinho is
	port (
    x1, x2, x3, x4 : in  STD_LOGIC;
    y1, y2: out STD_LOGIC_VECTOR(1 downto 0));
end component;


begin
	carro: carrinho port map(
		x1 => SW(0),
		x2 => SW(1),
		x3 => SW(2),
		x4 => SW(3),
		y1(0)=>LEDR(0),
		y1(1)=>LEDR(1),
		y2(0)=>LEDR(2),
		y2(1)=>LEDR(3)
	);


end rtl;