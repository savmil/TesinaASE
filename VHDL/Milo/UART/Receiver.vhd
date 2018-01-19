----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    09:55:54 12/26/2017 
-- Design Name: 
-- Module Name:    Receiver - Behavioral 
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Receiver is
    Port ( clk : in  STD_LOGIC;
           data_in : in  STD_LOGIC;
           reset : in  STD_LOGIC;
			  rec: in STD_LOGIC;
			  c_s_s : in STD_LOGIC;
			  c_s_r : in STD_LOGIC;
			  en_b_r: out STD_LOGIC;
			  en_s : out STD_LOGIC;
			  en_r : out STD_LOGIC;
			  en_sh:out STD_LOGIC;
           data_out : out  STD_LOGIC);
end Receiver;

architecture Behavioral of Receiver is
type state is (idle,sfasamento,receive,wait_for_next);
signal current_state,next_state: state;
signal number_of_bits: STD_LOGIC_VECTOR(3 downto 0):=(others=>'0');
begin
	change_state: process (clk,reset)
			begin
			if (reset = '0') then
				current_state <= idle;
			elsif rising_edge(clk) then
			case current_state is
				when idle=>	if data_in='0' then
									current_state <= sfasamento;
								end if;
				when sfasamento=> if c_s_s='1' then
											current_state<=wait_for_next;
										end if;
				when wait_for_next=>if c_s_r ='1' and rec='0' then
													current_state<=receive;
											elsif c_s_r ='1' and rec='1' then
													current_state<=idle;
											end if;
				when receive=> current_state<=wait_for_next;
			 end case;
			 end if;
			 end process;
		receiver : process(clk)
		begin
		en_sh<='0';
		en_s<='0';
		en_r<='0';
		en_b_r<='0';
			case current_state is 
					when idle =>	
										if data_in='0' then
											--next_state <=sfasamento;
											en_s<='1';
										end if;
					when sfasamento =>en_s<='1'; 
					when wait_for_next => en_r<='1';
					when receive =>	data_out<=data_in;
											en_sh<='1';
											en_b_r<='1';
											number_of_bits<=std_logic_vector(unsigned(number_of_bits) +1);
			end case;
		end process;
end Behavioral;

