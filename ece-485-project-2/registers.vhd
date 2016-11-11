library IEEE;
use ieee.std_logic_1164.all;

entity registers is
	port(
		readRegister1, readRegister2, writeRegister : in std_logic_vector(4 downto 0); 
		writeData : in std_logic_vector(31 downto 0);
		clk, rst, pre, ce : in std_logic;
		readData1, readData2 : out std_logic_vector(31 downto 0)
	);
end registers;

architecture behav of registers is
	signal readRegister1, readRegister2, writeRegister : std_logic_vector(4 downto 0);

	begin
		readRegister1 <= readRegister1;
		readRegister2 <= readRegister2;
		writeRegister <= writeRegister;

		REG0 : entity work.thirty_two_bit_register(behav) port map(writeData, clk, rst, pre, ce, output);
		REG1 : entity work.thirty_two_bit_register(behav) port map(writeData, clk, rst, pre, ce, output);
		REG2 : entity work.thirty_two_bit_register(behav) port map(writeData, clk, rst, pre, ce, output);
		REG3 : entity work.thirty_two_bit_register(behav) port map(writeData, clk, rst, pre, ce, output);
		REG4 : entity work.thirty_two_bit_register(behav) port map(writeData, clk, rst, pre, ce, output);
		REG5 : entity work.thirty_two_bit_register(behav) port map(writeData, clk, rst, pre, ce, output);
		REG6 : entity work.thirty_two_bit_register(behav) port map(writeData, clk, rst, pre, ce, output);
		REG7 : entity work.thirty_two_bit_register(behav) port map(writeData, clk, rst, pre, ce, output);
		REG8 : entity work.thirty_two_bit_register(behav) port map(writeData, clk, rst, pre, ce, output);
		REG9 : entity work.thirty_two_bit_register(behav) port map(writeData, clk, rst, pre, ce, output);
		REG10 : entity work.thirty_two_bit_register(behav) port map(writeData, clk, rst, pre, ce, output);
		REG11 : entity work.thirty_two_bit_register(behav) port map(writeData, clk, rst, pre, ce, output);
		REG12 : entity work.thirty_two_bit_register(behav) port map(writeData, clk, rst, pre, ce, output);
		REG13 : entity work.thirty_two_bit_register(behav) port map(writeData, clk, rst, pre, ce, output);
		REG14 : entity work.thirty_two_bit_register(behav) port map(writeData, clk, rst, pre, ce, output);
		REG15 : entity work.thirty_two_bit_register(behav) port map(writeData, clk, rst, pre, ce, output);
		REG16 : entity work.thirty_two_bit_register(behav) port map(writeData, clk, rst, pre, ce, output);
		REG17 : entity work.thirty_two_bit_register(behav) port map(writeData, clk, rst, pre, ce, output);
		REG18 : entity work.thirty_two_bit_register(behav) port map(writeData, clk, rst, pre, ce, output);
		REG19 : entity work.thirty_two_bit_register(behav) port map(writeData, clk, rst, pre, ce, output);
		REG20 : entity work.thirty_two_bit_register(behav) port map(writeData, clk, rst, pre, ce, output);
		REG21 : entity work.thirty_two_bit_register(behav) port map(writeData, clk, rst, pre, ce, output);
		REG22 : entity work.thirty_two_bit_register(behav) port map(writeData, clk, rst, pre, ce, output);
		REG23 : entity work.thirty_two_bit_register(behav) port map(writeData, clk, rst, pre, ce, output);
		REG24 : entity work.thirty_two_bit_register(behav) port map(writeData, clk, rst, pre, ce, output);
		REG25 : entity work.thirty_two_bit_register(behav) port map(writeData, clk, rst, pre, ce, output);
		REG26 : entity work.thirty_two_bit_register(behav) port map(writeData, clk, rst, pre, ce, output);
		REG27 : entity work.thirty_two_bit_register(behav) port map(writeData, clk, rst, pre, ce, output);
		REG28 : entity work.thirty_two_bit_register(behav) port map(writeData, clk, rst, pre, ce, output);
		REG29 : entity work.thirty_two_bit_register(behav) port map(writeData, clk, rst, pre, ce, output);
		REG30 : entity work.thirty_two_bit_register(behav) port map(writeData, clk, rst, pre, ce, output);
		REG31 : entity work.thirty_two_bit_register(behav) port map(writeData, clk, rst, pre, ce, output);
end behav;