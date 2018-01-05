library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity display_cu is
	 Generic ( freq_clock : NATURAL := 50000000;
				  freq_hit : NATURAL := 250
				 );
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
	Generic ( freq_clock : NATURAL := 50000000;
				 freq_hit : NATURAL := 250
				);
   Port ( rst_n : in  STD_LOGIC;
			 clock : in STD_LOGIC;
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

signal reset_n : STD_LOGIC := '1';
alias loader_values : STD_LOGIC_VECTOR(1 downto 0) is loader(1 downto 0);
alias loader_en_dots : STD_LOGIC is loader(2);
signal values_reg : STD_LOGIC_VECTOR(15 downto 0) := (others => '0');
signal en_dots_reg : STD_LOGIC_VECTOR(7 downto 0) := (others => '0');
alias dots_reg : STD_LOGIC_VECTOR(3 downto 0) is en_dots_reg(3 downto 0);
alias en_reg : STD_LOGIC_VECTOR(3 downto 0) is en_dots_reg(7 downto 4);
signal dots_cathode_values : STD_LOGIC_VECTOR(3 downto 0) := (others => '1');
signal anodes : STD_LOGIC_VECTOR(3 downto 0) := (others => '0');

begin
	reset_n <= not reset;
	dots_cathode_values <= not dots_reg;
	anodes_n <= not anodes;

	edge_triggered_lsbvalues : edge_triggered_d_n
		Generic map (width => 8)
		Port map (
						d => input_byte,
						clk => clock,
						reset_n => reset_n,
						en => loader_values(0),
						q => values_reg(7 downto 0)
					);
					
	edge_triggered_msbvalues : edge_triggered_d_n
		Generic map (width => 8)
		Port map (
						d => input_byte,
						clk => clock,
						reset_n => reset_n,
						en => loader_values(1),
						q => values_reg(15 downto 8)
					);

	edge_triggered_en_dots : edge_triggered_d_n
		Generic map (width => 8)
		Port map (
						d => input_byte,
						clk => clock,
						reset_n => reset_n,
						en => loader_en_dots,
						q => en_dots_reg
					);

	inst_display : display
		Generic map( freq_clock => freq_clock,
						 freq_hit => freq_hit
						)
		Port map(
					rst_n => reset_n,
					clock => clock,
					en => en_reg,
					values => values_reg,
					dots => dots_cathode_values,
					anodes => anodes,
					cathodes => cathodes
					);

end Structural;

