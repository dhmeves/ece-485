library IEEE;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;

entity memory is
	port(
		address, writeData : in std_logic_vector(31 downto 0);
		memWrite, memToReg : in std_logic;
		memData : out std_logic_vector(31 downto 0)
	);
end memory;

architecture behav of memory is
	type ram is array (255 downto 0) of std_logic_vector(31 downto 0);
	signal mem : ram;
	signal addr : integer range 0 to 255;
	begin
		process(address, writeData, memWrite)
			begin
				addr <= conv_integer(address);
				if (memWrite='0') then
					mem(addr)<=writeData;
				elsif (memWrite='1') then
					memData<=mem(addr);
				else
					memData<="ZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZZ";
				end if;
		end process;
end behav;
		