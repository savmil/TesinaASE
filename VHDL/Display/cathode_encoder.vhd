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

begin
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
	end process;

end Behavioral;


architecture structural of cathode_encoder is
	COMPONENT muxn_1
	generic(address_width : natural := 3);
	PORT(
		SEL : IN std_logic_vector(address_width-1 downto 0);
		A : IN std_logic_vector(2**address_width-1 downto 0);          
		X : OUT std_logic
		);
	END COMPONENT;
alias v : std_logic is nibble(0);
constant width : natural := 3;
signal in_A : std_logic_vector(7 downto 0) := (others => '1');
signal in_B : std_logic_vector(7 downto 0) := (others => '1');
signal in_C : std_logic_vector(7 downto 0) := (others => '1');
signal in_D : std_logic_vector(7 downto 0) := (others => '1');
signal in_E : std_logic_vector(7 downto 0) := (others => '1');
signal in_F : std_logic_vector(7 downto 0) := (others => '1');
signal in_G : std_logic_vector(7 downto 0) := (others => '1');
type array_bidim is array (6 downto 0) of std_logic_vector(7 downto 0);
signal ingressi : array_bidim := (others => (others => '1'));
begin
	in_A(7 downto 0) <= (0 => v, 1 => '0', 2 => not v, 3 => '0', 4 => '0', 5 => v, 6 => v, 7 => '0');
	in_B(7 downto 0) <= (0 => '0', 1 => '0', 2 => v, 3 => not v, 4 => '0', 5 => v, 6 => not v, 7 => '1');
	in_C(7 downto 0) <= (0 => '0', 1 => not v, 2 => '0', 3 => '0', 4 => '0', 5 => '0', 6 => not v, 7 => '1');
	in_D(7 downto 0) <= (0 => v, 1 => '0', 2 => not v, 3 => v, 4 => '0', 5 => not v, 6 => '0', 7 => v);
	in_E(7 downto 0) <= (0 => v, 1 => v, 2 => '1', 3 => v, 4 => v, 5 => '0', 6 => '0', 7 => '0');
	in_F(7 downto 0) <= (0 => v, 1 => '1', 2 => '0', 3 => '0', 4 => '0', 5 => '0', 6 => v, 7 => '0');
	in_G(7 downto 0) <= (0 => '1', 1 => '0', 2 => '0', 3 => v, 4 => '0', 5 => '0', 6 => not v, 7 => '0');
	ingressi <= (in_G, in_F, in_E, in_D, in_C, in_B, in_A);

	setteseg : for i in 0 to 6 generate
		Inst_muxn_1: muxn_1 GENERIC MAP(width) PORT MAP(
			SEL => nibble(3 downto 1),
			A => ingressi(i),
			X => cathodes(i)
		);
	end generate;
end structural;

architecture dataflow of cathode_encoder is

alias x : std_logic is nibble(3);
alias y : std_logic is nibble(2);
alias z : std_logic is nibble(1);
alias v : std_logic is nibble(0);

signal t7 : std_logic := '1';
signal t8 : std_logic := '1';
signal A : std_logic := '1';
signal B : std_logic := '1';
signal C : std_logic := '1';
signal D : std_logic := '1';
signal E : std_logic := '1';
signal F : std_logic := '1';
signal G : std_logic := '1';

begin
	t7 <= (not z) or (not y);
	t8 <= (not x) and (not y);
	
	cathodes(0) <= A;
	cathodes(1) <= B;
	cathodes(2) <= C;
	cathodes(3) <= D;
	cathodes(4) <= E;
	cathodes(5) <= F;
	cathodes(6) <= G;
	
	A <= (v and (not E) and t7) or ((not z) and E and G) or ((not v) and E);
	B <= (v and (not E) and (not F)) or (y and (not D) and (not F));
	C <= ((not E) and (not G) and t8) or (x and y and (not A));
	D <= ((not y) and z and (not v) and (not C)) or (v and (not t7)) or (A and E);
	E <= ((not y) and (not z) and v) or ((not x) and y and (not z)) or ((not x) and v);
	F <= ((not z) and A and (not E)) or (E and t8) or ((not y) and C);
	G <= (y and (not z) and (not v) and (not E)) or ((not z) and t8) or (E and (not t7));
	
end dataflow;