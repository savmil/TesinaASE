library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity edge_triggered is
    Port ( d : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           reset_n : in  STD_LOGIC;
           en : in  STD_LOGIC;
           q : out  STD_LOGIC);
end edge_triggered;

architecture Behavioral of edge_triggered is

begin
	main : process(d, clk, reset_n, en)
	begin
		if(reset_n = '0') then
			q <= '0';
		--elsif(en = '1' and clk='1' and clk' event) then
			elsif(en = '1' and rising_edge(clk)) then
				q <= d;
		end if;
	end process;

end Behavioral;

