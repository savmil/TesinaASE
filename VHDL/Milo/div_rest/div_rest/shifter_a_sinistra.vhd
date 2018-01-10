----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    19:57:50 11/19/2017 
-- Design Name: 
-- Module Name:    boundary_scan_chain - Structural 
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
USE ieee.std_logic_arith.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity boundary_scan_chain is
	generic(n : natural := 4);
    Port ( --state_vector : in  STD_LOGIC_VECTOR (n-1 downto 0);
			  scan_in : in STD_LOGIC;
           clk : in  STD_LOGIC;
			  reset_n : in STD_LOGIC;
			  en: in STD_LOGIC;
           din : in  STD_LOGIC_VECTOR (n-1 downto 0);
           scan_en : in  STD_LOGIC;
           scan_out : out  STD_LOGIC;
           dout : out  STD_LOGIC_VECTOR (n-1 downto 0)
	 );
end boundary_scan_chain;

architecture Structural of boundary_scan_chain is

	component latch_d_en is
	generic(width:natural:=1);
    Port ( clk : in  STD_LOGIC;
           reset : in  STD_LOGIC;
           en : in  STD_LOGIC;
           d : in  STD_LOGIC_VECTOR (width-1 downto 0);
           q : out  STD_LOGIC_VECTOR (width-1 downto 0));
	end component;

	
	component mux2_1 is 
		Port ( SEL : in STD_LOGIC;
				 A   : in STD_LOGIC;
				 B   : in STD_LOGIC;
				 X   : out STD_LOGIC
		);
	end component;

signal q : std_logic_vector(n-1 downto 0) := (others => '0');
signal x,dinapp : std_logic_vector(n-1 downto 0) := (others => '0');
signal s_out: std_logic:='0';
begin
	chain_gen: for i in n-1 downto 0 generate
		sc_in: if i=0 generate
			inst_mux2_1: mux2_1 
			Port map( SEL => scan_en,
						 A => scan_in,
						 B => dinapp(i),
						 X => x(i)
			);
			
		inst_edge_triggered: latch_d_en generic map(width =>1)
			Port map( clk => clk,
						 reset => reset_n,
						 en => '1',
						 d(0) => x(i),
						 q(0) => q(i)			
			);

		end generate sc_in;
		sc_ch: if i>0 and i <n-1 generate
			inst_mux2_1: mux2_1 
				Port map( SEL => scan_en,
							A => q(i-1),
							B => dinapp(i),
							X => x(i)
				);
			
			inst_edge_triggered: latch_d_en generic map(width =>1)
			Port map( clk => clk,
						 reset => reset_n,
						 en => '1',
						 d(0) => x(i),
						 q(0) => q(i)			
			);

			end generate sc_ch;
		sc_out: if i=n-1 generate
		inst_mux2_1: mux2_1 
			Port map( SEL => scan_en,
						 A => q(i-1),
						 B => dinapp(i),
						 X => x(i)
			);
			
		inst_edge_triggered: latch_d_en generic map(width =>1)
			Port map( clk => clk,
						 reset => reset_n,
						 en => '1',
						 d(0) => x(i),
						 q(0) => s_out			
			);

		end generate sc_out;
	end generate;
	dout<=	s_out & q(n-2 downto 0);
	with en select dinapp<=
		din when '0',
		s_out & q(n-2 downto 0) when others;
	scan_out<=s_out;
end Structural;

