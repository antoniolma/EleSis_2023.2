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
		SW       : in  std_logic_vector(9 downto 0);
		LEDR     : out std_logic_vector(9 downto 0)
	);
end entity;

----------------------------
-- Implementacao do bloco --
----------------------------
architecture rtl of TopLevel is

--------------
-- signals
--------------

---------------
-- implementacao
---------------
begin
<<<<<<< HEAD:B-LogicaCombinacional/TopLevel.vhd
=======

	--------------
	-- LEDR(0) <= not(SW(0)); Para Fazer a saida
	--------------
	
=======
    LEDR(0) <= not(SW(0));      

>>>>>>> fa1dc675886f11038a782d972971e6d445130092:B-LogicaCombinacional/src/TopLevel.vhd

	--------------
	-- LEDR(0) <= not(SW(0)); Para Fazer a saida
	--------------
	
=======
    LEDR(0) <= not(SW(0));      


end rtl;