--Multiplexer N a 1

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity muxn_1 is
	generic(address_width : natural := 3);
	port (
		SEL : in STD_LOGIC_VECTOR(address_width-1 downto 0);
		 A : in STD_LOGIC_VECTOR(2**address_width-1 downto 0);
		 X : out STD_LOGIC
	);
end muxn_1;


architecture dataflow of muxn_1 is

begin
	
	X <= A(conv_integer(SEL));

end dataflow;

--architecture behavioral of muxn_1 is
--begin
	--main : process(a,sel)
	--variable index : integer;
	--begin
		--for i in 0 to address_width-1 loop
			--index=index+SEL(i)*(2**i);
		--end loop;
		--X <= A(index);
	--end process;
--end architecture;