library ieee;
use ieee.std_logic_1164.all;
use work.sramdec.all;
use std.textio.all;
use IEEE.NUMERIC_STD.ALL;
use ieee.std_logic_unsigned.all; 
entity sram is
port (
clk, reset: in std_logic;
mem: in std_logic;
rw: in std_logic;
addr: in std_logic_vector(3 downto 0);
data_f2s:in std_logic_vector(15 downto 0);
ready: out std_logic;
data_s2f_r, data_s2f_ur: out std_logic_vector(15 downto 0);
ad: out std_logic_Vector(17 downto 0);
we_n, oe_n: out std_logic;
addrdisp: out std_logic;
dio_a: inout std_logic_vector(15 downto 0);

segments_out8 : out std_logic_vector(6 downto 0);
segments_out9 : out std_logic_vector(6 downto 0);
segments_out10 : out std_logic_vector(6 downto 0);
 segment_out : out seg;
ce_a_n , ub_a_n, lb_a_n: out std_logic;

		
	      colorAddress :inout std_logic_vector (2 downto 0);
		--VGA 
			VGA_RED, VGA_GREEN, VGA_BLUE 					: out std_logic_vector(9 downto 0); 
			HORIZ_SYNC, VERT_SYNC, VGA_BLANK, VGA_CLK		: out std_logic
);
end sram;

architecture arch of sram is
 type state_type is (idle, rd1, rd2, wr1, wr2);

 
 signal state_reg, state_next: state_type;
 signal data_f2s_sig, data_f2s_reg, data_f2s_next: std_logic_Vector(15 downto 0);
 signal data_s2f_reg, data_S2f_next: std_logic_vector(15 downto 0);
 signal addr_reg, addr_next, addr_sig, addr_sig1: std_logic_vector(17 downto 0);
 signal we_buf, oe_buf, tri_buf: std_logic;
 signal we_reg, oe_reg,  tri_reg :std_logic;
 signal rst: integer;
 signal rst_var: std_logic;
 signal addr_int: integer :=0;
 signal count: integer;
  component lcdcdc is
	port(
		data_in : in std_logic_vector(3 downto 0);
		segments_out : out std_logic_vector(6 downto 0)
		);
		end component;
component VGA_top_level is
port (CLOCK_50 										: in std_logic;
			RESET_N											: in std_logic;
	      colorAddress :inout std_logic_vector (2 downto 0);
		--VGA 
			VGA_RED, VGA_GREEN, VGA_BLUE 					: out std_logic_vector(9 downto 0); 
			HORIZ_SYNC, VERT_SYNC, VGA_BLANK, VGA_CLK		: out std_logic);
			end component;
		begin
 
    process( clk, reset)
	     variable addr_int : integer;
	     variable output_int: integer ;
        variable fstatus: file_open_status;
       
        variable my_line : line; 
        file outfile: text;
          begin
		    file_open(fstatus, outfile, "outlakers.txt", write_mode);
			 write(my_line, string'("The output is"));
          writeline (outfile, my_line);
		     if(reset='0') then
			   state_reg<=idle;
				addr_reg<=(others=>'0');
				data_s2f_reg <=(others=>'0');
				data_f2s_reg<=(others=>'0');
				tri_reg<='1';
				we_reg<='1';
				oe_reg<='1';
	         rst<=1;	
			  	addr_sig1<="000000000000000000";
			   data_f2s_sig<="0000000000000000";
			elsif(clk'event and clk='1') then 
			   state_reg <= state_next;
			   addr_reg <=addr_next;
			   data_f2s_reg<=data_f2s_next;
			   data_s2f_reg <=data_s2f_next;
			   tri_reg<=tri_buf;
			   we_reg<=we_buf;
			   oe_reg<=oe_buf;
				if(rw='0') then
				--count<= count +1;
				addr_sig1<=addr_sig1 + "000000000000000001";
				data_f2s_sig<=data_f2s_sig + "0000000000000001";
				count<= count + 1;
				
			   
			end if;
			if(rw='1') then
			if(count>260000) then
			count<=0;
			addr_sig1<= "000000000000000000";
			else
				count<= count +1;
				addr_sig1<=addr_sig1 + "000000000000000001";
			
				
					
			   end if;
			end if;
			
			if(addr_sig1>260000) then
			addrdisp<='1';
			
			else
			addrdisp<='0';
			end if;
				
			end if;
		end process;
		process(state_reg,mem,rw,dio_a,data_f2s_sig,addr_sig1, data_f2s_reg, data_s2f_reg, addr_reg)
		--variable addr_int: integer :=0;
		begin 
		  
		--addr_sig<= "00000000000000" & addr;
		   addr_next<=addr_reg;
	      data_S2f_next<=data_f2s_reg;
		   data_S2f_next<=data_s2f_reg;
		   ready <= '0';
	 	   case state_reg is
			   when idle =>
				  if (mem ='0') then    
				     state_next <=idle;
					  addr_sig<="000000000000000000";
					  --data_f2s_sig<="0000000000000000";
				  else 
				     addr_next <= addr_sig  ;
					  if rw='0' then --write
					     data_f2s_next <= data_f2s_sig;
						 addr_sig<=addr_sig1; 
						 state_next <= wr1;
						  
					else   
					    state_next <= rd1;
						end if;
					end if;
					ready <= '1';
				when wr1 => 
				state_next <= wr2;
				when wr2=> 
				--addr_int := to_integer(unsigned(addr_sig));
				--addr_int:=addr_int + 1;
			   --addr_sig<= std_logic_vector(to_unsigned(addr_int, 18));
				state_next <=idle;
				
				
				when rd1=>
				state_next <= rd2;
				when rd2=>
				data_s2f_next <=dio_a;
				 addr_sig<=addr_sig1; 
				state_next <= idle;
				colorAddress<=dio_a(2 downto 0);
			end case;
		end process;
		process (state_next,rst)
		
		 
		begin
		tri_buf <= '1';
		we_buf <='1';
		oe_buf <= '1';
		case state_next is 
		  when idle =>
		  when wr1=>
		  tri_buf <= '0';
		  we_buf <='0';
		  when wr2=>
		  tri_buf <= '0';
		 
		  when rd1 =>
		  oe_buf <= '0';
		  when rd2 =>
		  oe_buf <= '0';
		  end case;
		  end process;
		 
		  
		  data_S2f_r <= data_s2f_reg;
		  data_s2f_ur <= dio_a;
		  
		  we_n<= we_reg;
		  oe_n <=oe_reg;
		  ad<= addr_sig;
		  
		  ce_a_n <='0';
		  ub_a_n <='0';
		  lb_a_n <='0';
		  dio_a <= data_f2s_reg when tri_reg ='0' else ( others => 'Z');
		 --addr_reg<="";
		 --colorAddress<=dio_a(2 downto 0);
        
		  led: lcdcdc port map (dio_a(3 downto 0), segments_out8);  --data from sram hex7
		  led2: lcdcdc port map (data_f2s(3 downto 0), segments_out9); ---input data hex6
		  led3: lcdcdc port map (addr(3 downto 0), segments_out10); -- address input
		  GEN_DEC: for i in 0 to 3 generate 
   c2: lcdcdc port map ((addr_sig(((4*i)+3) downto ((4*i)))) , segment_out(i));  ---address in sram
  end generate;
 c3: Vga_top_level port map (clk, reset, colorAddress, VGA_RED, VGA_GREEN, VGA_BLUE, HORIZ_SYNC, VERT_SYNC, VGA_BLANK, VGA_CLK);
 
		  end arch;
		  
		
			
    