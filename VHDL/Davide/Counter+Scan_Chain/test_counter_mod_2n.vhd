----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:18:23 11/20/2017 
-- Design Name: 
-- Module Name:    test_counter_mod_2n - Behavioral 
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

entity test_counter_mod_2n is
	 generic( num: natural := 4);
    Port ( scan_in : in  STD_LOGIC;
           clk : in  STD_LOGIC;
           scan_en : in  STD_LOGIC;
			  en : in  STD_LOGIC;
           reset_n : in  STD_LOGIC;
           counter_en : in  STD_LOGIC;
           scan_out : out  STD_LOGIC;
			  dout : out std_logic_vector(num-1 downto 0)
			  );
end test_counter_mod_2n;

architecture Structural of test_counter_mod_2n is

	component boundary_scan_chain is
		generic(n : natural := 4);
		Port ( scan_in : in STD_LOGIC;
				 clk : in  STD_LOGIC;
				 reset_n : in STD_LOGIC;
				 en : in  STD_LOGIC;
				 din : in  STD_LOGIC_VECTOR (n-1 downto 0);
				 scan_en : in  STD_LOGIC;
				 scan_out : out  STD_LOGIC;
				 dout : out  STD_LOGIC_VECTOR (n-1 downto 0)
		);
	end component;
	
	component counter_mod_2n is
		generic(width : natural := 2);
		Port ( en  : in  STD_LOGIC;
				 reset_n : in  STD_LOGIC;
				 clk : in  STD_LOGIC;
				 q : out  STD_LOGIC_VECTOR (width-1 downto 0)
		);
	end component;

--signal scan_in : std_logic := '0';
--signal i : integer := 0;
signal counter_out : STD_LOGIC_VECTOR (num-1 downto 0) := (others =>'0');

begin

	inst_counter: counter_mod_2n generic map(width => num)
		Port map( en => counter_en,
					 reset_n => reset_n,
					 clk => clk,
					 q => counter_out
		);
		
	inst_chain: boundary_scan_chain generic map(n => num)
		Port map( scan_in => scan_in,
					 clk => clk,
					 reset_n => reset_n,
					 en => en,
					 din => counter_out,
					 scan_en => scan_en,
					 scan_out => scan_out,
					 dout => dout
		);

end Structural;

