----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:19:28 12/27/2017 
-- Design Name: 
-- Module Name:    funzione_hash_moltiplicazione - Behavioral 
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

entity funzione_hash_moltiplicazione is
    Port ( clk: in STD_LOGIC;
			  data : in  STD_LOGIC_VECTOR (7 downto 0);
           moltiplicando : in  STD_LOGIC_VECTOR (63 downto 0);
			  start: in STD_LOGIC;
			  reset: in STD_LOGIC;
           number_of_shift : in  STD_LOGIC_VECTOR (6 downto 0);
           dato_hashed : out  STD_LOGIC_VECTOR (31 downto 0);
			  finished:out STD_LOGIC);
end funzione_hash_moltiplicazione;

architecture Behavioral of funzione_hash_moltiplicazione is
COMPONENT Booth_multiplier
	 generic (width : NATURAL:=64);
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
	COMPONENT boundary_scan_chain
	generic (n: NATURAL:=64);
	PORT(
		scan_in : IN std_logic;
		clk : IN std_logic;
		reset_n : IN std_logic;
		en : IN std_logic;
		din : IN std_logic_vector(n-1 downto 0);
		scan_en : IN std_logic;          
		scan_out : OUT std_logic;
		dout : OUT std_logic_vector(n-1 downto 0)
		);
	END COMPONENT;
	COMPONENT gestore_hash
	PORT(clk : IN std_logic;
		  reset : IN std_logic;
		  shift_r : OUT std_logic;
		  shift_l : OUT std_logic;
		  start_sh : IN std_logic;
		  en_i_r : OUT std_logic;
		  en_i_l : OUT std_logic;
		  en_c_r : OUT std_logic;
		  en_c_l: out STD_LOGIC;
		  stop_r : IN std_logic;
		  stop_l : in STD_LOGIC;
		  hashed : OUT std_logic
		);
	END COMPONENT;
	COMPONENT contatore_modulo_2n
	generic(width: natural:=5);
	PORT(
		clk : IN std_logic;
		enable : IN std_logic;
		reset : IN std_logic;          
		hit : OUT std_logic;
		output : OUT std_logic_vector(width-1 downto 0)
		);
	END COMPONENT;
	COMPONENT shifter_a_sinistra
	generic (n: NATURAL:=64);
	PORT(
		scan_in : IN std_logic;
		clk : IN std_logic;
		reset_n : IN std_logic;
		en : IN std_logic;
		din : IN std_logic_vector(n-1 downto 0);
		scan_en : IN std_logic;          
		scan_out : OUT std_logic;
		dout : OUT std_logic_vector(n-1 downto 0)
		);
	END COMPONENT;
	signal product: STD_LOGIC_VECTOR(127 downto 0):=(others=>'0');
	signal result_product,shifted_r,shifted_l,moltiplicatore: STD_LOGIC_VECTOR(63 downto 0):=(others=>'0');
	signal fin,en_s_r,en_s_l,en_c_r,en_c_l,hit_r,hit_l,finish,en_i_r,en_i_l:STD_LOGIC:='0';
begin
	moltiplicatore(7 downto 0)<=data;
	counter_s_r:contatore_modulo_2n port map(clk,en_c_r,reset,hit_r,open);
	counter_s_l:contatore_modulo_2n generic map (width=>4) port map(clk,en_c_l,reset,hit_l,open);
	g_h:gestore_hash port map(clk,reset,en_s_r,en_s_l,fin,en_i_r,en_i_l,en_c_r,en_c_l,hit_r,hit_l,finish);
	mul: Booth_multiplier port map(moltiplicatore,moltiplicando,start,clk,reset,fin,product);
	result_product<=product(63 downto 0);
	sh_d: boundary_scan_chain port map('0',clk,reset,en_i_r,result_product,en_s_r,open,shifted_r);
	sh_r:shifter_a_sinistra port map('0',clk,reset,en_i_l,shifted_r,en_s_l,open,shifted_l);
	dato_hashed<=shifted_l(31 downto 0);
	finished<=finish;
end Behavioral;

