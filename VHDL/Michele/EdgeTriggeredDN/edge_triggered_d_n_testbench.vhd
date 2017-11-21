library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use STD.TEXTIO.ALL;

entity edge_triggered_d_n_testbench is
end edge_triggered_d_n_testbench;

architecture behavioral of edge_triggered_d_n_testbench is
component edge_triggered_d_n is
	Generic ( width : NATURAL := 4);
    Port ( d : in  STD_LOGIC_VECTOR (width-1 downto 0);
           clk : in  STD_LOGIC;
           reset_n : in  STD_LOGIC;
           en : in  STD_LOGIC;
           q : out  STD_LOGIC_VECTOR (width-1 downto 0)
		);
end component;
constant N : NATURAL := 2;
signal RES_EN : STD_LOGIC_VECTOR(1 downto 0) := (others => '0');
signal D : STD_LOGIC_VECTOR(N-1 downto 0) := (others => '0');
signal CLK : STD_LOGIC := '0';
signal Q : STD_LOGIC_VECTOR (N-1 downto 0) := (others => '0');
constant clk_period : time := 2 ns;
begin
	uut : edge_triggered_d_n
		generic map(N)
		port map(
			d => D,
			clk =>CLK,
			reset_n => RES_EN(1),
			en => RES_EN(0),
			q => Q
		);
	
	clk_process : process
   begin
		for i in 0 to conv_integer(10*(2**N+5)) loop
			CLK <= '0';
			wait for clk_period/2;
			CLK <= '1';
			wait for clk_period/2;
		end loop;
		wait;
   end process;
   
	stimulus : process
	variable l : line;
	begin
		write(l, String'("Testbench di edge_triggered"));
		writeline(output, l);
		--wait for 10 ns;
		for i in 0 to 3 loop
			RES_EN <= conv_std_logic_vector(i, 2);
			--wait for 10 ns;
			for j in 0 to conv_integer(2**N-1) loop
				D <= conv_std_logic_vector(j, N);
				wait for 10 ns;
			end loop;
		end loop;
		RES_EN(1) <= '0';
		wait for 10 ns;
		wait;
	end process;
end behavioral;