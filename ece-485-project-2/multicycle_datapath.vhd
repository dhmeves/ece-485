library IEEE;
use ieee.std_logic_1164.all;

entity multicycle_datapath is
	port( 
		clk, rst, pre, ce : in std_logic
	);
end multicycle_datapath;

architecture behav of multicycle_datapath is
	signal pcWriteCond, pcWrite, IorD, memRead, memWrite, memToReg, irWrite, ALUSrcA, regWrite, regDst, pcControl, ALUZeroCond, bne, branch_type, branch, less, ainvert, binvert, cin, cout, set, overflow : std_logic;
	signal pcSource, ALUSrcB, ALUOp, AluCuOp : std_logic_vector(1 downto 0);
	signal instr31_26, instr5_0 : std_logic_vector(5 downto 0);
	signal instr25_21, instr20_16, instr15_11, writeReg : std_logic_vector(4 downto 0);
	signal instr15_0 : std_logic_vector(15 downto 0);
	signal instr25_0 : std_logic_vector(25 downto 0);
	signal pcIn, pcOut, ALU_BUF_IN, ALU_BUF_OUT, address, A_BUF_IN, A_BUF_OUT, B_BUF_IN, B_BUF_OUT, memDataIn, memDataOut, writeData, sign_extend_out, shift_left_2_sign_extend, immediate_four, ALU_A_IN, ALU_B_IN, instr25_0_32_bit, jump28 : std_logic_vector(31 downto 0);
	signal operation : std_logic_vector(2 downto 0);
	begin
		pcControl <= pcWrite or (pcWriteCond and branch);

		immediate_four <= "00000000000000000000000000000100";

		jump28(31) <= pcOut(31);
		jump28(30) <= pcOut(30);
		jump28(29) <= pcOut(29);
		jump28(28) <= pcOut(28);

		cin <= '0';
		less <= '0';
		ainvert <= '0';
		set <= '0';
		overflow <= '0';

		instr25_0_32_bit(31) <= '0';
		instr25_0_32_bit(30) <= '0';
		instr25_0_32_bit(29) <= '0';
		instr25_0_32_bit(28) <= '0';
		instr25_0_32_bit(27) <= '0';
		instr25_0_32_bit(26) <= '0';
		instr25_0_32_bit(25) <= instr25_0(25);
		instr25_0_32_bit(24) <= instr25_0(24);
		instr25_0_32_bit(23) <= instr25_0(23);
		instr25_0_32_bit(22) <= instr25_0(22);
		instr25_0_32_bit(21) <= instr25_0(21);
		instr25_0_32_bit(20) <= instr25_0(20);
		instr25_0_32_bit(19) <= instr25_0(19);
		instr25_0_32_bit(18) <= instr25_0(18);
		instr25_0_32_bit(17) <= instr25_0(17);
		instr25_0_32_bit(16) <= instr25_0(16);
		instr25_0_32_bit(15) <= instr25_0(15);
		instr25_0_32_bit(14) <= instr25_0(14);
		instr25_0_32_bit(13) <= instr25_0(13);
		instr25_0_32_bit(12) <= instr25_0(12);
		instr25_0_32_bit(11) <= instr25_0(11);
		instr25_0_32_bit(10) <= instr25_0(10);
		instr25_0_32_bit(9) <= instr25_0(9);
		instr25_0_32_bit(8) <= instr25_0(8);
		instr25_0_32_bit(7) <= instr25_0(7);
		instr25_0_32_bit(6) <= instr25_0(6);
		instr25_0_32_bit(5) <= instr25_0(5);
		instr25_0_32_bit(4) <= instr25_0(4);
		instr25_0_32_bit(3) <= instr25_0(3);
		instr25_0_32_bit(2) <= instr25_0(2);
		instr25_0_32_bit(1) <= instr25_0(1);
		instr25_0_32_bit(0) <= instr25_0(0);

		AluCuOp(1) <= operation(1);
		AluCuOp(0) <= operation(0);
		BEQ_MUX : entity work.two_to_one_mux_1_bit(behav) port map(ALUZeroCond, bne, branch_type, branch);		
		alu_cu : entity work.alu_cu(behav) port map(instr5_0, ALUOp, instr31_26, operation);
		control_unit : entity work.control_unit(behav) port map(instr31_26, clk, pcWriteCond, pcWrite, IorD, memRead, memWrite, memToReg, irWrite, ALUSrcA, regWrite, regDst, branch_type, pcSource, ALUSrcB, ALUOp);
		instruction_register : entity work.instr_reg(behav) port map(memDataIn, irWrite, instr31_26, instr5_0, instr25_21, instr20_16, instr15_11, instr15_0, instr25_0);
		writeRegMux : entity work.two_to_one_mux_5_bit(behav) port map(instr20_16, instr15_11, regDst, writeReg);
		register_file : entity work.registers(behav) port map(instr25_21, instr20_16, writeReg, writeData, clk, rst, pre, regWrite, A_BUF_IN, B_BUF_IN);
		writeDataMux : entity work.two_to_one_mux(behav) port map(ALU_BUF_OUT, memDataOut, memToReg, writeData);
		memDataReg : entity work.memory_data_register(behav) port map(memDataIn, clk, rst, pre, ce, memDataOut);
		RAM : entity work.memory(behav) port map(address, B_BUF_OUT, clk, memRead, memWrite, memDataIn);
		PC : entity work.program_counter(behav) port map(pcIn, clk, rst, pre, ce, pcControl, pcOut);
		PC_MUX : entity work.two_to_one_mux(behav) port map(pcOut, ALU_BUF_OUT, IorD, address);
		sign_extend : entity work.sign_extend(behav) port map(instr15_0, clk, rst, pre, ce, sign_extend_out);
		shift_left_2_ALU_B_MUX : entity work.shift_register_by2(behav) port map(sign_extend_out, shift_left_2_sign_extend);
		ALU_B_MUX : entity work.four_to_one_mux(behav) port map(B_BUF_OUT, immediate_four, sign_extend_out, shift_left_2_sign_extend, ALUSrcB, ALU_B_IN);
		A_BUF : entity work.A(behav) port map(A_BUF_IN, clk, rst, pre, ce, A_BUF_OUT);
		B_BUF : entity work.B(behav) port map(B_BUF_IN, clk, rst, pre, ce, operation(2), B_BUF_OUT);
		ALU_PC_A_MUX : entity work.two_to_one_mux(behav) port map(pcOut, A_BUF_OUT, ALUSrcA, ALU_A_IN);
		ALU : entity work.thirty_two_bit_alu(behav) port map(ALU_A_IN, ALU_B_IN, less, ainvert, operation(2), cin, clk, rst, pre, ce, AluCuOp, ALU_BUF_IN, cout, set, overflow, ALUZeroCond, bne);
		ALU_BUF : entity work.ALUOut(behav) port map(ALU_BUF_IN, clk, rst, pre, ce, ALU_BUF_OUT);
		JUMP_Shift_Left : entity work.shift_register_by2(behav) port map(instr25_0_32_bit, jump28);
		JUMP_MUX : entity work.four_to_one_mux(behav) port map(ALU_BUF_IN, ALU_BUF_OUT, jump28, immediate_four, pcSource, pcIn);
end behav;
