----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:44:09 12/07/2017 
-- Design Name: 
-- Module Name:    HashFunction - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
-- Description: 
--
-- Dependencies: 
--
-- Revision: 
-- Revision 0.01 - File Created
-- Additional Comments: 
--
----------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity HashFunction is
Generic( width : integer := 32; width_reg : integer := 8);
    Port ( CharacterByte : in  STD_LOGIC_VECTOR(width_reg-1 downto 0);
			  Clock : in  STD_LOGIC;
           Reset : in  STD_LOGIC; --0 attivo
			  Reg_en : in STD_LOGIC; --0 attivo
           Digest : out  STD_LOGIC_VECTOR(width-1 downto 0)			  
			  );
end HashFunction;

architecture Structural of HashFunction is

signal DQtemp3_2 : STD_LOGIC_VECTOR (width_reg-1 downto 0) := (others =>'0');
signal DQtemp2_1 : STD_LOGIC_VECTOR (width_reg-1 downto 0) := (others =>'0');
signal DQtemp1_0 : STD_LOGIC_VECTOR (width_reg-1 downto 0) := (others =>'0');
signal temp_out : STD_LOGIC_VECTOR (width_reg-1 downto 0) := (others =>'0');

-- signal Reg_en : STD_LOGIC := '0';
--signal a_temp : STD_LOGIC_VECTOR(width_reg-1 downto 0) := (others =>'0');
signal sum_temp : STD_LOGIC_VECTOR(width_reg-1 downto 0) := (others =>'0');

begin

CLA8 : entity work.CLA_8bit_Adder
				port map ( 
					a => CharacterByte,
					b => temp_out,
					cin => '0',
					s => sum_temp,
					cout => open,
					ovf => open
					);
--	
--Rega : entity work.Generic_RAsync_Register 
--				generic map (width => width_reg)
--				port map ( 
--						D=>CharacterByte,
--						clock => Clock,
--						reset => Reset,
--						en => Reg_en,
--						Q => a_temp
--						);

Reg3 : entity work.Generic_RAsync_Register 
				generic map (width => width_reg)
				port map ( 
						D=>sum_temp,
						clock => Clock,
						reset => Reset,
						en => Reg_en,
						Q => DQtemp3_2
						);

Reg2 : entity work.Generic_RAsync_Register 
				generic map (width => width_reg)
				port map ( 
						D=> DQtemp3_2,
						clock => Clock,
						reset => Reset,
						en => Reg_en,
						Q => DQtemp2_1
						);


Reg1 : entity work.Generic_RAsync_Register 
				generic map (width => width_reg)
				port map ( 
						D=> DQtemp2_1,
						clock => Clock,
						reset => Reset,
						en => Reg_en,
						Q => DQtemp1_0
						);
						
Reg0 : entity work.Generic_RAsync_Register 
				generic map (width => width_reg)
				port map ( 
						D=> DQtemp1_0,
						clock => Clock,
						reset => Reset,
						en => Reg_en,
						Q => temp_out
						);
						

						
						
digest <= DQtemp3_2 & DQtemp2_1 & DQtemp1_0 & temp_out;

end Structural;

