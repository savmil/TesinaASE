----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:09:18 12/27/2017 
-- Design Name: 
-- Module Name:    riconoscitore_stringa_generico - Behavioral 
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
use IEEE.math_real.all;
-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity riconoscitore_stringa_generico is
	 generic (width:NATURAL:=8);
    Port ( clk : in STD_LOGIC;
			  reset: in STD_LOGIC;
			  start: in STD_LOGIC;
			  data : in  STD_LOGIC_VECTOR (width-1 downto 0);
           bad:out STD_LOGIC;
			  correct:out STD_LOGIC);
end riconoscitore_stringa_generico;

architecture Behavioral of riconoscitore_stringa_generico is
COMPONENT boundary_scan_chain
	generic (n: natural:=8);
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
	COMPONENT riconoscitore_stringa
	generic (width: natural:=8);
	PORT(
		clk : IN std_logic;
		start : IN std_logic;
		reset : IN std_logic;
		data : IN std_logic_vector(width-1 downto 0);
		data_in : IN std_logic;
		stop : IN std_logic;
		i : IN std_logic_vector(natural(ceil(log2(real(width)))) downto 0);          
		shift : OUT std_logic;
		en_i : OUT std_logic;
		en_c : OUT std_logic;
		bad : OUT std_logic;
		correct:out std_logic
		);
	END COMPONENT;
	COMPONENT contatore_modulo_2n
	generic (width: natural:=4);
	PORT(
		clk : IN std_logic;
		enable : IN std_logic;
		reset : IN std_logic;          
		hit : OUT std_logic;
		output : OUT std_logic_vector(width-1 downto 0)
		);
	END COMPONENT;
	signal en_i,en_s,next_bit,stop,en_c:STD_LOGIC:='0';
	signal i:STD_LOGIC_VECTOR(natural(ceil(log2(real(width)))) downto 0);
begin
	input: boundary_scan_chain port map('0',clk,reset,en_i,"00001101",en_s,next_bit,open);
	r_s:riconoscitore_stringa port map (clk,start,reset,data,next_bit,stop,i,en_s,en_i,en_c,bad,correct);
	counter: contatore_modulo_2n port map(clk,en_c,reset,stop,i);
end Behavioral;

