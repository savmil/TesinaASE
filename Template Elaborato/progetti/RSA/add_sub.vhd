library ieee;
use ieee.std_logic_1164.all;

entity add_sub is
	generic ( width : natural := 8 );
	port ( a : in std_logic_vector ( width-1 downto 0 );
		   b : in std_logic_vector ( width-1 downto 0 );
		   add_sub_n : in std_logic;
		   s : out std_logic_vector ( width-1 downto 0 );
		   cout : out std_logic;
		   overflow : out std_logic
		  );
end add_sub;

architecture structural of add_sub is

	component ripple_carry_adder is
		generic(width : natural := 8);
		port(
			x : in std_logic_vector(width-1 downto 0);
			y : in std_logic_vector(width-1 downto 0);
			cin : in std_logic;
			cout : out std_logic;
			s : out std_logic_vector(width-1 downto 0)
		);
	end component;
	
	signal b_add_sub : std_logic_vector ( width-1 downto 0 ) := (others => '0');
	signal sum : std_logic_vector ( width-1 downto 0 ) := (others => '0');
	
begin

	XORfleet : for i in 0 to width-1 generate
		b_add_sub(i) <= b(i) xor add_sub_n;
	end generate;
	-- attenzione i numeri sono considerati in complementaoa 2 quindi nel caso d due bit 11 è -2 se si effettua la sottrazione diventa 2
	-- overflow indica che il numero non deve essere considerato
	rca : ripple_carry_adder
		generic map ( width )
		port map ( x => a,
				   y => b_add_sub,
				   cin => add_sub_n,
				   cout => cout,
				   s => sum
				  );
	overflow <= (a(width-1) and b_add_sub(width-1) and (not sum(width-1))) or ((not a(width-1)) and (not b_add_sub(width-1)) and sum(width-1));
	s <= sum;
	
end structural;