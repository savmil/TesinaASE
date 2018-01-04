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
           hit_o : in  STD_LOGIC;
           fin_m : in  STD_LOGIC;
           fin_div : in  STD_LOGIC;
			  exp: in STD_LOGIC;
           base : in  STD_LOGIC_VECTOR (31 downto 0);
			  d : in  STD_LOGIC_VECTOR (63 downto 0);
			  modul: in STD_LOGIC_VECTOR(31 downto 0);
			  d1 : in STD_LOGIC_VECTOR(63 downto 0);
			  d_div: in std_logic_vector(63 downto 0);
			  mul1: out STD_LOGIC_VECTOR(31 downto 0);
			  mul2: out STD_LOGIC_VECTOR(31 downto 0);
			  d_res: OUT std_logic_vector(63 downto 0);
           en_o : out  STD_LOGIC;
           en_d1 : out  STD_LOGIC;
           en_d : out  STD_LOGIC;
           en_m : out  STD_LOGIC;
			  reset_m: out STD_LOGIC;
           en_div : out  STD_LOGIC;
			  reset_div: out STD_LOGIC;
           finish : out  STD_LOGIC);
end mod_exp_gestore;

architecture Behavioral of mod_exp_gestore is
type state is (idle,mol_d,wait_mol,modular,wait_modular,check_exp,mol_base,wait_mol_base,modular1,wait_modular1);
signal current_state, next_state:state;
signal neutro:STD_LOGIC:='0';
begin
	synchronous_process: process (clk,reset)
	begin
		if rising_edge(clk) then	
		if (reset = '0') then
				current_state <= idle;
			else
				current_state <= next_state;
		end if;
		end if;
	end process;
	gestore_mod_exp: process (current_state,start,hit_o,neutro,d,fin_m,d1,modul,fin_div,d_div,exp,base)
		begin
		en_o<='0';
		reset_div<='1';
		reset_m<='1';
			case current_state is 
				when idle =>
					en_o<='0';
					en_d1<='0';
					en_d<='0';
					en_m<='0';
					en_div<='0';
					if start='1' then
						finish<='0';
						neutro<='0';
						next_state<=mol_d;
					end if;
					
				when mol_d =>
				if hit_o='1' then
					next_state<=idle;
					finish<='1';
				elsif neutro='0' then
					mul1<=x"00000001";
					mul2<=x"00000001";
					en_m<='1';
					next_state<=wait_mol;
				elsif neutro='1' then
					mul1<=d(31 downto 0);
					mul2<=d(31 downto 0);
					en_m<='1';
					next_state<=wait_mol;
				end if;
				
				when wait_mol =>
					en_m<='0';
					en_d<='0';
					reset_div<='0';
					if fin_m='1' then
						en_d1<='1';
						next_state<=modular;
					end if;
					
				when modular =>
					reset_m<='0';
					en_d1<='0';
					if unsigned(d1)>=unsigned(modul) then
						en_div<='1';
						next_state<=wait_modular;
					else
						next_state<=check_exp;
					end if;
					
				when wait_modular=>
					en_div<='0';
					if fin_div='1' then
						en_d<='1';
						d_res<=d_div;
						next_state<=check_exp;
					end if;
					
				when check_exp=>
					reset_div<='0';
					en_o<='1';
					en_d<='0';
					if exp='1' then
						next_state<=mol_base;
					else
						d_res<=d1;
						en_d<='1';
						next_state<=mol_d;
					end if;
					
				when mol_base=>
					mul1(31 downto 0)<=base;
					if neutro='0' then
						mul2<=x"00000001";
						en_m<='1';
						next_state<=wait_mol_base;
					else
						mul2<=d(31 downto 0);
						en_m<='1';
						next_state<=wait_mol_base;
					end if;
					
				when wait_mol_base =>
					en_m<='0';
					neutro<='1';
					if fin_m='1' then
						en_d1<='1';
						next_state<=modular1;
					end if;
					
				when modular1 =>
					en_d1<='0';
					reset_m<='0';				
					if unsigned(d1)>=unsigned(modul) then
						en_div<='1';
						next_state<=wait_modular1;
					else
						d_res<=d1;
						en_d<='1';
						next_state<=mol_d;
					end if;
					
				when wait_modular1=>
					en_div<='0';
					if fin_div='1' then
						en_d<='1';
						d_res<=d_div;
						if(hit_o='1') then
							finish<='1';
							next_state<= idle;
						else
							next_state<=mol_d;
						end if;
					end if;
		end case;
	end process;


end Behavioral;

