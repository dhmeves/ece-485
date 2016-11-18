library IEEE;
use ieee.std_logic_1164.all;

entity four_to_one_mux_1_bit is
	port(
		a, b, c, d : in std_logic;
		sel : in std_logic_vector(1 downto 0);
		output : out std_logic
	);
end entity four_to_one_mux_1_bit;

architecture behav of four_to_one_mux_1_bit is
	begin
		--output <= (a and (not sel(0)) and (not sel(1))) or (b and sel(0) and (not sel(1))) or (c and (not sel(0)) and sel(1)) or (d and sel(0) and sel(1));
		output <= a when (sel = "00") else b when (sel = "01") else c when (sel = "10") else d when (sel = "11"); 
end behav;