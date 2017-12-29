----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:47:38 12/28/2017 
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
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity mod_exp is
    Port ( clk : in STD_LOGIC;
			  start: in STD_LOGIC;
			  reset: in STD_LOGIC;
			  base : in  STD_LOGIC_VECTOR (31 downto 0);
           esponente : in  STD_LOGIC_VECTOR (1 downto 0);
           modulo : in  STD_LOGIC_VECTOR (31 downto 0);
           m_e : out  STD_LOGIC_VECTOR (31 downto 0));
end mod_exp;

architecture Behavioral of mod_exp is
COMPONENT Booth_multiplier
	generic (width : NATURAL:=32);
	PORT(
		mul1 : IN std_logic_vector(width-1 downto 0);
		mul2 : IN std_logic_vector(width-1 downto 0);
		start : IN std_logic;
		clk : IN std_logic;
		reset : IN std_logic;          
		finished : OUT std_logic;
		product : OUT std_logic_vector(width*2-1 downto 0)
		);
	END COMPONENT;
COMPONENT divisore_restoring
	generic (width : NATURAL:=32);
	PORT(
		dividendo : IN std_logic_vector(width-1 downto 0);
		divisore : IN std_logic_vector(width-1 downto 0);
		start : IN std_logic;
		clk : IN std_logic;
		reset : IN std_logic;
		finish: out STD_LOGIC;
		quoziente : OUT std_logic_vector(width-1 downto 0);
		resto : OUT std_logic_vector(width-1 downto 0)
		);
	END COMPONENT;
	COMPONENT edge_triggered_d_n
	generic (width : NATURAL:=32);
	PORT(
		d : IN std_logic_vector(width-1 downto 0);
		clk : IN std_logic;
		reset_n : IN std_logic;          
		q : OUT std_logic_vector(width-1 downto 0)
		);
	END COMPONENT;
	COMPONENT contatore_modulo_2n
	PORT(
		clk : IN std_logic;
		enable : IN std_logic;
		reset : IN std_logic;          
		hit : OUT std_logic;
		output : OUT std_logic_vector(1 downto 0)
		);
	END COMPONENT;
	COMPONENT gestore_mod_exp
	PORT(
		start : IN std_logic;
		esponente : IN std_logic_vector(1 downto 0);
		base: IN std_logic_vector(31 downto 0);
		moltiplicando : IN std_logic_vector(31 downto 0);
		n_o_m : IN std_logic_vector(1 downto 0);
		hit : IN std_logic;
		reset : IN std_logic;
		clk : IN std_logic;
		en_c : OUT std_logic;
		en_m : OUT std_logic;
		en_d : OUT std_logic;
		en_reg : OUT std_logic;
		reset_m:out STD_LOGIC;
		f_m : IN std_logic;          
		mol : OUT std_logic_vector(31 downto 0)
		);
	END COMPONENT;
	signal hit,en_c,en_m,en_d,en_r_mol,fin_m,reset_m : STD_LOGIC:='0';
	signal n_o_m:STD_LOGIC_VECTOR(1 downto 0):=(others=>'0');
	signal mol,moltiplicando: STD_LOGIC_VECTOR( 31 downto 0):=(others=>'0');
	signal moltiplicando1: STD_LOGIC_VECTOR(31 downto 0) := base;
	signal divisione : STD_LOGIC_VECTOR(31 downto 0):=(others=>'0');
	signal prodotto: STD_LOGIC_VECTOR(63 downto 0):= (others=>'0');
begin
	--moltiplicando(7 downto 0)<=base;
	g_m_e: gestore_mod_exp port map (start,esponente,base,moltiplicando1,n_o_m,hit,reset,clk,en_c,en_m,en_d,en_r_mol,reset_m,fin_m,mol);
	counter: contatore_modulo_2n port map(clk,en_c,reset,hit,n_o_m);
	r_mol: edge_triggered_d_n port map (base,en_r_mol,reset,moltiplicando);
	ris_mol: edge_triggered_d_n port map (prodotto(31 downto 0),en_r_mol,reset,moltiplicando1);
	mul1: Booth_multiplier port map(mol,moltiplicando,en_m,clk,reset,fin_m,prodotto);
	div : divisore_restoring port map(prodotto(31 downto 0),modulo,en_d,clk,reset,open,divisione);
end Behavioral;

