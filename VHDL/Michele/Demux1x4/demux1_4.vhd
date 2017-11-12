library ieee;
use ieee.std_logic_1164.all;

entity demux1_4 is
	port(
		a : in std_logic;
		sel : in std_logic_vector(1 downto 0);
		x : out std_logic_vector(3 downto 0)
	);
end demux1_4;

--architecture dataflow of demux1_4 is
--begin
	--x(0) <= a when sel = "00" else '0';
	--x(1) <= a when sel = "01" else '0';
	--x(2) <= a when sel = "10" else '0';
	--x(3) <= a when sel = "11" else '0';
--end dataflow;

architecture structural of demux1_4 is

component demux1_2 is
	port(
		a : in std_logic;
		sel : in std_logic;
		x : out std_logic_vector(1 downto 0)
	);
end component;

signal demux0_out : std_logic_vector(1 downto 0) := (others => '0');
signal demux1_out : std_logic_vector(1 downto 0) := (others => '0');
signal demux2_out : std_logic_vector(1 downto 0) := (others => '0');

begin
	demux0 : demux1_2 port map(a, sel(1), demux0_out);
	demux1 : demux1_2 port map(demux0_out(0), sel(0), demux1_out);
	demux2 : demux1_2 port map(demux0_out(1), sel(0), demux2_out);
	x(3 downto 2) <= demux2_out;
	x(1 downto 0) <= demux1_out;
end structural;