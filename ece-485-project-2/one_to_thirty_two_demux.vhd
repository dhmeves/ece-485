library IEEE;
use ieee.std_logic_1164.all;

entity one_to_thirty_two_demux is
	port(
		input : in std_logic_vector(31 downto 0);
		sel : in std_logic_vector(4 downto 0);
		a, b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q, r, s, t, u ,v, w, x, y, z, out27, out28, out29, out30, out31, out32 : out std_logic_vector(31 downto 0)
	);
end one_to_thirty_two_demux;

architecture behav of one_to_thirty_two_demux is
	begin
		a <= input when sel="00000" else "ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ";
		b <= input when sel="00001" else "ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ";
		c <= input when sel="00010" else "ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ";
		d <= input when sel="00011" else "ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ";
		e <= input when sel="00100" else "ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ";
		f <= input when sel="00101" else "ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ";
		g <= input when sel="00110" else "ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ";
		h <= input when sel="00111" else "ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ";
		i <= input when sel="01000" else "ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ";
		j <= input when sel="01001" else "ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ";
		k <= input when sel="01010" else "ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ";
		l <= input when sel="01011" else "ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ";
		m <= input when sel="01100" else "ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ";
		n <= input when sel="01101" else "ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ";
		o <= input when sel="01110" else "ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ";
		p <= input when sel="01111" else "ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ";
		q <= input when sel="10000" else "ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ";
		r <= input when sel="10001" else "ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ";
		s <= input when sel="10010" else "ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ";
		t <= input when sel="10011" else "ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ";
		u <= input when sel="10100" else "ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ";
		v <= input when sel="10101" else "ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ";
		w <= input when sel="10110" else "ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ";
		x <= input when sel="10111" else "ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ";
		y <= input when sel="11000" else "ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ";
		z <= input when sel="11001" else "ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ";
		out27 <= input when sel="11010" else "ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ";
		out28 <= input when sel="11011" else "ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ";
		out29 <= input when sel="11100" else "ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ";
		out30 <= input when sel="11101" else "ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ";
		out31 <= input when sel="11110" else "ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ";
		out32 <= input when sel="11111" else "ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ";
end behav;