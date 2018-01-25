----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:29:58 12/25/2017 
-- Design Name: 
-- Module Name:    Transmitter - Behavioral 
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

entity Transmitter is
    Port ( clk : in  STD_LOGIC;
			  start: in STD_LOGIC;
			  reset : in STD_LOGIC;
			  c_s: in STD_LOGIC;
			  send_s: in STD_LOGIC;
			  data_in : in  STD_LOGIC;
			  fin: in STD_LOGIC;
			  shift : out STD_LOGIC;
			  en_c: out STD_LOGIC;
           en_i: out STD_LOGIC;
			  en_b: out STD_LOGIC;
			  end_t: out STD_LOGIC_VECTOR(0 downto 0);
           data_out : out  STD_LOGIC);
end Transmitter;

architecture Behavioral of Transmitter is
type state is (idle,send_start,send,wait_for_next,send_stop);
signal number_of_bits: STD_LOGIC_VECTOR(3 downto 0):=(others=>'0');
signal current_state, next_state:state;
begin
        change_state: process (clk,reset)
			begin
			if (reset = '0') then
				current_state <= idle;
			elsif rising_edge(clk) then
			case current_state is
				when idle=>	if start='1' then
									current_state <= send_start;
								end if;
				when send_start=> current_state<=wait_for_next;
				when wait_for_next=>if c_s='1' and fin='1' then
														 current_state<=idle;
											elsif c_s='1' and send_s='0' then
														 current_state <=send;
											elsif c_s='1' and send_s='1' then
														 current_state<=send_stop;
											end if;
				when send=> current_state<=wait_for_next;
				when send_stop=> current_state<=wait_for_next;
								
			end case;
			end if;
			end process;
		  transmission : process (clk)
		  begin
		  shift<='0';
		  en_b<='0';
		  en_c<='0';
		  en_i<='0';
		  end_t(0)<='0';
		  data_out<=data_in;
				case current_state is
						when idle => 
										 en_c<='0';
										 en_i<='0';
										
										 if start='1' then
											--next_state<= send_start;
										 end if;
						when send_start => shift<='1';
												 en_i<='1';
												 en_c<='1';
												 --next_state<= wait_for_next;
						when wait_for_next =>en_c<='1';
													en_i<='1';
													 if c_s='1' and send_s='0' then
														en_b<='1';
														en_c<='0';
														--next_state <=send;
													 end if;
						when send => en_c<='1';
										 en_i<='1';
										 shift<='1';
										 --next_state <= wait_for_next;
						when send_stop => shift<='1';
												end_t(0)<='1';
												en_c<='1';
											 -- next_state<=wait_for_next;
				end case;								
			end process;
end Behavioral;

