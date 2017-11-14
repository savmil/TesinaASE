
-- VHDL Instantiation Created from source file diplay_7_segmenti.vhd -- 10:51:47 11/12/2017
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT diplay_7_segmenti
	PORT(
		switch : IN std_logic_vector(3 downto 0);
		point : IN std_logic_vector(3 downto 0);          
		segment : OUT std_logic_vector(6 downto 0)
		);
	END COMPONENT;

	Inst_diplay_7_segmenti: diplay_7_segmenti PORT MAP(
		switch => ,
		segment => ,
		point => 
	);


