library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity cathode_manager is
    Port ( counter : in STD_LOGIC_VECTOR (1 downto 0);
		   values : in STD_LOGIC_VECTOR (15 downto 0);
		   dots : in  STD_LOGIC_VECTOR (3 downto 0);
           cathodes : out  STD_LOGIC_VECTOR (7 downto 0)
		  );
end cathode_manager;

architecture structural of cathode_manager is

component muxn_1 is
	generic(address_width : natural := 3);
	port (
		SEL : in STD_LOGIC_VECTOR(address_width-1 downto 0);
		 A : in STD_LOGIC_VECTOR(2**address_width-1 downto 0);
		 X : out STD_LOGIC
	);
end component;

component cathode_encoder is
    Port ( nibble : in  STD_LOGIC_VECTOR (3 downto 0);
           cathodes : out  STD_LOGIC_VECTOR (6 downto 0)
		);
end component;

signal nibble : STD_LOGIC_VECTOR (3 downto 0) := (others => '0');
signal in_mux : STD_LOGIC_VECTOR (15 downto 0) := (others => '0');

begin
	
	inst_mux_all : for i in 0 to 3 generate
		in_mux((i*4+3) downto i*4) <= (values(i+12), values(i+8), values(i+4), values(i));
		inst_mux4_1 : muxn_1
			generic map ( address_width => 2 )
			port map ( SEL => counter,
					   A => in_mux((i*4+3) downto i*4),
					   X => nibble(i)
					 );
	end generate;
	
	inst_encoder : cathode_encoder
		port map ( nibble => nibble,
				   cathodes => cathodes (6 downto 0)
				 );
				 
	inst_dots_manager : muxn_1
		generic map ( address_width => 2 )
			port map ( SEL => counter,
					   A => dots,
					   X => cathodes(7)
					 );
	
end structural;