library IEEE;
use ieee.std_logic_1164.all;

entity sign_extend is
	port(
		instr15_0 : in std_logic_vector(15 downto 0);
		clk, rst, pre, ce : in std_logic;
		output : out std_logic_vector(31 downto 0)
	);
end sign_extend;

architecture behav of sign_extend is
	signal output_buf, output_buf0 : std_logic;
	begin	
	
		DFF1 : entity work.d_flip_flop(behav) port map(clk, instr15_0(0), rst, pre, ce, output(0));
		DFF2 : entity work.d_flip_flop(behav) port map(clk, instr15_0(1), rst, pre, ce, output(1));
		DFF3 : entity work.d_flip_flop(behav) port map(clk, instr15_0(2), rst, pre, ce, output(2));
		DFF4 : entity work.d_flip_flop(behav) port map(clk, instr15_0(3), rst, pre, ce, output(3));
		DFF5 : entity work.d_flip_flop(behav) port map(clk, instr15_0(4), rst, pre, ce, output(4));
		DFF6 : entity work.d_flip_flop(behav) port map(clk, instr15_0(5), rst, pre, ce, output(5));
		DFF7 : entity work.d_flip_flop(behav) port map(clk, instr15_0(6), rst, pre, ce, output(6));
		DFF8 : entity work.d_flip_flop(behav) port map(clk, instr15_0(7), rst, pre, ce, output(7));
		DFF9 : entity work.d_flip_flop(behav) port map(clk, instr15_0(8), rst, pre, ce, output(8));
		DFF10 : entity work.d_flip_flop(behav) port map(clk, instr15_0(9), rst, pre, ce, output(9));
		DFF11 : entity work.d_flip_flop(behav) port map(clk, instr15_0(10), rst, pre, ce, output(10));
		DFF12 : entity work.d_flip_flop(behav) port map(clk, instr15_0(11), rst, pre, ce, output(11));
		DFF13 : entity work.d_flip_flop(behav) port map(clk, instr15_0(12), rst, pre, ce, output(12));
		DFF14 : entity work.d_flip_flop(behav) port map(clk, instr15_0(13), rst, pre, ce, output(13));
		DFF15 : entity work.d_flip_flop(behav) port map(clk, instr15_0(14), rst, pre, ce, output(14));
		DFF16 : entity work.d_flip_flop(behav) port map(clk, instr15_0(15), rst, pre, ce, output(15));
		
		output_buf0 <= instr15_0(15) when rst = '0' else '0' when rst = '1'; 
		output_buf <= output_buf0 when pre = '0' else '1' when pre = '1';
		
		output(16) <= '0' when output_buf = '0' else '1' when output_buf = '1';
		output(17) <= '0' when output_buf = '0' else '1' when output_buf = '1';
		output(18) <= '0' when output_buf = '0' else '1' when output_buf = '1';
		output(19) <= '0' when output_buf = '0' else '1' when output_buf = '1';
		output(20) <= '0' when output_buf = '0' else '1' when output_buf = '1';
		output(21) <= '0' when output_buf = '0' else '1' when output_buf = '1';
		output(22) <= '0' when output_buf = '0' else '1' when output_buf = '1';
		output(23) <= '0' when output_buf = '0' else '1' when output_buf = '1';
		output(24) <= '0' when output_buf = '0' else '1' when output_buf = '1';
		output(25) <= '0' when output_buf = '0' else '1' when output_buf = '1';
		output(26) <= '0' when output_buf = '0' else '1' when output_buf = '1';
		output(27) <= '0' when output_buf = '0' else '1' when output_buf = '1';
		output(28) <= '0' when output_buf = '0' else '1' when output_buf = '1';
		output(29) <= '0' when output_buf = '0' else '1' when output_buf = '1';
		output(30) <= '0' when output_buf = '0' else '1' when output_buf = '1';
		output(31) <= '0' when output_buf = '0' else '1' when output_buf = '1';
end behav;