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

entity Booth_multiplier is
	 generic (width : NATURAL:=8);
    Port ( mul1 : in  STD_LOGIC_VECTOR (width-1 downto 0):=(others=>'0');
           mul2 : in  STD_LOGIC_VECTOR (width-1 downto 0);
           start : in  STD_LOGIC;
			  clk: in STD_LOGIC;
			  reset : in STD_LOGIC;
			  en_i: out STD_LOGIC;
			  fin: out STD_LOGIC_VECTOR(0 downto 0);
           product : out  STD_LOGIC_VECTOR (2*width-1 downto 0));
end Booth_multiplier;

architecture Structural of Booth_multiplier is
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
	component latch_d_en is
	generic(width:natural:=8);
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           en : in  STD_LOGIC;
           d : in  STD_LOGIC_VECTOR (width-1 downto 0);
           q : out  STD_LOGIC_VECTOR (width-1 downto 0));
	end component;
	COMPONENT Serial_Booth_PC_Moore
	PORT(
		clk: in STD_LOGIC;
			  start: in STD_LOGIC;
			  pair_of_bits :in STD_LOGIC_VECTOR(1 downto 0);
			  reset : in STD_LOGIC:='0';
			  en_a : out  STD_LOGIC;
           en_m : out  STD_LOGIC;
			  en_q : out STD_LOGIC;
			  en_c : out STD_LOGIC;
           en_shift : out  STD_LOGIC;
			  en_p1 : out STD_LOGIC;
           stop : in  STD_LOGIC);
	END COMPONENT;
	component boundary_scan_chain is
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
	signal q_val,q_val_2:STD_LOGIC_VECTOR(width downto 0):=(others=>'0');
	signal moltiplicatore,suma,sum1:STD_LOGIC_VECTOR(width-1 downto 0):=(others=>'0');
	signal prod:STD_LOGIC_VECTOR(2*width-1 downto 0):=(others=>'0');
	signal fint_stop: STD_LOGIC_VECTOR(0 downto 0);
	signal stop,en_m,en_c,en_sh,en_p1,bit_shift,en_q,en_a:STD_LOGIC:='0';
begin
	-- conto per il numero di bit, abilito i registri, vedo i bit, 00 11 solo shift, 01 - mul2 poi prodotto shift
	--10 + mul2 shift
	q_val_2<=mul2 & '0';
	cu: Serial_Booth_PC_Moore port map(clk,start,q_val(1 downto 0),reset,en_a,en_m,en_q,en_c,en_sh,en_p1,stop);
	operation_counter: contatore_modulo_2n port map(clk,en_c,reset,stop,open);--inserire segnale stop per po
	q: boundary_scan_chain generic map (n=> width+1) port map(bit_shift,clk,reset,en_q,q_val_2,en_sh,open,q_val);
	m: latch_d_en port map(clk,reset,en_m,mul1,moltiplicatore);
	a: boundary_scan_chain port map(sum1(width-1),clk,reset,en_a,sum1,en_sh,bit_shift,suma);
	gestore_shift: add_sub port map(suma,moltiplicatore,q_val(1),sum1,open,open);-- bisogna inserire il segno 
	prod<= suma & q_val(width downto 1);
	prod1:latch_d_en generic map (width=>16) port map(clk,reset,en_p1,prod,product);
	fint_stop(0)<=stop;
	en_i<=en_p1;
	f: latch_d_en generic map (width=>1) port map(clk,reset,en_p1,fint_stop,fin);
end Structural;

