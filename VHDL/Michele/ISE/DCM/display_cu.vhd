----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:44:08 01/04/2018 
-- Design Name: 
-- Module Name:    display_cu - Structural 
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

entity display_cu is
--	 Generic ( freq_clock : NATURAL := 50000000;
--				  freq_hit : NATURAL := 250
--				 );
    Port ( clock : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           loader : in  STD_LOGIC_VECTOR (2 downto 0);
           input_byte : in  STD_LOGIC_VECTOR (7 downto 0);
           anodes_n : out  STD_LOGIC_VECTOR (3 downto 0);
           cathodes : out  STD_LOGIC_VECTOR (7 downto 0)
			 );
end display_cu;

architecture Structural of display_cu is

component display is
--	Generic ( freq_clock : NATURAL := 50000000;
--				 freq_hit : NATURAL := 250
--				);
   Port ( rst_n : in  STD_LOGIC;
			 clock : in STD_LOGIC;
			 clockfx : in STD_LOGIC;
          en : in  STD_LOGIC_VECTOR (3 downto 0);
          values : in  STD_LOGIC_VECTOR (15 downto 0);
          dots : in  STD_LOGIC_VECTOR (3 downto 0);
          anodes : out  STD_LOGIC_VECTOR (3 downto 0);
          cathodes : out  STD_LOGIC_VECTOR (7 downto 0)
			);
end component;

component edge_triggered_d_n is
	Generic ( width : NATURAL := 4);
    Port ( d : in  STD_LOGIC_VECTOR (width-1 downto 0);
           clk : in  STD_LOGIC;
           reset_n : in  STD_LOGIC;
           en : in  STD_LOGIC;
           q : out  STD_LOGIC_VECTOR (width-1 downto 0)
		   );
end component;
			
	COMPONENT dcm
	PORT(
		CLKIN_IN : IN std_logic;
		RST_IN : IN std_logic;          
		CLKFX_OUT : OUT std_logic;
		CLK0_OUT : OUT std_logic;
		LOCKED_OUT : OUT std_logic
		);
	END COMPONENT;

signal reset_n : STD_LOGIC := '1';
alias loader_values : STD_LOGIC_VECTOR(1 downto 0) is loader(1 downto 0);
alias loader_en_dots : STD_LOGIC is loader(2);
signal values_reg : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
signal en_dots_reg : STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
alias dots_reg : STD_LOGIC_VECTOR(3 downto 0) is en_dots_reg(3 downto 0);
alias en_reg : STD_LOGIC_VECTOR(3 downto 0) is en_dots_reg(7 downto 4);
signal dots_cathode_values : STD_LOGIC_VECTOR(3 downto 0) := (others => '1');
signal anodes : STD_LOGIC_VECTOR(3 downto 0) := (others => '0');
signal clk0 : STD_LOGIC := '0';
signal clkfx : STD_LOGIC := '0';

begin
	reset_n <= not reset;
	dots_cathode_values <= not dots_reg;
	anodes_n <= anodes;
	
	digital_clock_manager: dcm PORT MAP(
		CLKIN_IN => clock,
		RST_IN => reset,
		CLKFX_OUT => clkfx,
		CLK0_OUT => clk0,
		LOCKED_OUT => open
	);

	edge_triggered_lsbvalues : edge_triggered_d_n
		Generic map (width => 8)
		Port map (
						d => input_byte,
						clk => clk0,
						reset_n => reset_n,
						en => loader(0),
						q => values_reg(7 downto 0)
					);
					
	edge_triggered_msbvalues : edge_triggered_d_n
		Generic map (width => 8)
		Port map (
						d => input_byte,
						clk => clk0,
						reset_n => reset_n,
						en => loader(1),
						q => values_reg(15 downto 8)
					);

	edge_triggered_en_dots : edge_triggered_d_n
		Generic map (width => 8)
		Port map (
						d => input_byte,
						clk => clk0,
						reset_n => reset_n,
						en => loader_en_dots,
						q => en_dots_reg
					);

	inst_display : display
--		Generic map( freq_clock => freq_clock,
--						 freq_hit => freq_hit
--						)
		Port map(
					rst_n => reset_n,
					clock => clk0,
					clockfx => clkfx,
					en => en_reg,
					values => values_reg,
					dots => dots_cathode_values,
					anodes => anodes,
					cathodes => cathodes
					);

end Structural;

