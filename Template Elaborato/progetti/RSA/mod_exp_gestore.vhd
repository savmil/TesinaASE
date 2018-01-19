----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    23:43:00 01/02/2018 
-- Design Name: 
-- Module Name:    mod_exp_gestore - Behavioral 
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

entity mod_exp_gestore is
    Port ( start : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           counter : in  STD_LOGIC_VECTOR(4 downto 0);
           fin_m : in  STD_LOGIC_VECTOR(0 downto 0);
           fin_div : in STD_LOGIC_VECTOR(0 downto 0);
			  exp: in STD_LOGIC;
           base : in  STD_LOGIC_VECTOR (31 downto 0);
			  d : in  STD_LOGIC_VECTOR (63 downto 0);
			  modul: in STD_LOGIC_VECTOR(31 downto 0);
			  d1 : in STD_LOGIC_VECTOR(63 downto 0);
			  d_div: in std_logic_vector(63 downto 0);
			  d_res: OUT std_logic_vector(63 downto 0);
           en_o : out  STD_LOGIC;
           en_d1 : out  STD_LOGIC;
           en_d : out  STD_LOGIC;
           en_m : out  STD_LOGIC;
			  reset_m: out STD_LOGIC;
           en_div : out  STD_LOGIC;
			  reset_div: out STD_LOGIC;
			  en_res: out STD_LOGIC;
			  en_v_m: out STD_LOGIC;
			  val_mul: out STD_LOGIC_VECTOR(1 downto 0);
           finish : out  STD_LOGIC);
end mod_exp_gestore;

architecture Behavioral of mod_exp_gestore is
type state is (idle,mol_d,wait_mol,modular,wait_modular,check_exp,mol_base,wait_mol_base,modular1,wait_modular1,count,wait_d);
signal current_state:state;
begin
	change_state: process (clk,reset)
	begin
		if (reset = '0') then
			current_state <= idle;
		elsif rising_edge(clk) then
		val_mul<="00";
		en_o<='0';
		reset_div<='1';
		reset_m<='1';
		en_d1<='0';
		en_d<='0';
		en_m<='0';
		en_div<='0';
		finish<='0';
		en_res<='0';
		en_v_m<='0';
		d_res<=x"0000000000000000";
		case current_state is
			when idle=>	en_o<='0';
							en_d1<='0';
							en_d<='0';
							en_m<='0';
							en_div<='0';
							if start='1' then
								reset_div<='0';
								reset_m<='0';
								finish<='0';
								val_mul<="00";
								current_state <= mol_d;
							end if;
			when mol_d=> en_d<='0';
							 reset_div<='0';
							 if fin_div(0)='0' and fin_m(0)='0' then
								en_m<='1';
								current_state<=wait_mol;
							 end if;
			when wait_mol=> en_m<='0';
								 en_d<='0';
								 reset_div<='0';
								 if fin_m(0)='1' then
									d_res<=d1;
									en_d<='1';
									current_state<=modular;
								 end if;
			when modular=> reset_m<='0';
								en_d<='0';
								if unsigned(d)>=unsigned(modul) and fin_m(0)='0' then
									en_div<='1';
									current_state<=wait_modular;
								elsif fin_m(0)='0' then
									current_state<=check_exp;
								end if;
			when wait_modular=> en_div<='0';
									  if fin_div(0)='1' then
											d_res<=d_div;
											en_d<='1';
											--en_o<='1';
											current_state<=check_exp;
									  end if;
			--when wait_d => current_state<=check_exp;
			when check_exp => reset_div<='0';
									en_d<='0';
									reset_m<='0';
									if exp='1' and fin_div(0)='0' and fin_m(0)='0' then
										en_o<='1';
										val_mul<="10";
										en_v_m<='1';
										current_state<=mol_base;
									elsif fin_div(0)='0' then
										en_o<='1';
										current_state<=count;
									end if;
			when count => 
								reset_m<='0';
								d_res<=d;
								en_d<='1';
								current_state<=wait_d;
			when wait_d => if unsigned(counter)="11111" then
									reset_m<='0';
									en_res<='1';
									finish<='1';		
									current_state<=idle;
								else
									current_state<=mol_d;
								end if;
			when mol_base => if fin_m(0)='0' and fin_div(0)='0' then
									en_m<='1';
									current_state<=wait_mol_base;
								  end if;
			when wait_mol_base => en_m<='0';
										 if fin_m(0)='1' then
											d_res<=d1;
											en_d<='1';
											current_state<=modular1;
										 end if;
			when modular1 => val_mul<="01";
								  en_v_m<='1';
								  en_d<='0';
								  reset_m<='0';	
								  if unsigned(d)>=unsigned(modul) and fin_m(0)='0' then
									 en_div<='1';
									 current_state<=wait_modular1;
								  elsif fin_m(0)='0' then
									 d_res<=d;
									 en_d<='1';
									 current_state<=wait_d;
								  end if;
			when wait_modular1 =>en_div<='0';
										en_d<='0';
										if (fin_div(0)='1') then
											d_res<=d_div;
											en_d<='1';
											current_state<=wait_d;
											
										 end if;
			--when wait_d1=> current_state<=mol_d;
		end case;
		end if;
	end process;
