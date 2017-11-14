
-- VHDL Instantiation Created from source file selettore_cifra.vhd -- 10:49:17 11/12/2017
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT selettore_cifra
	PORT(
		number : IN std_logic_vector(15 downto 0);
		numero_cifra : IN std_logic_vector(1 downto 0);          
		valore_cifra : OUT std_logic_vector(3 downto 0)
		);
	END COMPONENT;

	Inst_selettore_cifra: selettore_cifra PORT MAP(
		number => ,
		numero_cifra => ,
		valore_cifra => 
	);


