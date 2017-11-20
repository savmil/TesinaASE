----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    00:01:11 11/12/2017 
-- Design Name: 
-- Module Name:    display_on_board - Behavioral 
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

entity display_on_board is
	Generic ( freq_clock : integer := 50000000;
				 freq_hit : integer := 5000000
				);
    Port ( clock : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           load_lsb_value : in  STD_LOGIC;
           load_msb_value : in  STD_LOGIC;
           load_dots_enable : in  STD_LOGIC;
           in_byte : in  STD_LOGIC_VECTOR (7 downto 0);
--           value : out  STD_LOGIC_VECTOR (15 downto 0);
--           dots : out  STD_LOGIC_VECTOR (3 downto 0);
--           en : out  STD_LOGIC_VECTOR (3 downto 0));
           anodes : out  STD_LOGIC_VECTOR (3 downto 0);
           cathodes : out  STD_LOGIC_VECTOR (7 downto 0)
			 );
end display_on_board;

architecture Behavioral of display_on_board is

component edge_triggered_d_n is
	Generic ( width : NATURAL := 4);
    Port ( d : in  STD_LOGIC_VECTOR (width-1 downto 0);
           clk : in  STD_LOGIC;
           reset_n : in  STD_LOGIC;
           en : in  STD_LOGIC;
           q : out  STD_LOGIC_VECTOR (width-1 downto 0)
		   );
end component;

component display is
	Generic ( freq_clock : integer := 50000000;
				 freq_hit : integer := 250
				);
   Port ( rst_n : in  STD_LOGIC;
			 clock : in STD_LOGIC;
          en : in  STD_LOGIC_VECTOR (3 downto 0);
          values : in  STD_LOGIC_VECTOR (15 downto 0);
          dots : in  STD_LOGIC_VECTOR (3 downto 0);
          anodes : out  STD_LOGIC_VECTOR (3 downto 0);
          cathodes : out  STD_LOGIC_VECTOR (7 downto 0));
end component;

signal reset_n : STD_LOGIC := '1';
signal value_reg : STD_LOGIC_VECTOR (15 downto 0) := (others => '0');
--signal enable_reg : STD_LOGIC_VECTOR (3 downto 0) := (others => '0');
--signal dots_reg : STD_LOGIC_VECTOR (3 downto 0) := (others => '0');
signal dots_en_reg : STD_LOGIC_VECTOR (7 downto 0) := (others => '0');
signal en_n : STD_LOGIC_VECTOR (3 downto 0) := (others => '1');
signal dots_n : STD_LOGIC_VECTOR (3 downto 0) := (others => '1');

begin
	reset_n <= not reset;
	en_n <= not dots_en_reg(7 downto 4);
	dots_n <= not dots_en_reg(3 downto 0);

	inst_edge_triggered_lsb_value : edge_triggered_d_n
		generic map ( width => 8 )
		port map ( d => in_byte,
					  clk => clock,
					  reset_n => reset_n,
					  en => load_lsb_value,
					  q => value_reg(7 downto 0)
					 );

	inst_edge_triggered_msb_value : edge_triggered_d_n
		generic map ( width => 8 )
		port map ( d => in_byte,
					  clk => clock,
					  reset_n => reset_n,
					  en => load_msb_value,
					  q => value_reg(15 downto 8)
					 );

	inst_edge_triggered_dots_en : edge_triggered_d_n
		generic map ( width => 8 )
		port map ( d => in_byte,
					  clk => clock,
					  reset_n => reset_n,
					  en => load_lsb_value,
					  q => dots_en_reg
					 );
	
	
--	inst_edge_triggered_value : edge_triggered_d_n
--		generic map ( width => 16 )
--		port map ( d => value_reg,
--					  clk => clock,
--					  reset_n => reset_n,
--					  q => value
--					 );
--	
--	inst_edge_triggered_dots : edge_triggered_d_n
--		generic map ( width => 4 )
--		port map ( d => dots_reg,
--					  clk => clock,
--					  reset_n => reset_n,
--					  q => dots_n
--					 );
--					 
--	inst_edge_triggered_enable : edge_triggered_d_n
--		generic map ( width => 4 )
--		port map ( d => enable_reg,
--					  clk => clock,
--					  reset_n => reset_n,
--					  q => en_n
--					 );
--					  
--	
--	main : process(reset, clock)
--	begin
--		if (reset = '1') then
--			value_reg <= (others => '0');
--			enable_reg <= (others => '0');
--			dots_reg <= (others => '0');
--		elsif (rising_edge(clock)) then
--			if (load_dots_enable = '1') then
--				dots_reg <= in_byte (3 downto 0);
--				enable_reg <= in_byte (7 downto 4);
--			elsif (load_msb_value = '1') then
--				value_reg (15 downto 8) <= in_byte;
--			elsif (load_lsb_value = '1') then
--				value_reg (7 downto 0) <= in_byte;
--			end if;
--		end if;
--	end process;

	inst_display : display
		generic map( freq_clock => freq_clock,
						 freq_hit => freq_hit
						)
		port map ( clock => clock,
					  rst_n => reset_n,
					  values => value_reg,
					  dots => dots_n,
					  en => en_n,
					  anodes => anodes,
					  cathodes => cathodes
					 );

end Behavioral;

