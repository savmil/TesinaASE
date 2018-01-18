----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:30:42 12/28/2017 
-- Design Name: 
-- Module Name:    gestore_mod_exp - Behavioral 
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

entity gestore_mod_exp is
    Port ( start : in  STD_LOGIC;
			  esponente: in STD_LOGIC_VECTOR(1 downto 0);
			  base: in STD_LOGIC_VECTOR(31 downto 0);
			  moltiplicando: in STD_LOGIC_VECTOR(31 downto 0);
			  n_o_m: in STD_LOGIC_VECTOR(1 downto 0);
			  hit : in STD_LOGIC;
			  reset : in STD_LOGIC;
           clk : in  STD_LOGIC;
			  en_c: out STD_LOGIC;
           en_m : out  STD_LOGIC;
           en_d : out  STD_LOGIC;
           en_reg : out  STD_LOGIC;
			  reset_m:out STD_LOGIC;
           f_m : in  STD_LOGIC;
			  mol:out STD_LOGIC_VECTOR(31 downto 0));
end gestore_mod_exp;

architecture Behavioral of gestore_mod_exp is
type state is (idle,mul,multiply,next_mul,div);
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
	g_mod_exp : process (clk)
	begin
	reset_m<='1';
		case current_state is
			when idle =>
				en_m<='0';
				en_d<='0';
				en_reg<='0';
				
				if start='1' then
					mol<=x"00000000";
					en_reg<='1';
					next_state<=mul;
				end if;
			when mul =>
					en_m<='0';
					
					if n_o_m>=esponente then
						mol<=x"00000001";
						en_m<='1';
						next_state<=multiply;
					else
						if moltiplicando=x"00000000" then
							mol<=base;
						else
							mol<=moltiplicando;
						end if;
						en_m<='1';
						next_state<=multiply;
					
					end if;
			when multiply =>	en_m<='0';
									if n_o_m>=esponente and f_m='1' then
										en_reg<='1';
										next_state<=div;
									elsif f_m='1' then
										en_reg<='1';
										en_c<='1';
										next_state<=next_mul;
									end if;
			when next_mul => en_reg<='0';
								  en_c<='0';
								  reset_m<='0';
								  next_state<=mul;
				
			when div =>
					en_reg<='0';
					en_d<='1';
					next_state<=idle;
		end case;
	end process;
				

end Behavioral;

