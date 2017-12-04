-- TestBench Template 

  LIBRARY ieee;
  USE ieee.std_logic_1164.ALL;
  USE ieee.numeric_std.ALL;

  ENTITY testbench IS
  END testbench;

  ARCHITECTURE behavior OF testbench IS 

  -- Component Declaration
          COMPONENT diplay_7_segmenti
          PORT(
                  an :out std_logic;
                  switch : IN std_logic_vector(3 downto 0);       
                  segment : OUT std_logic_vector(6 downto 0)
                  );
          END COMPONENT;

          SIGNAL an :  std_logic:='0';
          SIGNAL number :  std_logic_vector(3 downto 0):=(others =>'0');
          signal segment: std_logic_vector(6 downto 0):=(others =>'0');

  BEGIN

  -- Component Instantiation
          uut: diplay_7_segmenti PORT MAP(
                  an => an,
                  switch => number,
						segment => segment
          );


  --  Test Bench Statements
     tb : PROCESS
     BEGIN

        wait for 100 ns; -- wait until global set/reset completes

        for i in 0 to 15 loop
				number<=std_logic_vector(to_unsigned(i,number'length));
				wait for 1 ns;
			end loop;
        wait; -- will wait forever
     END PROCESS tb;
  --  End Test Bench 

  END;
