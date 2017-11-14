----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:31:35 11/04/2017 
-- Design Name: 
-- Module Name:    carry_save_adder - Behavioral 
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

entity carry_save_adder is
    Port ( adder : in  STD_LOGIC_VECTOR (5 downto 0);
           sum : out  STD_LOGIC_VECTOR (2 downto 0);
           cout : out  STD_LOGIC);
end carry_save_adder;

architecture Behavioral of carry_save_adder is
component carry_save_cell is
    Port ( adder : in  STD_LOGIC_VECTOR (2 downto 0);
           cin_full_a: in STD_LOGIC;
			  temporary_f_a:in STD_LOGIC;
			  temporary_c_s : out  STD_LOGIC;
           cout : out  STD_LOGIC;
           sum : out  STD_LOGIC);
end component;
signal carries :STD_LOGIC:='0'; --riporti tra i full_adder
signal temp_f_a:STD_LOGIC:='0'; -- ingresso temporaneo proveniente dal carry_save successivo
begin
	carry_save_cell_1: carry_save_cell port map(adder(2 downto 0),'0',temp_f_a,sum(0),carries,sum(1));
	carry_save_cell_2:carry_save_cell port map(adder(5 downto 3),carries,'0',temp_f_a,cout,sum(2));
end Behavioral;

