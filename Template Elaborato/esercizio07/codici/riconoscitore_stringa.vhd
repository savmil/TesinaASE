----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:08:38 12/27/2017 
-- Design Name: 
-- Module Name:    riconoscitore_stringa - Behavioral 
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
use IEEE.math_real.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity riconoscitore_stringa is
	 generic(width: NATURAL:=8);
    Port ( clk : in STD_LOGIC;
			  start: in STD_LOGIC;
			  reset : in STD_LOGIC;
			  data : in STD_LOGIC_VECTOR(width-1 downto 0);
			  data_in : in  STD_LOGIC;
			  stop : in STD_LOGIC;
			  i: in STD_LOGIC_VECTOR(natural(ceil(log2(real(width)))) downto 0);
           shift : out STD_LOGIC;
           en_i : out  STD_LOGIC;
			  en_c : out STD_LOGIC;
			  bad: out  STD_LOGIC;
			  correct: out STD_LOGIC);
end riconoscitore_stringa;

architecture Behavioral of riconoscitore_stringa is
type state is (idle,riconosci_bit,shifting,carica_stringa);
signal current_state : state;
signal n:STD_LOGIC_VECTOR(natural(ceil(log2(real(width)))) downto 0):=(others=>'0');
begin
change_state: process (clk,reset)
	begin
		if (reset = '0') then
			current_state <= idle;
		elsif rising_edge(clk) then
		case current_state is
			when idle=>	if start='1' then
								current_state <= carica_stringa;
							end if;
			when carica_stringa=> current_state<=shifting;
			when shifting=> current_state<=riconosci_bit;
			when riconosci_bit=> if i=std_logic_vector(to_unsigned(width,n'length)) then
											current_state<=idle;
										elsif data(to_integer(unsigned(i)))=data_in then
											current_state<=shifting;
										elsif data(to_integer(unsigned(i)))/=data_in then
											current_state<=idle;
										end if;
		end case;
		end if;
	end process;
	recognize_bit: process(clk,current_state,i,data_in,start)
	 begin
	 shift<='0';
	 correct<='0';
	 bad<='0';
	 en_c<='0';
	 en_i<='0';
		case current_state is
			when idle =>
				shift<='0';
				--n<=std_logic_vector(to_unsigned(width,n'length));
				if start='1' then
					correct<='0';
					bad<='0';
					en_i<='1';
					shift<='1';
					--next_state<=shifting;
				end if;
			when carica_stringa =>
				  en_i<='0';
			when shifting =>
				  en_i<='1';
				  shift<='0';
				  en_c<='0';
				  --next_state<=riconosci_bit;
			when riconosci_bit =>
				  en_i<='1';
				  if i=std_logic_vector(to_unsigned(width,n'length)) then
					correct<='1';
					--next_state<=idle;
				  elsif data(to_integer(unsigned(i)))=data_in then
					en_c<='1';
				   shift<='1';
					--next_state<=shifting;
				  else 
					bad<='1';
					--next_state<=idle;
				  end if;
		end case;
	end process;
end Behavioral;

