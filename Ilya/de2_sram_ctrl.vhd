library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity de2_sram_ctrl is
   port(
      clk, reset: in std_logic;
		
      -- to/from main system
      mem: in std_logic;
      rw: in std_logic;
      addr: in std_logic_vector(17 downto 0);
      data_f2m: in std_logic_vector(15 downto 0);
      ready: out std_logic;
      data_m2f: out std_logic_vector(15 downto 0);
		
      -- to/from chip
      sram_addr: out std_logic_vector(17 downto 0);
		sram_data: inout std_logic_vector(15 downto 0);
      ce_n, we_n, oe_n: out std_logic;
      ub_n, lb_n: out std_logic;
		
		-- debug
		state_ind: out unsigned(3 downto 0)
  );
end de2_sram_ctrl;

architecture arch of de2_sram_ctrl is
   type state_type is (idle, rd1, rd2, wr1, wr2);
   signal state_reg, state_next: state_type;
   signal data_f2m_reg, data_f2m_next: std_logic_vector(15 downto 0);
   signal data_m2f_reg, data_m2f_next: std_logic_vector(15 downto 0);
   signal addr_reg, addr_next: std_logic_vector(17 downto 0);
   signal we_buf, oe_buf, tri_buf: std_logic;
   signal we_reg, oe_reg, tri_reg: std_logic;
begin
	-- Is the SRAM chip ready for commands?
	ready <= '1' when state_reg=idle else '0';
	
   -- state & data registers
   process(clk,reset)
   begin
      if (reset='0') then
         state_reg <= idle;
         addr_reg <= (others=>'0');
         data_f2m_reg <= (others=>'0');
         data_m2f_reg <= (others=>'0');
         tri_reg <= '1';
         we_reg <= '1';
         oe_reg <= '1';
      elsif (clk'event and clk='1') then
         state_reg <= state_next;
         addr_reg <= addr_next;
         data_f2m_reg <= data_f2m_next;
         data_m2f_reg <= data_m2f_next;
         tri_reg <= tri_buf;
         we_reg <= we_buf;
         oe_reg <= oe_buf;
      end if;
   end process;
	
   -- next-state logic
   process(state_reg,mem,rw,sram_data,addr,data_f2m,
           data_f2m_reg,data_m2f_reg,addr_reg,
			  tri_reg,we_reg,oe_reg)
   begin
      addr_next <= addr_reg;
      data_f2m_next <= data_f2m_reg;
      data_m2f_next <= data_m2f_reg;
		tri_buf <= tri_reg;
		we_buf <= we_reg;
		oe_buf <= oe_reg;
      case state_reg is
         when idle =>
				tri_buf <= '1';  -- signals are active low
				we_buf <= '1';
				oe_buf <= '1';
            if mem='1' then
					addr_next <= addr;
               if rw='0' then --write
                  state_next <= wr1;
                  data_f2m_next <= data_f2m;
						tri_buf <= '0';
						we_buf <= '0';
               else -- read
                  state_next <= rd1;
						oe_buf <= '0';
               end if;
            else
               state_next <= idle;
            end if;
         when wr1 =>
            state_next <= wr2;
				tri_buf <= '0';
         when wr2 =>
            state_next <= idle;
         when rd1 =>
            state_next <= rd2;
				oe_buf <= '0';
         when rd2 =>
            data_m2f_next <= sram_data;
            state_next <= idle;
      end case;
   end process;
	
--   -- next-state logic
--   process(state_next)
--   begin
--      tri_buf <= '1';  -- signals are active low
--      we_buf <= '1';
--      oe_buf <= '1';
--      case state_next is
--         when idle =>
--         when wr1 =>
--            tri_buf <= '0';
--            we_buf <= '0';
--         when wr2 =>
--            tri_buf <= '0';
--         when rd1 =>
--            oe_buf <= '0';
--         when rd2=>
--            oe_buf <= '0';
--      end case;
--   end process;

   -- to main system
   data_m2f <= data_m2f_reg;
   -- to SRAM
	sram_addr <= addr_reg;
	sram_data <= data_f2m_reg when tri_reg='0' else (others=>'Z');
   we_n <= we_reg;
   oe_n <= oe_reg;
   ce_n <='0';
   ub_n <='0';
   lb_n <='0';
	
	-- debug
	state_ind <= "0001" when state_reg=idle else
					 "0010" when state_reg=wr1 else
					 "0011" when state_reg=wr2 else
					 "0100" when state_reg=rd1 else
					 "0101" when state_reg=rd2 else
					 "1111";
end arch;