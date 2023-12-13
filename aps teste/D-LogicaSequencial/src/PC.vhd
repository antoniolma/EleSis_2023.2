-- Elementos de Sistemas
-- developed by Luciano Soares
-- file: PC.vhd
-- date: 4/4/2017

-- Contador de 16bits
-- if (reset[t] == 1) out[t+1] = 0
-- else if (load[t] == 1) out[t+1] = in[t]
-- else if (inc[t] == 1) out[t+1] = out[t] + 1
-- else out[t+1] = out[t]

library ieee;
use ieee.std_logic_1164.all;
use IEEE.NUMERIC_STD.ALL;

entity PC is
port(
clock : in STD_LOGIC;
increment : in STD_LOGIC;
load : in STD_LOGIC;
reset : in STD_LOGIC;
input : in STD_LOGIC_VECTOR(15 downto 0);
output : out STD_LOGIC_VECTOR(15 downto 0) 
);
end entity;

architecture arch of PC is

signal muxOut1 : std_logic_vector(15 downto 0);
signal muxOut2 : std_logic_vector(15 downto 0);
signal muxOut3 : std_logic_vector(15 downto 0);
signal muxin0: std_logic_vector(15 downto 0);
signal outputReg : std_logic_vector(15 downto 0);
signal load_reg: std_logic;
signal sel_mux,sorte: std_logic;

component Inc16 is
port(
a : in STD_LOGIC_VECTOR(15 downto 0);
q : out STD_LOGIC_VECTOR(15 downto 0)
);
end component;

component Register16 is
port(
clock: in STD_LOGIC;
input: in STD_LOGIC_VECTOR(15 downto 0);
load: in STD_LOGIC;
output: out STD_LOGIC_VECTOR(15 downto 0)
);
end component;

component Mux16 is
port (
a: in STD_LOGIC_VECTOR(15 downto 0);
b: in STD_LOGIC_VECTOR(15 downto 0);
sel: in STD_LOGIC;
q: out STD_LOGIC_VECTOR(15 downto 0)
);
end component;

begin
    
saida_increment: Mux16 port map(muxin0, muxin0, increment, muxOut1);

saida_load: Mux16 port map(muxOut1, input, load, muxOut2);



saida_reset: Mux16 port map(muxOut2,"0000000000000000", reset, muxOut3);

inc: Inc16 port map(outputReg, muxin0);
sorte<=load or increment or reset;
reg: Register16 port map(clock, muxOut3, sorte , outputReg);

output <= outputReg;

end architecture;