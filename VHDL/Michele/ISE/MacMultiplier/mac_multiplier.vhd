library ieee;
use ieee.std_logic_1164.all;

entity mac_multiplier is
	generic(
		N : natural := 4;
		M : natural := 4
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
		carry(i,0) <= c_in(i); -- setto i carry in ingresso pari a cin, per moltiplicare li dovrei settare a 0
	end generate;
	inizializza_sum : for j in 0 to N-1 generate
		partial_sum(0,j+1) <= s_in(j); -- le prime cell mac della riga non hanno in ingresso una somma parzia
	end generate;
	
	
	mac_matrix : for i in 0 to M-1 generate -- si genera una riga, si gestiscono le somme parziali e i carry in uscita
		mac_row : for j in 0 to N-1 generate -- dopodichè si procede alla successiva riga	
			mac : mac_cell
				port map(
					x => a(j),-- posiziona i bit di un operando sulla colonna
					y => b(i), -- posiziona i bit di un operando su una righa
					c_in => carry(i,j),-- i carry in ingresso di uno stadio precedente per i primi mac di riga e colonna pari a 0
					s_in => partial_sum(i,j+1), -- somma parziale ottenuta da uno stadio precedente
					c_out => carry(i,j+1), -- carry in uscita per la prossima cella mac
					s_out => partial_sum(i+1,j) -- somma in uscita per il successivo carry
				);
		end generate;
		partial_sum(i+1,N) <= carry(i,N); -- riporto i carry in uscita presenti all' ultima colonna di ogni riga come somma parziale in ingresso
		ris(i) <= partial_sum(i+1,0); -- i primi bit della moltiplicazione risultano dalla somma parziale in uscita dai primi elementi in colonna di ogni riga
	end generate;
	
	risultato_completo : for z in 1 to N generate
		ris(z+M-1) <= partial_sum(M,z);-- gli ultimi valori di prodotto sono dati dai valori di somma partiale dell' ultima riga
	end generate;
end structural;