----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:40:49 11/27/2017 
-- Design Name: 
-- Module Name:    tester_dispositivi - Behavioral 
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

entity tester_dispositivi is
    Port ( clock : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           load_conf : in  STD_LOGIC;
           load_value : in  STD_LOGIC;
			  button : in STD_LOGIC_VECTOR (3 downto 0);
			  led : out STD_LOGIC_VECTOR (7 downto 0);
           in_byte : in  STD_LOGIC_VECTOR (7 downto 0);
           anodes : out  STD_LOGIC_VECTOR (3 downto 0);
           cathodes : out  STD_LOGIC_VECTOR (7 downto 0));
end tester_dispositivi;

architecture Behavioral of tester_dispositivi is
COMPONENT contatore_modulo_2n
	PORT(
		clk : IN std_logic;
		enable : IN std_logic;
		reset : IN std_logic;          
		hit : OUT std_logic;
		output : OUT std_logic_vector(1 downto 0)
		);
	END COMPONENT;
	COMPONENT latch_d
	PORT(
		input : IN std_logic_vector(7 downto 0);
		enable : IN std_logic;
		reset : IN std_logic;          
		output : OUT std_logic_vector(7 downto 0)
		);
	END COMPONENT;
	COMPONENT Carry_Look_A_head_Adder
	generic(width:natural:=8);
	PORT(
		adder1 : IN std_logic_vector(width-1 downto 0);
		adder2 : IN std_logic_vector(width-1 downto 0);
		cin : IN std_logic;          
		sum : OUT std_logic_vector(width-1 downto 0);
		cout : OUT std_logic
		);
	END COMPONENT;
	COMPONENT display_top_level
	PORT(
		clock : IN std_logic;
		reset : IN std_logic;
		load_conf : IN std_logic;
		load_value : IN std_logic;
		number : IN std_logic_vector(15 downto 0);
		in_byte : IN std_logic_vector(7 downto 0);          
		anodes : OUT std_logic_vector(3 downto 0);
		cathodes : OUT std_logic_vector(7 downto 0)
		);
	END COMPONENT;
	signal sel :STD_LOGIC_VECTOR(1 downto 0):=(others=>'0');
	signal value,sum1:STD_LOGIC_VECTOR(15 downto 0) := (others=>'0');
	signal en_ad1,en_ad2,en_cla :STD_LOGIC:='0';
begin
	selettore: contatore_modulo_2n port map(button(0),'1',not( button(3)),open,sel);
	en_ad1<=(not(sel(1)) and sel(0));
	adder1 : latch_d port map(in_byte,en_ad1,not(button(3)),value(7 downto 0));
	en_ad2<=(sel(1) and not(sel(0)));
	adder2 : latch_d port map(in_byte,en_ad2,not(button(3)),value(15 downto 8));
	en_cla<=(sel(1) and sel(0));
	led(7)<=sel(1);
	led(6)<=sel(0);
	cla : Carry_Look_A_head_Adder port map(value(7 downto 0),value(15 downto 8),en_cla,sum1(7 downto 0),led(0));
	gest_disp : display_top_level port map(clock,button(3),button(2),button(1),sum1,in_byte,anodes,cathodes);
end Behavioral;
