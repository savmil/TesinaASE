----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:58:28 11/01/2017 
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

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity cathode_encoder is
    Port ( nibble : in  STD_LOGIC_VECTOR (3 downto 0);
           cathodes : out  STD_LOGIC_VECTOR (6 downto 0)
--			  anode : out STD_LOGIC
			  );
end cathode_encoder;

--DA TRASFORMARE IN LOGICA 0 ATTIVA

architecture Behavioral of cathode_encoder is

constant digit0 : std_logic_vector(6 downto 0) := "1000000";
constant digit1 : std_logic_vector(6 downto 0) := "1111001";
constant digit2 : std_logic_vector(6 downto 0) := "0100100";
constant digit3 : std_logic_vector(6 downto 0) := "0110000";
constant digit4 : std_logic_vector(6 downto 0) := "0011001";
constant digit5 : std_logic_vector(6 downto 0) := "0010010";
constant digit6 : std_logic_vector(6 downto 0) := "0000010";
constant digit7 : std_logic_vector(6 downto 0) := "1011000";
constant digit8 : std_logic_vector(6 downto 0) := "0000000";
constant digit9 : std_logic_vector(6 downto 0) := "0010000";
constant digitA : std_logic_vector(6 downto 0) := "0001000";
constant digitB : std_logic_vector(6 downto 0) := "0000011";
constant digitC : std_logic_vector(6 downto 0) := "1000110";
constant digitD : std_logic_vector(6 downto 0) := "0100001";
constant digitE : std_logic_vector(6 downto 0) := "0000110";
constant digitF : std_logic_vector(6 downto 0) := "0001110";
--signal A3 : std_logic := '1';

begin
--	anode <= A3;
	main_cathode : process(nibble)
	begin
		case nibble is
			when x"0" =>
				cathodes <= digit0;
			when x"1" =>
				cathodes <= digit1;
			when x"2" =>
				cathodes <= digit2;
			when x"3" =>
				cathodes <= digit3;
			when x"4" =>
				cathodes <= digit4;
			when x"5" =>
				cathodes <= digit5;
			when x"6" =>
				cathodes <= digit6;
			when x"7" =>
				cathodes <= digit7;
			when x"8" =>
				cathodes <= digit8;
			when x"9" =>
				cathodes <= digit9;
			when x"A" =>
				cathodes <= digitA;
			when x"B" =>
				cathodes <= digitB;
			when x"C" =>
				cathodes <= digitC;
			when x"D" =>
				cathodes <= digitD;
			when x"E" =>
				cathodes <= digitE;
			when x"F" =>
				cathodes <= digitF;
			when others =>
				cathodes <= (others => '1');
		end case;

--		altro metodo
--		--if nibble = x"0" then
--			--cathodes <= "0111111";
--			--elsif nibble = x"1" then
--				--cathodes <= "0110000";
--			--else
				--cathodes <= (others => '0');

	end process;

end Behavioral;

--architecture dataflow of cathode_encoder is
--begin
	--with nibble select
		--cathodes <= "0111111" when x"0";
			--(others => '0') when others;
--end dataflow;

--architecture structural of cathode_encoder is
--	COMPONENT muxn_1
--	generic(address_width : natural := 3);
--	PORT(
--		SEL : IN std_logic_vector(address_width-1 downto 0);
--		A : IN std_logic_vector(2**address_width-1 downto 0);          
--		X : OUT std_logic
--		);
--	END COMPONENT;
--constant width : natural := 3;
--signal mux_in : std_logic_vector((2**width)*7-1 downto 0) := (others => '0');
--begin
--	mux_in(2**width-1 downto 0) <= 
--	('1', not(nibble(0)), not(nibble(0)), '1', '1', nibble(0), '1', not(nibble(0)));
--	
--	mux_in((2**width)*2-1 downto 2**width) <= 
--	('0', nibble(0), not(nibble(0)), '1', nibble(0), not(nibble(0)), '1', '1');
--	
--	mux_in((2**width)*3-1 downto (2**width)*2) <= 
--	('0', nibble(0), '1', '1', '1', '1', nibble(0), '1');
--	
--	mux_in((2**width)*4-1 downto (2**width)*3) <= 
--	(not(nibble(0)), '1', nibble(0), '1', not(nibble(0)), nibble(0), '1', not(nibble(0)));
--	
--	mux_in((2**width)*5-1 downto (2**width)*4) <= 
--	('1', '1', '1', not(nibble(0)), not(nibble(0)), '0', not(nibble(0)), not(nibble(0)));
--	
--	mux_in((2**width)*6-1 downto (2**width)*5) <= 
--	('1', not(nibble(0)), '1', '1', '1', '1', '0', not(nibble(0)));
--	
--	mux_in((2**width)*7-1 downto (2**width)*6) <= 
--	('1', nibble(0), '1', '1', not(nibble(0)), '1', '1', '0');
--	
--	setteseg : for i in 0 to 6 generate
--		Inst_muxn: muxn_1 GENERIC MAP(width) PORT MAP(
--			SEL => nibble(3 downto 1),
--			A => mux_in(i*(2**width)+2**width-1 downto i*(2**width)),
--			X => cathodes(i)
--		);
--	end generate;
--end structural;