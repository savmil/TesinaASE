----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    10:01:58 11/22/2012 
-- Design Name: 
-- Module Name:    booth_multiplier - Behavioral 
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

entity booth_multiplier is
	 Generic(
			N : integer := 8
	 );
    Port ( x : in  STD_LOGIC_VECTOR (N-1 downto 0);
           y : in  STD_LOGIC_VECTOR (N-1 downto 0);
           start : in  STD_LOGIC;
           clock : in  STD_LOGIC;
			  reset_n : in STD_LOGIC;
           stop : out  STD_LOGIC;
           result : out  STD_LOGIC_VECTOR (2*N-1 downto 0));
end booth_multiplier;

architecture Structural of booth_multiplier is


COMPONENT RCAddSub
	 Generic(
		width : integer := 8
		);
    Port (
		a : in  STD_LOGIC_VECTOR(width-1 downto 0);
		b : in  STD_LOGIC_VECTOR(width-1 downto 0);
		add_sub_n : in STD_LOGIC;
      s : out  STD_LOGIC_VECTOR (width-1 downto 0);
      ov : out  STD_LOGIC
		);
END COMPONENT;

COMPONENT reg_clock
	 Generic(
			width : integer := 8
			);
    Port ( 
			value : in  STD_LOGIC_VECTOR (width-1 downto 0);
         clock : in  STD_LOGIC;
         enable : in  STD_LOGIC;
         reset_n : in  STD_LOGIC;
         output : out  STD_LOGIC_VECTOR (width-1 downto 0)
			);
END COMPONENT;

COMPONENT shift_register_pilotato
    generic(
			  width : integer := 8;
			  right_left_n_shift : std_logic := '1'
	 );
    Port ( 
		  reg_in : in  STD_LOGIC_VECTOR (width-1 downto 0);
		  scan_in : in  STD_LOGIC;
		  scan_en : in  STD_LOGIC;
		  en : in  STD_LOGIC;
		  reset_n : in STD_LOGIC;
		  clock : in  STD_LOGIC;
		  scan_out : out  STD_LOGIC;
		  q : out  STD_LOGIC_VECTOR (width-1 downto 0)
	);
END COMPONENT;

Component counter
	 Generic(count_max : integer := 8);
    Port ( clock : in  STD_LOGIC;
           count_up : in  STD_LOGIC;
           reset_n : in  STD_LOGIC;
           value : out  STD_LOGIC_VECTOR (log2ceil(count_max)-1 downto 0);
           hit : out STD_LOGIC);
end component;

component control_unit is
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
end component;

signal a, m, a_m_add : std_logic_vector(N-1 downto 0);
signal q, val_in_q : std_logic_vector(N downto 0);
signal count_up, shift, en_a, lsb_a, en_q, en_m, counter_hit, reset_a_cu,
		 reset_a, reset_count_cu, reset_count : std_logic;

alias q_lsbs is q(1 downto 0);

begin

val_in_q <= X & '0';
reset_a <= reset_n AND not reset_a_cu;
reset_count <= reset_n AND not reset_count_cu;
result <= a(N-1 downto 0) & q(N downto 1);

add_sub_ripple: RCAddSub generic map(
		width => N
	) port map(
		a => a,
		b => m,
		add_sub_n => q(1),
		s => a_m_add,
		ov => open
	);
	
counter_mod_N: counter generic map(
		count_max => N
	) port map(
		clock => clock,
		count_up => count_up,
		reset_n => reset_count,
		value => open,
		hit => counter_hit
	);
	
reg_a : shift_register_pilotato generic map(
		width => N,
		right_left_n_shift => '0'
	) port map(
		reg_in => a_m_add,
		scan_in => a(N-1), --Questa assegazione garantisce che A sia sempre signed extended
		scan_en => shift,
		en => en_a,
		reset_n => reset_a,
		clock => clock,
		scan_out => lsb_a,
		q => a
	);
	
reg_q : shift_register_pilotato generic map(
		width => N + 1,
		right_left_n_shift => '0'
	) port map(
		reg_in => val_in_q,
		scan_in => lsb_a,
		scan_en => shift,
		en => en_q,
		reset_n => reset_n,
		clock => clock,
		scan_out => open,
		q => q
	);

reg_m : reg_clock generic map(
	width => N
	) port map(
		value => Y,
      clock => clock,
      enable => en_m,
      reset_n => reset_n,
      output => m
	);
	
cu : control_unit port map(
	  clock => clock,
	  start => start,
	  reset_n => reset_n,
	  q_lsbs => q_lsbs,
	  counter_hit => counter_hit,
	  stop => stop,
	  reset_a => reset_a_cu,
	  reset_count => reset_count_cu,
	  en_a => en_a,
	  en_q => en_q,
	  en_m => en_m,
	  count_up => count_up,
	  shift => shift
	);

end Structural;

