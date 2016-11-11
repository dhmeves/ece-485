library IEEE;
use ieee.std_logic_1164.all;

entity B is
	port(
		input : in std_logic_vector(31 downto 0);
		clk, rst, pre, ce : in std_logic;
		output : out std_logic_vector(31 downto 0)
	);
end B;

architecture behav of B is
	begin
		PASB : entity work.thirty_two_bit_register(behav) port map(input, clk, rst, pre, ce, output);
end behav;