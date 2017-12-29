----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:39:33 12/27/2017 
-- Design Name: 
-- Module Name:    gestore_RSA - Behavioral 
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

entity gestore_hash is
    Port ( clk : IN std_logic;
			  reset : IN std_logic;
			  shift_r : OUT std_logic;
			  shift_l : OUT std_logic;
			  start_sh : IN std_logic;
			  en_i_r : OUT std_logic;
			  en_i_l : OUT std_logic;
			  en_c_r : OUT std_logic;
			  en_c_l: out STD_LOGIC;
			  stop_r : IN std_logic;
			  stop_l : in STD_LOGIC;
			  hashed : OUT std_logic);
end gestore_hash;

architecture Behavioral of gestore_hash is
type state is (idle,shifting);
signal current_state, next_state:state;
begin
	change_state: process (clk)
	begin
		if rising_edge(clk) then	
			if (reset = '0') then
				current_state <= idle;
		else
				current_state <= next_state;
			end if;
		end if;
	end process;
	gestore_RSA: process (clk)
	begin
		case current_state is
			when idle => shift_r<='0';
							 en_c_r<='0';
							 en_c_l<='0';
							 shift_l<='0';
							 if start_sh='1' then
							  hashed<='0';
							  en_i_l<='0';
							  en_i_r<='0';
							  next_state<= shifting;
							 end if;
			when shifting => en_i_r<='1';
								  shift_r<='1';
								  en_c_r<='1';
								if stop_r='1' then
									en_c_r<='0';
									shift_r<='0';
									en_c_l<='1';
									shift_l<='1';
									en_i_l<='1';
									if stop_l='1' then
										hashed<='1';
										next_state<=idle;
									end if;
								end if;
		end case;
	end process;
								


end Behavioral;

