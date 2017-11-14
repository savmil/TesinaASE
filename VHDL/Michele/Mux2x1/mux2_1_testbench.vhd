LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

--Dichiarazione entity del testbench: nessuna porta (non sintetizzabile, quindi non presenta porte fisiche)
entity mux2_1_testbench is

end mux2_1_testbench;

architecture behavioral of mux2_1_testbench is

--Dichiarazione component per l'Unit Under Test (UUT)
component mux2_1 is
	Port ( SEL : in STD_LOGIC;
		 A : in STD_LOGIC;
		 B : in STD_LOGIC;
		 X : out STD_LOGIC
	);
end component;

--Dichiarazione input ed inizializzazione
signal SEL : STD_LOGIC := '0';
signal A : STD_LOGIC := '0';
signal B : STD_LOGIC := '0';
--Dichiarazione output ed inizializzazione
signal X : STD_LOGIC := '0';

begin
--Istanziazione dell'Unit Under Test
	uut: mux2_1 PORT MAP(
				A => A,
				B => B,
				SEL => SEL,
				X => X
			    );
	--uut: mux2_1 port map(sel,a,b,x);

--Stimulus process
	stim_proc: process
	begin
		wait for 10 ns;
		A <= '1';
		wait for 10 ns;
		SEL <= '1';
		wait for 10 ns;
		assert (X = '1') report "X should be 1" severity note;
		A <= '0';
		wait for 10 ns;
		B <= '1';
		wait for 10 ns;
		SEL <= 'Z';
		wait for 10 ns;

		A <= '1', '0' after 10 ns;
		wait;
	end process;
END behavioral;