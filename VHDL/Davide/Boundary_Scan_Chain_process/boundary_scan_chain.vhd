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
	generic(n : natural := 1);
    Port ( --state_vector : in  STD_LOGIC_VECTOR (n-1 downto 0);
			  scan_in : in STD_LOGIC;
           clk : in  STD_LOGIC;
			  reset_n : in STD_LOGIC;
           din : in  STD_LOGIC_VECTOR (n-1 downto 0);
           scan_en : in  STD_LOGIC;
           scan_out : out  STD_LOGIC;
           dout : out  STD_LOGIC_VECTOR (n-1 downto 0)
	 );
end boundary_scan_chain;

architecture Structural of boundary_scan_chain is

	component edge_triggered_d_n is
		generic(width : natural := 1);
		Port ( d : in  STD_LOGIC_VECTOR (width-1 downto 0);
				 clk : in  STD_LOGIC;
				 reset_n : in  STD_LOGIC;
				 q : out  STD_LOGIC_VECTOR (width-1 downto 0)
		);
	end component;
	
	component mux2_1 is 
		Port ( SEL : in STD_LOGIC;
				 A   : in STD_LOGIC;
				 B   : in STD_LOGIC;
				 X   : out STD_LOGIC
		);
	end component;

signal q : std_logic_vector(n-1 downto 0) := (others => '0');
signal x : std_logic_vector(n-1 downto 0) := (others => '0');

begin
	chain_gen: for i in 0 to n-1 generate
		inst_mux2_1: mux2_1 
			Port map( SEL => scan_en,
						 A => q(i),
						 B => din(i),
						 X => x(i)
			);
			
		inst_edge_triggered: edge_triggered_d_n generic map(width =>1)
			Port map( d(0) => x(i),
						 clk => clk,
						 reset_n => reset_n,
						 q(0) => dout(i)			
			);
	end generate;

main : process(clk,scan_en)
	begin
		--if(clk'event and clk='1') then
			if((scan_en='1')) then
				if (rising_edge(clk)) then
					for i in 0 to n-2 loop
						q(i+1) <= q(i);
					end loop;
					q(0) <= scan_in; --q(0)  l'ingresso del primo mux relativo allo scan_in
				end if;
			end if;
	end process;
	
	scan_out <= q(n-1);
	
	
end Structural;

