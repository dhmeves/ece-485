library IEEE;
use ieee.std_logic_1164.all;

entity multicycle_datapath is
	port( 
		instruction : in std_logic_vector(31 downto 0);
		clk : in std_logic
	);
end multicycle_datapath;

architecture behav of multicycle_datapath is
	signal pcWriteCond, pcWrite, IorD, memRead, memWrite, memToReg, irWrite, ALUSrcA, regWrite, regDst : std_logic;
	signal pcSource, ALUOp, ALUSrcB : std_logic_vector(1 downto 0);
	signal instr31_26, instr5_0 : std_logic_vector(5 downto 0);
	signal instr25_21, instr20_16, instr15_11 : std_logic_vector(4 downto 0);
	signal instr15_0 : std_logic_vector(15 downto 0);
	signal instr25_0 : std_logic_vector(25 downto 0)
	begin
		control_unit : entity work.control_unit(behav) port map(instr31_26, clk, pcWriteCond, pcWrite, IorD, memRead, memWrite, memToReg, irWrite, ALUSrcA, regWrite, regDst );
		instruction_register : entity work.instr_reg(behav) port map(instruction, irWrite, instr31_26, instr5_0, instr25_21, instr20_16, instr15_11, instr15_0, instr25_0);
end behav;
