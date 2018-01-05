LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;
 
ENTITY display_testbench IS
END display_testbench;
 
ARCHITECTURE behavior OF display_testbench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT display
	 GENERIC( freq_clock : NATURAL := 50000000;
				 freq_hit : NATURAL := 250
				);
    PORT(
         rst_n : IN  std_logic;
			clock : IN std_logic;
         en : IN  std_logic_vector(3 downto 0);
         values : IN  std_logic_vector(15 downto 0);
         dots : IN  std_logic_vector(3 downto 0);
         anodes : OUT  std_logic_vector(3 downto 0);
         cathodes : OUT  std_logic_vector(7 downto 0)
        );
    END COMPONENT;
    

   --Inputs
   signal rst_n : std_logic := '1';
   signal en : std_logic_vector(3 downto 0) := (others => '0');
   signal values : std_logic_vector(15 downto 0) := (others => '0');
   signal dots : std_logic_vector(3 downto 0) := (others => '1');
	signal clock : std_logic := '0';

 	--Outputs
   signal anodes : std_logic_vector(3 downto 0);
   signal cathodes : std_logic_vector(7 downto 0);

   constant clock_period : time := 20 ns;
	constant freq_clock : NATURAL := 50000000;
	constant freq_hit : NATURAL := 25000000;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: display 
		GENERIC MAP (
						freq_clock => freq_clock,
						freq_hit => freq_hit
						)
		PORT MAP (
          rst_n => rst_n,
			 clock => clock,
          en => en,
          values => values,
          dots => dots,
          anodes => anodes,
          cathodes => cathodes
        );

   -- Clock process definitions
   clock_process :process
   begin
		clock <= '0';
		wait for clock_period/2;
		clock <= '1';
		wait for clock_period/2;
   end process;
 

   -- Stimulus process
   stim_proc: process
   begin
		rst_n <= '0';
      -- hold reset state for 100 ns.
      wait for 100 ns;	

      wait for clock_period*10;

      -- insert stimulus here
		for t in std_logic range '0' to '1' loop
			rst_n <= not t;
			for i in 0 to 2 loop
				en <= std_logic_vector(to_unsigned(i*4, 4));
				dots <= std_logic_vector(to_unsigned(i*4, 4));
				-- i = 0 --> en = dots = 0000
				-- i = 1 --> en = dots = 0100
				-- i = 2 --> en = dots = 1000
				for j in 1 to 2 loop
					values <= std_logic_vector(to_unsigned(j*8, 16));
					-- j = 1 --> values = 0000 0000 0000 1000
					-- j = 2 --> values = 0000 0000 0001 0000
					wait for freq_clock/freq_hit*clock_period*4; -- per osservare un ciclo del contatore
				end loop;
			end loop;
		end loop;

      wait;
   end process;

END;
