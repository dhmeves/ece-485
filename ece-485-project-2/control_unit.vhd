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
	type operate is (branch, rtype, load, store, jump, orop, itype);
	signal operation : operate;
	signal current_state : states;
	begin
		process(clk) is
		begin
			if rising_edge(clk) then
				if (current_state=S_If) then		
					current_state<=S_Id;
				elsif (current_state=S_Id) then		
					current_state<=S_Ex;
				elsif (current_state=S_Ex) then		
					current_state<=S_Mem;
				elsif (current_state=S_Mem) then		
					current_state<=S_Wb;
				elsif (current_state=S_WB) then	
					current_state<=S_If;
				end if;
			end if;
		end process;
		
		process(current_state, clk) is
		begin
		if (current_state=S_If) then
				pcWriteCond <= '0';
				pcWrite <= '1';
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

		if (current_state=S_ID) then
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
				ALUSrcB <= "11";
				ALUOp <= "00";
			if (op="000000") then			-- rtype
				operation<=rtype;
			elsif (op="100011") then		-- load
				operation<=load;
			elsif (op="101011") then		-- store
				operation<=store;
			elsif (op="000100") then		-- branch
				operation<=branch;
				ALUOp <= "01";
			elsif (op="010000") then		-- or
				operation<=orop;
			elsif (op="001100") then		-- itype
				operation<=itype;
			end if;
		end if;

		if (current_state=S_Ex) then
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
			if (operation=rtype) then			-- add
				ALUSrcA <= '1';
				ALUSrcB <= "00";
				ALUOp <= "10";
			elsif (operation=load) then		-- lw
				ALUSrcA <= '1';
				ALUSrcB <= "10";
				ALUOp <= "00";
			elsif (operation=store) then		--sw
				ALUSrcA <= '1';
				ALUSrcB <= "10";
				ALUOp <= "00";
			elsif (operation=branch) then		-- bne/beq
				ALUSrcA <= '1';
				ALUSrcB <= "00";
				ALUOp <= "01";
				pcWriteCond <= '1';
				pcSource <= "01";
			elsif (operation=orop) then		-- or
				ALUSrcA <= '1';
				ALUSrcB <= "00";
				ALUOp <= "00";
			elsif (operation=itype) then		-- andi
				ALUSrcA <= '1';
				ALUSrcB <= "10";
				ALUOp <= "10";
			end if;
		end if;

		if (current_state=S_Mem) then
			if falling_edge(clk) and (operation=load) then		-- lw
				memRead <= '1';
				memWrite <= '0';
				IorD <= '1';
			elsif rising_edge(clk) and (operation=store) then		--sw
				memRead <= '0';
				memWrite <= '1';
				IorD <= '1';
			end if;	
		end if;

		if (current_state=S_Wb) then
			if (operation=rtype) then
				regDst <= '1';
				regWrite <= '1';
				memToReg <= '0';
			elsif (operation=load) then		-- lw
				regDst <= '1';
				regWrite <= '1';
				memToReg <= '0';
			elsif (operation=orop) then		-- or
				regDst <= '1';
				regWrite <= '1';
				memToReg <= '1';	
			elsif (operation=itype) then		-- andi
				regDst <= '1';
				regWrite <= '1';
				memToReg <= '0';
			end if;
		end if;
	end process;
end behav;
