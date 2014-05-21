library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity sram16to8address is
port(
	address : in std_logic_vector(20 downto 0);
	low_bar_high : out std_logic;
	sram_address : out std_logic_vector(19 downto 0);
	sram_low_byte_bar : out std_logic;
	sram_high_byte_bar : out std_logic
	
);
end entity sram16to8address;

architecture sram16to8address of sram16to8address is
begin
	sram_low_byte_bar <= address(0);
	sram_high_byte_bar <= NOT address(0); --NOT of address ?
	
	sram_address(19 downto 0) <= address(20 downto 1);
	low_bar_high <= address(0);
end architecture sram16to8address;