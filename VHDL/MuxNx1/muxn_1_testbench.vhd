LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE std.textio.ALL;
USE ieee.std_logic_arith.ALL;
USE ieee.std_logic_unsigned.ALL;

--Dichiarazione entity del testbench: nessuna porta (non sintetizzabile, quindi non presenta porte fisiche)
entity muxn_1_testbench is

end muxn_1_testbench;

architecture behavioral of muxn_1_testbench is

--Dichiarazione component per l'Unit Under Test (UUT)
component muxn_1 is
	generic(address_width : natural := 3);
	port (
		SEL : in STD_LOGIC_VECTOR(address_width-1 downto 0);
		 A : in STD_LOGIC_VECTOR(2**address_width-1 downto 0);
		 X : out STD_LOGIC
	);
end component;

--Dichiarazione input ed inizializzazione
constant mux_selection_length : natural := 2;
signal SEL : STD_LOGIC_VECTOR(mux_selection_length-1 downto 0) := (others => '0');
signal A : STD_LOGIC_VECTOR(2**mux_selection_length-1 downto 0) := (others => '0');
--Dichiarazione output ed inizializzazione
signal X : STD_LOGIC := '0';

begin
--Istanziazione dell'Unit Under Test
	uut: muxn_1 generic map(mux_selection_length) PORT MAP(
				A => A,
				SEL => SEL,
				X => X
			    );

--Stimulus process
	stim_proc: process
	variable l : line;
	begin
		write(l, String'("Testbench di muxn_1"));
		writeline(output, l);
		
		--wait for 10 ns;
		--SEL <= "0001";
		--A <= x"BABA";
		--1011101010111010
		--wait for 10 ns;
		--SEL <= "0010";
		--wait for 10 ns;
		--SEL <= "0111";
		--wait for 10 ns;
		--assert (X = '1') report "X should be 0" severity error;
		--A <= x"0000";
		--wait for 10 ns;
		
		for i in 0 to conv_integer(2**mux_selection_length-1) loop
			for j in 0 to conv_integer(2**(2**mux_selection_length)-1) loop
				wait for 10 ns;
				SEL <= conv_std_logic_vector(i, mux_selection_length);
				A <= conv_std_logic_vector(j, 2**mux_selection_length);
			end loop;
		end loop;
		wait for 10 ns;
		
		wait;
	end process;
END behavioral;