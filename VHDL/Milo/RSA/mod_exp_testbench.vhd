--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   14:09:28 12/29/2017
-- Design Name:   
-- Module Name:   /media/sf_ASE/VHDL/Milo/RSA/mod_exp_testbench.vhd
-- Project Name:  RSA
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: mod_exp
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
 
ENTITY mod_exp_testbench IS
END mod_exp_testbench;
 
ARCHITECTURE behavior OF mod_exp_testbench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT mod_exp
    PORT(
         clk : IN  std_logic;
			start: in STD_LOGIC;
			reset: IN STD_LOGIC;
         base : IN  std_logic_vector(31 downto 0);
         esponente : IN  std_logic_vector(31 downto 0);
         modulo : IN  std_logic_vector(31 downto 0);
			finished : out STD_LOGIC:='0';
         m_e : OUT  std_logic_vector(31 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
	signal start : std_logic := '0';
	signal reset: std_logic:='0';
   signal base : std_logic_vector(31 downto 0) := (others => '0');
   signal esponente : std_logic_vector(31 downto 0) := (others => '0');
   signal modulo : std_logic_vector(31 downto 0) := (others => '0');

 	--Outputs
	signal finished: std_logic;
   signal m_e : std_logic_vector(31 downto 0);

   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: mod_exp PORT MAP (
          clk => clk,
			 start => start,
			 reset => reset,
          base => base,
          esponente => esponente,
			 finished => finished,
          modulo => modulo,
          m_e => m_e
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
		base<=x"000000F0";
		esponente<=x"0000000F";
		modulo<=x"000000FF";
      wait for 100 ns;	
		
		start<='1';
		wait for 11 ns;
		start<='0';
      wait for clk_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
