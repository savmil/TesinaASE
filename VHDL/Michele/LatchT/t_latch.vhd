----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    16:01:32 01/08/2018 
-- Design Name: 
-- Module Name:    t_latch - Structural 
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

entity t_latch is
    Port ( t : in  STD_LOGIC;
			  --clock : in STD_LOGIC;           
			  q : out  STD_LOGIC;
           notq : out  STD_LOGIC);
end t_latch;

--architecture Structural of t_latch is
--
--COMPONENT d_latch_clocked
--	PORT(
--		d : IN std_logic;
--		clock : IN std_logic;          
--		q : OUT std_logic;
--		notq : OUT std_logic
--		);
--END COMPONENT;
--
--signal inD : std_logic;
--signal retro_q : std_logic := '0';
--
--begin
--
--	inD <= retro_q xor t;
--	q <= retro_q;
--	Inst_d_latch_clocked: d_latch_clocked PORT MAP(
--		d => inD,
--		clock => clock,
--		q => retro_q,
--		notq => notq
--	);
--
--
--end Structural;

architecture Structural of t_latch is

COMPONENT rs_latch
	PORT(
		r : IN std_logic;
		s : IN std_logic;          
		q : OUT std_logic;
		notq : OUT std_logic
		);
END COMPONENT;

COMPONENT and_gate
	PORT(
		a : IN std_logic;
		b : IN std_logic;          
		f : OUT std_logic
		);
	END COMPONENT;

signal retro_q : std_logic := '0';
signal retro_q_delayed : std_logic := '0';
signal retro_notq : std_logic := '1';
signal retro_notq_delayed : std_logic := '1';
signal inR : std_logic := '1';
signal inS : std_logic := '0';

begin

	q <= retro_q;
	notq <= retro_notq;
	--Per il Test Behavioral
	retro_q_delayed <= retro_q after 20 ns; -- after non sintetizzabile? non funziona neanche senza
	retro_notq_delayed <= retro_notq after 20 ns;

	-- Tempo di tenuta di T deve essere sufficientemente grande da consentire una commutazione, sufficientemente piccolo	per evitarne altre
	
	Inst_and_gate1: and_gate PORT MAP(
		a => retro_q_delayed,
--		a => retro_q,
		b => t,
		f => inR
	);
	
	Inst_and_gate2: and_gate PORT MAP(
		a => t,
		b => retro_notq_delayed,
--		b => retro_notq,
		f => inS
	);
	
	Inst_rs_latch: rs_latch PORT MAP(
		r => inR,
		s => inS,
		q => retro_q,
		notq => retro_notq
	);

end Structural;

