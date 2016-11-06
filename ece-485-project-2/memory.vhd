library IEEE;
use ieee.std_logic_1164.all;

entity memory is
	port(
		address, writeData : in std_logic_vector(31 downto 0);
		memData : out std_logic_vector(31 downto 0)
	);
end memory;

architecture behav of memory is
	begin
		