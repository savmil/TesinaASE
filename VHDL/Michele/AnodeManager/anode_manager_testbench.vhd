LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_arith.ALL;
USE ieee.std_logic_unsigned.ALL;

ENTITY anode_manager_testbench IS
END anode_manager_testbench;

ARCHITECTURE behavior OF anode_manager_testbench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT anode_manager
    Port ( counter : in STD_LOGIC_VECTOR (1 downto 0);
		   en : in  STD_LOGIC_VECTOR (3 downto 0);
           anodes : out  STD_LOGIC_VECTOR (3 downto 0)
		  );
    END COMPONENT;
    

   --Inputs
   signal counter : STD_LOGIC_VECTOR (1 downto 0) := (others => '0');
   signal en : std_logic_vector(3 downto 0) := (others => '0');

 	--Outputs
   signal anodes : std_logic_vector(3 downto 0) := (others => '0');
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: anode_manager
    Port Map( counter => counter,
		      en => en,
              anodes => anodes
			);
		
   -- Stimulus process
   stim_proc: process
   begin		
   
      -- insert stimulus here 
		for i in 0 to 15 loop
			en <= conv_std_logic_vector(i, 4);
			for z in 0 to 3 loop
				counter <= conv_std_logic_vector(z, 2);
				wait for 10 ns;
			end loop;
		end loop;
      wait;
   end process;

END;
