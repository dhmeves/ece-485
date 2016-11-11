library IEEE;
use ieee.std_logic_1164.all;

entity A is
	port(
		input : in std_logic_vector(31 downto 0);
		clk, rst, pre, ce : in std_logic;
		output : out std_logic_vector(31 downto 0)
	);
end A;

architecture behav of A is
	begin
		PASA : entity work.thirty_two_bit_register(behav) port map(input, clk, rst, pre, ce, output);
end behav;
