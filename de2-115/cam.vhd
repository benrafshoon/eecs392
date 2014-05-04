library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.numeric_std.all;

entity cam is 
port(
	data : in std_logic_vector(7 downto 0);
	vsync : in std_logic;
	href : in std_logic;
	clock : in std_logic;
	num_x : out std_logic_vector(15 downto 0);
	num_y : out std_logic_vector(15 downto 0);
	y_signal : out std_logic_vector(7 downto 0)
);
end entity cam;

architecture cam of cam is
	signal current_x : natural;
	signal current_y : natural;
begin
	
	frames : process(vsync) is
		variable frame : natural := 0;
		variable seconds : natural := 0;
	begin
		if(rising_edge(vsync)) then
			frame := frame + 1;
			if(frame >= 30) then
				frame := 0;
				seconds := seconds + 1;
			end if;
		end if;
		--num_x(15 downto 8) <= std_logic_vector(to_unsigned(seconds, 8));
		--num_x(7 downto 0) <= std_logic_vector(to_unsigned(frame, 8));
	end process frames;
	
	vertical_pixels : process(vsync, href) is
	begin
		if(vsync = '1') then
			
			current_y <= 0;
		else
			if(falling_edge(href)) then
				current_y <= current_y + 1;
			end if;
		end if;
		
		if(rising_edge(vsync)) then
			num_y <= std_logic_vector(to_unsigned(current_y, 16));
		end if;
		
		
		
		
	end process vertical_pixels;
	
	horizontal_pixels : process(clock, href) is 
		variable second_byte : bit;
	begin
		if(href = '0') then
			current_x <= 0;
			second_byte := '0';
		else
			if(rising_edge(clock)) then
			
				if(current_x = 200 and current_y = 200) then
					if(second_byte = '0') then
						num_x(7 downto 0) <= data;
					else 
						num_x(15 downto 8) <= data;
					end if;
				end if;
				
				if(second_byte = '1') then
					current_x <= current_x + 1;
				end if;
				second_byte := not second_byte;
			end if;
		end if;
		
		if(falling_edge(href)) then
			--num_x <= std_logic_vector(to_unsigned(current_x, 16));
		end if;
		
	end process horizontal_pixels;
	
end architecture cam;