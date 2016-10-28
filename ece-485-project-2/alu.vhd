library IEEE;
use ieee.std_logic_1164.all;

entity alu is
	port(
		a , b, cin : in bit;
		cout, result: out bit
	);
end entity alu;
