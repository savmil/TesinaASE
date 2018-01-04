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
			  reset : in STD_LOGIC;
			  --reset_a : out STD_LOGIC;
			  en_a : out  STD_LOGIC;
           en_m : out  STD_LOGIC;
			  en_q : out STD_LOGIC;
			  en_c : out STD_LOGIC;
           en_shift : out  STD_LOGIC;
			  finished: out STD_LOGIC;
           stop : in  STD_LOGIC);
end Serial_Booth_PC_Moore;

architecture Behavioral of Serial_Booth_PC_Moore is
type state is (idle,getseq,init,inits,shift);
signal current_state, next_state:state;
begin
	synchronous_process: process (clk)
	begin
		if rising_edge(clk) then	
		if (reset = '0') then
				current_state <= idle;
			else
				current_state <= next_state;
		end if;
		end if;
	end process;


	gestore_mul: process (current_state,start,pair_of_bits,stop)
		begin
		--reset_a<='0';
		en_m<='0';
		--en_a<='0';
		en_shift<='0';
		en_c<='0';
		--en_q<='0';
		--en_a<='0';
			case current_state is 
				when idle =>finished<='0'; 
								if start='1' then
									--en_m<='1';
									--en_mul1<='0';
									--en_mul2<='0';
									--en_sum<='1';
									--en_shift<='0';
									--add_sub<='0';
									en_q<='0';
									en_a<='0';
									
									
									next_state<=init;
								   --en_q<='1';
									--en_c<='1';
								end if;
				when init => --en_m<='1';
								 --en_c<='1';
								 --en_c<='1';
								 --count<='1';
								 --en_a<='1';
								 en_m<='1';
								 en_q<='1';
								 
								 --en_c<='1';
								 --en_q<='1';
								 --en_a<='1';
								 en_a<='1';-- questa prima abilitazione mi fa caricare il moltiplicatore in a
								 next_state<=getseq;
				when getseq =>	en_c<='1';
									
									if (pair_of_bits="00" or pair_of_bits="11") then
										next_state<=inits;
										--en_mul1<='1';
									elsif pair_of_bits="01" then
										--add_sub<='1';
										--en_mul1<='1';
										--en_a<='1';
										--en_a<='1';
										en_a<='0'; -- serve a dire che voglio shiftare la somma, non il valore salvato nella scan_chain
										next_state<=inits;
									elsif pair_of_bits="10" then
										--add_sub<='0';
										--en_mul1<='1';
										--en_a<='1';
										--en_a<='1';
										en_a<='0';
										next_state<=inits;
									end if;
				when inits =>  en_shift<='1'; -- 
								  --en_c<='1';
								  next_state<=shift;
				when shift =>  en_shift<='0';
								  --en_a<='0';
								  --en_c<='1';
								  --en_a<='1';
								  --en_q<='1';
								  --en_shift<='1';
								  --en_a<='1';
								  --en_q<='1';
								  --en_q<='1';
								  en_a<='1';-- mi rimango il valore nella scan chain
								  if (stop='0') then
								   
								   next_state<=getseq;
								  elsif (stop='1') then
									next_state<=idle;
									finished<='1';
								  end if;

			end case;
	end process;
end Behavioral;

