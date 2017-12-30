library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity gpio is
	 generic(width : natural := 4);
    Port ( pads : inout  STD_LOGIC_VECTOR (width-1 downto 0);
           inputs : in  STD_LOGIC_VECTOR (width-1 downto 0);
           enable : in  STD_LOGIC_VECTOR (width-1 downto 0);
           outputs : out  STD_LOGIC_VECTOR (width-1 downto 0));
end gpio;

architecture Structural of gpio is

component pad is
    Port ( in_out : inout  STD_LOGIC;
           s_in : in  STD_LOGIC;
           enable : in  STD_LOGIC;
           s_out : out  STD_LOGIC);
end component;

begin

	pad_gen: for i in 0 to width-1 generate
		inst_pad: pad
			Port map( in_out => pads(i),
						 s_in => inputs(i),
						 enable => enable(i),
						 s_out => outputs(i)
			);
	
	end generate;

end Structural;

