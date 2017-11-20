library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity anode_manager is
    Port ( counter : in STD_LOGIC_VECTOR (1 downto 0);
		   en : in  STD_LOGIC_VECTOR (3 downto 0);
           anodes : out  STD_LOGIC_VECTOR (3 downto 0)
		  );
end anode_manager;

architecture structural of anode_manager is

component muxn_1 is
	generic(address_width : natural := 3);
	port (
		SEL : in STD_LOGIC_VECTOR(address_width-1 downto 0);
		 A : in STD_LOGIC_VECTOR(2**address_width-1 downto 0);
		 X : out STD_LOGIC
	);
end component;

component demux1_n is
	generic(address_width : natural := 2);
	port(
		a : in std_logic;
		sel : in std_logic_vector(address_width-1 downto 0);
		x : out std_logic_vector(2**address_width-1 downto 0)
	);
end component;

signal enable_anode : STD_LOGIC := '0';

begin
				 
	inst_mux4_1 : muxn_1
		generic map ( address_width => 2 )
		port map ( SEL => counter,
				   A => en,
				   X => enable_anode
				 );
					 
	inst_demux4_1 : demux1_n
		generic map ( address_width => 2 )
		port map ( sel => counter,
				   a => enable_anode,
				   x => anodes
				 );
	
end structural;