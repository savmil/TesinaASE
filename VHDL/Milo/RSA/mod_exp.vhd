----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:05:00 12/29/2017 
-- Design Name: 
-- Module Name:    mod_exp - Behavioral 
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
library STD;
use STD.textio.all;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_textio.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity mod_exp is
    Port ( clk: in STD_LOGIC;
			  start: in STD_LOGIC;
			  reset:in STD_LOGIC;
			  base : in  STD_LOGIC_VECTOR (31 downto 0);
           esponente : in  STD_LOGIC_VECTOR (31 downto 0);
           modulo : in  STD_LOGIC_VECTOR (31 downto 0);
			  finished : out STD_LOGIC:='0';
           m_e : out  STD_LOGIC_VECTOR (31 downto 0));
end mod_exp;

architecture Behavioral of mod_exp is
COMPONENT counter_2n_down
	generic (width:NATURAL:=5);
	PORT(
		clk : IN std_logic;
		enable : IN std_logic;
		reset : IN std_logic;          
		hit : OUT std_logic;
		output : OUT std_logic_vector(width-1 downto 0)
		);
	END COMPONENT;
	COMPONENT edge_triggered_d_n
	generic(width:NATURAL:=64);
	PORT(
		d : IN std_logic_vector(width-1 downto 0);
		clk : IN std_logic;
		reset_n : IN std_logic;          
		q : OUT std_logic_vector(width-1 downto 0)
		);
	END COMPONENT;
	COMPONENT Booth_multiplier
	 generic (width : NATURAL:=32);
	PORT(
		mul1 : IN std_logic_vector(width-1 downto 0);
		mul2 : IN std_logic_vector(width-1 downto 0);
		start : IN std_logic;
		clk : IN std_logic;
		reset : IN std_logic;    
		finished : OUT std_logic;
		product : OUT std_logic_vector(2*width-1 downto 0)
		);
	END COMPONENT;
	COMPONENT divisore_restoring
	generic (width : NATURAL:=64);
	PORT(
		dividendo : IN std_logic_vector(width-1 downto 0);
		divisore : IN std_logic_vector(width-1 downto 0);
		start : IN std_logic;
		clk : IN std_logic;
		reset : IN std_logic;          
		finish : OUT std_logic;
		quoziente : OUT std_logic_vector(width-1 downto 0);
		resto : OUT std_logic_vector(width-1 downto 0)
		);
	END COMPONENT;
	COMPONENT mod_exp_gestore
	PORT(
		start : IN std_logic;
		clk : IN std_logic;
		reset : IN std_logic;
		hit_o : IN std_logic;
		fin_m : IN std_logic;
		fin_div : IN std_logic;
		exp : IN std_logic;
		base : IN std_logic_vector(31 downto 0);
		d : IN std_logic_vector(63 downto 0);
		modul : IN std_logic_vector(31 downto 0);
		d1 : IN std_logic_vector(63 downto 0);    
		d_div: IN std_logic_vector(63 downto 0);
		mul1 : OUT std_logic_vector(31 downto 0);
		mul2 : OUT std_logic_vector(31 downto 0);
		d_res: OUT std_logic_vector(63 downto 0);
		en_o : OUT std_logic;
		en_d1 : OUT std_logic;
		en_d : OUT std_logic;
		en_m : OUT std_logic;
		reset_m:OUT std_logic;
		en_div : OUT std_logic;
		reset_div: OUT std_logic;
		finish : OUT std_logic
		);
	END COMPONENT;
	signal hit_o,en_o,en_d1,en_d,en_m,fin_m,en_div,fin_div,exp_bit,reset_m,reset_div: STD_LOGIC:='0';
	signal d,d1,module,rema,d_v,d_res,p_d1:STD_LOGIC_VECTOR(63 downto 0):=(others=>'0');
	signal val_mul,val_mul1:STD_LOGIC_VECTOR(31 downto 0):=(others=>'0');
	signal counter:STD_LOGIC_VECTOR(4 downto 0):=(others=>'0');
