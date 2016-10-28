library IEEE;
use ieee.std_logic_1164.all;

entity two_to_one_mux is
	port(
		a, b, sel : in std_logic;
		output : out std_logic
	);
end entity two_to_one_mux;

architecture behav of two_to_one_mux is
	begin
		output <= (a and (not sel)) or (b and sel);
end behav;