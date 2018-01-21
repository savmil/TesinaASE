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
	generic(width: natural:=3);
	PORT(
		clk : IN std_logic;
		enable : IN std_logic;
		reset : IN std_logic;          
		hit : OUT std_logic;
		output : OUT std_logic_vector(width-1 downto 0)
		);
	END COMPONENT;
	COMPONENT latch_d_en
	generic(width:NATURAL:=8);
	 Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           en : in  STD_LOGIC;
           d : in  STD_LOGIC_VECTOR (width-1 downto 0);
           q : out  STD_LOGIC_VECTOR (width-1 downto 0));
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
		correct: OUT STD_LOGIC_VECTOR (0 downto 0);
		msg_r : out STD_LOGIC_VECTOR (15 downto 0)
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
	signal scelta: STD_LOGIC_VECTOR( 7 downto 0):=( others=>'0');
	signal e_v,d_v:STD_LOGIC_VECTOR(15 downto 0) := (others=>'0');
	signal p_v,q_v,msg_v:STD_LOGIC_VECTOR(7 downto 0):=(others=>'0');
	signal msg_r,msg_p:STD_LOGIC_VECTOR(15 downto 0):=(others=>'0');
	signal en_c1,hit,en_c,reset_c,start :STD_LOGIC:='0';
	signal correct: STD_LOGIC_VECTOR (0 downto 0):="0";
begin
	deb:debounce port map(clock,button(0),en_c);
	change: process (clock,button(0))
	begin
	if rising_edge(clock) then
		if en_c='1' then
			case sel is
				when "000" => scelta<="00000001";
				when "001" => scelta<="00000010";
				when "010" => scelta<="00000100";
				when "011" => scelta<="00001000";
				when "100" => scelta<="00010000";
				when "101" => scelta<="00100000";
				when "110" => scelta<="01000000";
				when others => scelta<="00000000";
			end case;
		else
			scelta<="00000000";
		end if;
	end if;
	end process;
	selettore: contatore_modulo_2n port map(en_c,'1',not( button(3)),open,sel);
	--en_p<=(not (sel(2)) and not(sel(1)) and sel(0));
	p_val : latch_d_en port map(clock,not(button(3)),scelta(0),x"03",p_v);
	--en_q<=(not (sel(2)) and sel(1) and not(sel(0)));
	q_val : latch_d_en port map(clock,not(button(3)),scelta(1),x"0B",q_v);
	--en_msg<=(not (sel(2)) and sel(1) and sel(0));
	message: latch_d_en port map(clock,not(button(3)),scelta(2),in_byte,msg_v);
	--en_e<=(sel(2) and not(sel(1)) and not(sel(0)));
	e_val: latch_d_en port map(clock,not(button(3)),scelta(3),x"07",e_v(7 downto 0));
	--en_d<=(sel(2) and not(sel(1)) and sel(0));
	d_val: latch_d_en port map(clock,not(button(3)),scelta(4),x"03",d_v(7 downto 0));
	--start<=(sel(2) and sel(1) and not(sel(0)));
	counter: contatore_modulo_2n port map(clock,en_c1,reset_c,hit,open);
	st: process(scelta,clock,hit)
		begin
		reset_c<='1';
			if scelta(5)='1' and hit='0' then
				start<='1';
				en_c1<='1';
			elsif scelta(5)='1' and hit='1' then
				en_c1<='0';
				start<='0';
			else
				reset_c<='0';
			end if;
		end process;
	led(0)<=correct(0);
	led(7)<=sel(2);
	led(6)<=sel(1);
	led(5)<=sel(0);
	RSA : generazione_valori_RSA port map(clock,start,not(scelta(0)),p_v,q_v,msg_v,e_v,d_v,correct,msg_r);
	--msg_r( 7 downto 0)<=msg_v;
	gest_disp : display_top_level port map(clock,button(3),button(2),button(1),msg_r,in_byte,anodes,cathodes);
end Behavioral;

