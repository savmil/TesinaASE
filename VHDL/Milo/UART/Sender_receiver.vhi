
-- VHDL Instantiation Created from source file Sender_receiver.vhd -- 18:20:46 01/18/2018
--
-- Notes: 
-- 1) This instantiation template has been automatically generated using types
-- std_logic and std_logic_vector for the ports of the instantiated module
-- 2) To use this template to instantiate this entity, cut-and-paste and then edit

	COMPONENT Sender_receiver
	PORT(
		clk : IN std_logic;
		start : IN std_logic;
		reset : IN std_logic;
		data : IN std_logic_vector(7 downto 0);          
		data_t : OUT std_logic;
		received : OUT std_logic_vector(7 downto 0)
		);
	END COMPONENT;

	Inst_Sender_receiver: Sender_receiver PORT MAP(
		clk => ,
		start => ,
		reset => ,
		data => ,
		data_t => ,
		received => 
	);


