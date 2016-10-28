library IEEE;
use ieee.std_logic_1164.all;

entity alu is
	port(
		a, b, less, ainvert , binvert, carryin, ALUOp0, ALUOp1 : in std_logic;
		carryout, result, set, overflow: out std_logic
	);
end entity alu;

architecture behav of alu is
	signal amuxoutput, bmuxoutput, andgate, orgate, sum :  std_logic := '0';
	begin
		FULLADDER : entity work.one_bit_full_adder(behav) port map(amuxoutput, bmuxoutput, carryin, carryout, sum);
		A_MUX : entity work.two_to_one_mux(behav) port map (a, "not"(a), ainvert, amuxoutput);
		B_MUX : entity work.two_to_one_mux(behav) port map (b, "not"(b), binvert, bmuxoutput);
		andgate <= amuxoutput and bmuxoutput;
		orgate <= amuxoutput or bmuxoutput;
		OUTMUX : entity work.four_to_one_mux(behav) port map (andgate, orgate, sum, less, ALUOp0, ALUOp1, result);
end behav;