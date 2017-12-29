--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:01:37 12/27/2017
-- Design Name:   
-- Module Name:   /media/sf_ASE/VHDL/Milo/RSA/funzione_hash_moltiplicazione_testbench.vhd
-- Project Name:  RSA
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: funzione_hash_moltiplicazione
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
 
ENTITY funzione_hash_moltiplicazione_testbench IS
END funzione_hash_moltiplicazione_testbench;
 
ARCHITECTURE behavior OF funzione_hash_moltiplicazione_testbench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT funzione_hash_moltiplicazione
    PORT(
         clk : IN  std_logic;
         data : IN  std_logic_vector(7 downto 0);
         moltiplicando : IN  std_logic_vector(63 downto 0);
         start : IN  std_logic;
         reset : IN  std_logic;
         number_of_shift : IN  std_logic_vector(6 downto 0);
         dato_hashed : OUT  std_logic_vector(31 downto 0);
         finished : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal data : std_logic_vector(7 downto 0) := (others => '0');
   signal moltiplicando : std_logic_vector(63 downto 0) := (others => '0');
   signal start : std_logic := '0';
   signal reset : std_logic := '0';
   signal number_of_shift : std_logic_vector(6 downto 0) := (others => '0');

 	--Outputs
   signal dato_hashed : std_logic_vector(31 downto 0);
   signal finished : std_logic;

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: funzione_hash_moltiplicazione PORT MAP (
          clk => clk,
          data => data,
          moltiplicando => moltiplicando,
          start => start,
          reset => reset,
          number_of_shift => number_of_shift,
          dato_hashed => dato_hashed,
          finished => finished
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
		reset<='1';
		data<="00110011";
		moltiplicando<="0000000000000000000000000000000010000000000000000000000000000000";
      wait for 100 ns;	
		start<='1';
		wait for 10 ns;
		start<='0';
      wait for clk_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
