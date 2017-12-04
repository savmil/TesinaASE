----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:43:03 11/12/2017 
-- Design Name: 
-- Module Name:    selettore_cifra - Structural 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity selettore_cifra is
    Port ( number : in  STD_LOGIC_VECTOR (15 downto 0);
           numero_cifra : in  STD_LOGIC_VECTOR (1 downto 0);
           valore_cifra : out  STD_LOGIC_VECTOR (3 downto 0));
end selettore_cifra;

architecture Structural of selettore_cifra is

begin
	with numero_cifra select valore_cifra<=
	number(3 downto 0) when "00",
	number(7 downto 4) when "01",
	number(11 downto 8) when "10",
	number(15 downto 12) when "11",
	"XXXX" when others ;
end Structural;