--	gestore_mod_exp: process (current_state,start,hit_o,d,fin_m,d1,modul,fin_div,d_div,exp,base)
--		begin
--		
--			case current_state is 
--				when idle =>
--					
--					if start='1' then
--						
--						--next_state<=mol_d;
--					end if;
--					
--				when mol_d =>
--				
----				elsif neutro='0' then
----					mul1<=x"00000001";
----					mul2<=x"00000001";
----					en_m<='1';
----					--next_state<=wait_mol;
----				elsif neutro='1' then
----					mul1<=d(31 downto 0);
----					mul2<=d(31 downto 0);
----					en_m<='1';
--					
--					--next_state<=wait_mol
--				
--				when wait_mol =>
--					en_m<='0';
--					en_d<='0';
--					reset_div<='0';
--					if fin_m(0)='1' then
--						en_d1<='1';
--						--next_state<=modular;
--					end if;
--					
--				when modular =>
--					reset_m<='0';
--					en_d1<='0';
--					if unsigned(d1)>=unsigned(modul) and fin_m(0)='0' then
--						en_div<='1';
--						--next_state<=wait_modular;
--					else
--						--next_state<=check_exp;
--					end if;
--					
--				when wait_modular=>
--					en_div<='0';
--					if fin_div(0)='1' then
--						
--						d_res<=d_div;
--						en_d<='1';
--						--next_state<=check_exp;
--					end if;
--				--when wait_d =>
--						--en_d<='1';
--				when check_exp=>
--					reset_div<='0';
--					en_o<='1';
--					en_d<='0';
--					reset_m<='0';
--					if exp='1' and fin_div(0)='0' and fin_m(0)='0' then
--						--next_state<=mol_base;
--						val_mul<="10";
--						en_v_m<='1';
--						
--						--next_state<=mol_d;
--					end if;
--				when count =>	if hit_o='1' then
--					--next_state<=idle;
--										reset_m<='0';
--										en_res<='1';
--										finish<='1';
--									else
--										reset_m<='0';
--										d_res<=d1;
--										en_d<='1';
--									end if;
--				when mol_base=>
--				if fin_m(0)='0' then
--					en_m<='1';
--				end if;
----					mul1(31 downto 0)<=base;
----					if neutro='0' then
----						mul2<=x"00000001";
----						en_m<='1';
----						--next_state<=wait_mol_base;
----					else
----						mul2<=d(31 downto 0);
----						en_m<='1';
----						--next_state<=wait_mol_base;
----					end if;
--					
--				when wait_mol_base =>
--					en_m<='0';
--					if fin_m(0)='1' then
--						en_d1<='1';
--						--next_state<=modular1;
--					end if;
--					
--				when modular1 =>
--					val_mul<="01";
--					en_v_m<='1';
--					en_d1<='0';
--					reset_m<='0';	
--					--en_d<='1';
--					if unsigned(d1)>=unsigned(modul) and fin_m(0)='0' then
--						en_div<='1';
--						--next_state<=wait_modular1;
--					else
--						d_res<=d1;
--						en_d<='1';
--						--next_state<=mol_d;
--					end if;
--				when wait_modular1=>
--					en_div<='0';
--					en_d<='0';
--					if fin_div(0)='1' then
--						d_res<=d_div;
--						en_d<='1';
--						if(hit_o='1') then
--							finish<='1';
--							en_res<='1';
--							--next_state<= idle;
--						else
--							--next_state<=mol_d;
--						end if;
--					end if;
--				--when wait_d1 => --en_d<='1';
--		end case;
--	end process;


end Behavioral;

