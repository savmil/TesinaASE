----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:06:47 11/12/2017 
-- Design Name: 
-- Module Name:    gestore_display - Behavioral 
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

entity gestore_display is
	port( number: in STD_LOGIC_VECTOR(15 downto 0);
			enable: in STD_LOGIC;
			clk: in STD_LOGIC;
			point: in STD_LOGIC_VECTOR(3 downto 0);
			reset: in  STD_LOGIC;
			anode: out STD_LOGIC_VECTOR(3 downto 0);
			cathode: out STD_LOGIC_VECTOR(6 downto 0));
end gestore_display;
architecture Behavioral of gestore_display is
COMPONENT clk_fil
	generic(freq_in: natural:=5000;
			  freq_out:natural:=500);
	PORT(
		clk : IN std_logic;
		enable : IN std_logic;
		reset : IN std_logic;          
		hit : OUT std_logic;
		output : OUT std_logic_vector(freq_in/freq_out-1 downto 0)
		);
	END COMPONENT;
	COMPONENT contatore_modulo_2n
	PORT(
		clk : IN std_logic;
		enable : IN std_logic;
		reset : IN std_logic;          
		hit : OUT std_logic;
		output : OUT std_logic_vector(1 downto 0)
		);
	END COMPONENT;
	COMPONENT selettore_cifra
	PORT(
		number : IN std_logic_vector(15 downto 0);
		numero_cifra : IN std_logic_vector(1 downto 0);          
		valore_cifra : OUT std_logic_vector(3 downto 0)
		);
	END COMPONENT;
	COMPONENT display_7_segmenti
	PORT(
		switch : IN std_logic_vector(3 downto 0);
		point : IN std_logic_vector(3 downto 0);          
		segment : OUT std_logic_vector(6 downto 0)
		);
	END COMPONENT;
	COMPONENT demux1_4
	PORT(
		a : IN std_logic;
		sel : IN std_logic_vector(1 downto 0);          
		x : OUT std_logic_vector(3 downto 0)
		);
	END COMPONENT;
signal h:STD_LOGIC;
signal cifra:STD_LOGIC_VECTOR(1 downto 0);
signal valore_cifra:STD_LOGIC_VECTOR(3 downto 0);
begin
	clock_filter:clk_fil port map(clk,enable,reset,h,open);
	counter_mod_4:contatore_modulo_2n port map(clk,h,reset,open,cifra);
	s_c:selettore_cifra port map(number,cifra,valore_cifra);
	d_7_s:display_7_segmenti port map(valore_cifra,point,cathode);
	gestore_anodi: demux1_4 port map('1',cifra,anode);
end Behavioral;

