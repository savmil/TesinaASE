library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity cathode_encoder is
    Port ( nibble : in  STD_LOGIC_VECTOR (3 downto 0);
           cathodes : out  STD_LOGIC_VECTOR (6 downto 0));
end cathode_encoder;

--DA TRASFORMARE IN LOGICA 0 ATTIVA

--architecture Behavioral of cathode_encoder is
--
--constant digit0 : std_logic_vector(6 downto 0) := "0111111";
--constant digit1 : std_logic_vector(6 downto 0) := "0000110";
--constant digit2 : std_logic_vector(6 downto 0) := "1011011";
--constant digit3 : std_logic_vector(6 downto 0) := "1001111";
--constant digit4 : std_logic_vector(6 downto 0) := "1100110";
--constant digit5 : std_logic_vector(6 downto 0) := "1101101";
--constant digit6 : std_logic_vector(6 downto 0) := "1111101";
--constant digit7 : std_logic_vector(6 downto 0) := "0100111";
--constant digit8 : std_logic_vector(6 downto 0) := "1111111";
--constant digit9 : std_logic_vector(6 downto 0) := "1101111";
--constant digitA : std_logic_vector(6 downto 0) := "1110111";
--constant digitB : std_logic_vector(6 downto 0) := "1111100";
--constant digitC : std_logic_vector(6 downto 0) := "0111001";
--constant digitD : std_logic_vector(6 downto 0) := "1011110";
--constant digitE : std_logic_vector(6 downto 0) := "1111001";
--constant digitF : std_logic_vector(6 downto 0) := "1110001";
--
--begin
--	main_cathode : process(nibble)
--	begin
--		case nibble is
--			when x"0" =>
--				cathodes <= digit0;
--			when x"1" =>
--				cathodes <= digit1;
--			when x"2" =>
--				cathodes <= digit2;
--			when x"3" =>
--				cathodes <= digit3;
--			when x"4" =>
--				cathodes <= digit4;
--			when x"5" =>
--				cathodes <= digit5;
--			when x"6" =>
--				cathodes <= digit6;
--			when x"7" =>
--				cathodes <= digit7;
--			when x"8" =>
--				cathodes <= digit8;
--			when x"9" =>
--				cathodes <= digit9;
--			when x"A" =>
--				cathodes <= digitA;
--			when x"B" =>
--				cathodes <= digitB;
--			when x"C" =>
--				cathodes <= digitC;
--			when x"D" =>
--				cathodes <= digitD;
--			when x"E" =>
--				cathodes <= digitE;
--			when x"F" =>
--				cathodes <= digitF;
--			when others =>
--				cathodes <= (others => '0');
--		end case;

--		altro metodo
--		--if nibble = x"0" then
--			--cathodes <= "0111111";
--			--elsif nibble = x"1" then
--				--cathodes <= "0110000";
--			--else
--				--cathodes <= (others => '0');

--	end process;
--
--end Behavioral;

architecture dataflow of cathode_encoder is
signal A : std_logic := '0'; --[7]
signal B : std_logic := '0'; --[8]
signal C : std_logic := '0'; --[9]
signal D : std_logic := '0'; --[10]
signal E : std_logic := '0'; --[11]
signal F : std_logic := '0'; --[12]
signal G : std_logic := '0'; --[13]
signal H : std_logic := '0'; --[14]
signal I : std_logic := '0'; --[15]
signal L : std_logic := '0'; --[16]
signal M : std_logic := '0'; --[17]
signal N : std_logic := '0'; --[18]
signal O : std_logic := '0'; --[19]
signal P : std_logic := '0'; --[20]
signal Q : std_logic := '0'; --[21]
signal R : std_logic := '0'; --[23]
signal S : std_logic := '0'; --[25]
signal T : std_logic := '0'; --[27]
signal U : std_logic := '0'; --[29]
signal V : std_logic := '0'; --[31]
signal Z : std_logic := '0'; --[33]

