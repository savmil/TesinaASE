----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:53:00 11/30/2017 
-- Design Name: 
-- Module Name:    Serial_Booth_PC_Moore - Behavioral 
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

entity Serial_Booth_PC_Moore is
    Port ( clk: in STD_LOGIC;
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
end Serial_Booth_PC_Moore;

architecture Behavioral of Serial_Booth_PC_Moore is
type state is (idle,getseq,init,inits,shift);
signal current_state:state;
signal a_val,q_val,en_q_val,en_a_val:STD_LOGIC:='0';
begin
	change_state: process (clk,reset)
	begin
		if (reset = '0') then
			current_state <= idle;
		elsif rising_edge(clk) then
		case current_state is
			when idle=>	if start='1' then
								current_state <= init;
							end if;
			when init=> current_state<=getseq;
			when getseq=>current_state<=inits;
			when inits=> current_state<=shift;
			when shift=> if (stop='0') then
												current_state<=getseq;
											 elsif (stop='1') then
												current_state<=idle;
											 end if;
		end case;
		end if;
	end process;
	gestore_mul: process (current_state,pair_of_bits,start,stop)
		begin
		en_m<='0';
		en_shift<='0';
		en_c<='0';
		en_p1<='0'; 
		en_q<='0';
		en_a<='0';
			case current_state is 
				when idle =>
								if start='1' then
									en_q<='0';
									en_a<='0';
									en_p1<='0';
								end if;
				when init => en_m<='1';
								 en_q<='1';
								 en_a<='1';-- questa prima abilitazione mi fa caricare il moltiplicatore in a
				when getseq =>	en_c<='1';
									en_q<='1';
									en_a<='1';
									if (pair_of_bits="00" or pair_of_bits="11") then
										en_a<='1';
									elsif pair_of_bits="01" then
										en_a<='0'; -- serve a dire che voglio shiftare la somma, non il valore salvato nella scan_chain
									elsif pair_of_bits="10" then
										en_a<='0';
									end if;
				when inits =>  en_shift<='1';
									en_q<='1';
									en_a<='1';
				when shift =>  en_q<='1';
									en_shift<='0';
								   en_a<='1';
									en_p1<='1';-- mi rimango il valore nella scan chain

			end case;
	end process;
end Behavioral;


