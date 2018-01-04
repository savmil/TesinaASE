----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    14:52:29 11/22/2012 
-- Design Name: 
-- Module Name:    booth_8 - Behavioral 
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
use work.log_functions.all;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity booth_8 is
    Port ( x : in  STD_LOGIC_VECTOR (7 downto 0);
           y : in  STD_LOGIC_VECTOR (7 downto 0);
           start : in  STD_LOGIC;
           clock : in  STD_LOGIC;
			  reset_n : in STD_LOGIC;
           stop : out  STD_LOGIC;
			  cnt_val : out  STD_LOGIC_VECTOR (2 downto 0);
           result : out  STD_LOGIC_VECTOR (15 downto 0));
end booth_8;

architecture Behavioral of booth_8 is

component booth_multiplier is
	 Generic(
			N : integer := 8
	 );
    Port ( x : in  STD_LOGIC_VECTOR (N-1 downto 0);
           y : in  STD_LOGIC_VECTOR (N-1 downto 0);
           start : in  STD_LOGIC;
           clock : in  STD_LOGIC;
			  reset_n : in STD_LOGIC;
           stop : out  STD_LOGIC;
			  cnt_val : out  STD_LOGIC_VECTOR (log2ceil(N)-1 downto 0);
           result : out  STD_LOGIC_VECTOR (2*N-1 downto 0));
end component;

for all: booth_multiplier use entity WORK.booth_multiplier( Structural);

begin

booth: booth_multiplier generic map(N => 8) port map(
	x => x,
	y => y,
	start => start,
	clock => clock,
	reset_n => reset_n, 
	stop => stop,
	cnt_val => cnt_val,
	result => result
	);

end Behavioral;

