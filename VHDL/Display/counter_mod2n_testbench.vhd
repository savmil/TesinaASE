library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

entity counter_mod2n_testbench is
end counter_mod2n_testbench;

architecture behavioral of counter_mod2n_testbench is
component counter_mod2n is
	generic ( width : NATURAL := 4);
    Port ( en : in  STD_LOGIC;
           reset_n : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           q : out  STD_LOGIC_VECTOR(width-1 downto 0));
end component;

constant N : NATURAL := 2;
signal CLK : STD_LOGIC := '0';
signal ING : STD_LOGIC_VECTOR(1 downto 0) := (others => '0');
signal Q : STD_LOGIC_VECTOR(N-1 downto 0) := (others => '0');
constant clk_period : TIME := 10 ns;

begin
	uut : counter_mod2n
		generic map (N)
		port map ( en => ING(0),
					  reset_n => ING(1),
					  clk => CLK,
					  q => Q
					);
			
	clk_process : process
	begin
		CLK <= '0';
		wait for clk_period/2;
		CLK <= '1';
		wait for clk_period/2;
	end process;
   
	stimulus : process
	begin
		wait for 100 ns;
		wait for clk_period*10;
		
		for i in 0 to 3 loop
			ING <= std_logic_vector(to_unsigned(i, 2));
			wait for clk_period*5;
		end loop;
		
		ING(0) <= '0';
		wait for clk_period*5;
		ING(0) <= '1';
		wait for clk_period*5;
		ING(1) <= '0';
		wait for clk_period*5;
		wait;
	end process;
end behavioral;