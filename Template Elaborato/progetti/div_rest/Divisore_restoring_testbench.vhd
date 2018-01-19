--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   16:24:08 12/23/2017
-- Design Name:   
-- Module Name:   /media/sf_ASE/VHDL/Milo/divisore_restoring/divisore_restoring/Divisore_restoring_testbench.vhd
-- Project Name:  divisore_restoring
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Booth_multiplier
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
--USE ieee.numeric_std.ALL;
 
ENTITY Divisore_restoring_testbench IS
END Divisore_restoring_testbench;
 
ARCHITECTURE behavior OF Divisore_restoring_testbench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT divisore_restoring
    PORT(
         dividendo : IN  std_logic_vector(7 downto 0);
         divisore : IN  std_logic_vector(7 downto 0);
         start : IN  std_logic;
         clk : IN  std_logic;
         reset : IN  std_logic;
			finish: out STD_LOGIC_VECTOR(0 downto 0);
         --quoziente : OUT  std_logic_vector(7 downto 0);
         --resto : OUT  std_logic_vector(7 downto 0)
			res:out STD_LOGIC_VECTOR(15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal dividendo : std_logic_vector(7 downto 0) := (others => '0');
   signal divisore : std_logic_vector(7 downto 0) := (others => '0');
   signal start : std_logic := '0';
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';

 	--Outputs
	signal finish : std_logic_vector(0 downto 0);
   --signal quoziente : std_logic_vector(7 downto 0);
   --signal resto : std_logic_vector(7 downto 0);
	signal res :std_logic_vector(15 downto 0);
   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: divisore_restoring PORT MAP (
          dividendo => dividendo,
          divisore => divisore,
          start => start,
          clk => clk,
          reset => reset,
			 finish => finish,
          --quoziente => quoziente,
          --resto => resto
			 res=>res
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period/2;
		clk <= '1';
		wait for clk_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
		
		wait for 100 ns;
		reset<='1';
		
		dividendo<=x"10";
		divisore<=x"03";
		wait for 1 ns;
		start<='1';
		wait for 11 ns;
		start<='0';
      wait for 100 ns;	
		

      -- insert stimulus here 

      wait;
   end process;

END;
