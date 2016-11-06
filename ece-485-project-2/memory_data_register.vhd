library IEEE;
use ieee.std_logic_1164.all;

entity memory_data_register is
	port(
		input : in std_logic_vector(31 downto 0);
		output : out std_logic_vector(31 downto 0)
	);
end memory_data_register;

architecture behav of memory_data_register is
	begin
