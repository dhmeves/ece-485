library IEEE;
use ieee.std_logic_1164.all;
--use ieee.std_logic_unsigned.all;
use ieee.numeric_std.all;

entity memory is
	port(
		address, writeData : in std_logic_vector(31 downto 0);
		memRead, memWrite : in std_logic;
		memData : out std_logic_vector(31 downto 0)
	);
end memory;

architecture behav of memory is
	type ram is array (1024 downto 0) of std_logic_vector(7 downto 0);
	signal inByte0, inByte1, inByte2, inByte3, outByte0, outByte1, outByte2, outByte3 : std_logic_vector(7 downto 0);
	signal writeDataBuf : std_logic_vector(31 downto 0);
	signal mem : ram;
	signal addr : integer range 0 to 1024;
	begin

		inByte0(0) <= writeData(0);
		inByte0(1) <= writeData(1);
		inByte0(2) <= writeData(2);
		inByte0(3) <= writeData(3);
		inByte0(4) <= writeData(4);
		inByte0(5) <= writeData(5);
		inByte0(6) <= writeData(6);
		inByte0(7) <= writeData(7);
		
		inByte1(0) <= writeData(8);
		inByte1(1) <= writeData(9);
		inByte1(2) <= writeData(10);
		inByte1(3) <= writeData(11);
		inByte1(4) <= writeData(12);
		inByte1(5) <= writeData(13);
		inByte1(6) <= writeData(14);
		inByte1(7) <= writeData(15);

		inByte2(0) <= writeData(16);
		inByte2(1) <= writeData(17);
		inByte2(2) <= writeData(18);
		inByte2(3) <= writeData(19);
		inByte2(4) <= writeData(20);
		inByte2(5) <= writeData(21);
		inByte2(6) <= writeData(22);
		inByte2(7) <= writeData(23);

		inByte3(0) <= writeData(24);
		inByte3(1) <= writeData(25);
		inByte3(2) <= writeData(26);
		inByte3(3) <= writeData(27);
		inByte3(4) <= writeData(28);
		inByte3(5) <= writeData(29);
		inByte3(6) <= writeData(30);
		inByte3(7) <= writeData(31);

		outByte0 <= mem(addr);
		outByte1 <= mem(addr+1);
		outByte2 <= mem(addr+2);
		outByte3 <= mem(addr+3);
		
		writeDataBuf(0) <= outByte0(0);
		writeDataBuf(1) <= outByte0(1);
		writeDataBuf(2) <= outByte0(2);
		writeDataBuf(3) <= outByte0(3);
		writeDataBuf(4) <= outByte0(4);
		writeDataBuf(5) <= outByte0(5);
		writeDataBuf(6) <= outByte0(6);
		writeDataBuf(7) <= outByte0(7);
		writeDataBuf(8) <= outByte1(0);
		writeDataBuf(9) <= outByte1(1);
		writeDataBuf(10) <= outByte1(2);
		writeDataBuf(11) <= outByte1(3);
		writeDataBuf(12) <= outByte1(4);
		writeDataBuf(13) <= outByte1(5);
		writeDataBuf(14) <= outByte1(6);
		writeDataBuf(15) <= outByte1(7);
		writeDataBuf(16) <= outByte2(0);
		writeDataBuf(17) <= outByte2(1);
		writeDataBuf(18) <= outByte2(2);
		writeDataBuf(19) <= outByte2(3);
		writeDataBuf(20) <= outByte2(4);
		writeDataBuf(21) <= outByte2(5);
		writeDataBuf(22) <= outByte2(6);
		writeDataBuf(23) <= outByte2(7);
		writeDataBuf(24) <= outByte3(0);
		writeDataBuf(25) <= outByte3(1);
		writeDataBuf(26) <= outByte3(2);
		writeDataBuf(27) <= outByte3(3);
		writeDataBuf(28) <= outByte3(4);
		writeDataBuf(29) <= outByte3(5);
		writeDataBuf(30) <= outByte3(6);
		writeDataBuf(31) <= outByte3(7);
		
		process(address, writeData, memWrite)
			begin
				addr <= to_integer(unsigned(address));
				if (memWrite='1') then
					mem(addr)<=inByte0;
					mem(addr+1)<=inByte1;
					mem(addr+2)<=inByte2;
					mem(addr+3)<=inByte3;
				elsif (memWrite='0') then
					memData<=writeDataBuf;
				else
					memData<="ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ";
				end if;
		end process;
end behav;
		