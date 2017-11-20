library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity edge_triggered_d_n is
	Generic ( width : NATURAL := 4);
    Port ( d : in  STD_LOGIC_VECTOR (width-1 downto 0);
           clk : in  STD_LOGIC;
           reset_n : in  STD_LOGIC;
			  en : in STD_LOGIC;
           q : out  STD_LOGIC_VECTOR (width-1 downto 0)
		   );
end edge_triggered_d_n;

architecture Behavioral of edge_triggered_d_n is

begin
	main : process(clk, reset_n)
	begin
		if(reset_n = '0') then
			q <= (others => '0');
		--elsif(en = '1' and clk='1' and clk' event) then
		elsif(rising_edge(clk) and en='1') then
			q <= d;
		end if;
	end process;

end Behavioral;

