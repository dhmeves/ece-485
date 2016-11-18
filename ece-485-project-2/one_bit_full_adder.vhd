library IEEE;
use ieee.std_logic_1164.all;

entity one_bit_full_adder is
	port(
		a , b : in std_logic;
		cin : in std_logic;
		cout : out std_logic;
		sum : out std_logic
	);
end entity one_bit_full_adder;

architecture behav of one_bit_full_adder is
	begin
		cout <= (a and b) or (cin and (a xor b));
		sum <= a xor b xor cin;
end behav;