begin	
	A <= (not nibble(3)) and (not nibble(1)) and (not nibble(0));
	B <= (not nibble(3)) and nibble(2) and (not nibble(0));
	C <= (not nibble(3)) and nibble(1) and nibble(0);
	D <= (not nibble(2)) and nibble(1) and nibble(0);
	E <= (not nibble(2)) and (not nibble(1));
	F <= nibble(2) and nibble(1);
	G <= (not nibble(3)) and nibble(1) and (not nibble(0));
	H <= nibble(3) and nibble(2) and (not nibble(1)) and nibble(0);
	I <= (not nibble(3)) and nibble(2) and (not nibble(1)) and nibble(0);
	L <= nibble(3) and (not nibble(2)) and (not nibble(0));
	M <= nibble(3) and nibble(2) and (not nibble(0));
	N <= nibble(3) and (not nibble(2)) and (not nibble(1));
	O <= (not nibble(3)) and (not nibble(2)) and (not nibble(0));
	P <= nibble(3) and nibble(1);
	Q <= (not C) and (not F) and (not I) and (not L) and (not M) and (not N) and (not O);
	R <= (not A) and (not C) and (not E) and (not H) and (not L) and (not O);
	S <= (not B) and (not C) and (not D) and (not E) and (not H) and (not I) and (not L);
	T <= (not D) and (not G) and (not H) and (not I) and (not M) and (not N) and (not O);
	U <= (not G) and (not H) and (not L) and (not M) and (not O) and (not P);
	V <= (not A) and (not F) and (not I) and (not M) and (not N) and (not P);
	Z <= (not B) and (not D) and (not G) and (not H) and (not I) and (not N) and (not P);
	
	cathodes <= (not Z, not V, not U, not T, not S, not R, not Q);
	
	--altro metodo
	--with nibble select
		--cathodes <= "0111111" when x"0";
			--(others => '0') when others;
	
end dataflow;

-- architecture structural of cathode_encoder is
	-- COMPONENT muxn_1
	-- generic(address_width : natural := 3);
	-- PORT(
		-- SEL : IN std_logic_vector(address_width-1 downto 0);
		-- A : IN std_logic_vector(2**address_width-1 downto 0);          
		-- X : OUT std_logic
		-- );
	-- END COMPONENT;
-- constant width : natural := 3;
-- signal mux_in : std_logic_vector((2**width)*7-1 downto 0) := (others => '0');
-- begin
	-- mux_in(2**width-1 downto 0) <= 
	-- ('1', not(nibble(0)), not(nibble(0)), '1', '1', nibble(0), '1', not(nibble(0)));
	
	-- mux_in((2**width)*2-1 downto 2**width) <= 
	-- ('0', nibble(0), not(nibble(0)), '1', nibble(0), not(nibble(0)), '1', '1');
	
	-- mux_in((2**width)*3-1 downto (2**width)*2) <= 
	-- ('0', nibble(0), '1', '1', '1', '1', nibble(0), '1');
	
	-- mux_in((2**width)*4-1 downto (2**width)*3) <= 
	-- (not(nibble(0)), '1', nibble(0), '1', not(nibble(0)), nibble(0), '1', not(nibble(0)));
	
	-- mux_in((2**width)*5-1 downto (2**width)*4) <= 
	-- ('1', '1', '1', not(nibble(0)), not(nibble(0)), '0', not(nibble(0)), not(nibble(0)));
	
	-- mux_in((2**width)*6-1 downto (2**width)*5) <= 
	-- ('1', not(nibble(0)), '1', '1', '1', '1', '0', not(nibble(0)));
	
	-- mux_in((2**width)*7-1 downto (2**width)*6) <= 
	-- ('1', nibble(0), '1', '1', not(nibble(0)), '1', '1', '0');
	
	-- setteseg : for i in 0 to 6 generate
		-- Inst_muxn: muxn_1 GENERIC MAP(width) PORT MAP(
			-- SEL => nibble(3 downto 1),
			-- A => mux_in(i*(2**width)+2**width-1 downto i*(2**width)),
			-- X => cathodes(i)
		-- );
	-- end generate;
-- end structural;