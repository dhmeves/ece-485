library IEEE;
use ieee.std_logic_1164.all;

entity four_to_one_mux is
	port(
		a, b, c, d : in std_logic;
		sel : in std_logic_vector(1 downto 0);
		output : out std_logic
	);
end entity four_to_one_mux;

architecture behav of four_to_one_mux is
	begin
		output <= (a and (not sel(0)) and (not sel(1))) or (b and sel(0) and (not sel(1))) or (c and (not sel(0)) and sel(1)) or (d and sel(0) and sel(1));
end behav;