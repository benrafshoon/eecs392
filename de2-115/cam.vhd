library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.numeric_std.all;

entity cam is 
port(
	data : in std_logic_vector(7 downto 0);
	vsync : in std_logic;
	href : in std_logic;
	clock : in std_logic;
	horizontal_size : out natural;
	vertical_size : out natural;
	pixel_count : out natural;
	row : out natural;
	column : out natural;
	y_data : out std_logic_vector(7 downto 0);
	y_data_clock : out std_logic
);
end entity cam;

architecture cam of cam is
	signal second_byte : std_logic;
	signal current_row : natural;
	signal current_column : natural;
	signal current_pixel_count : natural;
begin

	row <= current_row;
	column <= current_column;
	pixel_count <= current_pixel_count;
	vertical_pixels : process(vsync, href) is
	begin
		if(vsync = '1') then
			current_row <= 0;
		else
			if(falling_edge(href)) then
				current_row <= current_row + 1;
			end if;
		end if;
		
		if(rising_edge(vsync)) then
			vertical_size <= current_row;
		end if;
	end process vertical_pixels;
	
	horizontal_pixels : process(clock, href) is 
	begin
		if(href = '0') then
			current_column <= 0;
		else
			if(rising_edge(clock)) then
				if(second_byte = '0') then
					y_data <= data;
				end if;
				
				if(second_byte = '1') then
					current_column <= current_column + 1;
				end if;
			end if;
		end if;
		
		if(href = '0') then
			second_byte <= '1';
		else
			if(rising_edge(clock)) then
				second_byte <= not second_byte;
			end if;
		end if;
		
		if(falling_edge(href)) then
			horizontal_size <= current_column;
		end if;
		
	end process horizontal_pixels;
	
	total_pixels : process(clock, vsync) is
	begin
		if(vsync = '1') then
			current_pixel_count <= 0;
		else
			if(rising_edge(clock)) then
				if(second_byte = '1') then
					current_pixel_count <= current_pixel_count + 1;
				end if;
			end if;
		end if;
	end process total_pixels;
	
	y_data_clock <= href AND clock AND NOT second_byte;
	
end architecture cam;