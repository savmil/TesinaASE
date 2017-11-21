
-- VHDL Instantiation Created from source file RippleCarryAdder.vhd -- 22:24:26 11/21/2017
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT RippleCarryAdder
	PORT(
		adder1 : IN std_logic_vector(1 downto 0);
		adder2 : IN std_logic_vector(1 downto 0);          
		sum : OUT std_logic_vector(1 downto 0);
		last_carry : OUT std_logic
		);
	END COMPONENT;

	Inst_RippleCarryAdder: RippleCarryAdder PORT MAP(
		adder1 => ,
		adder2 => ,
		sum => ,
		last_carry => 
	);


