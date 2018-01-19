
-- VHDL Instantiation Created from source file riconoscitore_stringa_generico.vhd -- 11:46:22 01/16/2018
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT riconoscitore_stringa_generico
	PORT(
		clk : IN std_logic;
		reset : IN std_logic;
		start : IN std_logic;
		data : IN std_logic_vector(7 downto 0);
		stringa : IN std_logic_vector(7 downto 0);          
		bad : OUT std_logic;
		d_o : OUT std_logic;
		correct : OUT std_logic
		);
	END COMPONENT;

	Inst_riconoscitore_stringa_generico: riconoscitore_stringa_generico PORT MAP(
		clk => ,
		reset => ,
		start => ,
		data => ,
		stringa => ,
		bad => ,
		d_o => ,
		correct => 
	);


