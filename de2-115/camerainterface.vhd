library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.numeric_std.all;
use WORK.decoder.all;
--use IEEE.std_logic_arith.all;
use IEEE.std_logic_unsigned.all;

entity camerainterface is 
port (
	CLOCK_50 : in std_logic;
	GPIO : inout std_logic_vector(35 downto 0); -- 36 bits ?
--	cam_pixeldata : in std_logic_vector (7 downto 0);
--	cam_href : in std_logic;
--	cam_vsync : in std_logic;
--	cam_pixelclock : in std_logic;
--	cam_xclock : out std_logic;
	HEX0 : out std_logic_vector(6 downto 0);
	HEX1 : out std_logic_vector(6 downto 0);
	HEX2 : out std_logic_vector(6 downto 0);
	HEX3 : out std_logic_vector(6 downto 0);
	HEX4 : out std_logic_vector(6 downto 0);
	HEX5 : out std_logic_vector(6 downto 0);
	HEX6 : out std_logic_vector(6 downto 0);
	HEX7 : out std_logic_vector(6 downto 0);
	VGA_R : out std_logic_vector(7 downto 0);
	VGA_G : out std_logic_vector(7 downto 0);
	VGA_B : out std_logic_vector(7 downto 0);
	VGA_CLK : out std_logic;
	VGA_BLANK_N : out std_logic;
	VGA_HS : out std_logic;
	VGA_VS : out std_logic;
	VGA_SYNC_N : out std_logic;
	SRAM_ADDR : out std_logic_vector(19 downto 0);
	SRAM_CE_N : out std_logic;
	SRAM_DQ : inout std_logic_vector(15 downto 0);
	SRAM_LB_N : out std_logic;
	SRAM_HB_N : out std_logic;
	SRAM_OE_N : out std_logic;
	SRAM_WE_N : out std_logic;
	KEY : in std_logic_vector(3 downto 0);
	UART_RXD : in std_logic	---??
	--test_out : out std_logic
);
end entity camerainterface;

architecture camerainterface of camerainterface is
component cam is 
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
end component cam;


component sram16to8address is
port(
	address : in std_logic_vector(20 downto 0);
	low_bar_high : out std_logic;
	sram_address : out std_logic_vector(19 downto 0);
	sram_low_byte_bar : out std_logic;
	sram_high_byte_bar : out std_logic
	
);
end component sram16to8address;

component camstatemachine is 
port (
	clock : in std_logic;
	camera_eof : in std_logic; --high pulse for end of frame
	vga_eof : in std_logic; -- high pulse for end of frame
	copy_new_frame_button : in std_logic;
	write_sram : out std_logic;
	display_sram : out std_logic
	
);
end component camstatemachine;

component VGA_SYNC IS
	port(
			pixel_clock								: in std_logic;
			horiz_sync_out, vert_sync_out, 
			video_on, eof						: out std_logic;												
			pixel_row, pixel_column						    : out std_logic_vector(9 downto 0)
		);					    		
END component VGA_SYNC;

---Receive data from RS232----
component RX IS
port (CLK:IN STD_LOGIC;
RX_LINE:IN STD_LOGIC;
DATA:OUT STD_LOGIC_VECTOR(7 downto 0);
BUSY:OUT STD_LOGIC
);
END component RX;


	signal camera_clock : std_logic;
	signal vga_clock : std_logic;
	
	signal hex0num : std_logic_vector(3 downto 0);
	signal hex1num : std_logic_vector(3 downto 0);
	signal hex2num : std_logic_vector(3 downto 0);
	signal hex3num : std_logic_vector(3 downto 0);
	signal hex4num : std_logic_vector(3 downto 0);
	signal hex5num : std_logic_vector(3 downto 0);
	signal hex6num : std_logic_vector(3 downto 0);
	signal hex7num : std_logic_vector(3 downto 0);
	signal num_x : std_logic_vector(15 downto 0);
	signal num_y : std_logic_vector(15 downto 0);
	
	
	signal camera_row : natural;
	signal camera_column : natural;
	signal camera_current_pixel : natural;
	signal camera_width : natural;
	signal camera_height : natural;
	signal camera_y_data : std_logic_vector (7 downto 0);
	signal camera_y_clock : std_logic;
	
	signal sram8_address : std_logic_vector(20 downto 0);
	signal sram8_low_bar_high : std_logic;

	signal sram_data_in : std_logic_vector(15 downto 0);
	signal sram_data_out : std_logic_vector(15 downto 0);
	
	signal vga_row_vector : std_logic_vector(9 downto 0);
	signal vga_row : natural;
	signal vga_column_vector: std_logic_vector(9 downto 0);
	signal vga_column : natural;
	signal vga_video_on : std_logic;
	signal vga_eof : std_logic;
	
	signal write_sram : std_logic;
	signal read_sram : std_logic;
	
	signal cam_href : std_logic;
	signal cam_vsync : std_logic;
	signal cam_pixelclock : std_logic;
	signal cam_xclock : std_logic;
	signal cam_pixeldata : std_logic_vector(7 downto 0);
	
	signal test_out : std_logic;
	signal second_image_switch : std_logic;
	--signal RX_LINE_sig : std_logic;
	signal BUSY_sig: std_logic;
	signal DATA_out: std_logic_vector(7 downto 0);
	signal addr_offset: natural := 307199;
	
