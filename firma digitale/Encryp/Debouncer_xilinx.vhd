----------------------------------------------------------------------------------
-- Module Name:    Debouncer_xilinx
-- Project Name:   Debouncer
-- Target Devices: Digilent Nexys 2
-- Tool versions:  ISE 14.2
-- Description:    Componente per eliminare gli spikes 
--						 generati dalle pressione dei bottoni
----------------------------------------------------------------------------------
library IEEE; 
use IEEE.STD_LOGIC_1164.ALL; 
use IEEE.STD_LOGIC_ARITH.ALL; 
use IEEE.STD_LOGIC_UNSIGNED.ALL; 

entity Debouncer_xilinx is 
    Port ( CLK : in  STD_LOGIC; 
           Sig : in  STD_LOGIC; 
           Deb_Sig : out  STD_LOGIC); 
end Debouncer_xilinx; 

architecture Behavioral of Debouncer_xilinx is 
 
signal Q0, Q1, Q2 : STD_LOGIC := '0'; 

begin 

process (CLK) is 
begin 
 if (CLK'event and CLK = '1') then  
  Q0 <= Sig; 

  Q1 <= Q0; 

  Q2 <= Q1; 

 end if; 

end process; 

Deb_Sig <= Q0 and Q1 and (not Q2);

end Behavioral; 