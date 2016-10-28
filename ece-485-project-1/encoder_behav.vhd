library ieee;
use ieee.std_logic_1164.all;

entity encoder_behav is
	port(
	input : in std_logic_vector(5 downto 0);
	output : out std_logic_vector(2 downto 0)
	);
end entity encoder_behav;

architecture behav of encoder_behav is
begin
	process(input)
	begin
		case input is
		when "000001" => output <= "000";
		when "000010" => output <= "001";
		when "000100" => output <= "010";
		when "001000" => output <= "011";
		when "010000" => output <= "100";
		when "100000" => output <= "101";
		when others => output <= "XXX";
		end case;
	end process;
end behav;

library ieee;
use ieee.std_logic_1164.all;

entity encoder_behav_test_bench is
end encoder_behav_test_bench;

architecture behavior of encoder_behav_test_bench is 

-- Component Declaration for the Encoder Behavioral Model Test Bench

	component encoder_behav
		port(
			input : in std_logic_vector(5 downto 0);
			output : out std_logic_vector(2 downto 0)
		);
	end component;

	-- inputs
	signal input : std_logic_vector(5 downto 0) := (others => '0');

	-- outputs
	signal output : std_logic_vector(2 downto 0);

	begin

	-- Instantiate the Encoder Test Bench

		test_bench: encoder_behav port map (
			input => input,
			output => output
		);

	-- Stimulus process
	stim_proc: process
	begin	
		-- hold reset state for 50 ns.
		wait for 50 ns;
		input <= "000000";
		wait for 50 ns;
		input <= "000001";
		wait for 50 ns;
		input <= "000010";
		wait for 50 ns;
		input <= "000011";
		wait for 50 ns;
		input <= "000100";
		wait for 50 ns;
		input <= "000101";
		wait for 50 ns;
		input <= "000110";
		wait for 50 ns;
		input <= "000111";
		wait for 50 ns;
		input <= "001000";
		wait for 50 ns;
		input <= "001001";
		wait for 50 ns;
		input <= "001010";
		wait for 50 ns;
		input <= "001011";
		wait for 50 ns;
		input <= "001100";
		wait for 50 ns;
		input <= "001101";
		wait for 50 ns;
		input <= "001110";
		wait for 50 ns;
		input <= "001111";
		wait for 50 ns;
		input <= "010000";
		wait for 50 ns;
		input <= "010001";
		wait for 50 ns;
		input <= "010010";
		wait for 50 ns;
		input <= "010011";
		wait for 50 ns;
		input <= "010100";
		wait for 50 ns;
		input <= "010101";
		wait for 50 ns;
		input <= "010110";
		wait for 50 ns;
		input <= "010111";
		wait for 50 ns;
		input <= "011000";
		wait for 50 ns;
		input <= "011001";
		wait for 50 ns;
		input <= "011010";
		wait for 50 ns;
		input <= "011011";
		wait for 50 ns;
		input <= "011100";
		wait for 50 ns;
		input <= "011101";
		wait for 50 ns;
		input <= "011110";
		wait for 50 ns;
		input <= "011111";
		wait for 50 ns;
		input <= "100000";
		wait for 50 ns;
		input <= "100001";
		wait for 50 ns;
		input <= "100010";
		wait for 50 ns;
		input <= "100011";
		wait for 50 ns;
		input <= "100100";
		wait for 50 ns;
		input <= "100101";
		wait for 50 ns;
		input <= "100110";
		wait for 50 ns;
		input <= "100111";
		wait for 50 ns;
		input <= "101000";
		wait for 50 ns;
		input <= "101001";
		wait for 50 ns;
		input <= "101010";
		wait for 50 ns;
		input <= "101011";
		wait for 50 ns;
		input <= "101100";
		wait for 50 ns;
		input <= "101101";
		wait for 50 ns;
		input <= "101110";
		wait for 50 ns;
		input <= "101111";
		wait for 50 ns;
		input <= "110000";
		wait for 50 ns;
		input <= "110001";
		wait for 50 ns;
		input <= "110010";
		wait for 50 ns;
		input <= "110011";
		wait for 50 ns;
		input <= "110100";
		wait for 50 ns;
		input <= "110101";
		wait for 50 ns;
		input <= "110110";
		wait for 50 ns;
		input <= "110111";
		wait for 50 ns;
		input <= "111000";
		wait for 50 ns;
		input <= "111001";
		wait for 50 ns;
		input <= "111010";
		wait for 50 ns;
		input <= "111011";
		wait for 50 ns;
		input <= "111100";
		wait for 50 ns;
		input <= "111101";
		wait for 50 ns;
		input <= "111110";
		wait for 50 ns;
		input <= "111111";
		wait;
	end process;
end;