----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:05:30 11/12/2017 
-- Design Name: 
-- Module Name:    display_top_level - structural 
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

entity display_top_level is
	Generic ( freq_clock : integer := 50000000;
				 freq_hit : integer := 250
				);
    Port ( clock : in  STD_LOGIC;
           reset : in  STD_LOGIC;
			  load_conf :in STD_LOGIC;
			  load_value : in STD_LOGIC; 
			  number: in STD_LOGIC_VECTOR (15 downto 0);
           in_byte : in  STD_LOGIC_VECTOR (7 downto 0);
           anodes : out  STD_LOGIC_VECTOR (3 downto 0);
           cathodes : out  STD_LOGIC_VECTOR (7 downto 0));
end display_top_level;

architecture structural of display_top_level is

component display_on_board is
    Port ( clock : in  STD_LOGIC;
           reset : in  STD_LOGIC;
			  load_conf :in STD_LOGIC;
			  load_value : in STD_LOGIC; 
			  number: in STD_LOGIC_VECTOR (15 downto 0);
           in_byte : in  STD_LOGIC_VECTOR (7 downto 0);
           value : out  STD_LOGIC_VECTOR (15 downto 0);
           dots : out  STD_LOGIC_VECTOR (3 downto 0);
           en : out  STD_LOGIC_VECTOR (3 downto 0));
end component;

component display is
--	Generic ( freq_clock : integer := 50000000;
--				 freq_hit : integer := 250
--				);
   Port ( rst_n : in  STD_LOGIC;
			 clock : in STD_LOGIC;
			 clockfx : in STD_LOGIC;
          en : in  STD_LOGIC_VECTOR (3 downto 0);
          values : in  STD_LOGIC_VECTOR (15 downto 0);
          dots : in  STD_LOGIC_VECTOR (3 downto 0);
          anodes : out  STD_LOGIC_VECTOR (3 downto 0);
          cathodes : out  STD_LOGIC_VECTOR (7 downto 0));
end component;
COMPONENT DCM_display
	PORT(
		CLKIN_IN : IN std_logic;
		RST_IN : IN std_logic;          
		CLKFX_OUT : OUT std_logic;
		CLK0_OUT : OUT std_logic;
		LOCKED_OUT : OUT std_logic
		);
	END COMPONENT;
signal value : STD_LOGIC_VECTOR (15 downto 0) := (others => '0');
signal dots : STD_LOGIC_VECTOR (3 downto 0) := (others => '1');
signal en : STD_LOGIC_VECTOR (3 downto 0) := (others => '1');
signal rst_n,clk0,clkfx : STD_LOGIC := '1';

begin
	rst_n <= not(reset);
	inst_on_board : display_on_board
		port map ( clock => clock,
					  reset => reset,
					  load_conf => load_conf,
					  load_value => load_value,
					  number => number,
					  in_byte => in_byte,
					  value => value,
					  dots => dots,
					  en => en
					 );
	 dcm_disp:	DCM_display
		port map ( CLKIN_IN => clock,
					  RST_IN => reset,     
					  CLKFX_OUT =>clkfx,
					  CLK0_OUT => clk0,
					  LOCKED_OUT =>open
					 );
	inst_display : display
--		generic map( freq_clock => freq_clock,
--						 freq_hit => freq_hit
--						)
		port map ( clock => clk0,
					  clockfx => clkfx,
					  rst_n => rst_n,
					  values => value,
					  dots => dots,
					  en => en,
					  anodes => anodes,
					  cathodes => cathodes
					 );


end structural;

