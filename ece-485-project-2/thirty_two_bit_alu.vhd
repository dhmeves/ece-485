library IEEE;
use ieee.std_logic_1164.all;

entity thirty_two_bit_alu is
	port(
		a, b : in std_logic_vector(31 downto 0);
		less, ainvert, binvert, cin, ALUOp0, ALUOp1 : in std_logic;
		result : out std_logic_vector(31 downto 0);
		cout, set, overflow : out std_logic);
end thirty_two_bit_alu;

architecture behav of thirty_two_bit_alu is
	signal c : std_logic_vector(30 downto 0) := (others => '0');
	begin
		--Instances
		ADD1 : entity work.alu(behav) port map(a(0), b(0), less, ainvert, binvert, cin, ALUOp0, ALUOp1, c(0), result(0), set, overflow);
		ADD2 : entity work.alu(behav) port map(a(1), b(1), less, ainvert, binvert, c(0), ALUOp0, ALUOp1, c(1), result(1), set, overflow);
		ADD3 : entity work.alu(behav) port map(a(2), b(2), less, ainvert, binvert, c(1), ALUOp0, ALUOp1, c(2), result(2), set, overflow);
		ADD4 : entity work.alu(behav) port map(a(3), b(3), less, ainvert, binvert, c(2), ALUOp0, ALUOp1, c(3), result(3), set, overflow);
		ADD5 : entity work.alu(behav) port map(a(4), b(4), less, ainvert, binvert, c(3), ALUOp0, ALUOp1, c(4), result(4), set, overflow);
		ADD6 : entity work.alu(behav) port map(a(5), b(5), less, ainvert, binvert, c(4), ALUOp0, ALUOp1, c(5), result(5), set, overflow);
		ADD7 : entity work.alu(behav) port map(a(6), b(6), less, ainvert, binvert, c(5), ALUOp0, ALUOp1, c(6), result(6), set, overflow);
		ADD8 : entity work.alu(behav) port map(a(7), b(7), less, ainvert, binvert, c(6), ALUOp0, ALUOp1, c(7), result(7), set, overflow);
		ADD9 : entity work.alu(behav) port map(a(8), b(8), less, ainvert, binvert, c(7), ALUOp0, ALUOp1, c(8), result(8), set, overflow);
		ADD10 : entity work.alu(behav) port map(a(9), b(9), less, ainvert, binvert, c(8), ALUOp0, ALUOp1, c(9), result(9), set, overflow);
		ADD11 : entity work.alu(behav) port map(a(10), b(10), less, ainvert, binvert, c(9), ALUOp0, ALUOp1, c(10), result(10), set, overflow);
		ADD12 : entity work.alu(behav) port map(a(11), b(11), less, ainvert, binvert, c(10), ALUOp0, ALUOp1, c(11), result(11), set, overflow);
		ADD13 : entity work.alu(behav) port map(a(12), b(12), less, ainvert, binvert, c(11), ALUOp0, ALUOp1, c(12), result(12), set, overflow);
		ADD14 : entity work.alu(behav) port map(a(13), b(13), less, ainvert, binvert, c(12), ALUOp0, ALUOp1, c(13), result(13), set, overflow);
		ADD15 : entity work.alu(behav) port map(a(14), b(14), less, ainvert, binvert, c(13), ALUOp0, ALUOp1, c(14), result(14), set, overflow);
		ADD16 : entity work.alu(behav) port map(a(15), b(15), less, ainvert, binvert, c(14), ALUOp0, ALUOp1, c(15), result(15), set, overflow);
		ADD17 : entity work.alu(behav) port map(a(16), b(16), less, ainvert, binvert, c(15), ALUOp0, ALUOp1, c(16), result(16), set, overflow);
		ADD18 : entity work.alu(behav) port map(a(17), b(17), less, ainvert, binvert, c(16), ALUOp0, ALUOp1, c(17), result(17), set, overflow);
		ADD19 : entity work.alu(behav) port map(a(18), b(18), less, ainvert, binvert, c(17), ALUOp0, ALUOp1, c(18), result(18), set, overflow);
		ADD20 : entity work.alu(behav) port map(a(19), b(19), less, ainvert, binvert, c(18), ALUOp0, ALUOp1, c(19), result(19), set, overflow);
		ADD21 : entity work.alu(behav) port map(a(20), b(20), less, ainvert, binvert, c(19), ALUOp0, ALUOp1, c(20), result(20), set, overflow);
		ADD22 : entity work.alu(behav) port map(a(21), b(21), less, ainvert, binvert, c(20), ALUOp0, ALUOp1, c(21), result(21), set, overflow);
		ADD23 : entity work.alu(behav) port map(a(22), b(22), less, ainvert, binvert, c(21), ALUOp0, ALUOp1, c(22), result(22), set, overflow);
		ADD24 : entity work.alu(behav) port map(a(23), b(23), less, ainvert, binvert, c(22), ALUOp0, ALUOp1, c(23), result(23), set, overflow);
		ADD25 : entity work.alu(behav) port map(a(24), b(24), less, ainvert, binvert, c(23), ALUOp0, ALUOp1, c(24), result(24), set, overflow);
		ADD26 : entity work.alu(behav) port map(a(25), b(25), less, ainvert, binvert, c(24), ALUOp0, ALUOp1, c(25), result(25), set, overflow);
		ADD27 : entity work.alu(behav) port map(a(26), b(26), less, ainvert, binvert, c(25), ALUOp0, ALUOp1, c(26), result(26), set, overflow);
		ADD28 : entity work.alu(behav) port map(a(27), b(27), less, ainvert, binvert, c(26), ALUOp0, ALUOp1, c(27), result(27), set, overflow);
		ADD29 : entity work.alu(behav) port map(a(28), b(28), less, ainvert, binvert, c(27), ALUOp0, ALUOp1, c(28), result(28), set, overflow);
		ADD30 : entity work.alu(behav) port map(a(29), b(29), less, ainvert, binvert, c(28), ALUOp0, ALUOp1, c(29), result(29), set, overflow);
		ADD31 : entity work.alu(behav) port map(a(30), b(30), less, ainvert, binvert, c(29), ALUOp0, ALUOp1, c(30), result(30), set, overflow);
		ADD32 : entity work.alu(behav) port map(a(31), b(31), less, ainvert, binvert, c(30), ALUOp0, ALUOp1, cout, result(31), set, overflow);
end behav;	