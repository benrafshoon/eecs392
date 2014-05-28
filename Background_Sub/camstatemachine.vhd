library IEEE;
use IEEE.STD_LOGIC_1164.all;

entity camstatemachine is 
port (
	clock : in std_logic;
	camera_eof : in std_logic; 							--high pulse for end of frame
	vga_eof : in std_logic; 								--high pulse for end of frame
	backgroundsubtraction_eof : in std_logic; 		--high pulse for end of frame, hihgh when done background subtraction
	copy_new_frame_button : in std_logic; 				--Active low pulse
	write_sram : out std_logic;  							--Write Enable signal to SRAM
	read_sram : out std_logic; 							--Read Enable signal to SRAM
	process_image : out std_logic;  						--Signals other components that images need to be processed
	image_select : out std_logic; 							--Read background image when 0, foreground image when 1
	background_button : in std_logic;
	result_image_switch : in std_logic

);
end entity camstatemachine;

architecture camstatemachine of camstatemachine is
	type state_type is (display, wait_for_display_end_pre_copy, wait_for_cam_start, copy1, copy2, read_background_pixel, read_foreground_pixel, write_processed_pixel, wait_for_display_end_post_copy);

	signal current_state : state_type := wait_for_display_end_pre_copy;
	signal next_state : state_type;
begin

	process (clock, copy_new_frame_button)
	begin
		if(copy_new_frame_button = '0') then
			current_state <= wait_for_display_end_pre_copy;
		elsif (background_button = '0') then
			current_state <= read_background_pixel;
		else
			if(rising_edge(clock)) then
				current_state <= next_state;
			end if;
		end if;
	end process;

	process (current_state, vga_eof, camera_eof)
	begin
		case current_state is  
			
			--State 2: Wait for end of VGA frame, continue to display image from SRAM
			when wait_for_display_end_pre_copy =>
				read_sram <= '1';
				write_sram <= '0';
				process_image <= '0';

				if(vga_eof = '1') then
					next_state <= wait_for_cam_start;
				else
					next_state <= wait_for_display_end_pre_copy;
				end if;
				
			--State 3: Wait for start of camera frame, display black image
			when wait_for_cam_start => 
				read_sram <= '0';
				write_sram <= '0';
				process_image <= '0';

				if(camera_eof = '1') then
					next_state <= copy1;
				else
					next_state <= wait_for_cam_start;
				end if;
			
			--State 4: Copy camera frame from camera to SRAM,
			when copy1 => 
				read_sram <= '0';
				write_sram <= '1';
				process_image <= '0';

				if(camera_eof = '0') then
					next_state <= copy2;
				else
					next_state <= copy1;
				end if;

			when copy2 => 
				read_sram <= '0';
				write_sram <= '1';
				process_image <= '0';

				if(camera_eof = '1') then
					next_state <= wait_for_display_end_post_copy;  ---LOOK AT WHERE THIS GOES
				else 
					next_state <= copy2;
				end if;
				
			--State 5: Read Background Image	for Background Subtraction
			when read_background_pixel =>
				read_sram <= '1';
				write_sram <= '0';
				process_image <= '1';
				image_select <= '0';
				
				next_state <= read_foreground_pixel; 
				
			--State 6: Read Foreground Image for Background Subtraction 	
			when read_foreground_pixel =>
				read_sram <= '1';
				write_sram <= '0';
				process_image <= '1';
				image_select <= '1';
				
				next_state <= write_processed_pixel;
			
			--State 7: Write processed image to SRAM 
			when write_processed_pixel =>
				read_sram <= '0';
				write_sram <= '1';
				process_image <= '1';
				
				if(backgroundsubtraction_eof = '1') then
					next_state <= wait_for_display_end_post_copy;
				else
					next_state <= read_background_pixel;
				end if;
					
			--State 8: Wait for beginning of next VGA frame, continue to display black image
			when wait_for_display_end_post_copy => 
				read_sram <= '0';
				write_sram <= '0';
				process_image <= '0';

				if(vga_eof = '1') then
					next_state <= display;
				else 
					next_state <= wait_for_display_end_post_copy;
				end if;
			
			--State 1: Display image from SRAM over VGA
			when display =>
				read_sram <= '1';
				write_sram <= '0';
				process_image <= '0';

				next_state <= display;
		end case;
	end process;

end architecture camstatemachine;