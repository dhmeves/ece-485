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
	signal out0, out1, out2, out3, out4, out5, out6, out7, out8, out9, out10, out11, out12, out13, out14, out15, out16, out17, out18, out19, out20, out21, out22, out23, out24, out25, out26, out27, out28, out29, out30, out31 : std_logic_vector(31 downto 0);

	begin
		DEMUX : entity work.one_to_thirty_two_demux(behav) port map(writeData, writeRegister, out0, out1, out2, out3, out4, out5, out6, out7, out8, out9, out10, out11, out12, out13, out14, out15, out16, out17, out18, out19, out20, out21, out22, out23, out24, out25, out26, out27, out28, out29, out30, out31);

		REG0 : entity work.thirty_two_bit_register(behav) port map(out0, clk, rst, pre, ce, output);
		REG1 : entity work.thirty_two_bit_register(behav) port map(out1, clk, rst, pre, ce, output);
		REG2 : entity work.thirty_two_bit_register(behav) port map(out2, clk, rst, pre, ce, output);
		REG3 : entity work.thirty_two_bit_register(behav) port map(out3, clk, rst, pre, ce, output);
		REG4 : entity work.thirty_two_bit_register(behav) port map(out4, clk, rst, pre, ce, output);
		REG5 : entity work.thirty_two_bit_register(behav) port map(out5, clk, rst, pre, ce, output);
		REG6 : entity work.thirty_two_bit_register(behav) port map(out6, clk, rst, pre, ce, output);
		REG7 : entity work.thirty_two_bit_register(behav) port map(out7, clk, rst, pre, ce, output);
		REG8 : entity work.thirty_two_bit_register(behav) port map(out8, clk, rst, pre, ce, output);
		REG9 : entity work.thirty_two_bit_register(behav) port map(out9, clk, rst, pre, ce, output);
		REG10 : entity work.thirty_two_bit_register(behav) port map(out10, clk, rst, pre, ce, output);
		REG11 : entity work.thirty_two_bit_register(behav) port map(out11, clk, rst, pre, ce, output);
		REG12 : entity work.thirty_two_bit_register(behav) port map(out12, clk, rst, pre, ce, output);
		REG13 : entity work.thirty_two_bit_register(behav) port map(out13, clk, rst, pre, ce, output);
		REG14 : entity work.thirty_two_bit_register(behav) port map(out14, clk, rst, pre, ce, output);
		REG15 : entity work.thirty_two_bit_register(behav) port map(out15, clk, rst, pre, ce, output);
		REG16 : entity work.thirty_two_bit_register(behav) port map(out16, clk, rst, pre, ce, output);
		REG17 : entity work.thirty_two_bit_register(behav) port map(out17, clk, rst, pre, ce, output);
		REG18 : entity work.thirty_two_bit_register(behav) port map(out18, clk, rst, pre, ce, output);
		REG19 : entity work.thirty_two_bit_register(behav) port map(out19, clk, rst, pre, ce, output);
		REG20 : entity work.thirty_two_bit_register(behav) port map(out20, clk, rst, pre, ce, output);
		REG21 : entity work.thirty_two_bit_register(behav) port map(out21, clk, rst, pre, ce, output);
		REG22 : entity work.thirty_two_bit_register(behav) port map(out22, clk, rst, pre, ce, output);
		REG23 : entity work.thirty_two_bit_register(behav) port map(out23, clk, rst, pre, ce, output);
		REG24 : entity work.thirty_two_bit_register(behav) port map(out24, clk, rst, pre, ce, output);
		REG25 : entity work.thirty_two_bit_register(behav) port map(out25, clk, rst, pre, ce, output);
		REG26 : entity work.thirty_two_bit_register(behav) port map(out26, clk, rst, pre, ce, output);
		REG27 : entity work.thirty_two_bit_register(behav) port map(out27, clk, rst, pre, ce, output);
		REG28 : entity work.thirty_two_bit_register(behav) port map(out28, clk, rst, pre, ce, output);
		REG29 : entity work.thirty_two_bit_register(behav) port map(out29, clk, rst, pre, ce, output);
		REG30 : entity work.thirty_two_bit_register(behav) port map(out30, clk, rst, pre, ce, output);
		REG31 : entity work.thirty_two_bit_register(behav) port map(out31, clk, rst, pre, ce, output);
end behav;