--
--	Package File Template
--
--	Purpose: This package defines supplemental types, subtypes, 
--		 constants, and functions 
--
--   To use any of the example code shown below, uncomment the lines and modify as necessary
--

library IEEE;
use IEEE.STD_LOGIC_1164.all;

package log_functions is

function log2ceil (n : natural) return natural;

end log_functions;

package body log_functions is

function log2ceil (N : natural) return natural is
		variable i, j : natural;
	begin
		i := 0;
		j := 1;
		while (j < N) loop
			i := i + 1;
			j := 2 * j;
		end loop;
		return i;
	end log2ceil;
 
end log_functions;
