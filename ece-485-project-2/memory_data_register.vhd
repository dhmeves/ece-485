library IEEE;
use ieee.std_logic_1164.all;

entity memory_data_register is
	port(
		input : in std_logic_vector(31 downto 0);
		clk, rst, pre, ce : in std_logic;
		output : out std_logic_vector(31 downto 0)
	);
end memory_data_register;

architecture behav of memory_data_register is
	begin
		Mem : entity work.thirty_two_bit_register(behav) port map(input, clk, rst, pre, ce, output);
end behav;