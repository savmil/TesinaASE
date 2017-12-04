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
			  --reset : in STD_LOGIC:='0';
			  --reset_a : out STD_LOGIC;
			  en_a : out  STD_LOGIC;
           en_m : out  STD_LOGIC;
			  en_q : out STD_LOGIC;
			  en_c : out STD_LOGIC;
           en_shift : out  STD_LOGIC;
           stop : in  STD_LOGIC);
end Serial_Booth_PC_Moore;

architecture Behavioral of Serial_Booth_PC_Moore is
type state is (idle,getseq,init,inits,shift);
signal current_state, next_state:state;
begin



	gestore_mul: process (clk)
		begin
		--reset_a<='0';

		if rising_edge(clk) then
		en_m<='0';
		--en_a<='0';
		en_q<='0';
		en_shift<='0';
		en_c<='0';
		en_a<='0';
			case current_state is 
				when idle => if start='1' then
									--en_mul1<='0';
									--en_mul2<='0';
									--en_sum<='1';
									--en_shift<='0';
									--add_sub<='0';
									current_state<=init;
								   en_q<='1';
									--en_c<='1';
								end if;
				when init => en_m<='1';
								 --en_c<='1';
								 --en_c<='1';
								 --count<='1';
								 --en_a<='1';
								 --en_c<='1';
								 --en_c<='1';
								 current_state<=getseq;
				when getseq =>	en_c<='1';
									if (pair_of_bits="00" or pair_of_bits="11") then
										current_state<=inits;
										--en_mul1<='1';
									elsif pair_of_bits="01" then
										--add_sub<='1';
										--en_mul1<='1';
										--en_a<='1';
										en_a<='1';
										current_state<=inits;
									elsif pair_of_bits="10" then
										--add_sub<='0';
										--en_mul1<='1';
										--en_a<='1';
										en_a<='1';
										current_state<=inits;
									end if;
				when inits => 
								  en_shift<='1';
								  --en_c<='1';
								  current_state<=shift;
				when shift => 
								  --en_c<='1';
								  --en_a<='1';
								  --en_q<='1';
								  --en_shift<='1';
								  --en_a<='1';
								  --en_q<='1';
								  if (stop='0') then
								   current_state<=init;
								  elsif (stop='1') then
									current_state<=idle;
								  end if;
			end case;
		end if;
	end process;
end Behavioral;


