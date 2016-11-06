library IEEE;
use ieee.std_logic_1164.all;

entity thirty_two_bit_register is
	port(
		data : in std_logic_vector(31 downto 0);
		clk, rst, pre, ce : in std_logic;
		output : out std_logic_vector(31 downto 0)
	);
end thirty_two_bit_register;

architecture behav of thirty_two_bit_register is
	begin	
		DFF1 : entity work.d_flip_flop(behav) port map(