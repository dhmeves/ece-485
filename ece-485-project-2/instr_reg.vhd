library IEEE;
use ieee.std_logic_1164.all;

entity instr_reg is
	port(
		input : in std_logic_vector(31 downto 0);
		IRw : in std_logic;
		instr31_26, instr5_0 : out std_logic_vector(5 downto 0);
		instr25_21, instr20_16, instr15_11 : out std_logic_vector(4 downto 0);
		instr15_0 : out std_logic_vector(15 downto 0);
		instr25_0 : out std_logic_vector(25 downto 0)
	);
end instr_reg;

architecture behav of instr_reg is
	signal	Rr1, Rr2, Wr1, Wr2, Opc, FC : std_logic_vector(5 downto 0);
	signal	Se16 : std_logic_vector(15 downto 0);
	signal	Se26 : std_logic_vector(25 downto 0); 
	begin
		instr31_26	<= input(31 downto 26);
		instr25_21	<= input(25 downto 21);
		instr25_0	<= input(25 downto 0);
		instr20_16	<= input(20 downto 16);
		instr15_11	<= input(15 downto 11);
		instr15_0	<= input(15 downto 0);
		instr5_0	<= input(5 downto 0);

end behav;
		 
		
		
	
