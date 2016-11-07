library IEEE;
use ieee.std_logic_1164.all;

entity sign_extend is
	port(
		instr15_0 : in std_logic_vector(15 downto 0)
		clk, rst, pre, ce : in std_logic;
		output : out std_logic_vector(31 downto 0)
	);
end sign_extend;

architecture behav of sign_extend is
	begin	
		DFF1 : entity work.d_flip_flop(behav) port map(clk, instr15_0(0), rst, pre, ce, output(0));
		DFF2 : entity work.d_flip_flop(behav) port map(clk, instr15_0(1), rst, pre, ce, output(1));
		DFF3 : entity work.d_flip_flop(behav) port map(clk, instr15_0(2), rst, pre, ce, output(2));
		DFF4 : entity work.d_flip_flop(behav) port map(clk, isntr15_0(3), rst, pre, ce, output(3));
		DFF5 : entity work.d_flip_flop(behav) port map(clk, isntr15_0(4), rst, pre, ce, output(4));
		DFF6 : entity work.d_flip_flop(behav) port map(clk, isntr15_0(5), rst, pre, ce, output(5));
		DFF7 : entity work.d_flip_flop(behav) port map(clk, isntr15_0(6), rst, pre, ce, output(6));
		DFF8 : entity work.d_flip_flop(behav) port map(clk, isntr15_0(7), rst, pre, ce, output(7));
		DFF9 : entity work.d_flip_flop(behav) port map(clk, isntr15_0(8), rst, pre, ce, output(8));
		DFF10 : entity work.d_flip_flop(behav) port map(clk, isntr15_0(9), rst, pre, ce, output(9));
		DFF11 : entity work.d_flip_flop(behav) port map(clk, isntr15_0(10), rst, pre, ce, output(10));
		DFF12 : entity work.d_flip_flop(behav) port map(clk, isntr15_0(11), rst, pre, ce, output(11));
		DFF13 : entity work.d_flip_flop(behav) port map(clk, isntr15_0(12), rst, pre, ce, output(12));
		DFF14 : entity work.d_flip_flop(behav) port map(clk, isntr15_0(13), rst, pre, ce, output(13));
		DFF15 : entity work.d_flip_flop(behav) port map(clk, isntr15_0(14), rst, pre, ce, output(14));
		DFF16 : entity work.d_flip_flop(behav) port map(clk, isntr15_0(15), rst, pre, ce, output(15));

		if (output(15) = '0') then (
			DFF17 : entity work.d_flip_flop(behav) port map(clk, 0, 1, pre, ce, output(16));	
			DFF18 : entity work.d_flip_flop(behav) port map(clk, 0, 1, pre, ce, output(17));
			DFF19 : entity work.d_flip_flop(behav) port map(clk, 0, 1, pre, ce, output(18));
			DFF20 : entity work.d_flip_flop(behav) port map(clk, 0, 1, pre, ce, output(19));
			DFF21 : entity work.d_flip_flop(behav) port map(clk, 0, 1, pre, ce, output(20));
			DFF22 : entity work.d_flip_flop(behav) port map(clk, 0, 1, pre, ce, output(21));
			DFF23 : entity work.d_flip_flop(behav) port map(clk, 0, 1, pre, ce, output(22));
			DFF24 : entity work.d_flip_flop(behav) port map(clk, 0, 1, pre, ce, output(23));
			DFF25 : entity work.d_flip_flop(behav) port map(clk, 0, 1, pre, ce, output(24));
			DFF26 : entity work.d_flip_flop(behav) port map(clk, 0, 1, pre, ce, output(25));
			DFF27 : entity work.d_flip_flop(behav) port map(clk, 0, 1, pre, ce, output(26));
			DFF28 : entity work.d_flip_flop(behav) port map(clk, 0, 1, pre, ce, output(27));
			DFF29 : entity work.d_flip_flop(behav) port map(clk, 0, 1, pre, ce, output(28));
			DFF30 : entity work.d_flip_flop(behav) port map(clk, 0, 1, pre, ce, output(29));
			DFF31 : entity work.d_flip_flop(behav) port map(clk, 0, 1, pre, ce, output(30));
			DFF32 : entity work.d_flip_flop(behav) port map(clk, 0, 1, pre, ce, output(31))
		);

		if (output(15) = '1') then (
			DFF17 : entity work.d_flip_flop(behav) port map(clk, 1, rst, 1, ce, output(16));	
			DFF18 : entity work.d_flip_flop(behav) port map(clk, 1, rst, 1, ce, output(17));
			DFF19 : entity work.d_flip_flop(behav) port map(clk, 1, rst, 1, ce, output(18));
			DFF20 : entity work.d_flip_flop(behav) port map(clk, 1, rst, 1, ce, output(19));
			DFF21 : entity work.d_flip_flop(behav) port map(clk, 1, rst, 1, ce, output(20));
			DFF22 : entity work.d_flip_flop(behav) port map(clk, 1, rst, 1, ce, output(21));
			DFF23 : entity work.d_flip_flop(behav) port map(clk, 1, rst, 1, ce, output(22));
			DFF24 : entity work.d_flip_flop(behav) port map(clk, 1, rst, 1, ce, output(23));
			DFF25 : entity work.d_flip_flop(behav) port map(clk, 1, rst, 1, ce, output(24));
			DFF26 : entity work.d_flip_flop(behav) port map(clk, 1, rst, 1, ce, output(25));
			DFF27 : entity work.d_flip_flop(behav) port map(clk, 1, rst, 1, ce, output(26));
			DFF28 : entity work.d_flip_flop(behav) port map(clk, 1, rst, 1, ce, output(27));
			DFF29 : entity work.d_flip_flop(behav) port map(clk, 1, rst, 1, ce, output(28));
			DFF30 : entity work.d_flip_flop(behav) port map(clk, 1, rst, 1, ce, output(29));
			DFF31 : entity work.d_flip_flop(behav) port map(clk, 1, rst, 1, ce, output(30));
			DFF32 : entity work.d_flip_flop(behav) port map(clk, 1, rst, 1, ce, output(31))
		);
end behav;