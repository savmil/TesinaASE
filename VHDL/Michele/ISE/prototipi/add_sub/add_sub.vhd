library ieee;
use ieee.std_logic_1164.all;

entity add_sub is
	generic ( width : natural := 8 );
	port ( a : in std_logic_vector ( width-1 downto 0 );
		   b : in std_logic_vector ( width-1 downto 0 );
		   add_sub_n : in std_logic;
		   s : out std_logic_vector ( width-1 downto 0 );
		   cout : out std_logic;
		   overflow : out std_logic;
			underflow : out std_logic
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
	
	signal b_xor_add_sub : std_logic_vector ( width-1 downto 0 ) := (others => '0');
	signal sum : std_logic_vector ( width-1 downto 0 ) := (others => '0');
	
begin

--	XORfleet : for i in 0 to width-1 generate
--		b_xor_add_sub(i) <= b(i) xor add_sub_n;
--	end generate;
	
	with add_sub_n select
		b_xor_add_sub <= (not b) when '1',
								b when others; --gli altri casi della logica a 9 valori?
							
	
				  
	rca : ripple_carry_adder
		generic map ( width )
		port map ( x => a,
				   y => b_xor_add_sub,
				   cin => add_sub_n,
				   cout => cout,
				   s => sum
				  );
	overflow <= (not a(width-1)) and (not b_xor_add_sub(width-1)) and sum(width-1);
	underflow <= a(width-1) and b_xor_add_sub(width-1) and (not sum(width-1));
	s <= sum;
	
end structural;