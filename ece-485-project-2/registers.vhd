library IEEE;
use ieee.std_logic_1164.all;

entity registers is
	port(
		readRegister1, readRegister2, writeRegister : in std_logic_vector(4 downto 0); 
		writeData : in std_logic_vector(31 downto 0);
		clk, rst, pre, regWrite : in std_logic;
		readData1, readData2 : out std_logic_vector(31 downto 0)
	);
end registers;

architecture behav of registers is
	signal in0, in1, in2, in3, in4, in5, in6, in7, in8, in9, in10, in11, in12, in13, in14, in15, in16, in17, in18, in19, in20, in21, in22, in23, in24, in25, in26, in27, in28, in29, in30, in31 : std_logic_vector(31 downto 0);
	signal out0, out1, out2, out3, out4, out5, out6, out7, out8, out9, out10, out11, out12, out13, out14, out15, out16, out17, out18, out19, out20, out21, out22, out23, out24, out25, out26, out27, out28, out29, out30, out31 : std_logic_vector(31 downto 0);
	signal ce0, ce1, ce2, ce3, ce4, ce5, ce6, ce7, ce8, ce9, ce10, ce11, ce12, ce13, ce14, ce15, ce16, ce17, ce18, ce19, ce20, ce21, ce22, ce23, ce24, ce25, ce26, ce27, ce28, ce29, ce30, ce31 : std_logic;
	begin
		DEMUX : entity work.one_to_thirty_two_demux(behav) port map(writeData, writeRegister, out0, out1, out2, out3, out4, out5, out6, out7, out8, out9, out10, out11, out12, out13, out14, out15, out16, out17, out18, out19, out20, out21, out22, out23, out24, out25, out26, out27, out28, out29, out30, out31, ce0, ce1, ce2, ce3, ce4, ce5, ce6, ce7, ce8, ce9, ce10, ce11, ce12, ce13, ce14, ce15, ce16, ce17, ce18, ce19, ce20, ce21, ce22, ce23, ce24, ce25, ce26, ce27, ce28, ce29, ce30, ce31);
		MUXA : entity work.thirty_two_to_one_mux(behav) port map(in0, in1, in2, in3, in4, in5, in6, in7, in8, in9, in10, in11, in12, in13, in14, in15, in16, in17, in18, in19, in20, in21, in22, in23, in24, in25, in26, in27, in28, in29, in30, in31, readRegister1, readData1);
		MUXB : entity work.thirty_two_to_one_mux(behav) port map(in0, in1, in2, in3, in4, in5, in6, in7, in8, in9, in10, in11, in12, in13, in14, in15, in16, in17, in18, in19, in20, in21, in22, in23, in24, in25, in26, in27, in28, in29, in30, in31, readRegister2, readData2);
		REG0 : entity work.thirty_two_bit_register(behav) port map(out0, clk, rst, pre, ce0, in0);
		REG1 : entity work.thirty_two_bit_register(behav) port map(out1, clk, rst, pre, ce1, in1);
		REG2 : entity work.thirty_two_bit_register(behav) port map(out2, clk, rst, pre, ce2, in2);
		REG3 : entity work.thirty_two_bit_register(behav) port map(out3, clk, rst, pre, ce3, in3);
		REG4 : entity work.thirty_two_bit_register(behav) port map(out4, clk, rst, pre, ce4, in4);
		REG5 : entity work.thirty_two_bit_register(behav) port map(out5, clk, rst, pre, ce5, in5);
		REG6 : entity work.thirty_two_bit_register(behav) port map(out6, clk, rst, pre, ce6, in6);
		REG7 : entity work.thirty_two_bit_register(behav) port map(out7, clk, rst, pre, ce7, in7);
		REG8 : entity work.thirty_two_bit_register(behav) port map(out8, clk, rst, pre, ce8, in8);
		REG9 : entity work.thirty_two_bit_register(behav) port map(out9, clk, rst, pre, ce9, in9);
		REG10 : entity work.thirty_two_bit_register(behav) port map(out10, clk, rst, pre, ce10, in10);
		REG11 : entity work.thirty_two_bit_register(behav) port map(out11, clk, rst, pre, ce11, in11);
		REG12 : entity work.thirty_two_bit_register(behav) port map(out12, clk, rst, pre, ce12, in12);
		REG13 : entity work.thirty_two_bit_register(behav) port map(out13, clk, rst, pre, ce13, in13);
		REG14 : entity work.thirty_two_bit_register(behav) port map(out14, clk, rst, pre, ce14, in14);
		REG15 : entity work.thirty_two_bit_register(behav) port map(out15, clk, rst, pre, ce15, in15);
		REG16 : entity work.thirty_two_bit_register(behav) port map(out16, clk, rst, pre, ce16, in16);
		REG17 : entity work.thirty_two_bit_register(behav) port map(out17, clk, rst, pre, ce17, in17);
		REG18 : entity work.thirty_two_bit_register(behav) port map(out18, clk, rst, pre, ce18, in18);
		REG19 : entity work.thirty_two_bit_register(behav) port map(out19, clk, rst, pre, ce19, in19);
		REG20 : entity work.thirty_two_bit_register(behav) port map(out20, clk, rst, pre, ce20, in20);
		REG21 : entity work.thirty_two_bit_register(behav) port map(out21, clk, rst, pre, ce21, in21);
		REG22 : entity work.thirty_two_bit_register(behav) port map(out22, clk, rst, pre, ce22, in22);
		REG23 : entity work.thirty_two_bit_register(behav) port map(out23, clk, rst, pre, ce23, in23);
		REG24 : entity work.thirty_two_bit_register(behav) port map(out24, clk, rst, pre, ce24, in24);
		REG25 : entity work.thirty_two_bit_register(behav) port map(out25, clk, rst, pre, ce25, in25);
		REG26 : entity work.thirty_two_bit_register(behav) port map(out26, clk, rst, pre, ce26, in26);
		REG27 : entity work.thirty_two_bit_register(behav) port map(out27, clk, rst, pre, ce27, in27);
		REG28 : entity work.thirty_two_bit_register(behav) port map(out28, clk, rst, pre, ce28, in28);
		REG29 : entity work.thirty_two_bit_register(behav) port map(out29, clk, rst, pre, ce29, in29);
		REG30 : entity work.thirty_two_bit_register(behav) port map(out30, clk, rst, pre, ce30, in30);
		REG31 : entity work.thirty_two_bit_register(behav) port map(out31, clk, rst, pre, ce31, in31);
end behav;