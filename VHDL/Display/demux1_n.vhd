library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_UNSIGNED.ALL;

entity demux1_n is
	generic(address_width : natural := 2);
	port(
		a : in STD_LOGIC;
		sel : in STD_LOGIC_VECTOR(address_width-1 downto 0);
		x : out STD_LOGIC_VECTOR(2**address_width-1 downto 0)
	);
end demux1_n;

architecture behavioral1 of demux1_n is
begin
	main : process(a, sel)
	begin
		for i in 0 to 2**address_width-1 loop
			if conv_integer(sel) = i then
				x(i) <= a;
			else
				x(i) <= '1';
			end if;
		end loop;
	end process;
end behavioral1;

architecture behavioral2 of demux1_n is
begin
	main : process(a, sel)
	begin
		x <= (others => '1');
		x(conv_integer(sel)) <= a;
	end process;
end behavioral2;

architecture dataflow of demux1_n is
begin
	demux_gen : for i in 0 to 2**address_width-1 generate
		x(i) <= a when conv_integer(sel) = i
					 else '1';
	end generate;
end dataflow;