library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
entity full_adder_half is
		PORT(	A: in STD_LOGIC;
			B: in STD_LOGIC;
			CIN: in STD_LOGIC;
			S: out STD_LOGIC;
			COUT: out STD_LOGIC
		);
end full_adder_half;
architecture register_transfer of full_adder_half is
	component half_adder is
			Port(	A: in STD_LOGIC;
				B: in STD_LOGIC;
				S: out STD_LOGIC;
				C: out STD_LOGIC
			);
	end component;	
signal S1:STD_LOGIC:='0';
signal CIN1:STD_LOGIC:='0';
signal CIN2:STD_LOGIC:='0';
begin
	half_adder1: half_adder port map(
					A=>A,
					B=>B,
					S=>S1,
					C=>CIN1
					);
	half_adder2: half_adder port map(
					A=>S1,
					B=>CIN,
					S=>S,
					C=>CIN2
					);
	COUT<= CIN1 OR CIN2;
end register_transfer;
							
