
-- VHDL Instantiation Created from source file clk_fil.vhd -- 10:10:32 11/12/2017
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT clk_fil
	PORT(
		clk : IN std_logic;
		enable : IN std_logic;
		reset : IN std_logic;          
		hit : OUT std_logic;
		output : OUT std_logic_vector(99 downto 0)
		);
	END COMPONENT;

	Inst_clk_fil: clk_fil PORT MAP(
		clk => ,
		enable => ,
		hit => ,
		reset => ,
		output => 
	);


