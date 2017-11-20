library ieee;
use ieee.std_logic_1164.all;

entity control_unit is
	generic ( N : natural := 4 );
	port ( input_block : in std_logic_vector (7 downto 0); --blocchi di 1 byte
		   load_block : in std_logic_vector (N-1 downto 0);
		   reset : in std_logic;
		   clock : in std_logic;
		   reg : out std_logic_vector (N*8-1 downto 0)
		  );
		   
end control_unit;

architecture behavioral of control_unit is
begin
	main : process(reset, clock)
	begin
		if (reset = '1') then
			reg <= (others => '0');
		elsif (rising_edge(clock)) then
			for i in 0 to N-1 loop
				if (load_block(i) = '1') then
					reg(8*i+7 downto i*8) <= input_block;
				end if;
			end loop;
		end if;
	end process;
end behavioral;