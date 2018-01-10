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
			  resto : out STD_LOGIC_VECTOR (7 downto 0);
			  quoziente: out STD_LOGIC_VECTOR (7 downto 0);
           cathodes : out  STD_LOGIC_VECTOR (7 downto 0);
			  fin:out STD_LOGIC);
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
	component latch_d_en is
	generic(width:natural:=8);
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           en : in  STD_LOGIC;
           d : in  STD_LOGIC_VECTOR (width-1 downto 0);
           q : out  STD_LOGIC_VECTOR (width-1 downto 0));
	end component;
	COMPONENT divisore_restoring
	PORT(
		dividendo : IN std_logic_vector(7 downto 0);
		divisore : IN std_logic_vector(7 downto 0);
		start : IN std_logic;
		clk : IN std_logic;
		reset : IN std_logic;          
		finish: out STD_LOGIC_VECTOR(0 downto 0);
		--quoziente : OUT std_logic_vector(7 downto 0);
		--resto : OUT std_logic_vector(7 downto 0)
		res:out STD_LOGIC_VECTOR(15 downto 0)
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
	signal sel :STD_LOGIC_VECTOR(1 downto 0):=(others=>'0');
	signal scelta,sc: STD_LOGIC_VECTOR( 3 downto 0):=(others=>'0');
	signal value,q_r,a:STD_LOGIC_VECTOR(15 downto 0) := (others=>'0');
	signal quoz, rest:STD_LOGIC_VECTOR(7 downto 0):=(others=>'0');
	signal s:STD_LOGIC_VECTOR(0 downto 0):="0";
	signal check_start,check: STD_LOGIC_VECTOR( 0 downto 0) := (others=>'0');
	signal en_div1,en_div2,en_div,en_c,en_d,en_ck,hit,en_c1,reset_c,reset_d :STD_LOGIC:='0';
begin
	deb:debounce port map(clock,button(0),en_c);
	--reset_d<=(not(sel(1)) and not(sel(0)));
	change: process (clock,en_c)
	begin
	if rising_edge(clock) then
		if en_c='1' then
			case sel is
				when "00" => scelta<="0001";
				when "01" => scelta<="0010";
				when "10" => scelta<="0100";
				when "11" => scelta<="1000";
				when others => scelta<="1111";
			end case;
		else
			scelta<="0000";
		end if;
	end if;
	end process;
	
	selettore: contatore_modulo_2n port map(en_c,'1',not( button(3)),open,sel);
	--en_div1<=(not(sel(1)) and sel(0));
	div1 : latch_d_en port map(clock,not(button(3)),scelta(1),in_byte(7 downto 0),value(7 downto 0));
	--en_div2<=(sel(1) and not(sel(0)));
	div2 : latch_d_en port map(clock,not(button(3)),scelta(2),in_byte(7 downto 0),value(15 downto 8));
	--en_div<=(sel(1) and sel(0));
	--ch_st: latch_d_en generic map (width=>4) port map(clock,not(button(3)),en_c,sc,scelta);
	counter: contatore_modulo_2n  port map(clock,en_c1,reset_c,hit,open);
	st: process(scelta,clock,hit)
		begin
		en_ck<='1';
		reset_c<='1';
			if scelta(3)='1' and hit='0' then
				en_d<='1';
				en_c1<='1';
			elsif scelta(3)='1' and hit='1' then
				en_c1<='0';
				en_d<='0';
			else
				reset_c<='0'; 
			end if;
		end process;
	led(0)<=en_d;
	led(7)<=sel(1);
	led(6)<=sel(0);
	led(1)<=s(0);
	led(2)<=check(0);
	div_rest : divisore_restoring port map(value(15 downto 8),value(7 downto 0),en_d,clock,not(scelta(0)),s,q_r);
	--a<=x"00" & quoz;
	--quoziente<=quoz;
	--resto<=rest;
	--q_r<=rest & quoz;
	--fin<=s;
	gest_disp : display_top_level port map(clock,button(3),button(2),button(1),q_r,in_byte,anodes,cathodes);
end Behavioral;

