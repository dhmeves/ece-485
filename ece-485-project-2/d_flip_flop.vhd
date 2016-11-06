library IEEE;
use ieee.std_logic_1164.all;

entity d_flip_flop is
	port(
		clk, d, preset, clr : in std_logic;
		q : out std_logic
	);
end d_flip_flop;

architecture behav of d_flip_flop is
	begin
		