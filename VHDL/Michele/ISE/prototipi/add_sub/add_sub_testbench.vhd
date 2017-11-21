library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity add_sub_testbench is
end add_sub_testbench;

architecture behavioral of add_sub_testbench is
component add_sub is
	generic(width : natural := 8);
	port ( a : in std_logic_vector ( width-1 downto 0 );
		   b : in std_logic_vector ( width-1 downto 0 );
		   add_sub_n : in std_logic;
		   s : out std_logic_vector ( width-1 downto 0 );
		   cout : out std_logic;
		   overflow : out std_logic;
			underflow : out std_logic
		  );
end component;
constant add_sub_width : natural := 2;
signal X : std_logic_vector(add_sub_width-1 downto 0) := (others => '0');
signal Y : std_logic_vector(add_sub_width-1 downto 0) := (others => '0');
signal ADD_SUB_N : std_logic := '0';
signal COUT : std_logic := '0';
signal S : std_logic_vector(add_sub_width-1 downto 0) := (others => '0');
signal OFLW : std_logic := '0';
signal UFLW : std_logic := '0';
begin
	uut : add_sub generic map(add_sub_width) port map(X, Y, ADD_SUB_N, S, COUT, OFLW, UFLW);
	stimulus : process
	begin
		wait for 10 ns;
		for i in 0 to conv_integer(2**add_sub_width-1) loop
			X <= conv_std_logic_vector(i, add_sub_width);
			--wait for 10 ns;
			for j in 0 to conv_integer(2**add_sub_width-1) loop
				Y <= conv_std_logic_vector(j, add_sub_width);
				wait for 10 ns;
			end loop;
		end loop;
		ADD_SUB_N <= '1';
		--wait for 10 ns;
		for i in 0 to conv_integer(2**add_sub_width-1) loop
			X <= conv_std_logic_vector(i, add_sub_width);
			--wait for 10 ns;
			for j in 0 to conv_integer(2**add_sub_width-1) loop
				Y <= conv_std_logic_vector(j, add_sub_width);
				wait for 10 ns;
			end loop;
		end loop;		
		wait;
	end process;
end behavioral;