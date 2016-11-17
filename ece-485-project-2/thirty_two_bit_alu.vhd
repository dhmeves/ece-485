library IEEE;
use ieee.std_logic_1164.all;

entity thirty_two_bit_alu is
	port(
		a, B32 : in std_logic_vector(31 downto 0);
		less, ainvert, binvert, cin : in std_logic;
		ALUOp : in std_logic_vector(1 downto 0);
		result : out std_logic_vector(31 downto 0);
		cout, set, overflow, zero : out std_logic);
end thirty_two_bit_alu;

architecture behav of thirty_two_bit_alu is
	signal c : std_logic_vector(30 downto 0) := (others => '0');
	signal add, bout, b2comp : std_logic_vector(31 downto 0);
	begin
	
	process is
		begin 
			if (B32(0)='1') then
				b2comp(0) <= B32(0);
				b2comp(1) <= not B32(1);
				b2comp(2) <= not B32(2);
				b2comp(3) <= not B32(3);
				b2comp(4) <= not B32(4);
				b2comp(5) <= not B32(5);
				b2comp(6) <= not B32(6);
				b2comp(7) <= not B32(7);
				b2comp(8) <= not B32(8);
				b2comp(9) <= not B32(9);
				b2comp(10) <= not B32(10);
				b2comp(11) <= not B32(11);
				b2comp(12) <= not B32(12);
				b2comp(13) <= not B32(13);
				b2comp(14) <= not B32(14);
				b2comp(15) <= not B32(15);
				b2comp(16) <= not B32(16);
				b2comp(17) <= not B32(17);
				b2comp(18) <= not B32(18);
				b2comp(19) <= not B32(19);
				b2comp(20) <= not B32(20);
				b2comp(21) <= not B32(21);
				b2comp(22) <= not B32(22);
				b2comp(23) <= not B32(23);
				b2comp(24) <= not B32(24);
				b2comp(25) <= not B32(25);
				b2comp(26) <= not B32(26);
				b2comp(27) <= not B32(27);
				b2comp(28) <= not B32(28);
				b2comp(29) <= not B32(29);
				b2comp(30) <= not B32(30);
				b2comp(31) <= not B32(31);
			elsif (B32(1)='1') then
				b2comp(0) <= B32(0);
				b2comp(1) <= B32(1);
				b2comp(2) <= not B32(2);
				b2comp(3) <= not B32(3);
				b2comp(4) <= not B32(4);
				b2comp(5) <= not B32(5);
				b2comp(6) <= not B32(6);
				b2comp(7) <= not B32(7);
				b2comp(8) <= not B32(8);
				b2comp(9) <= not B32(9);
				b2comp(10) <= not B32(10);
				b2comp(11) <= not B32(11);
				b2comp(12) <= not B32(12);
				b2comp(13) <= not B32(13);
				b2comp(14) <= not B32(14);
				b2comp(15) <= not B32(15);
				b2comp(16) <= not B32(16);
				b2comp(17) <= not B32(17);
				b2comp(18) <= not B32(18);
				b2comp(19) <= not B32(19);
				b2comp(20) <= not B32(20);
				b2comp(21) <= not B32(21);
				b2comp(22) <= not B32(22);
				b2comp(23) <= not B32(23);
				b2comp(24) <= not B32(24);
				b2comp(25) <= not B32(25);
				b2comp(26) <= not B32(26);
				b2comp(27) <= not B32(27);
				b2comp(28) <= not B32(28);
				b2comp(29) <= not B32(29);
				b2comp(30) <= not B32(30);
				b2comp(31) <= not B32(31);
			elsif (B32(2)='1') then
				b2comp(0) <= B32(0);
				b2comp(1) <= B32(1);
				b2comp(2) <= B32(2);
				b2comp(3) <= not B32(3);
				b2comp(4) <= not B32(4);
				b2comp(5) <= not B32(5);
				b2comp(6) <= not B32(6);
				b2comp(7) <= not B32(7);
				b2comp(8) <= not B32(8);
				b2comp(9) <= not B32(9);
				b2comp(10) <= not B32(10);
				b2comp(11) <= not B32(11);
				b2comp(12) <= not B32(12);
				b2comp(13) <= not B32(13);
				b2comp(14) <= not B32(14);
				b2comp(15) <= not B32(15);
				b2comp(16) <= not B32(16);
				b2comp(17) <= not B32(17);
				b2comp(18) <= not B32(18);
				b2comp(19) <= not B32(19);
				b2comp(20) <= not B32(20);
				b2comp(21) <= not B32(21);
				b2comp(22) <= not B32(22);
				b2comp(23) <= not B32(23);
				b2comp(24) <= not B32(24);
				b2comp(25) <= not B32(25);
				b2comp(26) <= not B32(26);
				b2comp(27) <= not B32(27);
				b2comp(28) <= not B32(28);
				b2comp(29) <= not B32(29);
				b2comp(30) <= not B32(30);
				b2comp(31) <= not B32(31);
			elsif (B32(3)='1') then
				b2comp(0) <= B32(0);
				b2comp(1) <= B32(1);
				b2comp(2) <= B32(2);
				b2comp(3) <= B32(3);
				b2comp(4) <= not B32(4);
				b2comp(5) <= not B32(5);
				b2comp(6) <= not B32(6);
				b2comp(7) <= not B32(7);
				b2comp(8) <= not B32(8);
				b2comp(9) <= not B32(9);
				b2comp(10) <= not B32(10);
				b2comp(11) <= not B32(11);
				b2comp(12) <= not B32(12);
				b2comp(13) <= not B32(13);
				b2comp(14) <= not B32(14);
				b2comp(15) <= not B32(15);
				b2comp(16) <= not B32(16);
				b2comp(17) <= not B32(17);
				b2comp(18) <= not B32(18);
				b2comp(19) <= not B32(19);
				b2comp(20) <= not B32(20);
				b2comp(21) <= not B32(21);
				b2comp(22) <= not B32(22);
				b2comp(23) <= not B32(23);
				b2comp(24) <= not B32(24);
				b2comp(25) <= not B32(25);
				b2comp(26) <= not B32(26);
				b2comp(27) <= not B32(27);
				b2comp(28) <= not B32(28);
				b2comp(29) <= not B32(29);
				b2comp(30) <= not B32(30);
				b2comp(31) <= not B32(31);
			elsif (B32(4)='1') then
				b2comp(0) <= B32(0);
				b2comp(1) <= B32(1);
				b2comp(2) <= B32(2);
				b2comp(3) <= B32(3);
				b2comp(4) <= B32(4);
				b2comp(5) <= not B32(5);
				b2comp(6) <= not B32(6);
				b2comp(7) <= not B32(7);
				b2comp(8) <= not B32(8);
				b2comp(9) <= not B32(9);
				b2comp(10) <= not B32(10);
				b2comp(11) <= not B32(11);
				b2comp(12) <= not B32(12);
				b2comp(13) <= not B32(13);
				b2comp(14) <= not B32(14);
				b2comp(15) <= not B32(15);
				b2comp(16) <= not B32(16);
				b2comp(17) <= not B32(17);
				b2comp(18) <= not B32(18);
				b2comp(19) <= not B32(19);
				b2comp(20) <= not B32(20);
				b2comp(21) <= not B32(21);
				b2comp(22) <= not B32(22);
				b2comp(23) <= not B32(23);
				b2comp(24) <= not B32(24);
				b2comp(25) <= not B32(25);
				b2comp(26) <= not B32(26);
				b2comp(27) <= not B32(27);
				b2comp(28) <= not B32(28);
				b2comp(29) <= not B32(29);
				b2comp(30) <= not B32(30);
				b2comp(31) <= not B32(31);
			elsif (B32(5)='1') then
				b2comp(0) <= B32(0);
				b2comp(1) <= B32(1);
				b2comp(2) <= B32(2);
				b2comp(3) <= B32(3);
				b2comp(4) <= B32(4);
				b2comp(5) <= B32(5);
				b2comp(6) <= not B32(6);
				b2comp(7) <= not B32(7);
				b2comp(8) <= not B32(8);
				b2comp(9) <= not B32(9);
				b2comp(10) <= not B32(10);
				b2comp(11) <= not B32(11);
				b2comp(12) <= not B32(12);
				b2comp(13) <= not B32(13);
				b2comp(14) <= not B32(14);
				b2comp(15) <= not B32(15);
				b2comp(16) <= not B32(16);
				b2comp(17) <= not B32(17);
				b2comp(18) <= not B32(18);
				b2comp(19) <= not B32(19);
				b2comp(20) <= not B32(20);
				b2comp(21) <= not B32(21);
				b2comp(22) <= not B32(22);
				b2comp(23) <= not B32(23);
				b2comp(24) <= not B32(24);
				b2comp(25) <= not B32(25);
				b2comp(26) <= not B32(26);
				b2comp(27) <= not B32(27);
				b2comp(28) <= not B32(28);
				b2comp(29) <= not B32(29);
				b2comp(30) <= not B32(30);
				b2comp(31) <= not B32(31);
			elsif (B32(6)='1') then
				b2comp(0) <= B32(0);
				b2comp(1) <= B32(1);
				b2comp(2) <= B32(2);
				b2comp(3) <= B32(3);
				b2comp(4) <= B32(4);
				b2comp(5) <= B32(5);
				b2comp(6) <= B32(6);
				b2comp(7) <= not B32(7);
				b2comp(8) <= not B32(8);
				b2comp(9) <= not B32(9);
				b2comp(10) <= not B32(10);
				b2comp(11) <= not B32(11);
				b2comp(12) <= not B32(12);
				b2comp(13) <= not B32(13);
				b2comp(14) <= not B32(14);
				b2comp(15) <= not B32(15);
				b2comp(16) <= not B32(16);
				b2comp(17) <= not B32(17);
				b2comp(18) <= not B32(18);
				b2comp(19) <= not B32(19);
				b2comp(20) <= not B32(20);
				b2comp(21) <= not B32(21);
				b2comp(22) <= not B32(22);
				b2comp(23) <= not B32(23);
				b2comp(24) <= not B32(24);
				b2comp(25) <= not B32(25);
				b2comp(26) <= not B32(26);
				b2comp(27) <= not B32(27);
				b2comp(28) <= not B32(28);
				b2comp(29) <= not B32(29);
				b2comp(30) <= not B32(30);
				b2comp(31) <= not B32(31);
			elsif (B32(7)='1') then
				b2comp(0) <= B32(0);
				b2comp(1) <= B32(1);
				b2comp(2) <= B32(2);
				b2comp(3) <= B32(3);
				b2comp(4) <= B32(4);
				b2comp(5) <= B32(5);
				b2comp(6) <= B32(6);
				b2comp(7) <= B32(7);
				b2comp(8) <= not B32(8);
				b2comp(9) <= not B32(9);
				b2comp(10) <= not B32(10);
				b2comp(11) <= not B32(11);
				b2comp(12) <= not B32(12);
				b2comp(13) <= not B32(13);
				b2comp(14) <= not B32(14);
				b2comp(15) <= not B32(15);
				b2comp(16) <= not B32(16);
				b2comp(17) <= not B32(17);
				b2comp(18) <= not B32(18);
				b2comp(19) <= not B32(19);
				b2comp(20) <= not B32(20);
				b2comp(21) <= not B32(21);
				b2comp(22) <= not B32(22);
				b2comp(23) <= not B32(23);
				b2comp(24) <= not B32(24);
				b2comp(25) <= not B32(25);
				b2comp(26) <= not B32(26);
				b2comp(27) <= not B32(27);
				b2comp(28) <= not B32(28);
				b2comp(29) <= not B32(29);
				b2comp(30) <= not B32(30);
				b2comp(31) <= not B32(31);
			elsif (B32(8)='1') then
				b2comp(0) <= B32(0);
				b2comp(1) <= B32(1);
				b2comp(2) <= B32(2);
				b2comp(3) <= B32(3);
				b2comp(4) <= B32(4);
				b2comp(5) <= B32(5);
				b2comp(6) <= B32(6);
				b2comp(7) <= B32(7);
				b2comp(8) <= B32(8);
				b2comp(9) <= not B32(9);
				b2comp(10) <= not B32(10);
				b2comp(11) <= not B32(11);
				b2comp(12) <= not B32(12);
				b2comp(13) <= not B32(13);
				b2comp(14) <= not B32(14);
				b2comp(15) <= not B32(15);
				b2comp(16) <= not B32(16);
				b2comp(17) <= not B32(17);
				b2comp(18) <= not B32(18);
				b2comp(19) <= not B32(19);
				b2comp(20) <= not B32(20);
				b2comp(21) <= not B32(21);
				b2comp(22) <= not B32(22);
				b2comp(23) <= not B32(23);
				b2comp(24) <= not B32(24);
				b2comp(25) <= not B32(25);
				b2comp(26) <= not B32(26);
				b2comp(27) <= not B32(27);
				b2comp(28) <= not B32(28);
				b2comp(29) <= not B32(29);
				b2comp(30) <= not B32(30);
				b2comp(31) <= not B32(31);
			elsif (B32(9)='1') then
				b2comp(0) <= B32(0);
				b2comp(1) <= B32(1);
				b2comp(2) <= B32(2);
				b2comp(3) <= B32(3);
				b2comp(4) <= B32(4);
				b2comp(5) <= B32(5);
				b2comp(6) <= B32(6);
				b2comp(7) <= B32(7);
				b2comp(8) <= B32(8);
				b2comp(9) <= B32(9);
				b2comp(10) <= not B32(10);
				b2comp(11) <= not B32(11);
				b2comp(12) <= not B32(12);
				b2comp(13) <= not B32(13);
				b2comp(14) <= not B32(14);
				b2comp(15) <= not B32(15);
				b2comp(16) <= not B32(16);
				b2comp(17) <= not B32(17);
				b2comp(18) <= not B32(18);
				b2comp(19) <= not B32(19);
				b2comp(20) <= not B32(20);
				b2comp(21) <= not B32(21);
				b2comp(22) <= not B32(22);
				b2comp(23) <= not B32(23);
				b2comp(24) <= not B32(24);
				b2comp(25) <= not B32(25);
				b2comp(26) <= not B32(26);
				b2comp(27) <= not B32(27);
				b2comp(28) <= not B32(28);
				b2comp(29) <= not B32(29);
				b2comp(30) <= not B32(30);
				b2comp(31) <= not B32(31);
			elsif (B32(10)='1') then
				b2comp(0) <= B32(0);
				b2comp(1) <= B32(1);
				b2comp(2) <= B32(2);
				b2comp(3) <= B32(3);
				b2comp(4) <= B32(4);
				b2comp(5) <= B32(5);
				b2comp(6) <= B32(6);
				b2comp(7) <= B32(7);
				b2comp(8) <= B32(8);
				b2comp(9) <= B32(9);
				b2comp(10) <= B32(10);
				b2comp(11) <= not B32(11);
				b2comp(12) <= not B32(12);
				b2comp(13) <= not B32(13);
				b2comp(14) <= not B32(14);
				b2comp(15) <= not B32(15);
				b2comp(16) <= not B32(16);
				b2comp(17) <= not B32(17);
				b2comp(18) <= not B32(18);
				b2comp(19) <= not B32(19);
				b2comp(20) <= not B32(20);
				b2comp(21) <= not B32(21);
				b2comp(22) <= not B32(22);
				b2comp(23) <= not B32(23);
				b2comp(24) <= not B32(24);
				b2comp(25) <= not B32(25);
				b2comp(26) <= not B32(26);
				b2comp(27) <= not B32(27);
				b2comp(28) <= not B32(28);
				b2comp(29) <= not B32(29);
				b2comp(30) <= not B32(30);
				b2comp(31) <= not B32(31);
			elsif (B32(11)='1') then
				b2comp(0) <= B32(0);
				b2comp(1) <= B32(1);
				b2comp(2) <= B32(2);
				b2comp(3) <= B32(3);
				b2comp(4) <= B32(4);
				b2comp(5) <= B32(5);
				b2comp(6) <= B32(6);
				b2comp(7) <= B32(7);
				b2comp(8) <= B32(8);
				b2comp(9) <= B32(9);
				b2comp(10) <= B32(10);
				b2comp(11) <= B32(11);
				b2comp(12) <= not B32(12);
				b2comp(13) <= not B32(13);
				b2comp(14) <= not B32(14);
				b2comp(15) <= not B32(15);
				b2comp(16) <= not B32(16);
				b2comp(17) <= not B32(17);
				b2comp(18) <= not B32(18);
				b2comp(19) <= not B32(19);
				b2comp(20) <= not B32(20);
				b2comp(21) <= not B32(21);
				b2comp(22) <= not B32(22);
				b2comp(23) <= not B32(23);
				b2comp(24) <= not B32(24);
				b2comp(25) <= not B32(25);
				b2comp(26) <= not B32(26);
				b2comp(27) <= not B32(27);
				b2comp(28) <= not B32(28);
				b2comp(29) <= not B32(29);
				b2comp(30) <= not B32(30);
				b2comp(31) <= not B32(31);
			elsif (B32(12)='1') then
				b2comp(0) <= B32(0);
				b2comp(1) <= B32(1);
				b2comp(2) <= B32(2);
				b2comp(3) <= B32(3);
				b2comp(4) <= B32(4);
				b2comp(5) <= B32(5);
				b2comp(6) <= B32(6);
				b2comp(7) <= B32(7);
				b2comp(8) <= B32(8);
				b2comp(9) <= B32(9);
				b2comp(10) <= B32(10);
				b2comp(11) <= B32(11);
				b2comp(12) <= B32(12);
				b2comp(13) <= not B32(13);
				b2comp(14) <= not B32(14);
				b2comp(15) <= not B32(15);
				b2comp(16) <= not B32(16);
				b2comp(17) <= not B32(17);
				b2comp(18) <= not B32(18);
				b2comp(19) <= not B32(19);
				b2comp(20) <= not B32(20);
				b2comp(21) <= not B32(21);
				b2comp(22) <= not B32(22);
				b2comp(23) <= not B32(23);
				b2comp(24) <= not B32(24);
				b2comp(25) <= not B32(25);
				b2comp(26) <= not B32(26);
				b2comp(27) <= not B32(27);
				b2comp(28) <= not B32(28);
				b2comp(29) <= not B32(29);
				b2comp(30) <= not B32(30);
				b2comp(31) <= not B32(31);
			elsif (B32(13)='1') then
				b2comp(0) <= B32(0);
				b2comp(1) <= B32(1);
				b2comp(2) <= B32(2);
				b2comp(3) <= B32(3);
				b2comp(4) <= B32(4);
				b2comp(5) <= B32(5);
				b2comp(6) <= B32(6);
				b2comp(7) <= B32(7);
				b2comp(8) <= B32(8);
				b2comp(9) <= B32(9);
				b2comp(10) <= B32(10);
				b2comp(11) <= B32(11);
				b2comp(12) <= B32(12);
				b2comp(13) <= B32(13);
				b2comp(14) <= not B32(14);
				b2comp(15) <= not B32(15);
				b2comp(16) <= not B32(16);
				b2comp(17) <= not B32(17);
				b2comp(18) <= not B32(18);
				b2comp(19) <= not B32(19);
				b2comp(20) <= not B32(20);
				b2comp(21) <= not B32(21);
				b2comp(22) <= not B32(22);
				b2comp(23) <= not B32(23);
				b2comp(24) <= not B32(24);
				b2comp(25) <= not B32(25);
				b2comp(26) <= not B32(26);
				b2comp(27) <= not B32(27);
				b2comp(28) <= not B32(28);
				b2comp(29) <= not B32(29);
				b2comp(30) <= not B32(30);
				b2comp(31) <= not B32(31);
			elsif (B32(14)='1') then
				b2comp(0) <= B32(0);
				b2comp(1) <= B32(1);
				b2comp(2) <= B32(2);
				b2comp(3) <= B32(3);
				b2comp(4) <= B32(4);
				b2comp(5) <= B32(5);
				b2comp(6) <= B32(6);
				b2comp(7) <= B32(7);
				b2comp(8) <= B32(8);
				b2comp(9) <= B32(9);
				b2comp(10) <= B32(10);
				b2comp(11) <= B32(11);
				b2comp(12) <= B32(12);
				b2comp(13) <= B32(13);
				b2comp(14) <= B32(14);
				b2comp(15) <= not B32(15);
				b2comp(16) <= not B32(16);
				b2comp(17) <= not B32(17);
				b2comp(18) <= not B32(18);
				b2comp(19) <= not B32(19);
				b2comp(20) <= not B32(20);
				b2comp(21) <= not B32(21);
				b2comp(22) <= not B32(22);
				b2comp(23) <= not B32(23);
				b2comp(24) <= not B32(24);
				b2comp(25) <= not B32(25);
				b2comp(26) <= not B32(26);
				b2comp(27) <= not B32(27);
				b2comp(28) <= not B32(28);
				b2comp(29) <= not B32(29);
				b2comp(30) <= not B32(30);
				b2comp(31) <= not B32(31);
			elsif (B32(15)='1') then
				b2comp(0) <= B32(0);
				b2comp(1) <= B32(1);
				b2comp(2) <= B32(2);
				b2comp(3) <= B32(3);
				b2comp(4) <= B32(4);
				b2comp(5) <= B32(5);
				b2comp(6) <= B32(6);
				b2comp(7) <= B32(7);
				b2comp(8) <= B32(8);
				b2comp(9) <= B32(9);
				b2comp(10) <= B32(10);
				b2comp(11) <= B32(11);
				b2comp(12) <= B32(12);
				b2comp(13) <= B32(13);
				b2comp(14) <= B32(14);
				b2comp(15) <= B32(15);
				b2comp(16) <= not B32(16);
				b2comp(17) <= not B32(17);
				b2comp(18) <= not B32(18);
				b2comp(19) <= not B32(19);
				b2comp(20) <= not B32(20);
				b2comp(21) <= not B32(21);
				b2comp(22) <= not B32(22);
				b2comp(23) <= not B32(23);
				b2comp(24) <= not B32(24);
				b2comp(25) <= not B32(25);
				b2comp(26) <= not B32(26);
				b2comp(27) <= not B32(27);
				b2comp(28) <= not B32(28);
				b2comp(29) <= not B32(29);
				b2comp(30) <= not B32(30);
				b2comp(31) <= not B32(31);
			elsif (B32(16)='1') then
				b2comp(0) <= B32(0);
				b2comp(1) <= B32(1);
				b2comp(2) <= B32(2);
				b2comp(3) <= B32(3);
				b2comp(4) <= B32(4);
				b2comp(5) <= B32(5);
				b2comp(6) <= B32(6);
				b2comp(7) <= B32(7);
				b2comp(8) <= B32(8);
				b2comp(9) <= B32(9);
				b2comp(10) <= B32(10);
				b2comp(11) <= B32(11);
				b2comp(12) <= B32(12);
				b2comp(13) <= B32(13);
				b2comp(14) <= B32(14);
				b2comp(15) <= B32(15);
				b2comp(16) <= B32(16);
				b2comp(17) <= not B32(17);
				b2comp(18) <= not B32(18);
				b2comp(19) <= not B32(19);
				b2comp(20) <= not B32(20);
				b2comp(21) <= not B32(21);
				b2comp(22) <= not B32(22);
				b2comp(23) <= not B32(23);
				b2comp(24) <= not B32(24);
				b2comp(25) <= not B32(25);
				b2comp(26) <= not B32(26);
				b2comp(27) <= not B32(27);
				b2comp(28) <= not B32(28);
				b2comp(29) <= not B32(29);
				b2comp(30) <= not B32(30);
				b2comp(31) <= not B32(31);
			elsif (B32(17)='1') then
				b2comp(0) <= B32(0);
				b2comp(1) <= B32(1);
				b2comp(2) <= B32(2);
				b2comp(3) <= B32(3);
				b2comp(4) <= B32(4);
				b2comp(5) <= B32(5);
				b2comp(6) <= B32(6);
				b2comp(7) <= B32(7);
				b2comp(8) <= B32(8);
				b2comp(9) <= B32(9);
				b2comp(10) <= B32(10);
				b2comp(11) <= B32(11);
				b2comp(12) <= B32(12);
				b2comp(13) <= B32(13);
				b2comp(14) <= B32(14);
				b2comp(15) <= B32(15);
				b2comp(16) <= B32(16);
				b2comp(17) <= B32(17);
				b2comp(18) <= not B32(18);
				b2comp(19) <= not B32(19);
				b2comp(20) <= not B32(20);
				b2comp(21) <= not B32(21);
				b2comp(22) <= not B32(22);
				b2comp(23) <= not B32(23);
				b2comp(24) <= not B32(24);
				b2comp(25) <= not B32(25);
				b2comp(26) <= not B32(26);
				b2comp(27) <= not B32(27);
				b2comp(28) <= not B32(28);
				b2comp(29) <= not B32(29);
				b2comp(30) <= not B32(30);
				b2comp(31) <= not B32(31);
			elsif (B32(18)='1') then
				b2comp(0) <= B32(0);
				b2comp(1) <= B32(1);
				b2comp(2) <= B32(2);
				b2comp(3) <= B32(3);
				b2comp(4) <= B32(4);
				b2comp(5) <= B32(5);
				b2comp(6) <= B32(6);
				b2comp(7) <= B32(7);
				b2comp(8) <= B32(8);
				b2comp(9) <= B32(9);
				b2comp(10) <= B32(10);
				b2comp(11) <= B32(11);
				b2comp(12) <= B32(12);
				b2comp(13) <= B32(13);
				b2comp(14) <= B32(14);
				b2comp(15) <= B32(15);
				b2comp(16) <= B32(16);
				b2comp(17) <= B32(17);
				b2comp(18) <= B32(18);
				b2comp(19) <= not B32(19);
				b2comp(20) <= not B32(20);
				b2comp(21) <= not B32(21);
				b2comp(22) <= not B32(22);
				b2comp(23) <= not B32(23);
				b2comp(24) <= not B32(24);
				b2comp(25) <= not B32(25);
				b2comp(26) <= not B32(26);
				b2comp(27) <= not B32(27);
				b2comp(28) <= not B32(28);
				b2comp(29) <= not B32(29);
				b2comp(30) <= not B32(30);
				b2comp(31) <= not B32(31);
			elsif (B32(19)='1') then
				b2comp(0) <= B32(0);
				b2comp(1) <= B32(1);
				b2comp(2) <= B32(2);
				b2comp(3) <= B32(3);
				b2comp(4) <= B32(4);
				b2comp(5) <= B32(5);
				b2comp(6) <= B32(6);
				b2comp(7) <= B32(7);
				b2comp(8) <= B32(8);
				b2comp(9) <= B32(9);
				b2comp(10) <= B32(10);
				b2comp(11) <= B32(11);
				b2comp(12) <= B32(12);
				b2comp(13) <= B32(13);
				b2comp(14) <= B32(14);
				b2comp(15) <= B32(15);
				b2comp(16) <= B32(16);
				b2comp(17) <= B32(17);
				b2comp(18) <= B32(18);
				b2comp(19) <= B32(19);
				b2comp(20) <= not B32(20);
				b2comp(21) <= not B32(21);
				b2comp(22) <= not B32(22);
				b2comp(23) <= not B32(23);
				b2comp(24) <= not B32(24);
				b2comp(25) <= not B32(25);
				b2comp(26) <= not B32(26);
				b2comp(27) <= not B32(27);
				b2comp(28) <= not B32(28);
				b2comp(29) <= not B32(29);
				b2comp(30) <= not B32(30);
				b2comp(31) <= not B32(31);
			elsif (B32(20)='1') then
				b2comp(0) <= B32(0);
				b2comp(1) <= B32(1);
				b2comp(2) <= B32(2);
				b2comp(3) <= B32(3);
				b2comp(4) <= B32(4);
				b2comp(5) <= B32(5);
				b2comp(6) <= B32(6);
				b2comp(7) <= B32(7);
				b2comp(8) <= B32(8);
				b2comp(9) <= B32(9);
				b2comp(10) <= B32(10);
				b2comp(11) <= B32(11);
				b2comp(12) <= B32(12);
				b2comp(13) <= B32(13);
				b2comp(14) <= B32(14);
				b2comp(15) <= B32(15);
				b2comp(16) <= B32(16);
				b2comp(17) <= B32(17);
				b2comp(18) <= B32(18);
				b2comp(19) <= B32(19);
				b2comp(20) <= B32(20);
				b2comp(21) <= not B32(21);
				b2comp(22) <= not B32(22);
				b2comp(23) <= not B32(23);
				b2comp(24) <= not B32(24);
				b2comp(25) <= not B32(25);
				b2comp(26) <= not B32(26);
				b2comp(27) <= not B32(27);
				b2comp(28) <= not B32(28);
				b2comp(29) <= not B32(29);
				b2comp(30) <= not B32(30);
				b2comp(31) <= not B32(31);
			elsif (B32(21)='1') then
				b2comp(0) <= B32(0);
				b2comp(1) <= B32(1);
				b2comp(2) <= B32(2);
				b2comp(3) <= B32(3);
				b2comp(4) <= B32(4);
				b2comp(5) <= B32(5);
				b2comp(6) <= B32(6);
				b2comp(7) <= B32(7);
				b2comp(8) <= B32(8);
				b2comp(9) <= B32(9);
				b2comp(10) <= B32(10);
				b2comp(11) <= B32(11);
				b2comp(12) <= B32(12);
				b2comp(13) <= B32(13);
				b2comp(14) <= B32(14);
				b2comp(15) <= B32(15);
				b2comp(16) <= B32(16);
				b2comp(17) <= B32(17);
				b2comp(18) <= B32(18);
				b2comp(19) <= B32(19);
				b2comp(20) <= B32(20);
				b2comp(21) <= B32(21);
				b2comp(22) <= not B32(22);
				b2comp(23) <= not B32(23);
				b2comp(24) <= not B32(24);
				b2comp(25) <= not B32(25);
				b2comp(26) <= not B32(26);
				b2comp(27) <= not B32(27);
				b2comp(28) <= not B32(28);
				b2comp(29) <= not B32(29);
				b2comp(30) <= not B32(30);
				b2comp(31) <= not B32(31);
			elsif (B32(22)='1') then
				b2comp(0) <= B32(0);
				b2comp(1) <= B32(1);
				b2comp(2) <= B32(2);
				b2comp(3) <= B32(3);
				b2comp(4) <= B32(4);
				b2comp(5) <= B32(5);
				b2comp(6) <= B32(6);
				b2comp(7) <= B32(7);
				b2comp(8) <= B32(8);
				b2comp(9) <= B32(9);
				b2comp(10) <= B32(10);
				b2comp(11) <= B32(11);
				b2comp(12) <= B32(12);
				b2comp(13) <= B32(13);
				b2comp(14) <= B32(14);
				b2comp(15) <= B32(15);
				b2comp(16) <= B32(16);
				b2comp(17) <= B32(17);
				b2comp(18) <= B32(18);
				b2comp(19) <= B32(19);
				b2comp(20) <= B32(20);
				b2comp(21) <= B32(21);
				b2comp(22) <= B32(22);
				b2comp(23) <= not B32(23);
				b2comp(24) <= not B32(24);
				b2comp(25) <= not B32(25);
				b2comp(26) <= not B32(26);
				b2comp(27) <= not B32(27);
				b2comp(28) <= not B32(28);
				b2comp(29) <= not B32(29);
				b2comp(30) <= not B32(30);
				b2comp(31) <= not B32(31);
			elsif (B32(23)='1') then
				b2comp(0) <= B32(0);
				b2comp(1) <= B32(1);
				b2comp(2) <= B32(2);
				b2comp(3) <= B32(3);
				b2comp(4) <= B32(4);
				b2comp(5) <= B32(5);
				b2comp(6) <= B32(6);
				b2comp(7) <= B32(7);
				b2comp(8) <= B32(8);
				b2comp(9) <= B32(9);
				b2comp(10) <= B32(10);
				b2comp(11) <= B32(11);
				b2comp(12) <= B32(12);
				b2comp(13) <= B32(13);
				b2comp(14) <= B32(14);
				b2comp(15) <= B32(15);
				b2comp(16) <= B32(16);
				b2comp(17) <= B32(17);
				b2comp(18) <= B32(18);
				b2comp(19) <= B32(19);
				b2comp(20) <= B32(20);
				b2comp(21) <= B32(21);
				b2comp(22) <= B32(22);
				b2comp(23) <= B32(23);
				b2comp(24) <= not B32(24);
				b2comp(25) <= not B32(25);
				b2comp(26) <= not B32(26);
				b2comp(27) <= not B32(27);
				b2comp(28) <= not B32(28);
				b2comp(29) <= not B32(29);
				b2comp(30) <= not B32(30);
				b2comp(31) <= not B32(31);
			elsif (B32(24)='1') then
				b2comp(0) <= B32(0);
				b2comp(1) <= B32(1);
				b2comp(2) <= B32(2);
				b2comp(3) <= B32(3);
				b2comp(4) <= B32(4);
				b2comp(5) <= B32(5);
				b2comp(6) <= B32(6);
				b2comp(7) <= B32(7);
				b2comp(8) <= B32(8);
				b2comp(9) <= B32(9);
				b2comp(10) <= B32(10);
				b2comp(11) <= B32(11);
				b2comp(12) <= B32(12);
				b2comp(13) <= B32(13);
				b2comp(14) <= B32(14);
				b2comp(15) <= B32(15);
				b2comp(16) <= B32(16);
				b2comp(17) <= B32(17);
				b2comp(18) <= B32(18);
				b2comp(19) <= B32(19);
				b2comp(20) <= B32(20);
				b2comp(21) <= B32(21);
				b2comp(22) <= B32(22);
				b2comp(23) <= B32(23);
				b2comp(24) <= B32(24);
				b2comp(25) <= not B32(25);
				b2comp(26) <= not B32(26);
				b2comp(27) <= not B32(27);
				b2comp(28) <= not B32(28);
				b2comp(29) <= not B32(29);
				b2comp(30) <= not B32(30);
				b2comp(31) <= not B32(31);
			elsif (B32(25)='1') then
				b2comp(0) <= B32(0);
				b2comp(1) <= B32(1);
				b2comp(2) <= B32(2);
				b2comp(3) <= B32(3);
				b2comp(4) <= B32(4);
				b2comp(5) <= B32(5);
				b2comp(6) <= B32(6);
				b2comp(7) <= B32(7);
				b2comp(8) <= B32(8);
				b2comp(9) <= B32(9);
				b2comp(10) <= B32(10);
				b2comp(11) <= B32(11);
				b2comp(12) <= B32(12);
				b2comp(13) <= B32(13);
				b2comp(14) <= B32(14);
				b2comp(15) <= B32(15);
				b2comp(16) <= B32(16);
				b2comp(17) <= B32(17);
				b2comp(18) <= B32(18);
				b2comp(19) <= B32(19);
				b2comp(20) <= B32(20);
				b2comp(21) <= B32(21);
				b2comp(22) <= B32(22);
				b2comp(23) <= B32(23);
				b2comp(24) <= B32(24);
				b2comp(25) <= B32(25);
				b2comp(26) <= not B32(26);
				b2comp(27) <= not B32(27);
				b2comp(28) <= not B32(28);
				b2comp(29) <= not B32(29);
				b2comp(30) <= not B32(30);
				b2comp(31) <= not B32(31);
			elsif (B32(26)='1') then
				b2comp(0) <= B32(0);
				b2comp(1) <= B32(1);
				b2comp(2) <= B32(2);
				b2comp(3) <= B32(3);
				b2comp(4) <= B32(4);
				b2comp(5) <= B32(5);
				b2comp(6) <= B32(6);
				b2comp(7) <= B32(7);
				b2comp(8) <= B32(8);
				b2comp(9) <= B32(9);
				b2comp(10) <= B32(10);
				b2comp(11) <= B32(11);
				b2comp(12) <= B32(12);
				b2comp(13) <= B32(13);
				b2comp(14) <= B32(14);
				b2comp(15) <= B32(15);
				b2comp(16) <= B32(16);
				b2comp(17) <= B32(17);
				b2comp(18) <= B32(18);
				b2comp(19) <= B32(19);
				b2comp(20) <= B32(20);
				b2comp(21) <= B32(21);
				b2comp(22) <= B32(22);
				b2comp(23) <= B32(23);
				b2comp(24) <= B32(24);
				b2comp(25) <= B32(25);
				b2comp(26) <= B32(26);
				b2comp(27) <= not B32(27);
				b2comp(28) <= not B32(28);
				b2comp(29) <= not B32(29);
				b2comp(30) <= not B32(30);
				b2comp(31) <= not B32(31);
			elsif (B32(27)='1') then
				b2comp(0) <= B32(0);
				b2comp(1) <= B32(1);
				b2comp(2) <= B32(2);
				b2comp(3) <= B32(3);
				b2comp(4) <= B32(4);
				b2comp(5) <= B32(5);
				b2comp(6) <= B32(6);
				b2comp(7) <= B32(7);
				b2comp(8) <= B32(8);
				b2comp(9) <= B32(9);
				b2comp(10) <= B32(10);
				b2comp(11) <= B32(11);
				b2comp(12) <= B32(12);
				b2comp(13) <= B32(13);
				b2comp(14) <= B32(14);
				b2comp(15) <= B32(15);
				b2comp(16) <= B32(16);
				b2comp(17) <= B32(17);
				b2comp(18) <= B32(18);
				b2comp(19) <= B32(19);
				b2comp(20) <= B32(20);
				b2comp(21) <= B32(21);
				b2comp(22) <= B32(22);
				b2comp(23) <= B32(23);
				b2comp(24) <= B32(24);
				b2comp(25) <= B32(25);
				b2comp(26) <= B32(26);
				b2comp(27) <= B32(27);
				b2comp(28) <= not B32(28);
				b2comp(29) <= not B32(29);
				b2comp(30) <= not B32(30);
				b2comp(31) <= not B32(31);
			elsif (B32(28)='1') then
				b2comp(0) <= B32(0);
				b2comp(1) <= B32(1);
				b2comp(2) <= B32(2);
				b2comp(3) <= B32(3);
				b2comp(4) <= B32(4);
				b2comp(5) <= B32(5);
				b2comp(6) <= B32(6);
				b2comp(7) <= B32(7);
				b2comp(8) <= B32(8);
				b2comp(9) <= B32(9);
				b2comp(10) <= B32(10);
				b2comp(11) <= B32(11);
				b2comp(12) <= B32(12);
				b2comp(13) <= B32(13);
				b2comp(14) <= B32(14);
				b2comp(15) <= B32(15);
				b2comp(16) <= B32(16);
				b2comp(17) <= B32(17);
				b2comp(18) <= B32(18);
				b2comp(19) <= B32(19);
				b2comp(20) <= B32(20);
				b2comp(21) <= B32(21);
				b2comp(22) <= B32(22);
				b2comp(23) <= B32(23);
				b2comp(24) <= B32(24);
				b2comp(25) <= B32(25);
				b2comp(26) <= B32(26);
				b2comp(27) <= B32(27);
				b2comp(28) <= B32(28);
				b2comp(29) <= not B32(29);
				b2comp(30) <= not B32(30);
				b2comp(31) <= not B32(31);
			elsif (B32(29)='1') then
				b2comp(0) <= B32(0);
				b2comp(1) <= B32(1);
				b2comp(2) <= B32(2);
				b2comp(3) <= B32(3);
				b2comp(4) <= B32(4);
				b2comp(5) <= B32(5);
				b2comp(6) <= B32(6);
				b2comp(7) <= B32(7);
				b2comp(8) <= B32(8);
				b2comp(9) <= B32(9);
				b2comp(10) <= B32(10);
				b2comp(11) <= B32(11);
				b2comp(12) <= B32(12);
				b2comp(13) <= B32(13);
				b2comp(14) <= B32(14);
				b2comp(15) <= B32(15);
				b2comp(16) <= B32(16);
				b2comp(17) <= B32(17);
				b2comp(18) <= B32(18);
				b2comp(19) <= B32(19);
				b2comp(20) <= B32(20);
				b2comp(21) <= B32(21);
				b2comp(22) <= B32(22);
				b2comp(23) <= B32(23);
				b2comp(24) <= B32(24);
				b2comp(25) <= B32(25);
				b2comp(26) <= B32(26);
				b2comp(27) <= B32(27);
				b2comp(28) <= B32(28);
				b2comp(29) <= B32(29);
				b2comp(30) <= not B32(30);
				b2comp(31) <= not B32(31);
			elsif (B32(30)='1') then
				b2comp(0) <= B32(0);
				b2comp(1) <= B32(1);
				b2comp(2) <= B32(2);
				b2comp(3) <= B32(3);
				b2comp(4) <= B32(4);
				b2comp(5) <= B32(5);
				b2comp(6) <= B32(6);
				b2comp(7) <= B32(7);
				b2comp(8) <= B32(8);
				b2comp(9) <= B32(9);
				b2comp(10) <= B32(10);
				b2comp(11) <= B32(11);
				b2comp(12) <= B32(12);
				b2comp(13) <= B32(13);
				b2comp(14) <= B32(14);
				b2comp(15) <= B32(15);
				b2comp(16) <= B32(16);
				b2comp(17) <= B32(17);
				b2comp(18) <= B32(18);
				b2comp(19) <= B32(19);
				b2comp(20) <= B32(20);
				b2comp(21) <= B32(21);
				b2comp(22) <= B32(22);
				b2comp(23) <= B32(23);
				b2comp(24) <= B32(24);
				b2comp(25) <= B32(25);
				b2comp(26) <= B32(26);
				b2comp(27) <= B32(27);
				b2comp(28) <= B32(28);
				b2comp(29) <= B32(29);
				b2comp(30) <= B32(30);
				b2comp(31) <= not B32(31);
			elsif (B32(31)='1') then
				b2comp(0) <= B32(0);
				b2comp(1) <= B32(1);
				b2comp(2) <= B32(2);
				b2comp(3) <= B32(3);
				b2comp(4) <= B32(4);
				b2comp(5) <= B32(5);
				b2comp(6) <= B32(6);
				b2comp(7) <= B32(7);
				b2comp(8) <= B32(8);
				b2comp(9) <= B32(9);
				b2comp(10) <= B32(10);
				b2comp(11) <= B32(11);
				b2comp(12) <= B32(12);
				b2comp(13) <= B32(13);
				b2comp(14) <= B32(14);
				b2comp(15) <= B32(15);
				b2comp(16) <= B32(16);
				b2comp(17) <= B32(17);
				b2comp(18) <= B32(18);
				b2comp(19) <= B32(19);
				b2comp(20) <= B32(20);
				b2comp(21) <= B32(21);
				b2comp(22) <= B32(22);
				b2comp(23) <= B32(23);
				b2comp(24) <= B32(24);
				b2comp(25) <= B32(25);
				b2comp(26) <= B32(26);
				b2comp(27) <= B32(27);
				b2comp(28) <= B32(28);
				b2comp(29) <= B32(29);
				b2comp(30) <= B32(30);
				b2comp(31) <= B32(31);
			else
				wait;
			end if;
		end process;

		MUX : entity work.two_to_one_mux(behav) port map(B32, b2comp, binvert, bout);
		
		--Instances
		ADD1 : entity work.alu(behav) port map(a(0), bout(0), less, ainvert, binvert, cin, ALUOp, c(0), add(0), set, overflow);
		ADD2 : entity work.alu(behav) port map(a(1), bout(1), less, ainvert, binvert, c(0), ALUOp, c(1), add(1), set, overflow);
		ADD3 : entity work.alu(behav) port map(a(2), bout(2), less, ainvert, binvert, c(1), ALUOp, c(2), add(2), set, overflow);
		ADD4 : entity work.alu(behav) port map(a(3), bout(3), less, ainvert, binvert, c(2), ALUOp, c(3), add(3), set, overflow);
		ADD5 : entity work.alu(behav) port map(a(4), bout(4), less, ainvert, binvert, c(3), ALUOp, c(4), add(4), set, overflow);
		ADD6 : entity work.alu(behav) port map(a(5), bout(5), less, ainvert, binvert, c(4), ALUOp, c(5), add(5), set, overflow);
		ADD7 : entity work.alu(behav) port map(a(6), bout(6), less, ainvert, binvert, c(5), ALUOp, c(6), add(6), set, overflow);
		ADD8 : entity work.alu(behav) port map(a(7), bout(7), less, ainvert, binvert, c(6), ALUOp, c(7), add(7), set, overflow);
		ADD9 : entity work.alu(behav) port map(a(8), bout(8), less, ainvert, binvert, c(7), ALUOp, c(8), add(8), set, overflow);
		ADD10 : entity work.alu(behav) port map(a(9), bout(9), less, ainvert, binvert, c(8), ALUOp, c(9), add(9), set, overflow);
		ADD11 : entity work.alu(behav) port map(a(10), bout(10), less, ainvert, binvert, c(9), ALUOp, c(10), add(10), set, overflow);
		ADD12 : entity work.alu(behav) port map(a(11), bout(11), less, ainvert, binvert, c(10), ALUOp, c(11), add(11), set, overflow);
		ADD13 : entity work.alu(behav) port map(a(12), bout(12), less, ainvert, binvert, c(11), ALUOp, c(12), add(12), set, overflow);
		ADD14 : entity work.alu(behav) port map(a(13), bout(13), less, ainvert, binvert, c(12), ALUOp, c(13), add(13), set, overflow);
		ADD15 : entity work.alu(behav) port map(a(14), bout(14), less, ainvert, binvert, c(13), ALUOp, c(14), add(14), set, overflow);
		ADD16 : entity work.alu(behav) port map(a(15), bout(15), less, ainvert, binvert, c(14), ALUOp, c(15), add(15), set, overflow);
		ADD17 : entity work.alu(behav) port map(a(16), bout(16), less, ainvert, binvert, c(15), ALUOp, c(16), add(16), set, overflow);
		ADD18 : entity work.alu(behav) port map(a(17), bout(17), less, ainvert, binvert, c(16), ALUOp, c(17), add(17), set, overflow);
		ADD19 : entity work.alu(behav) port map(a(18), bout(18), less, ainvert, binvert, c(17), ALUOp, c(18), add(18), set, overflow);
		ADD20 : entity work.alu(behav) port map(a(19), bout(19), less, ainvert, binvert, c(18), ALUOp, c(19), add(19), set, overflow);
		ADD21 : entity work.alu(behav) port map(a(20), bout(20), less, ainvert, binvert, c(19), ALUOp, c(20), add(20), set, overflow);
		ADD22 : entity work.alu(behav) port map(a(21), bout(21), less, ainvert, binvert, c(20), ALUOp, c(21), add(21), set, overflow);
		ADD23 : entity work.alu(behav) port map(a(22), bout(22), less, ainvert, binvert, c(21), ALUOp, c(22), add(22), set, overflow);
		ADD24 : entity work.alu(behav) port map(a(23), bout(23), less, ainvert, binvert, c(22), ALUOp, c(23), add(23), set, overflow);
		ADD25 : entity work.alu(behav) port map(a(24), bout(24), less, ainvert, binvert, c(23), ALUOp, c(24), add(24), set, overflow);
		ADD26 : entity work.alu(behav) port map(a(25), bout(25), less, ainvert, binvert, c(24), ALUOp, c(25), add(25), set, overflow);
		ADD27 : entity work.alu(behav) port map(a(26), bout(26), less, ainvert, binvert, c(25), ALUOp, c(26), add(26), set, overflow);
		ADD28 : entity work.alu(behav) port map(a(27), bout(27), less, ainvert, binvert, c(26), ALUOp, c(27), add(27), set, overflow);
		ADD29 : entity work.alu(behav) port map(a(28), bout(28), less, ainvert, binvert, c(27), ALUOp, c(28), add(28), set, overflow);
		ADD30 : entity work.alu(behav) port map(a(29), bout(29), less, ainvert, binvert, c(28), ALUOp, c(29), add(29), set, overflow);
		ADD31 : entity work.alu(behav) port map(a(30), bout(30), less, ainvert, binvert, c(29), ALUOp, c(30), add(30), set, overflow);
		ADD32 : entity work.alu(behav) port map(a(31), bout(31), less, ainvert, binvert, c(30), ALUOp, cout, add(31), set, overflow);
		
		result <= add;
	
		zero <= not((((add(0) or add(1)) OR (add(2) OR add(3))) OR ((add(4) OR add(5)) OR (add(6) OR add(7)))) OR (((add(8) OR add(9)) OR (add(10) OR add(11))) OR ((add(12) OR add(13)) OR (add(14) OR add(15))))) OR ((((add(16) OR add(17)) OR (add(18) OR add(19))) OR ((add(20) OR add(21)) OR (add(22) OR add(23)))) OR (((add(24) OR add(25)) OR (add(26) OR add(27))) OR ((add(28) OR add(29)) OR (add(30) OR add(31)))));
		
end behav;	