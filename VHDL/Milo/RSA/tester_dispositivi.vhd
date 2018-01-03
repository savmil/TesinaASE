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
    Port ( clk : in  STD_LOGIC;
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
	COMPONENT generazione_valori_RSA
	PORT(
		clk : IN std_logic;
		start : IN std_logic;
		reset : IN std_logic;
		p : IN std_logic_vector(7 downto 0);
		q : IN std_logic_vector(7 downto 0);
		msg : IN std_logic_vector(7 downto 0);
		e : IN std_logic_vector(15 downto 0);
		d : IN std_logic_vector(15 downto 0);
		msg_r : out STD_LOGIC_VECTOR (31 downto 0)
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
	signal e_v,d_v:STD_LOGIC_VECTOR(15 downto 0) := (others=>'0');
	signal p_v,q_v,msg_v:STD_LOGIC_VECTOR(7 downto 0):=(others=>'0');
	signal msg_r,msg_p:STD_LOGIC_VECTOR(31 downto 0):=(others=>'0');
	signal en_p,en_q,start,en_msg,en_e,en_d,en_c,hit,check_start,en_rsa :STD_LOGIC:='0';
begin
	deb:debounce port map(clk,button(0),en_c);
	selettore: contatore_modulo_2n port map(en_c,'1',not( button(3)),open,sel);
	en_p<=(not (sel(2)) and not(sel(1)) and sel(0));
	p_val : latch_d port map(x"03",en_p,not(button(3)),p_v);
	en_q<=(not (sel(2)) and sel(1) and not(sel(0)));
	q_val : latch_d port map(x"0B",en_q,not(button(3)),q_v);
	en_msg<=(not (sel(2)) and sel(1) and sel(0));
	message: latch_d port map(x"0F",en_msg,not(button(3)),msg_v);
	en_e<=(sel(2) and not(sel(1)) and not(sel(0)));
	e_val: latch_d port map(x"07",en_e,not(button(3)),e_v(7 downto 0));
	en_d<=(sel(2) and not(sel(1)) and sel(0));
	d_val: latch_d port map(x"03",en_d,not(button(3)),d_v(7 downto 0));
	start<=(sel(2) and sel(1) and not(sel(0)));
	st: process(clk,start,check_start)
	begin
	 if start='1' and msg_r=x"00000000" then
		en_rsa<='1';
		check_start<='1';
	 else
		en_rsa<='0';
	 end if;
		if start='0' then
		 check_start<='0';
		end if;
	end process;
	led(0)<=check_start;
	led(1)<=msg_r(0);
	led(2)<=start;
	led(3)<=en_rsa;
	led(7)<=sel(2);
	led(6)<=sel(1);
	led(5)<=sel(0);
	RSA : generazione_valori_RSA port map(clk,en_rsa,not(button(3)),p_v,q_v,msg_v,e_v,d_v,msg_r);
	gest_disp : display_top_level port map(clk,button(3),button(2),button(1),msg_r(15 downto 0),in_byte,anodes,cathodes);
end Behavioral;

