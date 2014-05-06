library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity hex7seg is
	port ( input  : in  unsigned(3 downto 0); -- A number 
			 output : out std_logic_vector(6 downto 0)); -- Just bits
end hex7seg;

architecture combinational of hex7seg is
begin
	with input select output <=
	not "0111111" when b"0000", 
	not "0000110" when b"0001",
	not "1011011" when b"0010",
	not "1001111" when b"0011",
	not "1100110" when b"0100",
	not "1101101" when b"0101",
	not "1111101" when b"0110",
	not "0000111" when b"0111",
	not "1111111" when b"1000",
	not "1101111" when b"1001",
	not "1110111" when b"1010",
	not "1111100" when b"1011",
	not "0111001" when b"1100",
	not "1011110" when b"1101",
	not "1111001" when b"1110",
	not "1110001" when b"1111",
	"XXXXXXX" when others;
end combinational;