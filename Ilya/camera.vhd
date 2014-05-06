library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
use ieee.math_real.all;

entity camera is
	port (
		clk, rst: in std_logic;
		
		-- to/from Camera
		dclk: in std_logic;							-- data clock
		hblk, vsync: in std_logic;					-- control signals
		im: in std_logic_vector(7 downto 0);	-- parallel image data
		extclk: out std_logic;						-- clock sent to camera, determines dclk
		
		-- to/from SRAM
		sram_addr: out std_logic_vector(17 downto 0);	-- parallel address
		sram_data: inout std_logic_vector(15 downto 0);	-- parallel data
		ce_n, we_n, oe_n, lb_n, ub_n: out std_logic;		-- control signals
		
		-- VGA
		VGA_R, VGA_G, VGA_B: out std_logic_vector(9 downto 0);
		VGA_CLK, VGA_BLANK, VGA_HS, VGA_VS, VGA_SYNC: out std_logic;
		
		-- Interface
		btn_pic: in std_logic;
		
		-- Debug
		LEDR: out std_logic_vector(17 downto 0);
		LEDG: out std_logic_vector(7 downto 0);
		led0, led1, led2, led3, led4, led5, led6, led7: out std_logic_vector(6 downto 0)
	);
end camera;

architecture arch of camera is
	-- Cam
	signal pixel_count : unsigned(19 downto 0) := (others=>'0');
	signal cam_clk : std_logic;
	signal counter : unsigned(3 downto 0) := (others=>'0');
	signal vblk : std_logic;
	signal pixel_count2 : unsigned(17 downto 0) := (others=>'0');
	signal im_LB : std_logic_vector(7 downto 0);
	
	-- SRAM
	signal mem_sram, rw_sram : std_logic := '0';
	signal mem_sram_next, mem_sram_reg, rw_sram_next, rw_sram_reg : std_logic := '0';
	signal addr_sram : std_logic_vector(17 downto 0) := (others=>'0');
	signal data_f2m_sram : std_logic_vector(15 downto 0);
	signal data_f2m_sram_next, data_f2m_sram_reg : std_logic_vector(15 downto 0);
	signal data_m2f_sram : std_logic_vector(15 downto 0);
	signal ready_sram : std_logic;
	signal addr_gen_sram : unsigned(17 downto 0) := (others=>'0');
	signal addr_gen_sram_next, addr_gen_sram_reg : unsigned(17 downto 0) := (others=>'0');
	--signal addr_sram_limit : unsigned(17 downto 0) := (others=>'0');
	signal addr_sram_limit_next, addr_sram_limit_reg : unsigned(17 downto 0) := (others=>'0');
	
	-- VGA
	signal hs, vs : std_logic;
	signal px, py : std_logic_vector(9 downto 0);
	signal video_on_int, vga_clk_int : std_logic;
	signal mem_read : std_logic;
	
	-- System
	signal reset : std_logic;
	type state_type is (idle, cam1, cam2, sram_wr1, vga_disp1, sram_rd1, temp, vga_disp2);
   signal state_reg, state_next: state_type := idle;
	signal pixel_count_wr_next, pixel_count_wr_reg : unsigned(17 downto 0) := (others=>'0');
	
	-- Debug
	signal state_ind : std_logic_vector(3 downto 0);
	signal debug_counter1_next, debug_counter1_reg : unsigned(19 downto 0);
	signal sram_state_ind : unsigned(3 downto 0);
	
	
begin
	-- Debug
	hex7seg_0: entity work.hex7seg
		port map(input=>addr_gen_sram_reg(3 downto 0), output=>led0);
	hex7seg_1: entity work.hex7seg
		port map(input=>addr_gen_sram_reg(7 downto 4), output=>led1);
	hex7seg_2: entity work.hex7seg
		port map(input=>addr_gen_sram_reg(11 downto 8), output=>led2);
	hex7seg_3: entity work.hex7seg
		port map(input=>addr_gen_sram_reg(15 downto 12), output=>led3);
	hex7seg_4: entity work.hex7seg
		port map(input=>"00" & addr_gen_sram_reg(17 downto 16), output=>led4);
	hex7seg_5: entity work.hex7seg
		port map(input=>sram_state_ind, output=>led5);
	hex7seg_6: entity work.hex7seg
		port map(input=>unsigned(data_m2f_sram(3 downto 0)), output=>led6);
	hex7seg_7: entity work.hex7seg
		port map(input=>unsigned(data_m2f_sram(7 downto 4)), output=>led7);

	-- COMPONENTS
	sram_cont: entity work.de2_sram_ctrl
		port map(
			clk => clk,
			reset => reset,
			mem => mem_sram,
			rw => rw_sram,
			addr => addr_sram,
			data_f2m => data_f2m_sram,
			ready => ready_sram,
			data_m2f => data_m2f_sram,
			sram_addr => sram_addr,
			sram_data => sram_data,
			ce_n => ce_n,
			we_n => we_n,
			oe_n => oe_n,
			ub_n => ub_n,
			lb_n => lb_n,
			state_ind => sram_state_ind
		);
		
