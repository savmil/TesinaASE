library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;
use STD.TEXTIO.ALL;

entity edge_triggered_t_testbench is
end edge_triggered_t_testbench;

architecture behavioral of edge_triggered_t_testbench is
component edge_triggered_t is
    Port ( reset_n : in  STD_LOGIC;
           clock : in  STD_LOGIC;
           t : in  STD_LOGIC;
           q : out  STD_LOGIC
			 );
end component;
signal ING : STD_LOGIC_VECTOR(1 downto 0) := (others => '0');
signal CLK : STD_LOGIC := '0';
signal Q : STD_LOGIC := '0';
constant clock_period : time := 2 ns;
begin
	uut : edge_triggered_t 
		port map(
			t => ING(0),
			clock =>CLK,
			reset_n => ING(1),
			q => Q
		);
	
	clock_process : process
   begin
		for i in 0 to 75 loop
			CLK <= '0';
			wait for clock_period/2;
			CLK <= '1';
			wait for clock_period/2;
		end loop;
		wait;
   end process;
   
	stimulus : process
	variable l : line;
	begin
		write(l, String'("Testbench di edge_triggered_t"));
		writeline(output, l);
		--wait for 10 ns;
		for i in 0 to 3 loop
			ING <= conv_std_logic_vector(i, 2);
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