library IEEE;
use ieee.std_logic_1164.all;

entity test_bench_sign_extend is
end test_bench_sign_extend;

architecture behav of test_bench_sign_extend is

component sign_extend
	port(
		instr15_0 : in std_logic_vector(15 downto 0);
		clk, rst, pre, ce : in std_logic;
		output : out std_logic_vector(31 downto 0));
end component;

--Inputs
signal	instr15_0 : std_logic_vector(15 downto 0) := (others => '0');
signal	clk, rst, pre, ce : std_logic :='0';

--Outputs
signal	output : std_logic_vector(31 downto 0);

begin
	test_bench: sign_extend port map(
		instr15_0 => instr15_0,
		clk => clk,
		rst => rst,
		pre => pre,
		ce => ce,
		output => output
	);

stim_proc: process
begin
	wait for 50 ns;
	instr15_0 <= "0110000000011111";
	clk <= '1';
	rst <= '0';
	pre <= '0';
	ce <= '1';

	wait;
end process;

end;