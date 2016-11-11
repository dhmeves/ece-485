library IEEE;
use ieee.std_logic_1164.all;

entity ALUOut is
	port(
		input : in std_logic_vector(31 downto 0);
		clk, rst, pre, ce : in std_logic;
		output : out std_logic_vector(31 downto 0)
	);
end ALUOut;

architecture behav of ALUOut is
	begin
		ALUOutput : entity work.thirty_two_bit_register(behav) port map(input, clk, rst, pre, ce, output);
end behav;