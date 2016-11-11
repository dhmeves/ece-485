library IEEE;
use ieee.std_logic_1164.all;

entity shift_register is
	port(
		input : in std_logic_vector(31 downto 0);
		shamt : in std_logic_vector(4 downto 0);
		direction : in std_logic;
		output : out std_logic_vector(31 downto 0)
	);
end shift_register;

architecture behav of shift_register is
	begin
		
		