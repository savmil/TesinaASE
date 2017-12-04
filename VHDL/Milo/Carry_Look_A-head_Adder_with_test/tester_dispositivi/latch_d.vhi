
-- VHDL Instantiation Created from source file latch_d.vhd -- 18:17:27 11/15/2017
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT latch_d
	PORT(
		input : IN std_logic_vector(7 downto 0);
		enable : IN std_logic;
		reset : IN std_logic;          
		output : OUT std_logic_vector(7 downto 0)
		);
	END COMPONENT;

	Inst_latch_d: latch_d PORT MAP(
		input => ,
		enable => ,
		reset => ,
		output => 
	);