--	vga_cont: entity work.vga_sync
--		port map(
--			clk => clk,
--			reset => reset,
--			hsync => VGA_HS,
--			vsync => VGA_VS,
--			video_on => video_on_int,
--			p_tick => vga_clk_int,
--			pixel_x => px,
--			pixel_y => py
--		);
		
	vga_cont2: entity work.vga_sync2
		port map(
			clock_50Mhz => clk,
			horiz_sync_out => VGA_HS,
			vert_sync_out => VGA_VS,
			video_on => video_on_int,
			pixel_clock => vga_clk_int,
			eof => open,
			pixel_row => px,
			pixel_column => py
		);
		
		
	reset <= rst;--not rst;

	-----------------------------
	-- CAMERA CONTROLS
	-----------------------------
	--vblk <= not vsync;
	vblk <= vsync;
	
	-- Camera output pixel counting
	process (dclk,reset,state_reg)
	begin
		if reset='0' or state_reg=idle or state_reg=cam1 then
			pixel_count <= (others=>'0');
		elsif rising_edge(dclk) and (state_reg=cam2 or state_reg=sram_wr1) then
			if vblk='1' and hblk='1' then
				pixel_count <= pixel_count + 1;
			end if;
		end if;
	end process;
	
	-- Camera input external clock
	clock_divide_CAM : process(clk) is
	begin
		if (rising_edge(clk)) then
			counter <= counter + 1;
			if counter = "0000" then
				cam_clk <= not cam_clk;
				counter <= "0000";
			end if;
		end if;
	end process clock_divide_CAM;
	extclk <= cam_clk;
	
	-- VGA display pixel counting
	process (vga_clk_int,reset,state_reg)
	begin
		if reset='0' or state_reg=cam2 then
			pixel_count2 <= (others=>'0');
		elsif rising_edge(vga_clk_int) then
			if video_on_int = '1' then
				if pixel_count2 <= addr_gen_sram_reg then--pixel_count2 < addr_sram_limit_reg then
					pixel_count2 <= pixel_count2 + 1;
				else
					pixel_count2 <= (others=>'0');
				end if;
			end if;
		end if;
	end process;
	
	
	LEDR(0) <= ready_sram;
	LEDR(1) <= mem_sram;
	LEDR(2) <= rw_sram;
	
	state_ind <= "0001" when state_reg=idle else
					 "0010" when state_reg=cam1 else
					 "0011" when state_reg=cam2 else
					 "0100" when state_reg=sram_wr1 else
					 "0101" when state_reg=vga_disp1 else
					 "0110" when state_reg=sram_rd1 else
					 "0111" when state_reg=vga_disp2 else
					 "1111" when state_reg=temp else
					 "1000";
	LEDG(3 downto 0) <= state_ind;
	
	
	VGA_BLANK <= video_on_int;
	VGA_CLK <= vga_clk_int;
	--VGA_R <= data_m2f_sram(7 downto 0) & "00" when state_reg=vga_disp1 or state_reg=sram_rd1 else (others=>'1');--im--
	VGA_R <= data_m2f_sram(15 downto 8) & "00" when state_reg=vga_disp2 else (others=>'1');
	VGA_G <= (others=>'0');
	VGA_B <= (others=>'0');
	
--	VGA_R <= data_m2f_sram(15 downto 11) & "00000" when state_reg=vga_disp2 else (others=>'1');
--	VGA_G <= data_m2f_sram(10 downto 5) & "0000" when state_reg=vga_disp2 else (others=>'0');
--	VGA_B <= data_m2f_sram(4 downto 0) & "00000" when state_reg=vga_disp2 else (others=>'0');
	
--	VGA_R <= data_m2f_sram(7 downto 3) & "00000" when state_reg=vga_disp2 else (others=>'1');
--	VGA_G <= data_m2f_sram(2 downto 0) & data_m2f_sram(15 downto 13) & "0000" when state_reg=vga_disp2 else (others=>'0');
--	VGA_B <= data_m2f_sram(12 downto 8) & "00000" when state_reg=vga_disp2 else (others=>'0');
	
