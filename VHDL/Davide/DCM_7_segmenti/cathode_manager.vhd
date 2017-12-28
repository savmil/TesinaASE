----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    13:50:20 11/13/2017 
-- Design Name: 
-- Module Name:    cathode_manager - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity cathode_manager is
    Port ( counter : in  STD_LOGIC_VECTOR (1 downto 0);
           value : in  STD_LOGIC_VECTOR (15 downto 0);
           dots : in  STD_LOGIC_VECTOR (3 downto 0);
           cathodes : out  STD_LOGIC_VECTOR (7 downto 0));
end cathode_manager;

architecture Structural of cathode_manager is

	component muxn_1 is
		generic(address_width : natural := 3);
		Port( sel : in std_logic_vector(address_width-1 downto 0);
				a : in std_logic_vector(2**address_width-1 downto 0);
				x : out std_logic
		);
	end component;
		
	component cathode_encoder is
		Port ( nibble : in  STD_LOGIC_VECTOR (3 downto 0);
				 cathodes : out  STD_LOGIC_VECTOR (6 downto 0)
		);
	end component;

signal mux_in : std_logic_vector(15 downto 0) := (others => '0');
signal nibble : std_logic_vector(3 downto 0) := (others => '0');

begin
	gen_mux: for i in 0 to 3 generate
		mux_in((i*4+3) downto i*4) <= (value(i+12), value(i+8), value(i+4), value(i));
		inst_mux4_1: muxn_1 generic map(address_width => 2) 
			Port map( sel => counter,
						 a => mux_in(i*4+3 downto i*4),
						 x => nibble(i)
			);
	end generate;
	
	inst_cathode_encoder: cathode_encoder 
		Port map( nibble => nibble,
					 cathodes => cathodes(6 downto 0)
		);
	
	inst_dots: muxn_1 generic map(address_width => 2)
		Port map( sel => counter,
					 a => dots,
					 x => cathodes(7)
		);

end Structural;