begin
 module(31 downto 0)<=modulo;
 counter_o: counter_2n_down port map (clk,en_o,reset,hit_o,counter);
 d1_val: edge_triggered_d_n port map (p_d1,en_d1,reset,d1);
 d_val: edge_triggered_d_n port map (d_res,en_d,reset,d);
 mul: Booth_multiplier port map(val_mul1,val_mul,en_m,clk,reset_m,fin_m,p_d1);
 div: divisore_restoring port map (d1,module,en_div,clk,reset_div,fin_div,rema,d_v);
 with counter select exp_bit<=
	esponente(31) when "11111",
	esponente(30) when "11110",
	esponente(29) when "11101",
	esponente(28) when "11100",
	esponente(27) when "11011",
	esponente(26) when "11010",
	esponente(25) when "11001",
	esponente(24) when "11000",
	esponente(23) when "10111",
	esponente(22) when "10110",
	esponente(21) when "10101",
	esponente(20) when "10100",
	esponente(19) when "10011",
	esponente(18) when "10010",
	esponente(17) when "10001",
	esponente(16) when "10000",
	esponente(15) when "01111",
	esponente(14) when "01110",
	esponente(13) when "01101",
	esponente(12) when "01100",
	esponente(11) when "01011",
	esponente(10) when "01010",
	esponente(9) when "01001",
	esponente(8) when "01000",
	esponente(7) when "00111",
	esponente(6) when "00110",
	esponente(5) when "00101",
	esponente(4) when "00100",
	esponente(3) when "00011",
	esponente(2) when "00010",
	esponente(1) when "00001",
	esponente(0) when others;
 m_e_g: mod_exp_gestore port map(start,clk,reset,hit_o,fin_m,fin_div,exp_bit,base,d,modulo,d1,d_v,val_mul,val_mul1,d_res,en_o,en_d1,en_d,en_m,reset_m,en_div,reset_div,finished);
 m_e<=d_res(31 downto 0);
-- mod_e:process(clk)
-- variable base1,modulo1,n_o_d,check_esp,check_first:integer:=0;
-- variable indice:natural:=31;
-- 
-- variable i,j,n_i,n_j,en : integer:=0;
-- variable my_line : line;
-- begin
--	base1:=to_integer(unsigned(base));
--	modulo1:=to_integer(unsigned(modulo));
--	if start='1' then
--		en:=1;
--	end if;
--	if (indice /=-1) and en=1 then
--		if rising_edge(clk) then
--		if check_first=0 then
--			reset<='1';
--			d1<=d*d;
--			check_first:=1;
--		end if;
--			if (hit='0' and reset='1') then
--				en_c<='1';
--				--write(my_line, "sono qui1");  -- formatting
--				--		writeline(output, my_line);
--					if d1>=unsigned(modulo) then
--						d1<=d1-unsigned(modulo);
--					else
--						en_c<='0';
--						reset<='0';
--					end if;
--			else 
--				d<=d1(31 downto 0);
--				if esponente(indice)='1' then
--					if check_esp=0 then
--						reset<='1';
--						check_esp:=1;
--						d1<=d*unsigned(base);
--					end if;
--					if (hit='0' and reset='1') then
--						en_c<='1';
--					--	write(my_line, "sono qui2");  -- formatting
--					--	writeline(output, my_line);   
--							if d1>=unsigned(modulo) then
--								d1<=d1-modulo1;
--							else 
--								en_c<='0';
--								reset<='0';
--							end if; 
--					end if;
--	
--				end if;
--				if esponente(indice)='0' then
--					indice:=indice-1;
--					check_esp:=0;
--					check_first:=0;
--					reset<='1';
--				elsif hit='0'  then
--					indice:=indice-1;
--					check_esp:=0;
--					check_first:=0;
--					reset<='1';
--				end if;
--				
--				d<=d1(31 downto 0);
--			 end if;
--		end if;
--	end if;
--	if (indice =-1) then
--		en:=0;
--		finished<='1';
--	end if;
--	m_e<=std_logic_vector(d(31 downto 0));
--	end process;
end Behavioral;

