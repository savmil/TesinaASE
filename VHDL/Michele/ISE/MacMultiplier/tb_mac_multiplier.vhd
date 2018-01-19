library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;

entity tb_mac_multiplier is
end tb_mac_multiplier;

architecture behavioral of tb_mac_multiplier is
component mac_multiplier is
	--generic(
	--	N : natural := 8;
	--	M : natural := 8
	--);
	port(
		a : in std_logic_vector(4-1 downto 0);
		b : in std_logic_vector(4-1 downto 0);
		s_in : in std_logic_vector(4-1 downto 0);
		c_in : in std_logic_vector(4-1 downto 0);
		ris : out std_logic_vector(4+4-1 downto 0)
	);
end component;
constant column : natural := 4;
constant row : natural := 4;
signal A : std_logic_vector(column-1 downto 0) := (others => '0');
signal SIN : std_logic_vector(column-1 downto 0) := (others => '0');
signal B : std_logic_vector(row-1 downto 0) := (others => '0');
signal CIN : std_logic_vector(row-1 downto 0) := (others => '0');
signal RIS : std_logic_vector(row+column-1 downto 0) := (others => '0');
begin
	uut : mac_multiplier
		--generic map(
		--	column,
		--	row
		--)
		port map(
			a => A,
			b => B,
			c_in => CIN,
			s_in => SIN,
			ris => RIS
		);
	stimulus : process
	begin
		--for i in 0 to 2**column-1 loop
			A <= "0111";
			--for j in 0 to 2**row-1 loop
				B <= "0011";
				--wait for 10 ns;
			--end loop;
		--end loop;
		wait;
	end process;
end behavioral;