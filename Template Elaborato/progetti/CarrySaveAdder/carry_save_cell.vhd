----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:23:24 11/04/2017 
-- Design Name: 
-- Module Name:    carry_save_cell - structural 
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

entity carry_save_cell is
    Port ( adder : in  STD_LOGIC_VECTOR (2 downto 0);
           cin_full_a: in STD_LOGIC;
			  temporary_f_a:in STD_LOGIC;
			  temporary_c_s : out  STD_LOGIC;
           cout : out  STD_LOGIC;
           sum : out  STD_LOGIC);
end carry_save_cell;

architecture structural of carry_save_cell is
component full_adder_half is
		PORT(	A: in STD_LOGIC;
			B: in STD_LOGIC;
			CIN: in STD_LOGIC;
			S: out STD_LOGIC;
			COUT: out STD_LOGIC
		);
end component;	
signal c0:STD_LOGIC:='0';
begin
	carry_save:full_adder_half port map(adder(0), adder(1),adder(2),temporary_c_S,c0);
	full_adder:full_adder_half port map(c0,cin_full_a,temporary_f_a,sum,cout);

end structural;

