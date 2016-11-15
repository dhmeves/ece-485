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
	signal pcSource, ALUSrcB, ALUOp : std_logic_vector(1 downto 0);
	signal instr31_26, instr5_0 : std_logic_vector(5 downto 0);
	signal instr25_21, instr20_16, instr15_11, writeReg : std_logic_vector(4 downto 0);
	signal instr15_0 : std_logic_vector(15 downto 0);
	signal instr25_0 : std_logic_vector(25 downto 0);
	begin
		control_unit : entity work.control_unit(behav) port map(instr31_26, clk, pcWriteCond, pcWrite, IorD, memRead, memWrite, memToReg, irWrite, ALUSrcA, regWrite, regDst, pcSource, ALUSrcB, ALUOp);
		instruction_register : entity work.instr_reg(behav) port map(instruction, irWrite, instr31_26, instr5_0, instr25_21, instr20_16, instr15_11, instr15_0, instr25_0);
		writeRegMux : entity work.two_to_one_mux_5_bit(behav) port map(instr20_16, instr15_11, regDst, writeReg);
		register_file : entity work.registers(behav) port map(instr25_21, instr20_16, writeReg, );
		writeDataMux : entity work.two_to_one_mux(behav) port map( );
		memDataReg : entity work.memory_data_register(behav) port map();
		RAM : entity work.memory(behav) port map();
		PC : entity work.program_counter(behav) port map();
		PC_MUX : entity work.two_to_one_mux(behav) port map();
		sign_extend : entity work.sign_extend(behav) port map();
		shift_left_2_ALU_B_MUX : entity work.shift_register_by2(behav) port map();
		ALU_B_MUX : entity work.four_to_one_mux(behav) port map();
		A_BUF : entity work.A(behav) port map();
		B_BUF : entity work.B(behav) port map();
		ALU_PC_A_MUX : entity work.two_to_one_mux(behav) port map();
		ALU : entity work.thirty_two_bit_alu(behav) port map();
		ALU_BUF : entity work.ALUOut(behav) port map();
		JUMP_Shift_Left : entity work.shift_register_by2(behav) port map();
		JUMP_MUX : entity work.four_to_one_mux(behav) port map();
end behav;
