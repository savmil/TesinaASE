--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   12:34:33 12/27/2017
-- Design Name:   
-- Module Name:   /media/sf_ASE/VHDL/Milo/riconoscitore_stringa/riconoscitore_stringa_generico_testbench.vhd
-- Project Name:  riconoscitore_stringa
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: riconoscitore_stringa_generico
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
 
ENTITY riconoscitore_stringa_generico_testbench IS
END riconoscitore_stringa_generico_testbench;
 
ARCHITECTURE behavior OF riconoscitore_stringa_generico_testbench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT riconoscitore_stringa_generico
    PORT(
         clk : IN  std_logic;
         reset : IN  std_logic;
         start : IN  std_logic;
         data : IN  std_logic_vector(7 downto 0);
         bad : OUT  std_logic;
         correct : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal reset : std_logic := '0';
   signal start : std_logic := '0';
   signal data : std_logic_vector(7 downto 0) := (others => '0');

 	--Outputs
   signal bad : std_logic;
   signal correct : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: riconoscitore_stringa_generico PORT MAP (
          clk => clk,
          reset => reset,
          start => start,
          data => data,
          bad => bad,
          correct => correct
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
		start<='1';
		data<="00001101";
		wait for 10 ns;
		start<='0';
      wait for clk_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
