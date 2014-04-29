library IEEE;
use IEEE.STD_LOGIC_1164.all;
use IEEE.numeric_std.all;
use WORK.decoder.all;

entity camerainterface is 
port (
	CLOCK_50 : in std_logic;
	GPIO : inout std_logic_vector(35 downto 0);
	HEX0 : out std_logic_vector(6 downto 0);
	HEX1 : out std_logic_vector(6 downto 0);
	HEX2 : out std_logic_vector(6 downto 0);
	HEX3 : out std_logic_vector(6 downto 0);
	HEX4 : out std_logic_vector(6 downto 0);
	HEX5 : out std_logic_vector(6 downto 0);
	HEX6 : out std_logic_vector(6 downto 0);
	HEX7 : out std_logic_vector(6 downto 0)
);
end entity camerainterface;

architecture camerainterface of camerainterface is
	signal clock_25 : std_logic;
	
	signal hex0num : std_logic_vector(3 downto 0);
	signal hex1num : std_logic_vector(3 downto 0);
	signal hex2num : std_logic_vector(3 downto 0);
	signal hex3num : std_logic_vector(3 downto 0);
	signal hex4num : std_logic_vector(3 downto 0);
	signal hex5num : std_logic_vector(3 downto 0);
	signal hex6num : std_logic_vector(3 downto 0);
	signal hex7num : std_logic_vector(3 downto 0);
	signal cam_pixeldata : std_logic_vector (7 downto 0);
	signal cam_href : std_logic;
	signal cam_vsync : std_logic;
	signal cam_pixelclock : std_logic;
	signal num_x : std_logic_vector(15 downto 0);
	signal num_y : std_logic_vector(15 downto 0);
	
	component cam  is
		port(
		data : in std_logic_vector(7 downto 0);
		vsync : in std_logic;
		href : in std_logic;
		clock : in std_logic;
		num_x : out std_logic_vector(15 downto 0);
		num_y : out std_logic_vector(15 downto 0)
	);
	end component cam;

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

	
	cam_pixeldata(7 downto 0) <= GPIO(7 downto 0);
	cam_href <= GPIO(8); --purple
	cam_vsync <= GPIO(9); -- orange
	GPIO(10) <= clock_25; 
	cam_pixelclock <= GPIO(11);
	
	GPIO(12) <= cam_pixelclock;
	
	cam_instance : cam port map(cam_pixeldata, cam_vsync, cam_href, cam_pixelclock, num_x, num_y);
	
	clock_divide : process(CLOCK_50) is
	begin
		if (rising_edge(CLOCK_50)) then
			clock_25 <= not clock_25;
		end if;
	end process clock_divide;
	
end architecture camerainterface;