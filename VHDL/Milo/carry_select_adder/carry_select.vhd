----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:54:58 11/21/2017 
-- Design Name: 
-- Module Name:    carry_select - Behavioral 
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

entity carry_select is
	 generic(width:natural :=8);
    Port ( adder1 : in  STD_LOGIC_VECTOR (width-1 downto 0);
           adder2 : in  STD_LOGIC_VECTOR (width-1 downto 0);
           cin : in  STD_LOGIC;
           cout  : out  STD_LOGIC;
           sum : out  STD_LOGIC_VECTOR (width-1 downto 0));
end carry_select;
	
architecture Behavioral of carry_select is
constant cell_dimension: NATURAL:=4;
	COMPONENT carry_select_cell
	generic (N: natural :=width/cell_dimension);
	PORT(
		adder1 : IN std_logic_vector(N-1 downto 0);
		adder2 : IN std_logic_vector(N-1 downto 0);
		cin : IN std_logic;          
		sum : OUT std_logic_vector(N-1 downto 0);
		cout : OUT std_logic
		);
	END COMPONENT;
	constant number_of_cell: NATURAL:=width/(width/cell_dimension);
	signal cout1: STD_LOGIC_VECTOR(cell_dimension-1 downto 0);
begin
	carry_select:for i in 0 to number_of_cell-1 generate
		c_s_c:carry_select_cell port map(adder1((width/cell_dimension+i*(width/cell_dimension))-1 downto 0+i*width/cell_dimension),
		adder2((width/cell_dimension+i*(width/cell_dimension))-1 downto 0+i*width/cell_dimension),cin,
		sum((width/cell_dimension+i*(width/cell_dimension))-1 downto 0+i*width/cell_dimension),cout1(i));
		cout<=cout1(cell_dimension-1);
	end generate carry_select;
end Behavioral;

