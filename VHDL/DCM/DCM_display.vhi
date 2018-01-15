
-- VHDL Instantiation Created from source file DCM_display.vhd -- 15:30:27 01/15/2018
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT DCM_display
	PORT(
		CLKIN_IN : IN std_logic;
		RST_IN : IN std_logic;          
		CLKFX_OUT : OUT std_logic;
		CLK0_OUT : OUT std_logic;
		LOCKED_OUT : OUT std_logic
		);
	END COMPONENT;

	Inst_DCM_display: DCM_display PORT MAP(
		CLKIN_IN => ,
		RST_IN => ,
		CLKFX_OUT => ,
		CLK0_OUT => ,
		LOCKED_OUT => 
	);


