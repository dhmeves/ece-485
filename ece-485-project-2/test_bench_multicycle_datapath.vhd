library IEEE;
use ieee.std_logic_1164.all;

entity test_bench_multicycle_datapath is
end test_bench_multicycle_datapath;

architecture behav of test_bench_multicycle_datapath is

component multicycle_datapath is
	port(
		clk, rst, pre, ce : in std_logic
	);
end component;

signal clk, rst, pre, ce, finished : std_logic := '0';
--signal freq : real;
--signal period : time := 1 sec / freq;
--signal half_period : time := period / 2;

begin
	test_bench: multicycle_datapath port map(
		clk => clk,
		rst => rst,
		pre => pre,
		ce => ce
	);

--freq <= 0.01;
--clk <= not clk after half_period when finished /= '1' else '0';
--ce <= '1';

stim_process : process
begin
	clk <= '0';
	wait for 10 NS;
	--wait for half_period;
	clk <= '1';
	wait for 10 NS;
	--wait for half_period;
	
	--wait 50 ns;

end process;
end;