-- Entity name: montgomery_multiplier_tb
-- Author: Stephen Carter, Jacob Barnett, Luis Gallet
-- Contact: stephen.carter@mail.mcgill.ca, jacob.barnett@mail.mcgill.ca,  luis.galletzambrano@mail.mcgill.ca
-- Date: April 09, 2016
-- Description:
-- Testbench used to test the Montgomery Multiplier
-- Tests autogenerated from a python script

library ieee;
use IEEE.std_logic_1164.all;
use IEEE.numeric_std.all;


entity montgomery_comparison_tb is
end entity;

architecture test of montgomery_comparison_tb is

Component montgomery_comparison is
 	Generic(
		WIDTH_IN : integer := 32
	);
	Port(	A :	in unsigned(WIDTH_IN-1 downto 0);
		B :	in unsigned(WIDTH_IN-1 downto 0);
		N :	in unsigned(WIDTH_IN-1 downto 0);
		latch : in std_logic;
		clk :	in std_logic;
		reset :	in std_logic;
		M : 	out unsigned(WIDTH_IN-1 downto 0)
	);
end component;

CONSTANT WIDTH_IN : integer := 32;

CONSTANT clk_period : time := 1 ns;

Signal N_in : unsigned(WIDTH_IN-1 downto 0) := (others => '0');
Signal A_in : unsigned(WIDTH_IN-1 downto 0) := (others => '0');
Signal B_in : unsigned(WIDTH_IN-1 downto 0) := (others => '0');

Signal clk_in : std_logic := '0';
Signal reset_t : std_logic := '0';
Signal latch_in : std_logic := '0';

Signal M_out : unsigned(WIDTH_IN-1 downto 0) := (others => '0');

Begin
-- device under test
dut: montgomery_comparison PORT MAP(	A	=> 	A_in,
					B 	=> 	B_in,
					N 	=> 	N_in,
					latch	=>	latch_in,
					clk	=> 	clk_in,
					reset 	=>	reset_t,
					M	=>	M_out);
  
-- process for clock
clk_process : Process
Begin
	clk_in <= '0';
	wait for clk_period/2;
	clk_in <= '1';
	wait for clk_period/2;
end process;

stim_process: process
Begin


	reset_t <= '1';
	wait for 1 * clk_period;
	reset_t <= '0';
	wait for 1 * clk_period;

--	REPORT "Testing (2x2) mod 8";
--	A_in <= "0010";
--	B_in <= "1000";
--	N_in <= "0111";
--	latch_in <= '1';
--	wait for 2 * clk_period;
--	latch_in <= '0';
--	wait for 50 * clk_period;
--	ASSERT(M_out = "0010") REPORT "test failed" SEVERITY ERROR;

--	REPORT "Begin test case for a=156365830663300194168978100302534101760 (A=257185102598108501772724158230196362510), b=156365830663300194168978100302534101760 (B=257185102598108501772724158230196362510), N=260260176362337473672688341065763873521";
--	REPORT "Expected output is 4039137314870681147884186032237193553, 00000011000010011110100011011000010010111101110010000101011111011100011110001101110101100111000101001010111010000010100101010001";
--	A_in <= "11000001011111000000110010001101100001001011100010101000111010110100100011101011000010110011100110101100101101111001110100001110";
--	B_in <= "11000001011111000000110010001101100001001011100010101000111010110100100011101011000010110011100110101100101101111001110100001110";
--	N_in <= "11000011110011000100100101100101000101110011110101010011010011101001111010110001110100110010001000100010010010110110001011110001";
--	latch_in <= '1';
--	wait for 2 * clk_period;
--	latch_in <= '0';
--	wait for 129 * clk_period;
--	ASSERT(M_out = "00000011000010011110100011011000010010111101110010000101011111011100011110001101110101100111000101001010111010000010100101010001") REPORT "test failed" SEVERITY ERROR;

	REPORT "Begin test case for a=1328668589 (A=611933216), b=1328668589 (B=611933216), N=2157374201";
	REPORT "Expected output is 1602110260, 01011111011111100100001100110100";
	A_in <= "00100100011110010101110000100000";
	B_in <= "00100100011110010101110000100000";
	N_in <= "10000000100101101110101011111001";
	latch_in <= '1';
	wait for 2 * clk_period;
	latch_in <= '0';
	wait for 33 * clk_period;
	ASSERT(M_out = "01011111011111100100001100110100") REPORT "test failed" SEVERITY ERROR;



wait;

end process;
end architecture;
