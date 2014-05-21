library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.numeric_std.all;

entity camtosram is 
port(
	sram_address : out std_logic_vector(20 downto 0);
	sram_write_enable_bar : out std_logic;
	sram_data_in : out std_logic_vector(7 downto 0);

	y_data : in std_logic_vector(7 downto 0);
	y_data_clock : in std_logic;
	which_pixel : in natural
);
end entity camtosram;

architecture camtosram of camtosram is 
begin
	sram_write_enable_bar <= NOT y_data_clock;
	sram_data_in <= y_data;
	sram_address <= std_logic_vector(to_unsigned(which_pixel, 20));
end architecture camtosram;