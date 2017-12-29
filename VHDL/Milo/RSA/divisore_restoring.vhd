----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    22:43:14 11/29/2017 
-- Design Name: 
-- Module Name:    Booth_multiplier - Structural 
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

entity divisore_restoring is
	 generic (width : NATURAL:=8);
    Port ( dividendo : in  STD_LOGIC_VECTOR (width-1 downto 0):=(others=>'0');
           divisore : in  STD_LOGIC_VECTOR (width-1 downto 0);
           start : in  STD_LOGIC;
			  clk: in STD_LOGIC;
			  reset : in STD_LOGIC;
			  finish: out STD_LOGIC;
           quoziente : out  STD_LOGIC_VECTOR (width-1 downto 0);
			  resto : out  STD_LOGIC_VECTOR (width-1 downto 0));
end divisore_restoring;

architecture Structural of divisore_restoring is
COMPONENT add_sub
	generic (width : NATURAL:=8);
	PORT(
		a : IN std_logic_vector(width-1 downto 0);
		b : IN std_logic_vector(width-1 downto 0);
		add_sub_n : IN std_logic;          
		s : OUT std_logic_vector(width-1 downto 0);
		cout : OUT std_logic;
		overflow : OUT std_logic
		);
	END COMPONENT;
COMPONENT contatore_modulo_2n
	generic (width : NATURAL :=3);
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
	COMPONENT serial_div_restoring
	PORT(	  
			  clk: in STD_LOGIC;
			  start: in STD_LOGIC;
			  neg : in STD_LOGIC; 
			  --set_q :out STD_LOGIC;
			  en_div:out STD_LOGIC;
			  add_sub : out  STD_LOGIC;
           en_shift : out  STD_LOGIC;
			  en_c : out STD_LOGIC;
			  en_r : out STD_LOGIC;
			  en_q : out STD_LOGIC;
			  bit_q: out STD_LOGIC;
			  finish: out STD_LOGIC;
           stop : in  STD_LOGIC);
	END COMPONENT;
	COMPONENT registro_a_scorrimento
	generic (width:NATUrAL:=8);
	PORT(
		input : IN std_logic_VECTOR(width-1 downto 0);
		enable : IN std_logic;
		shift : in  STD_LOGIC;
		reset : IN std_logic;       
		shift_bit : IN std_logic;
		output:out STD_LOGIC_VECTOR(width-1 downto 0)
		);
	END COMPONENT;
	component boundary_scan_chain 
	generic(n : natural := 8);
    Port ( --state_vector : in  STD_LOGIC_VECTOR (n-1 downto 0);
			  scan_in : in STD_LOGIC;
           clk : in  STD_LOGIC;
			  reset_n : in STD_LOGIC;
			  en: in STD_LOGIC;
           din : in  STD_LOGIC_VECTOR (n-1 downto 0);
           scan_en : in  STD_LOGIC;
           scan_out : out  STD_LOGIC;
           dout : out  STD_LOGIC_VECTOR (n-1 downto 0)
	 );
	end component;
	signal div,suma,sum1,quoz:STD_LOGIC_VECTOR(width-1 downto 0):=(others=>'0');
	signal en_div,en_c,en_r,en_q,en_sh,bit_shift,a_s,stop,bit_q1,fin:STD_LOGIC:='0';
begin
	cu: serial_div_restoring port map(clk,start,sum1(width-1),en_div,a_s,en_sh,en_c,en_r,en_q,bit_q1,fin,stop);
	operation_counter: contatore_modulo_2n port map(clk,en_c,reset,stop,open);
	remainder: boundary_scan_chain port map(bit_shift,clk,reset,en_r,sum1,en_sh,open,suma);
	divisor: latch_d port map(divisore,en_div,reset,div);
	quotient: boundary_scan_chain port map(bit_q1,clk,reset,en_q,dividendo,en_sh,bit_shift,quoz);
	gestore_shift: add_sub port map(suma,div,a_s,sum1,open,open);
	with bit_q1 select resto <=
		suma when '0',
		sum1 when others;
	quoziente<=quoz(width-2 downto 0) & bit_q1;
	finish<=fin;
end Structural;

