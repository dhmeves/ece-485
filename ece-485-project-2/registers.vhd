library IEEE;
use ieee.std_logic_1164.all;

entity registers is
	port(
		readRegister1, readRegister2, writeRegister, writeData : in std_logic_vector(31 downto 0);
		readData1, readData2 : out std_logic_vector(31 downto 0)
	);
end registers;

architecture behav of registers is
	begin
		