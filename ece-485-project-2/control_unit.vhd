library IEEE;
use ieee.std_logic_1164.all;

entity control_unit is
	port(
		op : in std_logic_vector(5 downto 0);
		clk : in std_logic;
		pcWriteCond, pcWrite, IorD, memRead, memWrite, memToReg, irWrite, ALUSrcA, regWrite, regDst : out std_logic;
		pcSource, ALUSrcB, ALUOp : out std_logic_vector(1 downto 0)
	);
end control_unit;

architecture behav of control_unit is
	type states is (S_If, S_Id, S_Ex, S_Mem, S_Wb);
	signal current_state : states;
	begin
		process(clk) is
		begin
			if rising_edge(clk) then
				if (current_state=S_If) then		
					current_state<=S_If;
				elsif (current_state=S_Id) then		
					current_state<=S_Id;
				elsif (current_state=S_Ex) then		
					current_state<=S_Ex;
				elsif (current_state=S_Mem) then		
					current_state<=S_Mem;
				elsif (current_state=S_WB) then	
					current_state<=S_Wb;
				end if;
			end if;
		end process;
		
		process(current_state) is
		begin
		if (current_state=S_If) then
				pcWriteCond <= '0';
				pcWrite <= '0';
				IorD <= '0';
				memRead <= '1';
				memWrite <= '0';
				memToReg <= '0';
				irWrite <= '1';
				ALUSrcA <= '0';
				regWrite <= '1';
				regDst <= '1';
				pcSource <= "00";
				ALUSrcB <= "01";
				ALUOp <= "00";
			
			end if;
		end if;

		if (current_state=S_ID) then
			if (op="000000") then			-- add
				pcWriteCond <= '0';
				pcWrite <= '0';
				IorD <= '0';
				memRead <= '0';
				memWrite <= '0';
				memToReg <= '0';
				irWrite <= '0';
				ALUSrcA <= '0';
				regWrite <= '1';
				regDst <= '1';
				pcSource <= "00";
				ALUSrcB <= "00";
				ALUOp <= "10";
			elsif (op="100011") then		-- lw
				pcWriteCond <= '0';
				pcWrite <= '0';
				IorD <= '0';
				memRead <= '1';
				memWrite <= '0';
				memToReg <= '1';
				irWrite <= '0';
				ALUSrcA <= '1';
				regWrite <= '1';
				regDst <= '0';
				pcSource <= "00";
				ALUSrcB <= "00";
				ALUOp <= "00";
			elsif (op="101011") then		--sw
				pcWriteCond <= '0';
				pcWrite <= '0';
				IorD <= '0';
				memRead <= '0';
				memWrite <= '1';
				memToReg <= 'X';
				irWrite <= '0';
				ALUSrcA <= '1';
				regWrite <= '0';
				regDst <= 'X';
				pcSource <= "00";
				ALUSrcB <= "00";
				ALUOp <= "00";
			elsif (op="000100") then		-- bne/beq
				pcWriteCond <= '0';
				pcWrite <= '0';
				IorD <= '0';
				memRead <= '0';
				memWrite <= '0';
				memToReg <= 'X';
				irWrite <= '0';
				ALUSrcA <= '0';
				regWrite <= '0';
				regDst <= 'X';
				pcSource <= "00";
				ALUSrcB <= "00";
				ALUOp <= "01";
			elsif (op="010000") then		-- or
				pcWriteCond <= '0';
				pcWrite <= '0';
				IorD <= '0';
				memRead <= '0';
				memWrite <= '0';
				memToReg <= '0';
				irWrite <= '0';
				ALUSrcA <= '0';
				regWrite <= '0';
				regDst <= '0';
				pcSource <= "00";
				ALUSrcB <= "00";
				ALUOp <= "00";
			elsif (op="010001") then		-- andi
				pcWriteCond <= '0';
				pcWrite <= '0';
				IorD <= '0';
				memRead <= '0';
				memWrite <= '0';
				memToReg <= '0';
				irWrite <= '0';
				ALUSrcA <= '0';
				regWrite <= '0';
				regDst <= '0';
				pcSource <= "00";
				ALUSrcB <= "00";
				ALUOp <= "00";
			end if;
		end if;

		if (current_state=S_Ex) then
			if (op="000000") then			-- add
				pcWriteCond <= '0';
				pcWrite <= '0';
				IorD <= '0';
				memRead <= '0';
				memWrite <= '0';
				memToReg <= '0';
				irWrite <= '0';
				ALUSrcA <= '0';
				regWrite <= '1';
				regDst <= '1';
				pcSource <= "00";
				ALUSrcB <= "00";
				ALUOp <= "10";
			elsif (op="100011") then		-- lw
				pcWriteCond <= '0';
				pcWrite <= '0';
				IorD <= '0';
				memRead <= '1';
				memWrite <= '0';
				memToReg <= '1';
				irWrite <= '0';
				ALUSrcA <= '1';
				regWrite <= '1';
				regDst <= '0';
				pcSource <= "00";
				ALUSrcB <= "00";
				ALUOp <= "00";
			elsif (op="101011") then		--sw
				pcWriteCond <= '0';
				pcWrite <= '0';
				IorD <= '0';
				memRead <= '0';
				memWrite <= '1';
				memToReg <= 'X';
				irWrite <= '0';
				ALUSrcA <= '1';
				regWrite <= '0';
				regDst <= 'X';
				pcSource <= "00";
				ALUSrcB <= "00";
				ALUOp <= "00";
			elsif (op="000100") then		-- bne/beq
				pcWriteCond <= '0';
				pcWrite <= '0';
				IorD <= '0';
				memRead <= '0';
				memWrite <= '0';
				memToReg <= 'X';
				irWrite <= '0';
				ALUSrcA <= '0';
				regWrite <= '0';
				regDst <= 'X';
				pcSource <= "00";
				ALUSrcB <= "00";
				ALUOp <= "01";
			elsif (op="010000") then		-- or
				pcWriteCond <= '0';
				pcWrite <= '0';
				IorD <= '0';
				memRead <= '0';
				memWrite <= '0';
				memToReg <= '0';
				irWrite <= '0';
				ALUSrcA <= '0';
				regWrite <= '0';
				regDst <= '0';
				pcSource <= "00";
				ALUSrcB <= "00";
				ALUOp <= "00";
			elsif (op="010001") then		-- andi
				pcWriteCond <= '0';
				pcWrite <= '0';
				IorD <= '0';
				memRead <= '0';
				memWrite <= '0';
				memToReg <= '0';
				irWrite <= '0';
				ALUSrcA <= '0';
				regWrite <= '0';
				regDst <= '0';
				pcSource <= "00";
				ALUSrcB <= "00";
				ALUOp <= "00";
			end if;
		end if;

		if (current_state=S_Mem) then
			if (op="000000") then			-- add
				pcWriteCond <= '0';
				pcWrite <= '0';
				IorD <= '0';
				memRead <= '0';
				memWrite <= '0';
				memToReg <= '0';
				irWrite <= '0';
				ALUSrcA <= '0';
				regWrite <= '1';
				regDst <= '1';
				pcSource <= "00";
				ALUSrcB <= "00";
				ALUOp <= "10";
			elsif (op="100011") then		-- lw
				pcWriteCond <= '0';
				pcWrite <= '0';
				IorD <= '0';
				memRead <= '1';
				memWrite <= '0';
				memToReg <= '1';
				irWrite <= '0';
				ALUSrcA <= '1';
				regWrite <= '1';
				regDst <= '0';
				pcSource <= "00";
				ALUSrcB <= "00";
				ALUOp <= "00";
			elsif (op="101011") then		--sw
				pcWriteCond <= '0';
				pcWrite <= '0';
				IorD <= '0';
				memRead <= '0';
				memWrite <= '1';
				memToReg <= 'X';
				irWrite <= '0';
				ALUSrcA <= '1';
				regWrite <= '0';
				regDst <= 'X';
				pcSource <= "00";
				ALUSrcB <= "00";
				ALUOp <= "00";
			elsif (op="000100") then		-- bne/beq
				pcWriteCond <= '0';
				pcWrite <= '0';
				IorD <= '0';
				memRead <= '0';
				memWrite <= '0';
				memToReg <= 'X';
				irWrite <= '0';
				ALUSrcA <= '0';
				regWrite <= '0';
				regDst <= 'X';
				pcSource <= "00";
				ALUSrcB <= "00";
				ALUOp <= "01";
			elsif (op="010000") then		-- or
				pcWriteCond <= '0';
				pcWrite <= '0';
				IorD <= '0';
				memRead <= '0';
				memWrite <= '0';
				memToReg <= '0';
				irWrite <= '0';
				ALUSrcA <= '0';
				regWrite <= '0';
				regDst <= '0';
				pcSource <= "00";
				ALUSrcB <= "00";
				ALUOp <= "00";
			elsif (op="010001") then		-- andi
				pcWriteCond <= '0';
				pcWrite <= '0';
				IorD <= '0';
				memRead <= '0';
				memWrite <= '0';
				memToReg <= '0';
				irWrite <= '0';
				ALUSrcA <= '0';
				regWrite <= '0';
				regDst <= '0';
				pcSource <= "00";
				ALUSrcB <= "00";
				ALUOp <= "00";
			end if;	
		end if;

		if (current_state=S_Wb) then
			if (op="000000") then			-- add
				pcWriteCond <= '0';
				pcWrite <= '0';
				IorD <= '0';
				memRead <= '0';
				memWrite <= '0';
				memToReg <= '0';
				irWrite <= '0';
				ALUSrcA <= '0';
				regWrite <= '1';
				regDst <= '1';
				pcSource <= "00";
				ALUSrcB <= "00";
				ALUOp <= "10";
			elsif (op="100011") then		-- lw
				pcWriteCond <= '0';
				pcWrite <= '0';
				IorD <= '0';
				memRead <= '1';
				memWrite <= '0';
				memToReg <= '1';
				irWrite <= '0';
				ALUSrcA <= '1';
				regWrite <= '1';
				regDst <= '0';
				pcSource <= "00";
				ALUSrcB <= "00";
				ALUOp <= "00";
			elsif (op="101011") then		--sw
				pcWriteCond <= '0';
				pcWrite <= '0';
				IorD <= '0';
				memRead <= '0';
				memWrite <= '1';
				memToReg <= 'X';
				irWrite <= '0';
				ALUSrcA <= '1';
				regWrite <= '0';
				regDst <= 'X';
				pcSource <= "00";
				ALUSrcB <= "00";
				ALUOp <= "00";
			elsif (op="000100") then		-- bne/beq
				pcWriteCond <= '0';
				pcWrite <= '0';
				IorD <= '0';
				memRead <= '0';
				memWrite <= '0';
				memToReg <= 'X';
				irWrite <= '0';
				ALUSrcA <= '0';
				regWrite <= '0';
				regDst <= 'X';
				pcSource <= "00";
				ALUSrcB <= "00";
				ALUOp <= "01";
			elsif (op="010000") then		-- or
				pcWriteCond <= '0';
				pcWrite <= '0';
				IorD <= '0';
				memRead <= '0';
				memWrite <= '0';
				memToReg <= '0';
				irWrite <= '0';
				ALUSrcA <= '0';
				regWrite <= '0';
				regDst <= '0';
				pcSource <= "00";
				ALUSrcB <= "00";
				ALUOp <= "00";
			elsif (op="010001") then		-- andi
				pcWriteCond <= '0';
				pcWrite <= '0';
				IorD <= '0';
				memRead <= '0';
				memWrite <= '0';
				memToReg <= '0';
				irWrite <= '0';
				ALUSrcA <= '0';
				regWrite <= '0';
				regDst <= '0';
				pcSource <= "00";
				ALUSrcB <= "00";
				ALUOp <= "00";
			end if;
		end if;
	end process;
end behav;