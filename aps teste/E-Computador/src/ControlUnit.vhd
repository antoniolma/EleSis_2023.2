-- Elementos de Sistemas
-- developed by Luciano Soares
-- file: ControlUnit.vhd
-- date: 4/4/2017
-- Modificação:
--   - Rafael Corsi : nova versão: adicionado reg S
--
-- Unidade que controla os componentes da CPU

library ieee;
use ieee.std_logic_1164.all;

entity ControlUnit is
    port(
		instruction                 : in STD_LOGIC_VECTOR(17 downto 0);  -- instrução para executar
		zr,ng                       : in STD_LOGIC;                      -- valores zr(se zero) e
                                                                     -- ng (se negativo) da ALU
		muxALUI_A                   : out STD_LOGIC;                     -- mux que seleciona entre
                                                                     -- instrução  e ALU para reg. A
		muxAM                       : out STD_LOGIC;                     -- mux que seleciona entre
                                                                     -- reg. A e Mem. RAM para ALU
                                                                     -- A  e Mem. RAM para ALU
		zx, nx, zy, ny, f, no       : out STD_LOGIC;                     -- sinais de controle da ALU
		loadA, loadD, loadM, loadPC : out STD_LOGIC                      -- sinais de load do reg. A,
                                                                     -- reg. D, Mem. RAM e Program Counter
    );
end entity;

architecture arch of ControlUnit is

begin
  muxALUI_A <= '1' when instruction(17) = '0' else
           '0';
  muxAM <= '1' when instruction(13) = '1' and instruction(17) = '1' else
               '0';
  loadA <= '1' when instruction(3) = '1' and instruction(17) = '1' else
			  '1' when instruction(17) = '0' else
			  '0';
  loadD <= '1' when instruction(4) = '1' and instruction(17) = '1' else
           '0';
  loadM <= '1' when instruction(5) = '1' and instruction(17) = '1' else
           '0';
  zx <= instruction(17) and instruction(12);
  nx <= instruction(17) and instruction(11);
  zy <= instruction(17) and instruction(10);
  ny <= instruction(17) and instruction(9);
  f <= instruction(17) and instruction(8);
  no <= instruction(17) and instruction(7);
  loadPC <= instruction(17) and 
    (((not ng) and (not zr) and instruction(0))  or 
    ((not ng) and      zr  and instruction(1))  or 
    (     ng  and (not zr) and instruction(2)));
end architecture;
