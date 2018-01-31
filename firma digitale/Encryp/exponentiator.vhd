library ieee; use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
package constants is
constant n: natural := 32;
--constant p: natural := 8;
end constants;

library ieee; use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use work.constants.all;
entity reduction_step is
port (
a: in std_logic_vector(2*n-1 downto 0);
m: in std_logic_vector(n-1 downto 0);
r: out std_logic_vector(2*n-1 downto 0)
);
end reduction_step;

architecture rtl of reduction_step is
signal a_by_two, long_m, z: std_logic_vector(n+1 downto 0);
signal short_r: std_logic_vector(2*n-2 downto 0);
begin
a_by_two <= '0'&a(2*n-1 downto n-1);
long_m <= "00"&m;
z <= a_by_two - long_m;
with z(n+1) select short_r <= a(2*n-2 downto 0) when '1', 
z(n-1 downto 0)&a(n-2 downto 0) when others;
r <= short_r&'0';
end rtl;

library ieee; use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use work.constants.all;
entity sequential_mod_mult is
port (
x, y, m: in std_logic_vector(n-1 downto 0);
z: out std_logic_vector(n-1 downto 0);
clk, reset, start: in std_logic;
done: out std_logic 
);
end sequential_mod_mult;

architecture rtl of sequential_mod_mult is
component reduction_step
port (
a: in std_logic_vector(2*n-1 downto 0);
m: in std_logic_vector(n-1 downto 0);
r: out std_logic_vector(2*n-1 downto 0)
);
end component;

signal p, long_y, w: std_logic_vector(n downto 0);
signal product, r: std_logic_vector(2*n-1 downto 0);
subtype internal_states is natural range 0 to 2*n+3;

signal state: internal_states;

begin
p <= '0'&product(2*n-1 downto n);
long_y <= '0'&y;
with product(0) select w <= p + long_y when '1', p when others;
label_1: reduction_step port map(product, m, r);
process (clk, reset)
begin
if reset = '1' then state <= 0; done <= '0';
elsif clk'event and clk = '1' then
case state is
when 0 => if start = '0' then state <= state + 1; end if;
when 1 => if start = '1' then state <= state + 1; end if;
when 2 => product(2*n-1 downto n) <= conv_std_logic_vector(0, n);
product(n-1 downto 0) <= x; done <= '0'; state <= state + 1;
when 3 to n+2 => product(2*n-1 downto n) <= w(n downto 1); product(n-1) <= w(0); 
for i in n-2 downto 0 loop product(i) <= product(i+1); end loop;
state <= state + 1;
when n+3 to 2*n+2 => product <= r; state <= state + 1;
when 2*n+3 => done <= '1'; state <= 0;
end case;
end if;
end process;
z <= product(2*n-1 downto n);
end rtl;

library ieee; use ieee.std_logic_1164.all;
use ieee.std_logic_arith.all;
use ieee.std_logic_unsigned.all;
use work.constants.all;
entity exponentiator is
generic (n : integer := 32);
port (
x, y, m: in std_logic_vector(n-1 downto 0);
z: inout std_logic_vector(n-1 downto 0);
clk, reset, start: in std_logic;
done: out std_logic 
);
end exponentiator;

architecture circuit of exponentiator is
component sequential_mod_mult
port (
x, y, m: in std_logic_vector(n-1 downto 0);
z: inout std_logic_vector(n-1 downto 0);
clk, reset, start: in std_logic;
done: out std_logic 
);
end component;
signal start_mult, sel_y, done_mult: std_logic;
signal reg_x, input_y, output_z: std_logic_vector(n-1 downto 0);
subtype step_number is natural range 0 to n;
signal count: step_number;
subtype internal_states is natural range 0 to 14;
signal state: internal_states;

begin
label_1: sequential_mod_mult port map(z, input_y, m, output_z, clk, reset, 
start_mult, done_mult);
with sel_y select input_y <= z when '0', y when others;

process (clk, reset)
begin
if reset = '1' then state <= 0; done <= '0'; start_mult <= '0'; count <= 0; -- z <= (others =>'0');
elsif clk'event and clk = '1' then
case state is
when 0 => if start = '0' then state <= state + 1; end if;
when 1 => if start = '1' then state <= state + 1; end if;
when 2 => z <= conv_std_logic_vector(1, n);reg_x <= x; count <= 0; 
done <= '0'; state <= state + 1;
when 3 => sel_y <= '0'; start_mult <= '1'; state <= state + 1;
when 4 => state <= state + 1;
when 5 => start_mult <= '0'; state <= state + 1;
when 6 => if done_mult = '1' then state <= state + 1; end if;
when 7 => z <= output_z; 
if reg_x(n-1) = '1' then state <= state +1; else state <= 13; end if;
when 8 => sel_y <= '1'; start_mult <= '1'; state <= state + 1;
when 9 => state <= state + 1;
when 10 => start_mult <= '0';state <= state + 1;
when 11 => if done_mult = '1' then state <= state + 1; end if;
when 12 => z <= output_z; state <= state + 1;
when 13 => reg_x(0) <= reg_x(n-1);
for i in 1 to n-1 loop reg_x(i) <= reg_x(i-1); end loop;
count <= count+1; state <= state + 1;
when 14 => if count >= n then done <= '1'; state <= 0; else state <= 3; end if;
end case;
end if;
end process;
end circuit;


