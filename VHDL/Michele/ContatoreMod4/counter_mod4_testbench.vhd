library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.STD_LOGIC_ARITH.ALL;

entity counter_mod4_testbench is
end counter_mod4_testbench;

architecture behavioral of counter_mod4_testbench is
component counter_mod4 is
    Port ( en : in  STD_LOGIC;
           reset_n : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           q : out  STD_LOGIC_VECTOR (1 downto 0));
end component;

signal CLK : STD_LOGIC := '0';
signal ING : STD_LOGIC_VECTOR(1 downto 0) := (others => '0');
signal Q : STD_LOGIC_VECTOR(1 downto 0) := (others => '0');
constant clk_period : time := 2 ns;

begin
	uut : counter_mod4 
		port map ( en => ING(0),
			   reset_n => ING(1),
			   clk => CLK,
			   q => Q
			);
			
	clk_process : process
	begin
		for i in 0 to 50 loop
			CLK <= '0';
			wait for clk_period/2;
			CLK <= '1';
			wait for clk_period/2;
		end loop;
		wait;
	end process;
   
	stimulus : process
	begin
		for i in 0 to 3 loop
			ING <= conv_std_logic_vector(i, 2);
			wait for 10 ns;
		end loop;
		wait for 20 ns;
		ING(0) <= '0';
		wait for 10 ns;
		ING(0) <= '1';
		wait for 20 ns;
		ING(1) <= '0';
		wait for 10 ns;
		wait;
	end process;
end behavioral;