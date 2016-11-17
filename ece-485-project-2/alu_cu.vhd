library IEEE;
use ieee.std_logic_1164.all;

entity alu_cu is
	port(
		--Inputs
		FC: in std_logic_vector(5 downto 0);
		ALUOp: in std_logic_vector(1 downto 0);
		--Output
		Operation: out std_logic_vector (2 downto 0)
		
	);
end entity alu_cu;

architecture behav of alu_cu is
	signal  orgateop0, andgateop0, notorgateop1, andgateop2, orgateop2, op0, op1, op2 : std_logic :='0';
	signal FuCo : std_logic_vector(5 downto 0);
	--signal	OP : std_logic_vector(2 downto 0);
	begin 	
		FuCo<= FC when (ALUOp = "10") else "000000";
		orgateop0 <= FuCo(3) or FuCo(0);
		andgateop0 <= orgateop0 and ALUOp(1);
		notorgateop1 <= (not ALUOp(1)) or (not FuCo(2));
		andgateop2 <= ALUOp(1) and FuCo(1);
		orgateop2 <= ALUOp(0) or andgateop2;
		op2 <= andgateop2;
		op1 <= notorgateop1;
		op0 <= orgateop0; 
		Operation(2) <= op2;
		Operation(1) <= op1;
		Operation(0) <= op0;
end behav; 
		


		
