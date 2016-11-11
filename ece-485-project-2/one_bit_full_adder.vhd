library IEEE;
use ieee.std_logic_1164.all;

entity one_bit_full_adder is
	port(
		a , b : in std_logic_vector(31 downto 0);
		cin : in std_logic;
		cout : out std_logic;
		sum : out std_logic_vector(31 downto 0)
	);
end entity one_bit_full_adder;

architecture behav of one_bit_full_adder is
	begin
		cout <= (a(0) and b(0)) or (cin and (a(0) xor b(0)));
		sum(0) <= a(0) xor b(0) xor cin;
end behav;