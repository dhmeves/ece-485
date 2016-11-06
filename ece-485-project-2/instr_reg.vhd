library IEEE;
use ieee.std_logic_1164.all;

entity instr_reg is
	port(
		input : in std_logic_vector(31 downto 0);
		instr31_26 : out std_logic_vector(5 downto 0);
		instr25_21, instr20_16, instr15_11 : out std_logic_vector(4 downto 0);
		instr15_0 : out std_logic_vector(15 downto 0);
		instr25_0 : out std_logic_vector(25 downto 0);
	);
end instr_reg;

architecture behav of instr_reg is
	begin
