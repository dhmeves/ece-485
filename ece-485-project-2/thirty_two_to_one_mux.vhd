library IEEE;
use ieee.std_logic_1164.all;

entity thirty_two_to_one_mux is
	port(
		in0, in1, in2, in3, in4, in5, in6, in7, in8, in9, in10, in11, in12, in13, in14, in15, in16, in17, in18, in19, in20, in21, in22, in23, in24, in25, in26, in27, in28, in29, in30, in31 : in std_logic_vector(31 downto 0);
		sel : in std_logic_vector(4 downto 0);
		output : out std_logic_vector(31 downto 0)
	);
end entity thirty_two_to_one_mux;

architecture behav of thirty_two_to_one_mux is
	begin
		--output <= (a and (not sel(0)) and (not sel(1))) or (b and sel(0) and (not sel(1))) or (c and (not sel(0)) and sel(1)) or (d and sel(0) and sel(1));
		output <= in0 when (sel = "00000") else in1 when (sel = "00001") else in2 when (sel = "00010") else in3 when (sel = "00011") else in4 when (sel = "00100") else in5 when (sel = "00101") else in6 when (sel = "00110") else in7 when (sel = "00111") else in8 when (sel = "01000") else in9 when (sel = "01001") else in10 when (sel = "01010") else in11 when (sel = "01011") else in12 when (sel = "01100") else in13 when (sel = "01101") else in14 when (sel = "01110") else in15 when (sel = "01111") else in16 when (sel = "10000") else in17 when (sel = "10001") else in18 when (sel = "10010") else in19 when (sel = "10011") else in20 when (sel = "10100") else in21 when (sel = "10101") else in22 when (sel = "10110") else in23 when (sel = "10111") else in24 when (sel = "11000") else in25 when (sel = "11001") else in26 when (sel = "11010") else in27 when (sel = "11011") else in28 when (sel = "11100") else in29 when (sel = "11101") else in30 when (sel = "11110") else in31 when (sel = "11111"); 
end behav;