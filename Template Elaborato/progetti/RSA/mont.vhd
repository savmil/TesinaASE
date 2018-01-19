LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.std_logic_unsigned.all;
USE ieee.numeric_std.ALL;
use work.montgomery_mult_package.all;

ENTITY test_montgomery_mult_vhd IS
END test_montgomery_mult_vhd;

ARCHITECTURE behavior OF test_montgomery_mult_vhd IS 

  -- Component Declaration for the Unit Under Test (UUT)
  COMPONENT montgomery_mult is
  PORT (
    A, B: in std_logic_vector (M-1 downto 0);
    clk, reset, start: in std_logic; 
    Z: out std_logic_vector (M-1 downto 0);
    done: out std_logic
  );
  END COMPONENT;

  --Inputs
  SIGNAL a :  std_logic_vector(m-1 downto 0) := (others=>'0');
  SIGNAL b :  std_logic_vector(m-1 downto 0) := (others=>'0');
  SIGNAL clk, reset, start: std_logic;
  
  --Outputs
  SIGNAL z :  std_logic_vector(m-1 downto 0);
  SIGNAL done: std_logic;

  constant PERIOD : time := 200 ns;
  constant DUTY_CYCLE : real := 0.5;
  constant OFFSET : time := 0 ns;

BEGIN

  -- Instantiate the Unit Under Test (UUT)
  uut: montgomery_mult PORT MAP( a => a, b => b, 
       clk => clk, reset => reset, start => start, 
       Z => Z, done => done );

   PROCESS -- clock process for clk
   BEGIN
    WAIT for OFFSET;
    CLOCK_LOOP : LOOP
       clk <= '0';
       WAIT FOR (PERIOD *(1.0 - DUTY_CYCLE));
       clk <= '1';
       WAIT FOR (PERIOD * DUTY_CYCLE);
    END LOOP CLOCK_LOOP;
   END PROCESS;

  tb : PROCESS
  BEGIN
    reset <= '0';
    start <= '0';
    -- Wait 100 ns for global reset to finish
    wait for 100 ns;
    reset <= '1';
    a <= "10101010";
    b <= "10101010";
    wait for PERIOD;
    reset <= '0';
    wait for PERIOD;
    start <= '1';
    wait for PERIOD;
    start <= '0';
    WAIT until (done = '1'); WAIT FOR 2*PERIOD;

    a <= "10101010";
    b <= "00000000";
    start <= '1';
    wait for PERIOD;
    start <= '0';
    WAIT until (done = '1'); WAIT FOR 2*PERIOD;

    a <= "11111111";
    b <= "10101010";

    start <= '1';
    wait for PERIOD;
    start <= '0';
    WAIT until (done = '1'); WAIT FOR 2*PERIOD;

    a <= "10101010";
    b <= "01010101";
    start <= '1';
    wait for PERIOD;
    start <= '0';
    WAIT until (done = '1'); WAIT FOR 2*PERIOD;

    a <= "01010101";
    b <= "01010101";
    start <= '1';
    wait for PERIOD;
    start <= '0';
    WAIT until (done = '1'); WAIT FOR 2*PERIOD;

    ASSERT (FALSE) REPORT
    "Simulation finished (not a failure). No problems detected. "
    SEVERITY FAILURE;
  END PROCESS;

END;