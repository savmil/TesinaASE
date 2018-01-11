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
			  start : IN std_logic;
			  reset : IN std_logic;
			  shift_r : OUT std_logic;
			  shift_l : OUT std_logic;
			  start_sh : IN std_logic_vector(0 downto 0);
			  en_i_r : OUT std_logic;
			  en_i_l : OUT std_logic;
			  en_c_r : OUT std_logic;
			  en_c_l: out STD_LOGIC;
			  stop_r : IN std_logic;
			  stop_l : in STD_LOGIC;
			  hashed : OUT std_logic_vector(0 downto 0));
end gestore_hash;

architecture Behavioral of gestore_hash is
type state is (idle,init,shifting_r,shifting_l,ended);
signal current_state, next_state:state;
begin
	change_state: process (clk,reset)
	begin
		if (reset = '0') then
			current_state <= idle;
		elsif rising_edge(clk) then
		case current_state is
		
			when idle=>	if start='1' then
								current_state<=init;
							end if;
			when init=> if start_sh(0)='1' then
								current_state <= shifting_r;
							end if;
			when shifting_r=> if stop_r='1' then
										current_state<=shifting_l;
									end if;
			when shifting_l=> if stop_l='1' then
									current_state<=ended;
								 end if;
			when ended => current_state<=idle;
		end case;
		end if;
	end process;
	gestore_RSA: process (current_state,start_sh)
	begin
		shift_r<='0';
		en_c_r<='0';
		en_c_l<='0';
	   shift_l<='0';
		en_i_l<='0';
		en_i_r<='0';
		case current_state is
			when idle => shift_r<='0';
							 en_c_r<='0';
							 en_c_l<='0';
							 shift_l<='0';
							 hashed(0)<='0';
			when init => 
							 if start_sh(0)='1' then
							  en_i_l<='0';
							  en_i_r<='0';
							  --next_state<= shifting;
							 end if;
			when shifting_r => en_i_r<='1';
								  shift_r<='1';
								  en_c_r<='1';
								  
			when shifting_l=>en_c_r<='0';
									shift_r<='0';
									en_c_l<='1';
									shift_l<='1';
									en_i_l<='1';
			when ended=>hashed(0)<='1';
		end case;
	end process;
								


end Behavioral;

