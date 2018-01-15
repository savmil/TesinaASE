----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:09:14 12/27/2017 
-- Design Name: 
-- Module Name:    generazione_valori_RSA - Behavioral 
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

entity generazione_valori_RSA is
    Port ( 
			  clk: in STD_LOGIC;
			  start: in STD_LOGIC;
			  reset: in STD_LOGIC;
			  p : in  STD_LOGIC_VECTOR (7 downto 0);
           q : in  STD_LOGIC_VECTOR (7 downto 0);
			  msg: in STD_LOGIC_VECTOR (7 downto 0);
           e : in  STD_LOGIC_VECTOR (15 downto 0);
           d : in  STD_LOGIC_VECTOR (15 downto 0);
			  correct: out STD_LOGIC_VECTOR(0 downto 0);
			  msg_r : out STD_LOGIC_VECTOR (15 downto 0));
end generazione_valori_RSA;

architecture Behavioral of generazione_valori_RSA is
COMPONENT funzione_hash_moltiplicazione
	PORT(
		clk : IN std_logic;
		data : IN std_logic_vector(7 downto 0);
		moltiplicando : IN std_logic_vector(31 downto 0);
		start : IN std_logic;
		reset : IN std_logic;
		number_of_shift : IN std_logic_vector(6 downto 0);          
		dato_hashed : OUT std_logic_vector(31 downto 0);
		finished : OUT std_logic
		);
	END COMPONENT;
	COMPONENT edge_triggered_d_n
	generic (width:NATURAL:=8);
	PORT(
		d : IN std_logic_vector(width-1 downto 0);
		clk : IN std_logic;
		reset_n : IN std_logic;          
		q : OUT std_logic_vector(width-1 downto 0)
		);
	END COMPONENT;
	COMPONENT latch_d_en
	generic(width:NATURAL:=32);
	 Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           en : in  STD_LOGIC;
           d : in  STD_LOGIC_VECTOR (width-1 downto 0);
           q : out  STD_LOGIC_VECTOR (width-1 downto 0));
	END COMPONENT;
	COMPONENT Booth_multiplier
	 generic (width : NATURAL:=32);
    Port ( mul1 : in  STD_LOGIC_VECTOR (width-1 downto 0):=(others=>'0');
           mul2 : in  STD_LOGIC_VECTOR (width-1 downto 0);
           start : in  STD_LOGIC;
			  clk: in STD_LOGIC;
			  reset : in STD_LOGIC;
			  fin: out STD_LOGIC_VECTOR(0 downto 0);
           product : out  STD_LOGIC_VECTOR (2*width-1 downto 0));
	END COMPONENT;
	COMPONENT mod_exp
	PORT(
		clk : IN std_logic;
		start: in STD_LOGIC;
		reset: IN std_logic;
		base : IN std_logic_vector(31 downto 0);
		esponente : IN std_logic_vector(31 downto 0);
		modulo : IN std_logic_vector(31 downto 0);          
		finished : OUT std_logic;
		m_e : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;
	COMPONENT gestore_generatore_valori_RSA
	PORT(
		fin_n : IN std_logic_vector(0 downto 0);
		fin_h : IN std_logic;
		fin_exp : IN std_logic;
		start : IN std_logic;
		reset : IN std_logic;
		clk : IN std_logic;
		msg: in STD_LOGIC_VECTOR(31 downto 0);
		msg_pr: in STD_LOGIC_VECTOR(31 downto 0);	
		msg_t_h: in STD_LOGIC_VECTOR(31 downto 0);
		msg_r_h: in STD_LOGIC_VECTOR(31 downto 0);
		correct:out STD_LOGIC_VECTOR(0 downto 0);
		en_correct: out STD_LOGIC;
		check_exp: out STD_LOGIC_VECTOR(0 downto 0);
		check_hash: out STD_LOGIC_VECTOR(0 downto 0);
		en_n : OUT std_logic;
		en_h : OUT std_logic;
		en_exp: OUT std_logic;
		reset_exp: OUT std_logic;
		reset_hash :OUT std_logic;
		en_pr : OUT std_logic;
		en_pu : OUT std_logic
		);
	END COMPONENT;
	
signal nval,m_e,msg_h,msg_exp,m_e_e,m_e_d,msg_1,msg_hash: STD_LOGIC_VECTOR(31 downto 0) :=(others=>'0');
signal msg_t_b_h: STD_LOGIC_VECTOR(7 downto 0):=(others=>'0');
signal exp,e_val,d_val: STD_LOGIC_VECTOR(31 downto 0):=(others=>'0');
signal pval,qval:STD_LOGIC_VECTOR(31 downto 0):=(others=>'0');
signal n_prod: STD_LOGIC_VECTOR(63 downto 0):=(others=>'0');
signal fin_n,check_exp1,check_exp,check_hash1,check_hash,correct1:STD_LOGIC_VECTOR(0 downto 0):=(others=>'0');
signal en_n,en_h,fin_h,fin_exp,en_exp,en_pr,en_pu,reset_exp,reset_hash,en_hash,en_correct,save_hash:STD_LOGIC:='0';
begin
	e_val(15 downto 0)<=e;
	d_val(15 downto 0)<=d;
	msg_1(7 downto 0)<=msg;
	p_val: edge_triggered_d_n port map (p,clk,reset,pval(7 downto 0));
	q_val: edge_triggered_d_n port map (q,clk,reset,qval(7 downto 0));
	n_calc: Booth_multiplier port map (pval,qval,en_n,clk,reset,fin_n,n_prod);
	pr: latch_d_en  port map (clk,reset,en_pr,m_e,m_e_d);
	pu:latch_d_en port map (clk,reset,en_pu,m_e,m_e_e);
	hash: funzione_hash_moltiplicazione port map(clk,msg_t_b_h,x"AAAA0000",en_h,reset_hash,"0000010",msg_h,fin_h);
	save_hash<=(fin_h and en_hash);
	msg_hashed : latch_d_en  port map (clk,reset,save_hash,msg_h,msg_hash);
	n_val: edge_triggered_d_n generic map (width=>32) port map (n_prod(31 downto 0),clk,reset,nval);
	c_e:latch_d_en generic map (width=>1) port map (clk,reset,check_exp1(0),check_exp1,check_exp);
	c_h:latch_d_en generic map (width=>1) port map (clk,reset,check_hash1(0),check_hash1,check_hash);
	with check_exp(0) select exp<=
		d_val when '0',
		e_val when '1',
		x"00000000" when others;
	with check_exp(0) select msg_exp<=
		msg_1 when '0',
		m_e_d when '1',
		x"00000000" when others;
	with check_hash(0) select msg_t_b_h <=
		msg when '0',
		m_e_e(7 downto 0) when '1',
		x"00" when others;
	with check_hash(0) select en_hash <=
		'1' when '0',
		'0' when '1',
		'0' when others;
	m_e_exp: mod_exp port map (clk,en_exp,reset_exp,msg_exp,exp,nval,fin_exp,m_e);
	corr:latch_d_en generic map (width=>1) port map (clk,reset,en_correct,correct1,correct);
	g_g_v_rsa: gestore_generatore_valori_RSA port map(fin_n,fin_h,fin_exp,start,reset,clk,msg_1,m_e_e,msg_hash,msg_h,correct1,en_correct,check_exp1,check_hash1,en_n,en_h,en_exp,reset_exp,reset_hash,en_pr,en_pu);
	msg_r<=m_e_d(15 downto 0);
end Behavioral;

