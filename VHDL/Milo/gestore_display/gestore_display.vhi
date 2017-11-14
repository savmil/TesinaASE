
-- VHDL Instantiation Created from source file gestore_display.vhd -- 10:34:05 11/12/2017
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT gestore_display
	PORT(
		enable : IN std_logic;
		clk : IN std_logic;
		reset : IN std_logic;          
		anode : OUT std_logic_vector(3 downto 0);
		cathode : OUT std_logic_vector(6 downto 0)
		);
	END COMPONENT;

	Inst_gestore_display: gestore_display PORT MAP(
		enable => ,
		clk => ,
		reset => ,
		anode => ,
		cathode => 
	);


