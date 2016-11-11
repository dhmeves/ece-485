library IEEE;
use ieee.std_logic_1164.all;

entity shift_register_by2 is
	port(
		input : in std_logic_vector(31 downto 0);
		output : out std_logic_vector(31 downto 0)
	);
end shift_register_by2;

architecture behav of shift_register is
	begin
		output(31) <= input(29);
		output(30) <= input(28);
		output(29) <= input(27);
		output(28) <= input(26);
		output(27) <= input(25);
		output(26) <= input(24);
		output(25) <= input(23);
		output(24) <= input(22);
		output(23) <= input(21);
		output(22) <= input(20);
		output(21) <= input(19);
		output(20) <= input(18);
		output(19) <= input(17);
		output(18) <= input(16);
		output(17) <= input(15);
		output(16) <= input(14);
		output(15) <= input(13);
		output(14) <= input(12);
		output(13) <= input(11);
		output(12) <= input(10);
		output(11) <= input(9);
		output(10) <= input(8);
		output(9) <= input(7);
		output(8) <= input(6);
		output(7) <= input(5);
		output(6) <= input(4);
		output(5) <= input(3);
		output(4) <= input(2);
		output(3) <= input(1);
		output(2) <= input(0);
		output(1) <= '0';
		output(0) <= '0';
end behav;
		
		
		