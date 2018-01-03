--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:24:15 01/29/2011
-- Design Name:   
-- Module Name:   C:/Users/Azek/Documents/My Dropbox/ASE Architettura dei Sistemi di Elaborazione/TesinaEsame/Booth/Booth/tb_booth.vhd
-- Project Name:  Booth
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: booth
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
USE ieee.numeric_std.ALL;
 
ENTITY tb_booth IS
END tb_booth;
 
ARCHITECTURE behavior OF tb_booth IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT    booth_multiplier is 
	 Port ( x : in  STD_LOGIC_VECTOR (7 downto 0);
           y : in  STD_LOGIC_VECTOR (7 downto 0);
           start : in  STD_LOGIC;
           clock : in  STD_LOGIC;
			  reset_n : in STD_LOGIC;
           stop : out  STD_LOGIC;
           result : out  STD_LOGIC_VECTOR (15 downto 0)
			  );
		end component;
    

   --Inputs
   signal x : std_logic_vector(7 downto 0) := (others => '0');
   signal y : std_logic_vector(7 downto 0) := (others => '0');
   signal start : std_logic := '0';
   signal clock : std_logic := '0';
   signal reset_n : std_logic := '1';

 	--Outputs
   signal stop : std_logic;
   signal result : std_logic_vector(15 downto 0);

   -- Clock period definitions
   constant clock_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: booth_multiplier PORT MAP (
          x => x,
          y => y,
          start => start,
          clock => clock,
          reset_n => reset_n,
          stop => stop,
          result => result
        );

   -- Clock process definitions
   clock_process :process
   begin
		clock <= '0';
		wait for clock_period/2;
		clock <= '1';
		wait for clock_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for clock_period*10;

      -- insert stimulus here
		x<=x"8F";
		y<=x"F3";
		wait for 5 ns;
		start<='1';
		wait for clock_period*2;
		start <='0';		

		wait until stop = '1';
		wait for 2 ns;
		
		assert result = std_logic_vector(signed(x)*signed(y)) report "Uncorrect result value";
		
		x<=x"3a";
		y<=x"1e";
		wait for 5 ns;
		start<='1';
		wait for clock_period*2;
		start <='0';		

		wait until stop = '1';
		wait for 2 ns;

		assert result = std_logic_vector(signed(x)*signed(y)) report "Uncorrect result value";
		
		x<=x"80";
		y<=x"7F";
		wait for 5 ns;
		start<='1';
		wait for clock_period*2;
		start <='0';		

		wait until stop = '1';
		wait for 2 ns;

		assert result = std_logic_vector(signed(x)*signed(y)) report "Uncorrect result value";

      wait;
   end process;

END;
