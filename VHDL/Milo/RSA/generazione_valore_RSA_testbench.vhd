--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   20:19:59 01/01/2018
-- Design Name:   
-- Module Name:   /media/sf_ASE/VHDL/Milo/RSA/generazione_valore_RSA_testbench.vhd
-- Project Name:  RSA
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: generazione_valori_RSA
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
 
ENTITY generazione_valore_RSA_testbench IS
END generazione_valore_RSA_testbench;
 
ARCHITECTURE behavior OF generazione_valore_RSA_testbench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT generazione_valori_RSA
    PORT(
         clk : IN  std_logic;
         start : IN  std_logic;
         reset : IN  std_logic;
         p : IN  std_logic_vector(7 downto 0);
         q : IN  std_logic_vector(7 downto 0);
         msg : IN  std_logic_vector(7 downto 0);
         e : IN  std_logic_vector(15 downto 0);
         d : IN  std_logic_vector(15 downto 0);
			correct: OUT STD_LOGIC_VECTOR (0 downto 0);
			msg_r : out STD_LOGIC_VECTOR (15 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal clk : std_logic := '0';
   signal start : std_logic := '0';
   signal reset : std_logic := '0';
   signal p : std_logic_vector(7 downto 0) := (others => '0');
   signal q : std_logic_vector(7 downto 0) := (others => '0');
   signal msg : std_logic_vector(7 downto 0) := (others => '0');
   signal e : std_logic_vector(15 downto 0) := (others => '0');
   signal d : std_logic_vector(15 downto 0) := (others => '0');
	
	signal correct: STD_LOGIC_VECTOR (0 downto 0);
	signal msg_r: std_logic_vector(15 downto 0);
   -- Clock period definitions
   constant clk_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: generazione_valori_RSA PORT MAP (
          clk => clk,
          start => start,
          reset => reset,
          p => p,
          q => q,
          msg => msg,
          e => e,
          d => d,
			 correct=> correct,
			 msg_r=> msg_r
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
	
      wait for 100 ns;
		reset<='1';
      -- hold reset state for 100 ns.
		p<=x"03";
		q<=x"0B";
		e<=x"0007";
		d<=x"0003";
		msg<=x"08";
		wait for 1 ns;
		start<='1';
		wait for 11 ns;
		start<='0';
      wait for clk_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;
