----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:52:59 11/01/2017 
-- Design Name: 
-- Module Name:    cathode_encoder - Behavioral 
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
USE ieee.std_logic_unsigned.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity cathode_encoder is
    Port ( nibble : in  STD_LOGIC_VECTOR (3 downto 0);
           cathodes : out  STD_LOGIC_VECTOR (6 downto 0));
end cathode_encoder;

architecture Behavioral of cathode_encoder is

--logica 0 attiva
begin
	main_cathode : process(nibble)
	begin
		case nibble is
			when x"0" =>
				cathodes <= "1000000"; 
			when x"1" =>
				cathodes <= "1111001";
			when x"2" =>
				cathodes <= "0100100";
			when x"3" =>
				cathodes <= "0110000";
			when x"4" =>
				cathodes <= "0011001";
			when x"5" =>
				cathodes <= "0010010";
			when x"6" =>
				cathodes <= "0000010";
			when x"7" =>
				cathodes <= "1111000";
			when x"8" =>
				cathodes <= "0000000";
			when x"9" =>
				cathodes <= "0010000";
			when x"A" =>
				cathodes <= "0001000";
			when x"B" =>
				cathodes <= "0000011";
			when x"C" =>
				cathodes <= "1000110";
			when x"D" =>
				cathodes <= "0100001";
			when x"E" =>
				cathodes <= "0000110";
			when x"F" =>
				cathodes <= "0001110";
			when others =>
				cathodes <= (others => '0');
		end case;
	end process;

end Behavioral;

--architecture Structural of cathode_encoder is
--	
--	component muxn_1 is 
--		generic(Address_Width : natural := 3); 
--		port ( A : in std_logic_vector(2**Address_Width-1 downto 0);
--				 sel : in std_logic_vector(Address_Width-1 downto 0);
--			 	 x: out std_logic
--		);
--	end component; 
--	
--constant width : natural := 3;
--signal mux_in : std_logic_vector((2**width)*7-1 downto 0) := (others => '0');
--
--begin
--	 mux_in(2**width-1 downto 0) <= 
--	 ('1', not(nibble(0)), not(nibble(0)), '1', '1', nibble(0), '1', not(nibble(0)));
--	
--	 mux_in((2**width)*2-1 downto 2**width) <= 
--	 ('0', nibble(0), not(nibble(0)), '1', nibble(0), not(nibble(0)), '1', '1');
--	
--	 mux_in((2**width)*3-1 downto (2**width)*2) <= 
--	 ('0', nibble(0), '1', '1', '1', '1', nibble(0), '1');
--	
--	 mux_in((2**width)*4-1 downto (2**width)*3) <= 
--	 (not(nibble(0)), '1', nibble(0), '1', not(nibble(0)), nibble(0), '1', not(nibble(0)));
--	
--	 mux_in((2**width)*5-1 downto (2**width)*4) <= 
--	 ('1', '1', '1', not(nibble(0)), not(nibble(0)), '0', not(nibble(0)), not(nibble(0)));
--	
--	 mux_in((2**width)*6-1 downto (2**width)*5) <= 
--	 ('1', not(nibble(0)), '1', '1', '1', '1', '0', not(nibble(0)));
--	
--	 mux_in((2**width)*7-1 downto (2**width)*6) <= 
--	 ('1', nibble(0), '1', '1', not(nibble(0)), '1', '1', '0');
--	 
--	ce: for i in 0 to 6 generate
--		Inst_muxn_1: muxn_1 generic map(width) PORT MAP(
--			A => mux_in(i*(2**width)+2**width-1 downto i*(2**width)),
--			sel => nibble(3 downto 1),
--			x => cathodes(i)
--		); 
--	end generate;
--
--end Structural;
