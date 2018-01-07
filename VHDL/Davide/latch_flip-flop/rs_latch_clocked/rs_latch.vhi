
-- VHDL Instantiation Created from source file rs_latch.vhd -- 21:07:00 01/06/2018
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT rs_latch
	PORT(
		r : IN std_logic;
		s : IN std_logic;          
		q : OUT std_logic;
		notq : OUT std_logic
		);
	END COMPONENT;

	Inst_rs_latch: rs_latch PORT MAP(
		r => ,
		s => ,
		q => ,
		notq => 
	);


