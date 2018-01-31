----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:08:57 12/09/2017 
-- Design Name: 
-- Module Name:    SignReg - Behavioral 
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

entity SignReg is
Generic( width : integer := 32; width_reg : integer := 8 );
    Port ( SignatureByte : in  STD_LOGIC_VECTOR (width_reg-1 downto 0);
           Reset : in  STD_LOGIC;
			  Count_En : in  STD_LOGIC;
           Clock : in  STD_LOGIC;
			  hit : out STD_LOGIC;
           Signature : out  STD_LOGIC_VECTOR (width-1 downto 0));
end SignReg;

architecture Structural of SignReg is

component Generic_RAsync_Register is
Generic ( width : integer := 8);
    Port ( D : in  STD_LOGIC_VECTOR (width-1 downto 0);
           clock : in  STD_LOGIC;
           reset : in  STD_LOGIC; --0 attivo
           en : in  STD_LOGIC;    --1 attivo
           Q : out  STD_LOGIC_VECTOR (width-1 downto 0)
			  );
end component;

--component Decoder_2_4 is
--    Port ( i : in  STD_LOGIC_VECTOR (1 downto 0);
--           o : out  STD_LOGIC_VECTOR (3 downto 0));
--end component;
--
component RAsync_H_Count_UpCounter is
	 Generic (MAX_COUNT : integer := 6; width : integer := 3);	
    Port ( clock : in  STD_LOGIC;											-- Clock
           reset : in  STD_LOGIC;											-- Reset 0 attivo
			  en : in STD_LOGIC;													-- Enable 0 attivo
			  hit : out STD_LOGIC;												-- Segnale di Hit
           count : out  STD_LOGIC_VECTOR (width-1 downto 0));		-- Conteggio attuale
end component;

--uscite registri

signal temp_out_0 : STD_LOGIC_VECTOR (width_reg-1 downto 0) := (others =>'0');
signal temp_out_1 : STD_LOGIC_VECTOR (width_reg-1 downto 0) := (others =>'0');
signal temp_out_2 : STD_LOGIC_VECTOR (width_reg-1 downto 0) := (others =>'0');
signal temp_out_3 : STD_LOGIC_VECTOR (width_reg-1 downto 0) := (others =>'0');

--signal Reg_en : STD_LOGIC_VECTOR (3 downto 0) := (others =>'0');

--signal Count_temp : STD_LOGIC_VECTOR (1 downto 0) := (others =>'0');
--signal Dec_out_temp : STD_LOGIC_VECTOR (3 downto 0) := (others =>'0');
signal Count_hit : STD_LOGIC := '0';


begin

--Decoder

--Dec_2_4: Decoder_2_4 port map (
--					i => Count_temp,
--					o => Dec_out_temp
--					);

----Counter
Counter_4 : RAsync_H_Count_UpCounter generic map (MAX_COUNT => 4, width => 3)
			port map(
					clock => Clock,
					reset => Reset,
					en => Count_En,
					hit => Count_hit,
					count => open
					);

-- Registri per la signature
Reg3 : Generic_RAsync_Register generic map (width => width_reg)
				port map ( 
						D =>temp_out_2,
						clock => Clock,
						reset => Reset,
						en => Count_En,
						Q => temp_out_3
						);

Reg2 : Generic_RAsync_Register generic map (width => width_reg)
				port map ( 
						D=> temp_out_1,
						clock => Clock,
						reset => Reset,
						en => Count_En,
						Q => temp_out_2
						);


Reg1 : Generic_RAsync_Register generic map (width => width_reg)
				port map ( 
						D=> temp_out_0,
						clock => Clock,
						reset => Reset,
						en => Count_En,
						Q => temp_out_1
						);
						
Reg0 : Generic_RAsync_Register generic map (width => width_reg)
				port map ( 
						D=> SignatureByte,
						clock => Clock,
						reset => Reset,
						en => Count_En,
						Q => temp_out_0
						);
hit <= Count_hit;


Signature(31 downto 24) <= temp_out_3; 
Signature(23 downto 16) <= temp_out_2;
Signature(15 downto 8) <= temp_out_1;
Signature(7 downto 0) <= temp_out_0;

end Structural;

