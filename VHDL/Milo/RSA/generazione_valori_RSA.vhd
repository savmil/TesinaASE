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
			  msg_r : out STD_LOGIC_VECTOR (31 downto 0));
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
		fin_n : IN std_logic;
		fin_h : IN std_logic;
		fin_exp : IN std_logic;
		start : IN std_logic;
		reset : IN std_logic;
		clk : IN std_logic;
		msg: in STD_LOGIC_VECTOR(31 downto 0);
		msg_pr: in STD_LOGIC_VECTOR(31 downto 0);	
		exp_e: in STD_LOGIC_VECTOR(31 downto 0);
		exp_d: in STD_LOGIC_VECTOR(31 downto 0);
		msg_exp: out STD_LOGIC_VECTOR(31 downto 0);
		exp: out STD_LOGIC_VECTOR(31 downto 0);
		en_n : OUT std_logic;
		en_h : OUT std_logic;
		en_exp: OUT std_logic;
		reset_exp: OUT std_logic;
		en_pr : OUT std_logic;
		en_pu : OUT std_logic
		);
	END COMPONENT;
	
signal nval,m_e,msg_h,msg_exp,m_e_e,m_e_d,msg_1: STD_LOGIC_VECTOR(31 downto 0) :=(others=>'0');
signal exp,e_val,d_val: STD_LOGIC_VECTOR(31 downto 0):=(others=>'0');
signal pval,qval:STD_LOGIC_VECTOR(31 downto 0):=(others=>'0');
signal n_prod: STD_LOGIC_VECTOR(63 downto 0):=(others=>'0');
signal en_n,fin_n,en_h,fin_h,fin_exp,en_exp,en_pr,en_pu,reset_exp:STD_LOGIC;
begin
	e_val(15 downto 0)<=e;
	d_val(15 downto 0)<=d;
	msg_1(7 downto 0)<=msg;
	p_val: edge_triggered_d_n port map (p,clk,reset,pval(7 downto 0));
	q_val: edge_triggered_d_n port map (q,clk,reset,qval(7 downto 0));
	n_calc: Booth_multiplier port map (pval,qval,en_n,clk,reset,fin_n,n_prod);
	pr: edge_triggered_d_n generic map (width=>32) port map (m_e,en_pr,reset,m_e_e);
	pu:edge_triggered_d_n generic map (width=>32) port map (m_e,en_pu,reset,m_e_d);
	hash: funzione_hash_moltiplicazione port map(clk,msg,x"AAAA0000",en_h,reset,"0000010",msg_h,fin_h);
	n_val: edge_triggered_d_n generic map(width=>32) port map (n_prod(31 downto 0),clk,reset,nval);
	m_e_exp: mod_exp port map (clk,en_exp,reset_exp,msg_exp,exp,nval,fin_exp,m_e);
	--m_d_exp: mod_exp port map (clk,en_pu,reset,m_e_e,dval,nval,fin_pu,m_d_e);
	g_g_v_rsa: gestore_generatore_valori_RSA port map(fin_n,fin_h,fin_exp,start,reset,clk,msg_1,m_e,e_val,d_val,msg_exp,exp,en_n,en_h,en_exp,reset_exp,en_pr,en_pu);
	msg_r<=m_e_d;
end Behavioral;
