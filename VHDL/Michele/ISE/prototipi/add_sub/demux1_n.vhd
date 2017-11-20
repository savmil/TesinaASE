library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_unsigned.all;
use ieee.std_logic_arith.all;

entity demux1_n is
	generic(address_width : natural := 2);
	port(
		a : in std_logic;
		sel : in std_logic_vector(address_width-1 downto 0);
		x : out std_logic_vector(2**address_width-1 downto 0)
	);
end demux1_n;

--architecture behavioral of demux1_n is
--begin
	--main : process(a, sel)
	--begin
		--for i in 0 to 2**address_width-1 loop
			--if conv_integer(sel) = i then
				--x(i) <= a;
			--else
				--x(i) <= '0';
			--end if;
		--end loop;
	--end process;
--end behavioral;

--architecture behavioral of demux1_n is
--begin
	--main : process(a, sel)
	--begin
		--x <= (others => '0');
		--x(conv_integer(sel)) <= a;
	--end process;
--end behavioral;

architecture dataflow of demux1_n is
begin
	demux_gen : for i in 0 to conv_integer(2**address_width-1) generate
		x(i) <= a when conv_integer(sel) = i else '1';
	end generate;
end dataflow;