library IEEE;
use ieee.std_logic_1164.all;

entity A is
	port(
		input : in std_logic_vector(31 downto 0);
		output : out std_logic_vector(31 downto 0)
	);
end A;

architecture behav of A is
	begin
		PAB : entity work.thirty_two_bit_register(behav) port map(input, clk, rst, pre, ce, output);
end behav;
