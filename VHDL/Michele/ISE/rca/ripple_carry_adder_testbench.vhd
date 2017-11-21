library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;

entity ripple_carry_adder_testbench is
end ripple_carry_adder_testbench;

architecture behavioral of ripple_carry_adder_testbench is
component ripple_carry_adder is
	generic(width : natural := 4);
	port(
		x : in std_logic_vector(width-1 downto 0);
		y : in std_logic_vector(width-1 downto 0);
		cin : in std_logic;
		cout : out std_logic;
		s : out std_logic_vector(width-1 downto 0)
	);
end component;
constant rca_width : natural := 4;
signal X : std_logic_vector(rca_width-1 downto 0) := (others => '0');
signal Y : std_logic_vector(rca_width-1 downto 0) := (others => '0');
signal CIN : std_logic := '0';
signal COUT : std_logic := '0';
signal S : std_logic_vector(rca_width-1 downto 0) := (others => '0');
begin
	uut : ripple_carry_adder generic map(rca_width)
		port map(X, Y, CIN, COUT, S);
	stimulus : process
	begin
		wait for 10 ns;
		for i in 0 to conv_integer(2**rca_width-1) loop
			X <= conv_std_logic_vector(i, rca_width);
			--wait for 10 ns;
			for j in 0 to conv_integer(2**rca_width-1) loop
				Y <= conv_std_logic_vector(j, rca_width);
				wait for 10 ns;
			end loop;
		end loop;
		CIN <= '1';
		--wait for 10 ns;
		for i in 0 to conv_integer(2**rca_width-1) loop
			X <= conv_std_logic_vector(i, rca_width);
			--wait for 10 ns;
			for j in 0 to conv_integer(2**rca_width-1) loop
				Y <= conv_std_logic_vector(j, rca_width);
				wait for 10 ns;
			end loop;
		end loop;		
		wait;
	end process;
end behavioral;