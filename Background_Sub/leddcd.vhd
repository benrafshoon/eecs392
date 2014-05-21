library IEEE;

use IEEE.std_logic_1164.all;

entity leddcd is
	port(
		 data_in : in std_logic_vector(3 downto 0);
		 segments_out : out std_logic_vector(6 downto 0)
		);
end entity leddcd;		 

architecture data_flow of leddcd is
begin
segments_out(6) <= 	(NOT data_in(3) AND NOT data_in(2) AND NOT data_in(1) AND NOT data_in(0)) OR 
							(NOT data_in(3) AND NOT data_in(2) AND NOT data_in(1) AND  data_in(0)) OR 
							(NOT data_in(3) AND  data_in(2) AND  data_in(1) AND  data_in(0)) OR 
							( data_in(3) AND  data_in(2) AND NOT data_in(1) AND NOT data_in(0));

segments_out(5) <= 	(NOT data_in(3) AND NOT data_in(2) AND NOT data_in(1) AND  data_in(0)) OR 
							(NOT data_in(3) AND NOT data_in(2) AND  data_in(1) AND NOT data_in(0)) OR 
							(NOT data_in(3) AND NOT data_in(2) AND data_in(1) AND data_in(0)) OR 
							(NOT data_in(3) AND  data_in(2) AND  data_in(1) AND  data_in(0)) OR 
							( data_in(3) AND  data_in(2) AND NOT data_in(1) AND  data_in(0));

segments_out(4) <= 	(NOT data_in(3) AND NOT data_in(2) AND NOT data_in(1) AND  data_in(0)) OR 
							(NOT data_in(3) AND NOT data_in(2) AND  data_in(1) AND  data_in(0)) OR 
							(NOT data_in(3) AND  data_in(2) AND NOT data_in(1) AND NOT data_in(0)) OR 
							(NOT data_in(3) AND  data_in(2) AND NOT data_in(1) AND  data_in(0)) OR 
							(NOT data_in(3) AND  data_in(2) AND  data_in(1) AND  data_in(0)) OR 
							( data_in(3) AND NOT data_in(2) AND NOT data_in(1) AND data_in(0));

segments_out(3) <= 	(NOT data_in(3) AND NOT data_in(2) AND NOT data_in(1) AND data_in(0)) OR 
							(NOT data_in(3) AND data_in(2) AND NOT data_in(1) AND NOT data_in(0)) OR
							(NOT data_in(3) AND  data_in(2) AND  data_in(1) AND  data_in(0)) OR
							(data_in(3) AND NOT data_in(2) AND  data_in(1) AND NOT data_in(0)) OR
							(data_in(3) AND  data_in(2) AND  data_in(1) AND  data_in(0));

segments_out(2) <= 	(NOT data_in(3) AND NOT data_in(2) AND  data_in(1) AND NOT data_in(0)) OR 
							( data_in(3) AND  data_in(2) AND NOT data_in(1) AND NOT data_in(0)) OR 
							( data_in(3) AND  data_in(2) AND  data_in(1) AND NOT data_in(0)) OR 
							( data_in(3) AND  data_in(2) AND  data_in(1) AND  data_in(0));

segments_out(1) <= 	(NOT data_in(3) AND  data_in(2) AND NOT data_in(1) AND  data_in(0)) OR 
							(NOT data_in(3) AND  data_in(2) AND  data_in(1) AND NOT data_in(0)) OR 
							( data_in(3) AND NOT data_in(2) AND  data_in(1) AND  data_in(0)) OR 
							( data_in(3) AND  data_in(2) AND NOT data_in(1) AND NOT data_in(0)) OR 			
							( data_in(3) AND  data_in(2) AND  data_in(1) AND NOT data_in(0)) OR 	
							( data_in(3) AND  data_in(2) AND  data_in(1) AND  data_in(0));

segments_out(0) <= 	(NOT data_in(3) AND NOT data_in(2) AND NOT data_in(1) AND  data_in(0)) OR 
							(NOT data_in(3) AND  data_in(2) AND NOT data_in(1) AND NOT data_in(0)) OR 
							( data_in(3) AND NOT data_in(2) AND  data_in(1) AND  data_in(0)) OR 
							( data_in(3) AND  data_in(2) AND NOT data_in(1) AND  data_in(0)); 	

end architecture data_flow;