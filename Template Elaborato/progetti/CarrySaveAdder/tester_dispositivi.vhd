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
	generic(width: NATURAL:=3);
	PORT(
		input : IN std_logic_vector(width-1 downto 0);
		enable : IN std_logic;
		reset : IN std_logic;          
		output : OUT std_logic_vector(width-1 downto 0)
		);
	END COMPONENT;
	COMPONENT carry_save_adder is
    Port ( adder : IN  std_logic_vector (5 downto 0); -- i valori da 2 a 0 sono di peso 1 da 5 a 3 di peso 2
           sum : OUT  std_logic_vector (2 downto 0);
           cout : OUT  std_logic);
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
	component add_sub is
	port ( a : in std_logic_vector ( 2 downto 0 );
		   b : in std_logic_vector ( 2 downto 0 );
		   add_sub_n : in std_logic;
		   s : out std_logic_vector ( 2 downto 0 );
		   cout : out std_logic;
		   overflow : out std_logic
		  );
	end component;
	COMPONENT debounce
	PORT(
		clk : IN std_logic;
		button : IN std_logic;          
		result : OUT std_logic
		);
	END COMPONENT;
	signal sel :STD_LOGIC_VECTOR(1 downto 0):=(others=>'0');
	signal value,sum1:STD_LOGIC_VECTOR(15 downto 0) := (others=>'0');
	signal en_ad1,en_ad2,en_sub,en_c :STD_LOGIC:='0';
begin
	deb : debounce port map(clock,button(0),en_c);
	selettore: contatore_modulo_2n port map(en_c,'1',not( button(3)),open,sel);
	en_ad1<=(not(sel(1)) and sel(0));
	adder1 : latch_d port map(in_byte(2 downto 0),en_ad1,not(button(3)),value(2 downto 0));
	en_ad2<=(sel(1) and not(sel(0)));
	adder2 : latch_d port map(in_byte(5 downto 3),en_ad2,not(button(3)),value(5 downto 3));
	en_sub<=(sel(1) and sel(0));
	led(7)<=sel(1);
	led(6)<=sel(0);
	cla : add_sub port map(value(5 downto 3),value(2 downto 0),en_sub,sum1(2 downto 0),led(0),led(1));
	gest_disp : display_top_level port map(clock,button(3),button(2),button(1),sum1,in_byte,anodes,cathodes);
end Behavioral;

