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
	signal amuxoutput, bmuxoutput, andgate, orgate, sum :  std_logic;
	begin
		--Creating objects of each (Port map sends the inputs for each object and receives output)
		FULLADDER : entity work.one_bit_full_adder(behav) port map(amuxoutput, bmuxoutput, carryin, carryout, sum);
		A_MUX : entity work.two_to_one_mux(behav) port map (a, "not"(a), ainvert, amuxoutput);
		B_MUX : entity work.two_to_one_mux(behav) port map (b, "not"(b), binvert, bmuxoutput);
		andgate <= amuxoutput and bmuxoutput;
		orgate <= amuxoutput or bmuxoutput;
		OUTMUX : entity work.four_to_one_mux(behav) port map (andgate, orgate, sum, less, ALUOp, result);
end behav;