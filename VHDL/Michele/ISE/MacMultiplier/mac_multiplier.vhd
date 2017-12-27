library ieee;
use ieee.std_logic_1164.all;

entity mac_multiplier is
	generic(
		N : natural := 8;
		M : natural := 8
	);
	port(
		a : in std_logic_vector(N-1 downto 0);
		b : in std_logic_vector(M-1 downto 0);
		s_in : in std_logic_vector(N-1 downto 0);
		c_in : in std_logic_vector(M-1 downto 0);
		ris : out std_logic_vector(M+N-1 downto 0)
	);
end mac_multiplier;

architecture structural of mac_multiplier is

component mac_cell is
	port(
		x : in std_logic;
		y : in std_logic;
		c_in : in std_logic;
		s_in : in std_logic;
		c_out : out std_logic;
		s_out : out std_logic
	);
end component;

type matrix is array(M downto 0, N downto 0) of std_logic;
signal carry : matrix := (others => (others => '0'));-- riga M non usata
signal partial_sum : matrix := (others => (others => '0'));-- (0,0) non usato

begin
	inizializza_carry : for i in 0 to M-1 generate
		carry(i,0) <= c_in(i);
	end generate;
	inizializza_sum : for j in 0 to N-1 generate
		partial_sum(0,j+1) <= s_in(j);
	end generate;
	
	--partial_sum(1 to M,N) <= carry(0 to M-1, N);
	--ris <= partial_sum(M,N downto 0) & partial_sum(M-1 downto 1,0); strongly typed

	mac_matrix : for i in 0 to M-1 generate
		mac_row : for j in 0 to N-1 generate			
			mac : mac_cell
				port map(
					x => a(j),
					y => b(i),
					c_in => carry(i,j),
					s_in => partial_sum(i,j+1),
					c_out => carry(i,j+1),
					s_out => partial_sum(i+1,j)
				);
		end generate;
		partial_sum(i+1,N) <= carry(i,N);
		ris(i) <= partial_sum(i+1,0);
	end generate;
	
	risultato_completo : for z in 1 to N generate
		ris(z+M-1) <= partial_sum(M,z);
	end generate;
end structural;