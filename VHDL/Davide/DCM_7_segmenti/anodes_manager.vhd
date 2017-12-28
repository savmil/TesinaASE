----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    17:31:11 11/13/2017 
-- Design Name: 
-- Module Name:    anodes_manager - Structural 
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

entity anodes_manager is
    Port ( counter : in  STD_LOGIC_VECTOR (1 downto 0);
           enable_digit : in  STD_LOGIC_VECTOR (3 downto 0);
           anodes : out  STD_LOGIC_VECTOR (3 downto 0));
end anodes_manager;

architecture Structural of anodes_manager is

	component muxn_1 is
		generic(address_width : natural := 3);
		Port( sel : in std_logic_vector(address_width-1 downto 0);
				a : in std_logic_vector(2**address_width-1 downto 0);
				x : out std_logic
		);
	end component;

	component demux1_n is
		generic(address_width : natural := 2);
		port(	a : in std_logic;
				sel : in std_logic_vector(address_width-1 downto 0);
				x : out std_logic_vector(2**address_width-1 downto 0)
		);
	end component;

signal enable : std_logic := '1';
begin
	inst_mux4_1: muxn_1 generic map(address_width => 2)
		Port map( sel => counter,
					 a => enable_digit,
					 x => enable
		);
		
	inst_demux1_4: demux1_n generic map(address_width => 2)
		Port map( sel => counter,
					 a => enable,
					 x => anodes
		);

end Structural;

