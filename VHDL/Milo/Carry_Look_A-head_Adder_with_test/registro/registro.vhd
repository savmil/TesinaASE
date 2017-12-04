----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    21:46:48 11/07/2017 
-- Design Name: 
-- Module Name:    registro - structural 
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

entity registro is
	 generic (N:natural:=2);
    Port ( data : in  STD_LOGIC_VECTOR (N-1 downto 0);
           clk : in  STD_LOGIC;
           enable : in  STD_LOGIC;
           data_o : out  STD_LOGIC_VECTOR (N-1 downto 0);
			  notdata_o : out  STD_LOGIC_VECTOR (N-1 downto 0));
end registro;

architecture structural of registro is
	component flip_flop_rising_edge is
    Port ( clk : in  STD_LOGIC;
           enable : in  STD_LOGIC;
           q : out  STD_LOGIC;
           notq : out  STD_LOGIC;
           set : in  STD_LOGIC;
           reset : in  STD_LOGIC);
	end component;
begin
	registro: process
	begin
	for i in 1 to N-1 loop
	 if data(i)='1'  then
	  flip_flop_r_e:flip_flop_rising_edge(clk,enable,data_o(i),notdata_o(i) ,'1','0');
	 else dato_0: if data(i)='0' generate
		flip_flop_r_e:flip_flop_rising_edge(clk,enable,data_o(i),notdata_o(i) ,'0','1');
	 end if;
	end loop;
	end;
end structural;

