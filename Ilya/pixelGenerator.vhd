library IEEE;

use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;

entity pixelGenerator is
	port(
		clk, reset : in std_logic;
		pixel_clk, video_on, eof : in std_logic;
		pixel_row, pixel_column : in std_logic_vector(9 downto 0);
		p1_color, p2_color : in std_logic_vector ( 2 downto 0 );
		red_out, green_out, blue_out : out std_logic_vector(9 downto 0)
	);
end entity pixelGenerator;

architecture arch of pixelGenerator is

signal addr_sram : std_logic_vector(17 downto 0);
signal data_s2f_sram : std_logic_vector(15 downto 0);
signal mem_sram, rw_sram : std_logic;
signal ready_sram : std_logic;

begin
	-- COMPONENTS
--	sram_cont: entity work.de2_sram_ctrl
--		port map(
--			clk => clk,
--			reset => reset,
--			mem => mem_sram,
--			rw => rw_sram,
--			addr => addr_sram,
--			data_f2s => open,
--			ready => ready_sram,
--			data_s2f => data_s2f_sram,
--			ad => sram_addr,
--			dio => sram_data,
--			ce_n => ce_n,
--			we_n => we_n,
--			oe_n => oe_n,
--			ub_n => ub_n,
--			lb_n => lb_n
--		);
		
		
	red_out <= data_s2f_sram(7 downto 0) & "00";
	green_out <= (others=>'0');
	blue_out <= (others=>'0');
	
	
	
end architecture arch;