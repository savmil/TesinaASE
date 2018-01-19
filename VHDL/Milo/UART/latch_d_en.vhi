
-- VHDL Instantiation Created from source file latch_d_en.vhd -- 16:22:25 01/18/2018
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT latch_d_en
	PORT(
		clk : IN std_logic;
		reset : IN std_logic;
		en : IN std_logic;
		d : IN std_logic_vector(7 downto 0);          
		q : OUT std_logic_vector(7 downto 0)
		);
	END COMPONENT;

	Inst_latch_d_en: latch_d_en PORT MAP(
		clk => ,
		reset => ,
		en => ,
		d => ,
		q => 
	);


