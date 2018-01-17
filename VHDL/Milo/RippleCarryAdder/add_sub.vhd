library ieee;
use ieee.std_logic_1164.all;

entity add_sub is
	generic ( width : natural := 8 );
	port ( a : in std_logic_vector ( width-1 downto 0 );
		   b : in std_logic_vector ( width-1 downto 0 );
		   add_sub_n : in std_logic;
			carry_in: in std_logic;
		   s : out std_logic_vector ( width-1 downto 0 );
		   cout : out std_logic;
		   overflow : out std_logic
		  );
end add_sub;

architecture structural of add_sub is

	COMPONENT RippleCarryAdder is 
	 generic ( N : natural:= 8);
    Port ( adder1 : in  STD_LOGIC_VECTOR(N-1 downto 0);
           adder2 : in  STD_LOGIC_VECTOR(N-1 downto 0);
			  cin: in STD_LOGIC;
           sum : out  STD_LOGIC_VECTOR(N-1 downto 0);
           last_carry : out  STD_LOGIC);
	end COMPONENT;
	
	signal b_add_sub,b_add : std_logic_vector ( width-1 downto 0 ) := (others => '0');
	signal ca: std_logic;
	signal sum : std_logic_vector ( width-1 downto 0 ) := (others => '0');
	
begin

	XORfleet : for i in 0 to width-1 generate
		b_add_sub(i) <= b(i) xor add_sub_n ;
	end generate;
	with add_sub_n select b_add <=
		b 	when '0',
		b_add_sub when '1',
		x"00"	when others ;
	with add_sub_n select ca <=
		carry_in when '0',
		'1' when '1',
		'0'	when others;
	r_c_a : RippleCarryAdder port map(a,b_add,ca,sum,cout);
	overflow <= (a(width-1) and b_add_sub(width-1) and (not sum(width-1))) or ((not a(width-1)) and (not b_add_sub(width-1)) and sum(width-1));
	s <= sum;
	
end structural;