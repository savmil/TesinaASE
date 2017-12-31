----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:05:00 12/29/2017 
-- Design Name: 
-- Module Name:    mod_exp - Behavioral 
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
library STD;
use STD.textio.all;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.std_logic_textio.all;
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity mod_exp is
    Port ( clk: in STD_LOGIC;
			  base : in  STD_LOGIC_VECTOR (15 downto 0);
           esponente : in  STD_LOGIC_VECTOR (15 downto 0);
           modulo : in  STD_LOGIC_VECTOR (15 downto 0);
           m_e : out  STD_LOGIC_VECTOR (31 downto 0));
end mod_exp;

architecture Behavioral of mod_exp is
begin

 mod_e:process(clk)
 variable base1,modulo1,c,n_o_d,check_esp,check_first:integer:=0;
 variable indice:natural:=15;
 variable d: integer:=1;
 variable i,j : integer:=0;
 variable my_line : line;
 begin

	base1:=to_integer(unsigned(base));
	modulo1:=to_integer(unsigned(modulo));
	if (indice /=-1) then
		if rising_edge(clk) then
		if check_first=0 then
			c:=c*2;
			d:=d*d;
			check_first:=1;
		end if;
			
			--write(my_line, "c");
			--write(my_line, c);  -- formatting
		--	writeline(output, my_line);
			--write(my_line, "modulo");  -- formatting
			--write(my_line, modulo1);  -- formatting
			--writeline(output, my_line);
			if (i/=65536) then
				if d>=modulo1 then
					d:=d-modulo1;
				else
				 i:=65535;
				end if;
				i:=i+1;
			else 
				if esponente(indice)='1' then
					--write(my_line, "indice ");
					--write(my_line, indice);  -- formatting
					--writeline(output, my_line);
					if check_esp=0 then
					
						check_esp:=1;
						c:=c+1;
						d:=d*base1;
					end if;
					if (j/=65536) then
						if d>=modulo1 then
							
							d:=d-modulo1;
							
						else 
							j:=65535;
						end if;
						j:=j+1; 
					end if;
					--write(my_line, "d ");
					--write(my_line, d);  -- formatting
					--writeline(output, my_line);
					
				end if;
				if esponente(indice)='0' then
					indice:=indice-1;
					--write(my_line, "d1 ");
					--write(my_line, d);
					check_esp:=0;
					check_first:=0;
					i:=0;
					j:=0;
				elsif j=65536  then
					indice:=indice-1;
					check_esp:=0;
					check_first:=0;
					i:=0;
					j:=0;
				end if;
			 end if;
				--n_o_d:=d / modulo1;
				--d:=d-(n_o_d*modulo1);
			--	write(my_line, "sono qui");  -- formatting
       --writeline(output, my_line);
			--end if;	
		end if;
	end if;
	m_e<=std_logic_vector(to_unsigned(d,m_e'length));
	end process;
end Behavioral;