begin

	hex0decoder : leddcd port map (hex0num, HEX0);
	hex1decoder : leddcd port map (hex1num, HEX1);
	hex2decoder : leddcd port map (hex2num, HEX2);
	hex3decoder : leddcd port map (hex3num, HEX3);
	hex4decoder : leddcd port map (hex4num, HEX4);
	hex5decoder : leddcd port map (hex5num, HEX5);
	hex6decoder : leddcd port map (hex6num, HEX6);
	hex7decoder : leddcd port map (hex7num, HEX7);
	
	hex7num <= num_x(15 downto 12);
	hex6num <= num_x(11 downto 8);
	hex5num <= num_x(7 downto 4);
	hex4num <= num_x(3 downto 0);
	hex3num <= num_y(15 downto 12);
	hex2num <= num_y(11 downto 8);
	hex1num <= num_y(7 downto 4);
	hex0num <= num_y(3 downto 0);

	--DATA_out <= DATA;
	cam_pixeldata <= GPIO(7 downto 0);
 	cam_href <= GPIO(8); --purple
	cam_vsync <= GPIO(9); -- orange
	GPIO(10) <= cam_xclock; 
	cam_pixelclock <= GPIO(11);
	
	GPIO(12) <= cam_pixelclock;
	GPIO(35) <= test_out; --- whats this for ?
	
	
	
	--num_x(7 downto 0) <= cam_pixeldata;
	--num_x(15 downto 8) <= x"00";
	
	
	cam_instance : cam port map(
		cam_pixeldata, 
		cam_vsync, 
		cam_href, 
		cam_pixelclock,
		camera_width,
		camera_height,
		camera_current_pixel,
		camera_row,
		camera_column,
		camera_y_data,
		camera_y_clock
	);
	RX_data_map : RX port map (CLOCK_50, 
										UART_RXD,
										DATA_out,
										BUSY_sig);
--	sram16to8address_instance : sram16to8address port map (
--		sram8_address,
--		sram8_low_bar_high,
--		SRAM_ADDR,
--		SRAM_LB_N,
--		SRAM_HB_N
--	);
	
	SRAM_LB_N <= '0';
	SRAM_HB_N <= '0';
	
	vga_sync_instance : VGA_SYNC port map (
		vga_clock,
		VGA_HS,
		VGA_VS,
		vga_video_on,
		vga_eof,
		vga_row_vector,
		vga_column_vector
	);
	
	vga_row <= to_integer(unsigned(vga_row_vector));
	vga_column <= to_integer(unsigned(vga_column_vector));
	
	VGA_BLANK_N <= vga_video_on;
	VGA_CLK <= vga_clock;
	
	test_out <= sram8_low_bar_high; ----?
	
	camstatemachine_instance : camstatemachine port map (
		CLOCK_50,
		cam_vsync,
		vga_eof, 
		KEY(0),
		write_sram,
		read_sram
	);
	
	process (read_sram, write_sram, vga_clock, vga_row, vga_column, camera_row, camera_current_pixel, camera_y_data) 
	begin
		if(read_sram = '1') then
			--if (second_image_switch = '1') then --or any other sort of flag
		
						VGA_R <= sram_data_out(7 downto 0);
						VGA_G <= sram_data_out(7 downto 0);
						VGA_B <= sram_data_out(7 downto 0);

				SRAM_ADDR <= std_logic_vector(to_unsigned(vga_row * 640 + vga_column, 20));
--				else
--						VGA_R <= sram_data_out(7 downto 0);
--						VGA_G <= sram_data_out(7 downto 0);
--						VGA_B <= sram_data_out(7 downto 0);
--				SRAM_ADDR <= std_logic_vector(to_unsigned(addr_offset + vga_row * 640 + vga_column, 20));
				
			--end if; 	
				
		elsif (write_sram = '1') then
					--if (second_image_switch = '1') then --or any other sort of flag
						VGA_R <= x"00";
						VGA_G <= x"FF";
						VGA_B <= x"11";
					
					
						sram_data_in(7 downto 0) <= DATA_out;
						sram_data_in(15 downto 8) <= x"00";
						SRAM_ADDR <= std_logic_vector(to_unsigned(camera_row * 640 + camera_column, 20));
--					else 
--						VGA_R <= x"00";
--						VGA_G <= x"FF";
--						VGA_B <= x"11";
--					
--						sram_data_in(7 downto 0) <= DATA_out;
--						sram_data_in(15 downto 8) <= x"00";
--						SRAM_ADDR <= std_logic_vector(to_unsigned(addr_offset + camera_row * 640 + camera_column, 20));
			--end if;
		else
			VGA_R <= x"FF";
			VGA_G <= x"FF";
			VGA_B <= x"11";
			SRAM_ADDR <= (others => '0');
		end if;
	end process;
	
	
	SRAM_WE_N <= NOT (camera_y_clock AND write_sram);
	
	SRAM_DQ <= sram_data_in when write_sram = '1' else (others => 'Z');
	
	sram_data_out <= SRAM_DQ when read_sram = '1' else (others => 'Z');
	
	SRAM_OE_N <= '0';
	SRAM_CE_N <= '0';
	
	num_x <= std_logic_vector(to_unsigned(camera_width, 16));
	num_y <= std_logic_vector(to_unsigned(camera_height, 16));
	
	clock_divide : process(CLOCK_50) is
	begin
		if (rising_edge(CLOCK_50)) then
			camera_clock <= not camera_clock;
		end if;
	end process clock_divide;
	
	cam_xclock <= camera_clock;
	vga_clock <= NOT camera_clock;
	
end architecture camerainterface;