library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use STD.TEXTIO.ALL;

entity edge_triggered_testbench is
end edge_triggered_testbench;

architecture behavioral of edge_triggered_testbench is
component edge_triggered is
    Port ( d : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           reset_n : in  STD_LOGIC;
           en : in  STD_LOGIC;
           q : out  STD_LOGIC
		);
end component;
signal ING : STD_LOGIC_VECTOR(2 downto 0) := (others => '0');
signal CLK : STD_LOGIC := '0';
signal Q : STD_LOGIC := '0';
constant clk_period : time := 2 ns;
begin
	uut : edge_triggered 
		port map(
			d => ING(0),
			clk =>CLK,
			reset_n => ING(2),
			en => ING(1),
			q => Q
		);
	
	clk_process : process
   begin
		for i in 0 to 75 loop
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
		for i in 0 to 7 loop
			ING <= conv_std_logic_vector(i, 3);
			wait for 10 ns;
		end loop;
		for i in 0 to 5 loop
			ING(0) <= '0';
			wait for 5 ns;
			ING(0) <= '1';
			wait for 5 ns;
		end loop;
		wait;
	end process;
end behavioral;