library IEEE; 
use IEEE.std_logic_1164.all; 
--Additional standard or custom libraries go here if needed 
 
package sramdec is 

 
type seg is array ( 3 downto 0) of std_logic_vector(6 downto 0);
-- For each module, which you want to add to this package, you will 
-- place their COMPONENT declarations here one by one, in this case we 
-- just have one module 
 
end package sramdec; 
 
package body sramdec is 
 
--Subroutine declarations (if there are any such as functions and procedures) 
-- go here 
 
end package body sramdec; 