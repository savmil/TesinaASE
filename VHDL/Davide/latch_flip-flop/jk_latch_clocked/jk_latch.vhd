----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:12:53 01/08/2018 
-- Design Name: 
-- Module Name:    jk_latch - Behavioral 
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

entity jk_latch is
    Port ( j : in  STD_LOGIC;
           k : in  STD_LOGIC;
			  clock : in STD_LOGIC;
			  preset : in STD_LOGIC;
			  clear : in STD_LOGIC;
           q : out  STD_LOGIC;
           notq : out  STD_LOGIC);
end jk_latch;

architecture Structural of jk_latch is

component and_gate is
    Port ( a : in  STD_LOGIC;
           b : in  STD_LOGIC;
			  c : in STD_LOGIC;
           f : out  STD_LOGIC);
end component;

component rs_latch is
    Port ( r : in  STD_LOGIC;
           s : in  STD_LOGIC;
           q : out  STD_LOGIC;
           notq : out  STD_LOGIC);
end component;

signal q_feedback, S, in_latch_s, q_feedback_delayed : std_logic := '0';
signal notq_feedback, R, in_latch_r, notq_feedback_delayed : std_logic := '1';

begin

	andK : and_gate
		port map(
			a => k,
			b => clock,
			c => q_feedback_delayed,
			f => R
		);
		
	andJ : and_gate
		port map(
			a => j,
			b => clock,
			c => notq_feedback_delayed,
			f => S
		);

	in_latch_r <= R or clear;
	in_latch_s <= S or preset;
		
	rs : rs_latch
		port map(
			r => in_latch_r,
			s => in_latch_s,
			q => q_feedback,
			notq => notq_feedback
		);
		
	q <= q_feedback;
	notq <= notq_feedback;
	 -- tempificazione per la simulazione behavioral
	 --senza l'after la simulazione si ferma per limite di iterazione (come ci si aspetterebbe)
	q_feedback_delayed <= q_feedback after 1 ns;
	notq_feedback_delayed <= notq_feedback after 1 ns;

end Structural;

