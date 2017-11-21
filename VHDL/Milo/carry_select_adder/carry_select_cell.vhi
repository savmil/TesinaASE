
-- VHDL Instantiation Created from source file carry_select_cell.vhd -- 22:56:27 11/21/2017
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT carry_select_cell
	PORT(
		adder1 : IN std_logic_vector(3 downto 0);
		adder2 : IN std_logic_vector(3 downto 0);
		cin : IN std_logic;          
		sum : OUT std_logic_vector(3 downto 0);
		cout : OUT std_logic
		);
	END COMPONENT;

	Inst_carry_select_cell: carry_select_cell PORT MAP(
		adder1 => ,
		adder2 => ,
		cin => ,
		sum => ,
		cout => 
	);


