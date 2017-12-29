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

entity serial_div_restoring is
    Port ( clk: in STD_LOGIC;
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
end serial_div_restoring;

architecture Behavioral of serial_div_restoring is
type state is (idle,init,sub,set_1,shift);
signal current_state, next_state:state;
begin
	synchronous_process: process (clk)
	begin
		if rising_edge(clk) then	
--			if (rst = '1') then
--				current_state <= idle;
--			else
				current_state <= next_state;
			--end if;
		end if;
	end process;


	gestore_mul: process (clk)
		begin
		en_div<='0';
		en_shift<='0';
		en_c<='0';
			case current_state is 
				when idle => if start='1' then
									finish<='0';
									en_q<='0';
									en_div<='1';
									en_r<='1'; -- lo faccio così alla prima operazione di somma mi trovo 0 invece del valore in ingresso
									next_state<=init;
								  end if;
				when init => en_q<='1';
								--en_r<='0';
								 bit_q<='0';
								 add_sub<='0';
								 next_state<=shift;
				when shift =>  en_c<='1';
									en_shift<='1';
									add_sub<='1';
								   next_state<=sub;
				--when af_sh => next_state<= sub;
				when sub =>	
								
								en_shift<='0';
								bit_q<='0';
								if stop='0' then
									if neg='0' then -- se il primo bit della somma è zero valore positivo allora setto il primo bit a destra del quoziente a 1
										en_r<='0'; -- do la possibilità di caricare nel remainder il resto della somma
										next_state<=set_1;
										bit_q<='1';
									else
										next_state<=shift;
									end if;		
								else
									if neg='0' then
										bit_q<='1';
									end if;
									finish<='1';
									next_state<=idle;
								end if;
								
				when set_1 => en_r<='1';
									 add_sub<='0';
									 
								  next_state<=shift;
			end case;
	end process;
end Behavioral;


