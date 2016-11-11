library IEEE;
use ieee.std_logic_1164.all;

entity test_bench_alu_cu is
end test_bench_alu_cu;

architecture behav of test_bench_alu_cu is

component alu_cu
	port(
		--Inputs
		FC: in std_logic_vector(5 downto 0);
		ALUOp: in std_logic_vector(1 downto 0);
		--Output
		Operation: out std_logic_vector(2 downto 0) );
end component;

--Inputs
signal	FC : std_logic_vector(5 downto 0) := (others => '0');
signal	ALUOp : std_logic_vector(1 downto 0) := (others => '0');

--Outputs
signal	Operation : std_logic_vector(2 downto 0) := (others => '0');

begin
	test_bench: alu_cu port map(
		FC => FC,
		ALUOp => ALUOp,
		Operation => Operation
	);

stim_proc: process
begin
	wait for 50 ns;
	FC <= "101010";
	ALUOp <= "10";
	
	wait;
end process;

end;
