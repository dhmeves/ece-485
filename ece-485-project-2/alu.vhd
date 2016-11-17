library IEEE;
use ieee.std_logic_1164.all;

entity alu is
	port(	--Inputs
		a, b, less, ainvert , binvert, carryin : in std_logic;
		ALUOp : in std_logic_vector(1 downto 0);
		--Outputs
		carryout, result, set, overflow: out std_logic
	);
end entity alu;

architecture behav of alu is
	signal A32, B32, LESS32, amuxoutput, bmuxoutput, andgate, orgate, sum, RESULT32 : std_logic_vector(31 downto 0);
	
	begin
		A32(0) <= a;
		B32(0) <= b;
		LESS32(0) <= less;
		result <= RESULT32(0);
		--Creating objects of each (Port map sends the inputs for each object and receives output)
		FULLADDER : entity work.one_bit_full_adder(behav) port map(amuxoutput, bmuxoutput, carryin, carryout, sum);
		A_MUX : entity work.two_to_one_mux(behav) port map (A32, "not"(A32), ainvert, amuxoutput);
		B_MUX : entity work.two_to_one_mux(behav) port map (B32, B32, binvert, bmuxoutput);
		andgate <= amuxoutput and bmuxoutput;
		orgate <= amuxoutput or bmuxoutput;
		OUTMUX : entity work.four_to_one_mux(behav) port map (andgate, orgate, sum, LESS32, ALUOp, RESULT32);
end behav;