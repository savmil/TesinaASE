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
			  button : in STD_LOGIC_VECTOR (3 downto 0);
			  led : out STD_LOGIC_VECTOR (7 downto 0);
           in_byte : in  STD_LOGIC_VECTOR (7 downto 0);
           anodes : out  STD_LOGIC_VECTOR (3 downto 0);
           cathodes : out  STD_LOGIC_VECTOR (7 downto 0));
end tester_dispositivi;

architecture Behavioral of tester_dispositivi is
COMPONENT contatore_modulo_2n
	generic(width: natural:=3);
	PORT(
		clk : IN std_logic;
		enable : IN std_logic;
		reset : IN std_logic;          
		hit : OUT std_logic;
		output : OUT std_logic_vector(width-1 downto 0)
		);
	END COMPONENT;
	COMPONENT latch_d
	generic(width: NATURAL:=8);
	PORT(
		input : IN std_logic_vector(width-1 downto 0);
		enable : IN std_logic;
		reset : IN std_logic;          
		output : OUT std_logic_vector(width-1 downto 0)
		);
	END COMPONENT;
	COMPONENT mac_multiplier
	PORT(
		a : IN std_logic_vector(7 downto 0);
		b : IN std_logic_vector(7 downto 0);
		s_in : IN std_logic_vector(7 downto 0);
		c_in : IN std_logic_vector(7 downto 0);          
		ris : OUT std_logic_vector(15 downto 0)
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
	COMPONENT debounce
	PORT(
		clk : IN std_logic;
		button : IN std_logic;          
		result : OUT std_logic
		);
	END COMPONENT;
	signal sel :STD_LOGIC_VECTOR(2 downto 0):=(others=>'0');
	signal value,product:STD_LOGIC_VECTOR(15 downto 0) := (others=>'0');
	signal en_mul1,en_mul2,en_c,reset_c :STD_LOGIC:='0';
begin
	deb:debounce port map(clock,button(0),en_c);
	reset_c<=(not( button(3) ) or (not(sel(1)) and sel(0)));
	selettore: contatore_modulo_2n port map(en_c,'1',reset_c,open,sel);
	en_mul1<=(not(sel(1)) and sel(0));
	adder1 : latch_d port map(in_byte(7 downto 0),en_mul1,not(button(3)),value(7 downto 0));
	en_mul2<=(sel(1) and not(sel(0)));
	adder2 : latch_d port map(in_byte(7 downto 0),en_mul2,not(button(3)),value(15 downto 8));
	led(7)<=sel(1);
	led(6)<=sel(0);
	mac_mul : mac_multiplier port map(value(7 downto 0),value(15 downto 8),x"00",x"00",product);
	gest_disp : display_top_level port map(clock,button(3),button(2),button(1),product,in_byte,anodes,cathodes);
end Behavioral;

