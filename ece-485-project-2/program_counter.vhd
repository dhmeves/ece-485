library IEEE;
use ieee.std_logic_1164.all;

entity program_counter is
	port(
		input : in std_logic_vector(31 downto 0);
		clk, rst, pre, ce, control : in std_logic;
		output : out std_logic_vector(31 downto 0)
	);
end program_counter;

architecture behav of program_counter is
	begin
		PC : entity work.thirty_two_bit_register(behav) port map(input, clk, rst, pre, ce, output);
end behav;