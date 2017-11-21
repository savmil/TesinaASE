library ieee;
use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.numeric_std.all;

entity control_unit_testbench is
end control_unit_testbench;

architecture behavioral of control_unit_testbench is
component control_unit is
	generic ( N : natural := 4 );
	port ( input_block : in std_logic_vector (7 downto 0); --blocchi di 1 byte
		   load_block : in std_logic_vector (N-1 downto 0);
		   reset : in std_logic;
		   clock : in std_logic;
		   reg : out std_logic_vector (N*8-1 downto 0)
		  );
		   
end component;
constant N : natural := 2;
signal input_block : std_logic_vector (7 downto 0) := (others => '0');
signal load_block : std_logic_vector (N-1 downto 0) := (others => '0');
signal reset : std_logic := '0';
signal clk : std_logic := '0';
signal reg : std_logic_vector (N*8-1 downto 0) := (others => '0');
constant clk_period : time := 2 ns;
begin
	uut : control_unit
		generic map(N)
		port map(	input_block => input_block,
					load_block => load_block,
					reset => reset,
					clock => clk,
					reg => reg
				);
	
	clk_process : process
	begin
		for i in 0 to conv_integer(20*(2**N)) loop
			CLK <= '0';
			wait for clk_period/2;
			CLK <= '1';
			wait for clk_period/2;
		end loop;
		wait;
	end process;
	
	stimulus : process
	begin
		for i in 0 to conv_integer(2**N-1) loop
			load_block <= std_logic_vector(to_unsigned(i, N));
			input_block <= x"01";
			wait for 10 ns;
			input_block <= x"10";
			wait for 10 ns;
		end loop;
		reset <= '1';
		for i in 0 to conv_integer(2**N-1) loop
			load_block <= std_logic_vector(to_unsigned(i, N));
			input_block <= x"01";
			wait for 10 ns;
			input_block <= x"10";
			wait for 10 ns;
		end loop;
		wait;
	end process;
end behavioral;