
-- VHDL Instantiation Created from source file counter_one_start.vhd -- 15:57:18 01/18/2018
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT counter_one_start
	PORT(
		clk : IN std_logic;
		enable : IN std_logic;
		reset : IN std_logic;          
		hit : OUT std_logic;
		output : OUT std_logic_vector(1 downto 0)
		);
	END COMPONENT;

	Inst_counter_one_start: counter_one_start PORT MAP(
		clk => ,
		enable => ,
		hit => ,
		reset => ,
		output => 
	);


