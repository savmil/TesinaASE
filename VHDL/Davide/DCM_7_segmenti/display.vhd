----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:18:54 11/11/2017 
-- Design Name: 
-- Module Name:    display - Behavioral 
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

entity display is
--	Generic ( freq_clock : integer := 50000000;
--				 freq_hit : integer := 250
--				);
   Port ( rst_n : in  STD_LOGIC;
			 clock : in STD_LOGIC;
          en : in  STD_LOGIC_VECTOR (3 downto 0);
          values : in  STD_LOGIC_VECTOR (15 downto 0);
          dots : in  STD_LOGIC_VECTOR (3 downto 0);
          anodes : out  STD_LOGIC_VECTOR (3 downto 0);
          cathodes : out  STD_LOGIC_VECTOR (7 downto 0));
end display;

architecture structural of display is

component counter_mod_2n is
	generic ( width : natural := 2);
	port ( en : in  STD_LOGIC;
          reset_n : in  STD_LOGIC;
          clk : in  STD_LOGIC;
          q : out  STD_LOGIC_VECTOR (width-1 downto 0)
			);
end component;

component cathode_manager is
    Port ( counter : in STD_LOGIC_VECTOR (1 downto 0);
		     value : in STD_LOGIC_VECTOR (15 downto 0);
		     dots : in  STD_LOGIC_VECTOR (3 downto 0);
           cathodes : out  STD_LOGIC_VECTOR (7 downto 0)
		  );
end component;

component anodes_manager is
    Port ( counter : in STD_LOGIC_VECTOR (1 downto 0);
		     enable_digit : in  STD_LOGIC_VECTOR (3 downto 0);
           anodes : out  STD_LOGIC_VECTOR (3 downto 0)
		  );
end component;


signal hit : STD_LOGIC := '1';
signal sel: STD_LOGIC_VECTOR(1 downto 0) := (others => '0');

begin
	
	inst_counter : counter_mod_2n
		generic map ( width => 2 )
		port map ( en => hit,
					  reset_n => rst_n,
					  clk => clock,
					  q => sel
					 );
					 
	inst_cathode_manager : cathode_manager
		port map ( counter => sel,
					  value => values,
					  dots => dots,
					  cathodes => cathodes
					 );
					 
	inst_anode_manager : anodes_manager
		port map ( counter => sel,
					  enable_digit => en,
					  anodes => anodes
					 );

end structural;

