----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:50:28 01/01/2018 
-- Design Name: 
-- Module Name:    gestore_generatore_valori_RSA - Behavioral 
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

entity gestore_generatore_valori_RSA is
    Port ( fin_n : in  STD_LOGIC_VECTOR(0 downto 0);
           fin_h : in  STD_LOGIC;
           fin_exp : in  STD_LOGIC;
			  start: in STD_LOGIC;
           reset : in  STD_LOGIC;
           clk : in  STD_LOGIC;
			  msg: in STD_LOGIC_VECTOR(31 downto 0);
			  msg_pr: in STD_LOGIC_VECTOR(31 downto 0);
			  msg_t_h: in STD_LOGIC_VECTOR(31 downto 0);
			  msg_r_h: in STD_LOGIC_VECTOR(31 downto 0);
			  correct:out STD_LOGIC_VECTOR(0 downto 0);
			  en_correct: out STD_LOGIC;
			  check_exp: out STD_LOGIC_VECTOR(0 downto 0);
			  check_hash: out STD_LOGIC_VECTOR(0 downto 0);
           en_n : out  STD_LOGIC;
           en_h : out  STD_LOGIC;
			  en_exp: out STD_LOGIC;
			  reset_exp: out STD_LOGIC;
			  reset_hash: out STD_LOGIC;
           en_pr : out  STD_LOGIC;
           en_pu : out  STD_LOGIC);
end gestore_generatore_valori_RSA;

architecture Behavioral of gestore_generatore_valori_RSA is
type state is (idle,calc_n,wait_n,hashing,wait_hashing,calc_pr,wait_pr,calc_pu,wait_pu,res_exp,check_msg,wait_check,check,res_h);
signal current_state:state;
begin
	change_state: process (clk,reset)
	begin
		if (reset = '0') then
			current_state <= idle;
		elsif rising_edge(clk) then
		case current_state is
			when idle=>	if start='1' then
								current_state <= calc_n;
							end if;
			when calc_n=> current_state<=wait_n;
			when wait_n=> if fin_n(0)='1' then
									current_state<=hashing;
								 end if;
			when hashing=> current_state<=wait_hashing;
			when wait_hashing=> if fin_h='1' then
											current_state<=calc_pr;
									  end if;
			when calc_pr => current_state<=wait_pr;
			when wait_pr => if fin_exp='1' then
									current_state<=res_exp;
								 end if;
			when res_exp => current_state<=calc_pu;
			when calc_pu => current_state<=wait_pu;
			when wait_pu => if fin_exp='1' then
									current_state<=res_h;
								 end if;		
			when res_h => current_state<=check_msg;
			when check_msg => current_state<=wait_check;
			when wait_check=>if fin_h='1' then
											current_state<=check;
									  end if;
			when check => current_state<=idle;
		end case;
		end if;
	end process;


	gestore_RSA: process (current_state,start,fin_n,fin_h,msg,fin_exp,msg_pr)
		begin
		reset_exp<='1';
		reset_hash<='1';
		en_n<='0';
		en_h<='0';
		en_pr<='0';
		en_pu<='0';
		en_exp<='0';
		check_exp(0)<='0';
	   check_hash(0)<='0';
		en_correct<='0';
			case current_state is
				when idle =>
					en_n<='0';
					en_h<='0';
					en_pr<='0';
					en_pu<='0';
					en_exp<='0';
					
					if start='1' then
						reset_exp<='0';
						reset_hash<='0';
					end if;
				when calc_n =>
					en_n<='1';
					--next_state<=wait_n;
				when wait_n =>
					en_n<='0';
					--if fin_n(0)='1' then
						--next_state<=hashing;
					--end if;
				when hashing =>
					en_h<='1';
					--next_state<=wait_hashing;
				when wait_hashing =>
					en_h<='0';
--					if fin_h='1' then
--						next_state<=calc_pr;
--					end if;
					
				when calc_pr=>
					en_exp<='1';
					--next_state<=wait_pr;
				when wait_pr =>
					en_exp<='0';
					if fin_exp='1' then
						en_pr<='1';
						
						--next_state<=res;
					end if;
				when res_exp=>reset_exp<='0';
							 --next_state<=calc_pu;
				when calc_pu=>
					check_exp(0)<='1';
					en_pr<='0';
					en_exp<='1';
					--next_state<=wait_pu;
				when wait_pu=>
					en_exp<='0';
					if fin_exp='1' then
						en_pu<='1';
						--next_state<=idle;
					end if;		
				when res_h =>
					reset_hash<='0';
				when check_msg=>
					check_hash(0)<='1';
					en_h<='1';
				when wait_check=>
					en_h<='0';
				when check => 
					en_correct<='1';
					if msg_t_h=msg_r_h then
						correct(0)<='1';
					end if;
			end case;
		end process;
end Behavioral;

