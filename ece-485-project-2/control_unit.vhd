library IEEE;
use ieee.std_logic_1164.all;

entity control_unit is
	port(
		op : in std_logic_vector(31 downto 26);
		pcWriteCond, pcWrite, IorD, memRead, memWrite, memToReg, irWrite, ALUSrcA, regWrite, regDst : out std_logic;
		ALUSrcB, ALUOp : out std_logic_vector(1 downto 0);
	);
end control_unit;

architecture behav of control_unit is
	begin		