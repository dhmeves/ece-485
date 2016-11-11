library IEEE;
use ieee.std_logic_1164.all;

entity test_bench_ripple_adder is
end test_bench_ripple_adder;

architecture behav of test_bench_ripple_adder is

component thirty_two_bit_alu
	port( 
		a, b : in std_logic_vector(31 downto 0);
		less, ainvert, binvert, cin : in std_logic;
		ALUOp : in std_logic_vector(1 downto 0);
		result : out std_logic_vector(31 downto 0);
		cout, set, overflow : out std_logic);
end component;

--Inputs
signal a, b : std_logic_vector(31 downto 0) := (others => '0');
signal less, ainvert, binvert, cin : std_logic := '0';
signal ALUOp : std_logic_vector(1 downto 0) := (others => '0');

--Outputs
signal result : std_logic_vector(31 downto 0);
signal cout, set, overflow : std_logic;

begin
	test_bench: thirty_two_bit_alu port map(
		a => a,
		b => b,
		less => less,
		ainvert => ainvert,
		binvert => binvert,
		cin => cin,
		ALUOp => ALUOp,
		result => result,
		cout => cout,
		set => set,
		overflow => overflow
	);

stim_proc: process
begin
	wait for 50 ns;
	a <= "00001111000011110000111100001111";
	b <= "10101010101010101010101010101010";
	less <= '0';
	ainvert <= '0';
	binvert <= '0';
	cin <= '0';
	ALUOp <= "01";
	set <= '0';
	overflow <= '0';	

	wait;
end process;

end;