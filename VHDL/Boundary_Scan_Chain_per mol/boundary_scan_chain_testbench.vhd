--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   23:31:38 11/19/2017
-- Design Name:   
-- Module Name:   C:/DAVIDE/ASE/Esercizi/ISE/Boundary_Scan_Chain/boundary_scan_chain_testbench.vhd
-- Project Name:  Boundary_Scan_Chain
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: boundary_scan_chain
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
 
ENTITY boundary_scan_chain_testbench IS
END boundary_scan_chain_testbench;
 
ARCHITECTURE behavior OF boundary_scan_chain_testbench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT boundary_scan_chain
    PORT(
         scan_in : in STD_LOGIC;
           clk : in  STD_LOGIC;
			  reset_n : in STD_LOGIC;
			  en: in STD_LOGIC;
           din : in  STD_LOGIC_VECTOR (3 downto 0);
           scan_en : in  STD_LOGIC;
           scan_out : out  STD_LOGIC;
           dout : out  STD_LOGIC_VECTOR (3 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal scan_in : std_logic :='0';
   signal clk : std_logic := '0';
	signal en: std_logic := '0';
   signal reset_n : std_logic := '0';
   signal din : std_logic_vector(3 downto 0) := (others => '0');
   signal scan_en : std_logic := '0';

 	--Outputs
   signal scan_out : std_logic;
   signal dout : std_logic_vector(3 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: boundary_scan_chain PORT MAP (
          scan_in => scan_in,
          clk => clk,
			 en => en,
          reset_n => reset_n,
          din => din,
          scan_en => scan_en,
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
		wait for 100 ns;
		reset_n<='1';
		en<='1';
		wait until clk'event and clk='1';
		scan_en <= '1';
		wait until clk'event and clk='1';
		scan_in <= '1';
		wait until clk'event and clk='1';
		scan_in <= '1';
		wait until clk'event and clk='1';
		scan_in <= '0';
		wait until clk'event and clk='1';
		scan_in <= '0';
		wait until clk'event and clk='1';
--		scan_in <= '1';
--		wait until clk'event and clk='1';
--		scan_in <= '0';
--		wait until clk'event and clk='1';
		scan_en<='0';
		wait until clk'event and clk='1';
		scan_en <= '1';
		wait until clk'event and clk='1';
		scan_in <= '1';
		wait until clk'event and clk='1';
		scan_in <= '1';
		wait until clk'event and clk='1';
		scan_in <= '0';
		wait until clk'event and clk='1';
		scan_in <= '1';
		wait until clk'event and clk='1';
		scan_en <='0';
      wait;
   end process;

END;
