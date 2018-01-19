library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity counter_mod2n is
	generic ( width : natural := 4);
    Port ( en : in  STD_LOGIC;
           reset_n : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           q : out  STD_LOGIC_VECTOR (width-1 downto 0)
		);
end counter_mod2n;

architecture Behavioral of counter_mod2n is
signal count : std_logic_vector(width-1 downto 0) := (others => '0');
begin
	q <= count;
	process (clk, reset_n) 
	begin
	   if reset_n='0' then 
		  count <= (others => '0');
	   elsif clk='1' and clk'event then
		  if en='1' then
			 count <= conv_std_logic_vector(conv_integer(count)+1, width);
		  end if;
	   end if;
	end process;
end Behavioral;

