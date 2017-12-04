--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   21:01:26 11/09/2017
-- Design Name:   
-- Module Name:   /home/sav/ASE/contatore_behavioural_g/contatore_modulo_2n_testbench.vhd
-- Project Name:  contatore_behavioural_g
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: contatore_modulo_2n
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
 
ENTITY clk_fil_testbench IS
generic(freq_in: natural:=5000;
				freq_out:natural:= 50);
END clk_fil_testbench;
 
ARCHITECTURE behavior OF clk_fil_testbench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT clk_fil
    PORT(
         clk : IN  std_logic;
         enable : IN  std_logic;
         hit : out  std_logic:='0';
			reset: in std_logic;
         output : OUT  std_logic_vector(freq_in/freq_out-1 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal enable : std_logic := '0';
   signal hit : std_logic := '0';
	signal reset: std_logic :='1';
 	--Outputs
   signal output : std_logic_vector(freq_in/freq_out-1 downto 0):=(others=>'0');

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: clk_fil PORT MAP (
          clk => clk,
          enable => enable,
          hit => hit,
			 reset => reset,
          output => output
        );

   -- Clock process definitions
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns
      wait for 100 ns;	
		enable<='1';
		for i in 0 to 6 loop
			clk<='1';
			wait for 1 ns;
			clk<='0';
			wait for 1 ns;
		end loop;
      -- insert stimulus here 

      wait;
   end process;

END;
