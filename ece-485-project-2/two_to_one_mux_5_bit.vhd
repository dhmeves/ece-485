library IEEE;
use ieee.std_logic_1164.all;

entity two_to_one_mux_5_bit is
	port(
		a, b : in std_logic_vector(4 downto 0); 
		sel : in std_logic;
		output : out std_logic_vector(4 downto 0)
	);
end entity two_to_one_mux_5_bit;

architecture behav of two_to_one_mux_5_bit is
	begin
		--output <= (a and (not sel)) or (b and sel);
		output <= a when (sel = '0') else b;
		
end behav;