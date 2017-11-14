
-- VHDL Instantiation Created from source file contatore_modulo_2n.vhd -- 10:34:38 11/12/2017
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT contatore_modulo_2n
	PORT(
		clk : IN std_logic;
		enable : IN std_logic;
		reset : IN std_logic;          
		hit : OUT std_logic;
		output : OUT std_logic_vector(1 downto 0)
		);
	END COMPONENT;

	Inst_contatore_modulo_2n: contatore_modulo_2n PORT MAP(
		clk => ,
		enable => ,
		hit => ,
		reset => ,
		output => 
	);


