library IEEE;
use ieee.std_logic_1164.all;

entity four_to_one_mux is
	port(
		a, b, c, d, sel0, sel1 : in std_logic;
		output : out std_logic
	);
end entity four_to_one_mux;

architecture behav of four_to_one_mux is
	begin
		output <= (a and (not sel0) and (not sel1)) or (b and sel0 and (not sel1)) or (c and (not sel0) and sel1) or (d and sel0 and sel1);
end behav;