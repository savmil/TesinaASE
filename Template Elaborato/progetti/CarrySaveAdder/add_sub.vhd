library ieee;
use ieee.std_logic_1164.all;

entity add_sub is
	port ( a : in std_logic_vector ( 2 downto 0 );
		   b : in std_logic_vector ( 2 downto 0 );
		   add_sub_n : in std_logic;
		   s : out std_logic_vector ( 2 downto 0 );
		   cout : out std_logic;
		   overflow : out std_logic
		  );
end add_sub;

architecture structural of add_sub is

	COMPONENT carry_save_adder
	PORT(
		adder : IN std_logic_vector(5 downto 0);          
		sum : OUT std_logic_vector(2 downto 0);
		cout : OUT std_logic
		);
	END COMPONENT;	
	signal b_add_sub : std_logic_vector ( 2 downto 0 ) := (others => '0');
	signal val: std_logic_vector(5 downto 0):= (others =>'0');
	signal sum : std_logic_vector ( 2 downto 0 ) := (others => '0');
	
begin

	XORfleet : for i in 0 to 2 generate
		b_add_sub(i) <= b(i) xor add_sub_n ;
	end generate;
	val(5 downto 3)<=a;
	with add_sub_n select val(2 downto 0) <=
		b 	when '0',
		b_add_sub when '1',
		"000"	when others ;
	c_s_a : carry_save_adder port map(val,sum,cout);
	overflow <= (a(2) and b_add_sub(2) and (not sum(2))) or ((not a(2)) and (not b_add_sub(2)) and sum(2));
	s <= sum;
	
end structural;