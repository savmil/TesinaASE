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
    Port ( fin_n : in  STD_LOGIC;
           fin_h : in  STD_LOGIC;
           fin_exp : in  STD_LOGIC;
			  start: in STD_LOGIC;
           reset : in  STD_LOGIC;
           clk : in  STD_LOGIC;
			  msg: in STD_LOGIC_VECTOR(31 downto 0);
			  msg_pr: in STD_LOGIC_VECTOR(31 downto 0);
			  exp_e: in STD_LOGIC_VECTOR(31 downto 0);
			  exp_d: in STD_LOGIC_VECTOR(31 downto 0);
			  msg_exp: out STD_LOGIC_VECTOR(31 downto 0);
			  exp: out STD_LOGIC_VECTOR(31 downto 0);
           en_n : out  STD_LOGIC;
           en_h : out  STD_LOGIC;
			  en_exp: out STD_LOGIC;
			  reset_exp: out STD_LOGIC;
           en_pr : out  STD_LOGIC;
           en_pu : out  STD_LOGIC);
end gestore_generatore_valori_RSA;

architecture Behavioral of gestore_generatore_valori_RSA is
type state is (idle,calc_n,wait_n,hashing,wait_hashing,calc_pr,wait_pr,calc_pu,wait_pu);
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


	gestore_mul: process (current_state,start,fin_n,fin_h,exp_e,exp_d,msg,fin_exp,msg_pr)
		begin
		reset_exp<='1';
			case current_state is
				when idle =>
					en_n<='0';
					en_h<='0';
					en_pr<='0';
					en_pu<='0';
					en_exp<='0';
					if start='1' then
						next_state<=calc_n;
					end if;
				when calc_n =>
					en_n<='1';
					next_state<=wait_n;
				when wait_n =>
					en_n<='0';
					if fin_n='1' then
						next_state<=hashing;
					end if;
				when hashing =>
					en_h<='1';
					next_state<=wait_hashing;
				when wait_hashing =>
					en_h<='0';
					if fin_h='1' then
						next_state<=calc_pr;
					end if;
					
				when calc_pr=>
					exp<=exp_e;
					msg_exp<=msg;
					en_exp<='1';
					next_state<=wait_pr;
				when wait_pr =>
					en_exp<='0';
					if fin_exp='1' then
						en_pr<='1';
						reset_exp<='0';
						next_state<=calc_pu;
					end if;
				when calc_pu=>
					exp<=exp_d;
					msg_exp<=msg_pr;
					en_pr<='0';
					en_exp<='1';
					next_state<=wait_pu;
				when wait_pu=>
					en_exp<='0';
					if fin_exp='1' then
						en_pu<='1';
						next_state<=idle;
					end if;		

			end case;
		end process;
end Behavioral;

