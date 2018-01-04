LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_arith.ALL;
USE ieee.std_logic_unsigned.ALL;

ENTITY cathode_manager_testbench IS
END cathode_manager_testbench;

ARCHITECTURE behavior OF cathode_manager_testbench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT cathode_manager
    Port ( counter : in STD_LOGIC_VECTOR (1 downto 0);
		   values : in STD_LOGIC_VECTOR (15 downto 0);
		   dots : in  STD_LOGIC_VECTOR (3 downto 0);
           cathodes : out  STD_LOGIC_VECTOR (7 downto 0)
		  );
    END COMPONENT;
    

   --Inputs
   signal counter : STD_LOGIC_VECTOR (1 downto 0) := (others => '0');
   signal values : STD_LOGIC_VECTOR (15 downto 0) := (others => '0');
   signal dots : std_logic_vector(3 downto 0) := (others => '1');

 	--Outputs
   signal cathodes : std_logic_vector(7 downto 0) := (others => '1');
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: cathode_manager
    Port Map( counter => counter,
		      values => values,
		      dots => dots,
              cathodes => cathodes
			);
		
   -- Stimulus process
   stim_proc: process
   begin		
		wait for 100 ns;
      -- insert stimulus here 
		dots <= "0101";
		values <= x"8421";
		for z in 0 to 3 loop
			counter <= conv_std_logic_vector(z, 2);
			wait for 50 ns;
		end loop;
      wait;
   end process;

END;
