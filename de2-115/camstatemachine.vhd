library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity camstatemachine is 
port (
	clock : in std_logic;
	camera_eof : in std_logic; --high pulse for end of frame
	vga_eof : in std_logic; -- high pulse for end of frame
	copy_new_frame_button : in std_logic; --active low pulse
	write_sram : out std_logic;
	display_sram : out std_logic
	
);
end entity camstatemachine;

architecture camstatemachine of camstatemachine is
	type state_type is (display, wait_for_display_end_pre_copy, wait_for_cam_start, 
							  copy1, copy2, wait_for_display_end_post_copy);
	
	signal current_state : state_type := wait_for_display_end_pre_copy;
	signal next_state : state_type;
begin

	process (clock, copy_new_frame_button)
	begin
		if(copy_new_frame_button = '0') then
			current_state <= wait_for_display_end_pre_copy;
		else
			if(rising_edge(clock)) then
				current_state <= next_state;
			end if;
		end if;
	end process;
	
	process (current_state, vga_eof, camera_eof)
	begin
		case current_state is
				
			when wait_for_display_end_pre_copy =>
				display_sram <= '1';
				write_sram <= '0';
				
				if(vga_eof = '1') then
					next_state <= wait_for_cam_start;
				else
					next_state <= wait_for_display_end_pre_copy;
				end if;
				
			when wait_for_cam_start => 			--not write anything
				display_sram <= '0';
				write_sram <= '0';
				
				if(camera_eof = '1') then
					next_state <= copy1;
				else
					next_state <= wait_for_cam_start;
				end if;
				
			when copy1 => 
				display_sram <= '0';
				write_sram <= '1';
				
				if(camera_eof = '0') then
					next_state <= copy2;
				else
					next_state <= copy1;
				end if;
				
			when copy2 => 
				display_sram <= '0';
				write_sram <= '1';
				
				if(camera_eof = '1') then
					next_state <= wait_for_display_end_post_copy;
				else 
					next_state <= copy2;
				end if;
				
			when wait_for_display_end_post_copy => 
				display_sram <= '0';
				write_sram <= '0';
				
				if(vga_eof = '1') then
					next_state <= display;
				else 
					next_state <= wait_for_display_end_post_copy;
				end if;
				
			when display =>
				display_sram <= '1';
				write_sram <= '0';
				
				next_state <= display;
		end case;
	end process;
	
end architecture camstatemachine;
