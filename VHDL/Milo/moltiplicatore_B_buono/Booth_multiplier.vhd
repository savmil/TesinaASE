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
	COMPONENT latch_d
	generic(width: NATURAL:=8);
	PORT(
		input : IN std_logic_vector(width-1 downto 0);
		enable : IN std_logic;
		reset : IN std_logic;          
		output : OUT std_logic_vector(width-1 downto 0)
		);
	END COMPONENT;
	COMPONENT Serial_Booth_PC_Moore
	PORT(
		clk: in STD_LOGIC;
			  start: in STD_LOGIC;
			  pair_of_bits :in STD_LOGIC_VECTOR(1 downto 0);
			  en_a : out  STD_LOGIC;
           en_m : out  STD_LOGIC;
			  en_q : out STD_LOGIC;
			  en_c : out STD_LOGIC;
           en_shift : out  STD_LOGIC;
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
	signal q_val,q_val_2:STD_LOGIC_VECTOR(width downto 0):=(others=>'0');
	signal moltiplicatore,suma,sum1:STD_LOGIC_VECTOR(width-1 downto 0):=(others=>'0');
	signal ou,i:STD_LOGIC_VECTOR(2*width-1 downto 0):=(others=>'0');
	signal stop,en_m,en_c,en_a,en_q,en_sh,bit_shift:STD_LOGIC:='0';
begin
	-- conto per il numero di bit, abilito i registri, vedo i bit, 00 11 solo shift, 01 - mul2 poi prodotto shift
	--10 + mul2 shift
	q_val_2<=mul2 & '0';
	cu: Serial_Booth_PC_Moore port map(clk,start,q_val(1 downto 0),en_a,en_m,en_q,en_c,en_sh,stop);
	operation_counter: contatore_modulo_2n port map(clk,en_c,reset,stop,open);--inserire segnale stop per po
	q: boundary_scan_chain generic map (n=> width+1) port map(bit_shift,clk,reset,en_q,q_val_2,en_sh,open,q_val);
	m: latch_d port map(mul1,en_m,reset,moltiplicatore);
	a: boundary_scan_chain port map(sum1(width-1),clk,reset,en_a,sum1,en_sh,bit_shift,suma);
	--q_val(width)<=sum(0);
	--q_val_2(width-1 downto 0)<=q_val(width-1 downto 0);
	--sum1(2*width-1 downto width)<=moltiplicando;-- abilito i due registri per fare prodotto enable gestisce po e carico moltiplicando in sum1
	gestore_shift: add_sub port map(suma,moltiplicatore,q_val(1),sum1,open,open);-- bisogna inserire il segno 
	product<= suma & q_val(width downto 1);
	--prodotto: latch_d generic map(width=>17) port map (sum1,start,reset,start,sum1(width-1),moltiplicatore); --segnale di shifting
	--i(2*width-1 downto 9)<=sum1(6 downto 0);
	--i(8 downto 0)<=q_val;
	--shifter: registro_a_scorrimento port map(i,en_sh,reset,sum(7),ou);
	--shifter: boundary_scan_chain port	map('1',clk,reset,i,en_sh,bit_shift,ou);
	--abilito dato che quando faccio solo shift non devo fare nessuna somma abilito prima un registro tutti 0 e poi
	-- un il registro con il moltiplicando quando mi serve
	--sum1<=ou(2*width-1 downto 8);
	--q_val_2(7 downto 0)<=ou(7 downto 0);
end Structural;

