----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:18:48 11/22/2012 
-- Design Name: 
-- Module Name:    control_unit - Behavioral 
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
use work.log_functions.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity control_unit is
    Port ( clock : in  STD_LOGIC;
			  start : in  STD_LOGIC;
			  reset_n : in STD_LOGIC;
           q_lsbs : in  STD_LOGIC_VECTOR (1 downto 0);
           counter_hit : in  STD_LOGIC;
           stop : out  STD_LOGIC;
           reset_a : out  STD_LOGIC;
           reset_count : out  STD_LOGIC;
           en_a : out  STD_LOGIC;
           en_q : out  STD_LOGIC;
           en_m : out  STD_LOGIC;
           count_up : out  STD_LOGIC;
           shift : out  STD_LOGIC);
end control_unit;

architecture Behavioral of control_unit is

type state is (idle, init, choice, operation, right_shift);

signal current, nxt : state := idle;

begin

state_proc: process(clock, reset_n)
begin
	if reset_n = '0' then
		current <= idle;
	elsif rising_edge(clock) then
		current <= nxt;
	end if;
end process;

fsm: process(current, start, reset_n, q_lsbs, counter_hit)
begin

	stop <= '0';
	reset_a <= '0';
	reset_count <= '0';
	en_a <= '0';
	en_q <= '0';
	en_m <= '0';
	count_up <= '0';
	shift <= '0';
	
	case current is
		when idle =>
			stop <= '1';
			if start = '1' then
				nxt <= init;
			else
				nxt <= idle;
			end if;
			
		when init =>
			en_q <= '1';
			en_m <= '1';
			reset_count <= '1';
			reset_a <= '1';
			nxt <= choice;
			
		when choice =>
			if q_lsbs(0) = q_lsbs(1) then
				nxt <= right_shift;
			else
				nxt <= operation;
			end if;
			
		when operation =>
			en_a <= '1';
			nxt <= right_shift;
		
		when right_shift =>
			en_a <= '1';
			en_q <= '1';
			shift <= '1';
			if counter_hit = '0' then
				count_up <= '1';
				nxt <= choice;
			else
				nxt <= idle;
			end if;
		
	end case;

end process;

end Behavioral;