--	VGA_HS <= hblk;
--	VGA_VS <= not vblk;
--	VGA_CLK <= dclk;
--	VGA_BLANK <= hblk;
--	VGA_SYNC <= hblk;
	
	
	
	-----------------------------
	-- STATE REGISTERS
	-----------------------------
	process(clk,reset)
	begin
		if (reset='0') then
			state_reg <= idle;
			addr_gen_sram_reg <= (others=>'0');
			data_f2m_sram_reg <= (others=>'0');
			addr_sram_limit_reg <= (others=>'0');
			mem_sram_reg <= '0';
			rw_sram_reg <= '0';
			pixel_count_wr_reg <= (others=>'0');
			
			debug_counter1_reg <= (others=>'0');
		elsif (rising_edge(clk)) then
			state_reg <= state_next;
			addr_gen_sram_reg <= addr_gen_sram_next;
			data_f2m_sram_reg <= data_f2m_sram_next;
			addr_sram_limit_reg <= addr_sram_limit_next;
			mem_sram_reg <= mem_sram_next;
			rw_sram_reg <= rw_sram_next;
			pixel_count_wr_reg <= pixel_count_wr_next;
			
			debug_counter1_reg <= debug_counter1_next;
		end if;
	end process;

	addr_sram <= std_logic_vector(to_unsigned(to_integer(unsigned(py))*640 + to_integer(unsigned(px)),18)) when state_reg=vga_disp2 else std_logic_vector(addr_gen_sram_reg);

	data_f2m_sram <= data_f2m_sram_reg;
	mem_sram <= mem_sram_reg;
	rw_sram <= rw_sram_reg;

	-----------------------------
	-- NEXT-STATE LOGIC
	-----------------------------
   process(state_reg,  ready_sram,  vblk,pixel_count,pixel_count2,pixel_count_wr_reg,  btn_pic,
			  addr_gen_sram_reg,addr_sram_limit_reg,rw_sram_reg,mem_sram_reg,data_f2m_sram_reg,  debug_counter1_reg)
   begin
		state_next <= state_reg;
		addr_gen_sram_next <= addr_gen_sram_reg;
		data_f2m_sram_next <= data_f2m_sram_reg;
		addr_sram_limit_next <= addr_sram_limit_reg;
		mem_sram_next <= mem_sram_reg;
		rw_sram_next <= rw_sram_reg;
		pixel_count_wr_next <= pixel_count_wr_reg;
		
		debug_counter1_next <= debug_counter1_reg;
		
      case state_reg is
		-------------------------------------------------------------------------
			when idle =>
				state_next <= idle;
				mem_sram_next <= '0';
				
				-- Take picture
				if btn_pic='0' then -- push button
					state_next <= cam1;
					addr_gen_sram_next <= (others=>'0');
					pixel_count_wr_next <= (others=>'0');
				end if;
		-------------------------------------------------------------------------
			when cam1 =>
				state_next <= cam1;
				if vblk = '1' then -- previous picture still going
					state_next <= cam1;
				elsif btn_pic='1' then -- release button
					state_next <= cam2;
				end if;
		-------------------------------------------------------------------------
			when cam2 =>
				state_next <= cam2;
				if vblk='1' then
					if pixel_count > pixel_count_wr_reg then--pixel_count /= pixel_count_wr_reg then --addr_gen_sram_reg then
						pixel_count_wr_next <= pixel_count_wr_reg + 1;
						if pixel_count_wr_reg(0)='0' then
							im_LB <= im;
						else
							--addr_gen_sram_next <= addr_gen_sram_reg + 1;
							state_next <= sram_wr1;
							data_f2m_sram_next <= im & im_LB;--std_logic_vector(pixel_count(15 downto 0));--std_logic_vector(addr_gen_sram_reg(15 downto 0));--im;--"10101010";--im_reg;--
							mem_sram_next <= '1';
							rw_sram_next <= '0';
						end if;
					end if;
				elsif pixel_count>0 and ready_sram='1' then
					state_next <= vga_disp2;--vga_disp1;
					mem_read <= '1';
					addr_sram_limit_next <= addr_gen_sram_reg;--pixel_count(17 downto 0);--to_unsigned(153600,18);--153600
					--addr_gen_sram_next <= to_unsigned(0,18);
				end if;
		-------------------------------------------------------------------------
			when sram_wr1 =>
				state_next <= sram_wr1;
				addr_gen_sram_next <= addr_gen_sram_reg + 1;
				mem_sram_next <= '0';
				rw_sram_next <= '1';
				if ready_sram = '1' then
					state_next <= cam2;
				end if;
		-------------------------------------------------------------------------
			when vga_disp1 =>
				state_next <= vga_disp1;
				if pixel_count2 /= addr_gen_sram_reg then
					state_next <= sram_rd1;
					mem_sram_next <= '1';
					rw_sram_next <= '1';
				end if;
		-------------------------------------------------------------------------
			when sram_rd1 =>
				state_next <= sram_rd1;
				if addr_gen_sram_reg < addr_sram_limit_reg then
					addr_gen_sram_next <= addr_gen_sram_reg + 1;
				else
					addr_gen_sram_next <= (others=>'0');
					debug_counter1_next <= debug_counter1_reg + 1;
				end if;
				mem_sram_next <= '0';
				rw_sram_next <= '1';
				if ready_sram = '1' then
					state_next <= vga_disp1;
				end if;
		-------------------------------------------------------------------------
			when vga_disp2 =>
				state_next <= vga_disp2;
				--addr_gen_sram_next <= to_unsigned(to_integer(unsigned(py))*640 + to_integer(unsigned(px)),18);
				if ready_sram = '1' then-- and mem_read = '1' then
					mem_sram_next <= '1';
					rw_sram_next <= '1';
				else
					mem_sram_next <= '0';
					rw_sram_next <= '1';
				end if;
				
				if px="0000000000" and py = "0000000000" then
					debug_counter1_next <= debug_counter1_reg + 1;
				end if;
		-------------------------------------------------------------------------
			when temp =>
				state_next <= temp;
			when others =>
			
		-------------------------------------------------------------------------
		end case;
	end process;
	
end arch;