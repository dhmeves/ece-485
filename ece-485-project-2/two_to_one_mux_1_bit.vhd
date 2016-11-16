library IEEE;
use ieee.std_logic_1164.all;

entity two_to_one_mux_1_bit is
	port(
		a, b : in std_logic; 
		sel : in std_logic;
		output : out std_logic
	);
end entity two_to_one_mux_1_bit;

architecture behav of two_to_one_mux_1_bit is
	begin
		--output <= (a and (not sel)) or (b and sel);
		output <= a when (sel = '0') else b;
		
end behav;