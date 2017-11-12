LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

--Dichiarazione entity del testbench: nessuna porta (non sintetizzabile, quindi non presenta porte fisiche)
entity mux4_1_testbench is

end mux4_1_testbench;

architecture behavioral of mux4_1_testbench is

--Dichiarazione component per l'Unit Under Test (UUT)
component mux4_1 is
	Port ( SEL : in STD_LOGIC_VECTOR(1 downto 0);
		 A : in STD_LOGIC_VECTOR(3 downto 0);
		 X : out STD_LOGIC
	);
end component;

--Dichiarazione input ed inizializzazione
signal SEL : STD_LOGIC_VECTOR(1 downto 0) := "ZZ";
signal A : STD_LOGIC_VECTOR(3 downto 0) := "0000";
--Dichiarazione output ed inizializzazione
signal X : STD_LOGIC := '0';

begin
--Istanziazione dell'Unit Under Test
	uut: mux4_1 PORT MAP(SEL, A, X);

	--uut: mux2_1 port map(sel,a,b,x);

--Stimulus process
	stim_proc: process
	begin
		wait for 10 ns;
		A(0) <= '1';
		wait for 10 ns;
		SEL <= (others => '1');
		wait for 10 ns;
		assert (X = '1') report "X should be 1" severity note;

		A(0) <= '0';
		wait for 10 ns;
		A(1) <= '1';
		wait for 10 ns;
		SEL(0) <= '0';
		wait for 10 ns;
		assert (X = '1') report "X should be 1" severity note;

		A(1) <= '0';
		wait for 10 ns;
		A(3) <= '1';
		wait for 10 ns;
		SEL(1) <= '0';
		wait for 10 ns;
		assert (X = '1') report "X should be 1" severity note;

		A(3) <= '0';
		wait for 10 ns;
		A(2) <= '1';
		wait for 10 ns;
		SEL(0) <= '1';
		wait for 10 ns;
		assert (X = '1') report "X should be 1" severity note;
		A(2) <= '0';
		wait for 10 ns;
		SEL <= (others => 'Z');
		wait for 10 ns;

		A(3) <= '1', '0' after 10 ns;
		wait;
	end process;
END behavioral;