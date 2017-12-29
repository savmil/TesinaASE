----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:09:14 12/27/2017 
-- Design Name: 
-- Module Name:    generazione_valori_RSA - Behavioral 
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

entity generazione_valori_RSA is
    Port ( p : in  STD_LOGIC_VECTOR (0 downto 0);
           q : in  STD_LOGIC_VECTOR (0 downto 0);
           n : out  STD_LOGIC_VECTOR (0 downto 0);
           e : out  STD_LOGIC_VECTOR (0 downto 0);
           d : out  STD_LOGIC_VECTOR (0 downto 0);
           M_e : out  STD_LOGIC_VECTOR (0 downto 0);
           M_d : out  STD_LOGIC_VECTOR (0 downto 0));
end generazione_valori_RSA;

architecture Behavioral of generazione_valori_RSA is

begin


end Behavioral;

