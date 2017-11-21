LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_arith.ALL;

ENTITY cathode_encoder_testbench IS
END cathode_encoder_testbench;

ARCHITECTURE behavior OF cathode_encoder_testbench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT cathode_encoder
    PORT(
         nibble : IN  std_logic_vector(3 downto 0);
         cathodes : OUT  std_logic_vector(6 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal nibble : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal cathodes : std_logic_vector(6 downto 0);
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: cathode_encoder PORT MAP (
          nibble => nibble,
          cathodes => cathodes
        );
		
   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      wait for 100 ns;	
	  
      -- insert stimulus here 
		for i in 0 to 15 loop
			nibble <= conv_std_logic_vector(i, 4);
			wait for 50 ns;
		end loop;
      wait;
   end process;

END;
