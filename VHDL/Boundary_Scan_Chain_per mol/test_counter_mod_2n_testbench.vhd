--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   17:01:45 11/20/2017
-- Design Name:   
-- Module Name:   C:/DAVIDE/ASE/Esercizi/ISE/Boundary_Scan_Chain/test_counter_mod_2n_testbench.vhd
-- Project Name:  Boundary_Scan_Chain
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: test_counter_mod_2n
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
 
ENTITY test_counter_mod_2n_testbench IS
END test_counter_mod_2n_testbench;
 
ARCHITECTURE behavior OF test_counter_mod_2n_testbench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT test_counter_mod_2n
    PORT(
         scan_in : IN  std_logic;
         clk : IN  std_logic;
         scan_en : IN  std_logic;
         reset_n : IN  std_logic;
         counter_en : IN  std_logic;
         scan_out : OUT  std_logic;
         dout : OUT  std_logic_vector(3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal scan_in : std_logic := '0';
   signal clk : std_logic := '0';
   signal scan_en : std_logic := '0';
   signal reset_n : std_logic := '1';
   signal counter_en : std_logic := '0';

 	--Outputs
   signal scan_out : std_logic;
   signal dout : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: test_counter_mod_2n PORT MAP (
          scan_in => scan_in,
          clk => clk,
          scan_en => scan_en,
          reset_n => reset_n,
          counter_en => counter_en,
          scan_out => scan_out,
          dout => dout
        );

   -- Clock process definitions
   clk_process :process
   begin
		clk <= '0';
		wait for clk_period;
		clk <= '1';
		wait for clk_period;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for clk_period*10;

      -- insert stimulus here
		wait until clk'event and clk='1';
		scan_in <= '1';
		scan_en <= '1';		
		wait until clk'event and clk='1';
		scan_in <= '0';
		wait until clk'event and clk='1';
		scan_in <= '0';
		wait until clk'event and clk='1';
		scan_in <= '0';
		wait until clk'event and clk='1';
		
		scan_en <= '0';
		counter_en <='1';
		wait until clk'event and clk='1';
		counter_en <='0';
		wait until clk'event and clk='1';
		scan_en <= '1';

      wait;
   end process;

END;
