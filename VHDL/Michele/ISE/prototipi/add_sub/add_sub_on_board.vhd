----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    18:29:53 11/18/2017 
-- Design Name: 
-- Module Name:    add_sub_on_board - Behavioral 
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

entity add_sub_on_board is
    Port (	clock : in  STD_LOGIC;
				reset : in  STD_LOGIC;
				load_a : in STD_LOGIC;
				load_b : in STD_LOGIC;
				add_sub_n : in STD_LOGIC;
				in_byte : in  STD_LOGIC_VECTOR (7 downto 0);
				overflow : out STD_LOGIC;
				underflow : out STD_LOGIC;
				anodes : out  STD_LOGIC_VECTOR (3 downto 0);
				cathodes : out  STD_LOGIC_VECTOR (7 downto 0)
			 );
end add_sub_on_board;

architecture structural of add_sub_on_board is

--Ma alla fine sta control unit è solo un componente in più che nasconde la logica.
--Non stiamo facendo programmazione ad oggetti, quindi meglio riusare direttamente
--gli edge triggered che già sono pronti e testati. Per la leggibilità è meglio avere
--un registro per ogni ingresso, piuttosto che dare un solo registrone alla CU.

--component control_unit is
--	generic ( N : natural := 2 );
--	port ( input_block : in std_logic_vector (7 downto 0);
--		   load_block : in std_logic_vector (N-1 downto 0);
--		   reset : in std_logic;
--		   clock : in std_logic;
--		   reg : out std_logic_vector (N*8-1 downto 0)
--		  );
--		   
--end component;


component edge_triggered_d_n is
	Generic ( width : NATURAL := 8);
    Port ( d : in  STD_LOGIC_VECTOR (width-1 downto 0);
           clk : in  STD_LOGIC;
           reset_n : in  STD_LOGIC;
			  en : in STD_LOGIC;
           q : out  STD_LOGIC_VECTOR (width-1 downto 0)
		   );
end component;

component add_sub is
	generic ( width : natural := 8 );
	port ( a : in std_logic_vector ( width-1 downto 0 );
		   b : in std_logic_vector ( width-1 downto 0 );
		   add_sub_n : in std_logic;
		   s : out std_logic_vector ( width-1 downto 0 );
		   cout : out std_logic;
		   overflow : out std_logic;
			underflow : out std_logic
		  );
end component;

component display is
	Generic ( freq_clock : integer := 50000000;
				 freq_hit : integer := 5000000
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



--constant num_block : natural := 2;
--signal load_block : STD_LOGIC_VECTOR ( num_block-1 downto 0 ) := (others => '0');
--signal reg : STD_LOGIC_VECTOR ( 8*num_block-1 downto 0 ) := (others => '0');

signal a : std_logic_vector ( 7 downto 0 ) := (others => '0');
signal b : std_logic_vector ( 7 downto 0 ) := (others => '0');
signal s : std_logic_vector ( 7 downto 0 ) := (others => '0');
signal carry : std_logic := '0';
signal reset_n : std_logic := '1';
constant freq_clock : integer := 50000000;
constant freq_hit : integer := 5000000;
signal values : std_logic_vector (15 downto 0) := (others => '0');

begin

--	load_block <= (load_b, load_a);
--	
--	cu : control_unit
--		generic map( num_block )
--		port map(	input_block => in_byte,
--						load_block => load_block,
--						reset => reset,
--						clock => clock,
--						reg => reg
--					);

	reset_n <= not reset;
					
	inst_edge_triggered_d_a : edge_triggered_d_n
		generic map(8)
		port map(	d => in_byte,
						clk => clock,
						reset_n => reset_n,
						en => load_a,
						q => a
					);
	inst_edge_triggered_d_b : edge_triggered_d_n
		generic map(8)
		port map(	d => in_byte,
						clk => clock,
						reset_n => reset_n,
						en => load_b,
						q => b
					);
					
	inst_add_sub : add_sub
		generic map ( 8 )
		port map(	a => a,
						b => b,
						add_sub_n => add_sub_n,
						s => s,
						cout => carry,
						overflow => overflow,
						underflow => underflow
					);
	inst_display : display
		generic map(	freq_clock => freq_clock,
							freq_hit => freq_hit
						)
		port map(	rst_n => reset_n,
						clock => clock,
						en => "1100",
						values => values,
						dots => (others => '1'),
						anodes => anodes,
						cathodes => cathodes
					);

	input_display : process(load_a, load_b)
	begin
		if(load_a = '1') then
			values <= x"00" & a;
		elsif(load_b = '1') then
			values <= x"00" & b;
		else
			values <= x"00"& s;
		end if;
	end process;
				
end structural;

