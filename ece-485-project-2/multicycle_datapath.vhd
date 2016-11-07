library IEEE;
use ieee.std_logic_1164.all;

entity multicycle_datapath is
end multicycle_datapath;

architecture behav of multicycle_datapath is

component program_counter
	port(
		input : in std_logic_vector(31 downto 0);
		output : out std_logic_vector(31 downto 0)