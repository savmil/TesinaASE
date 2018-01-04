
-- VHDL Instantiation Created from source file counter.vhd -- 15:19:38 11/22/2012
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT counter
	PORT(
		clock : IN std_logic;
		count_up : IN std_logic;
		reset_n : IN std_logic;          
		value : OUT std_logic_vector(12727812 downto 0);
		hit : OUT std_logic
		);
	END COMPONENT;

	Inst_counter: counter PORT MAP(
		clock => ,
		count_up => ,
		reset_n => ,
		value => ,
		hit => 
	);


