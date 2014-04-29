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
	num_y : out std_logic_vector(15 downto 0)
);
end entity cam;

architecture cam of cam is
signal count_y : integer:=0; --pulse counter
		signal current_y : integer;
		signal temp_y: integer;
begin

	cam_process : process(vsync, href) is
		variable need_to_reset_y : bit;
		--variable count_y : integer; --pulse counter
		--variable current_y : integer;
		--variable temp_y: integer;
	begin
		
		num_y <= std_logic_vector(to_unsigned(current_y, 16));
		
		if(vsync = '1') then
			if (count_y<2 ) then 
				current_y<=temp_y;
			elsif(temp_y>current_y) then 
				current_y<=temp_y;
			end if;
			temp_y <= 0;
			count_y<= count_y + 1;
			
		else
			if(falling_edge(href)) then
				
				temp_y <= temp_y + 1;
			end if;
			
		end if;
		
			
	end process cam_process;
	
	
	num_x <= x"0000";
end architecture cam;