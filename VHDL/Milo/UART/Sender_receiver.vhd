----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    15:07:33 12/25/2017 
-- Design Name: 
-- Module Name:    Sender_receiver - Behavioral 
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

entity Sender_receiver is
	 generic (baud_rate :NATURAL:=9600;
				 number_of_bits:NATURAL:=8);
    Port ( clk : in  STD_LOGIC;
			  start: in STD_LOGIC;
			  reset: in STD_LOGIC;
           data : in  STD_LOGIC_VECTOR (7 downto 0);
			  data_t :out STD_LOGIC;
			  received : out STD_LOGIC_VECTOR (7 downto 0));
end Sender_receiver;

architecture Behavioral of Sender_receiver is
	COMPONENT boundary_scan_chain
	generic(n : natural := 8);
	PORT(
		scan_in : IN std_logic;
		clk : IN std_logic;
		reset_n : IN std_logic;
		en : IN std_logic;
		din : IN std_logic_vector(n-1 downto 0);
		scan_en : IN std_logic;          
		scan_out : OUT std_logic;
		dout : OUT std_logic_vector(n-1 downto 0)
		);
	END COMPONENT;
	COMPONENT Transmitter
	PORT(
		clk : IN std_logic;
		start : IN std_logic;
		reset : IN std_logic;
		c_s: in STD_LOGIC;
		send_s: in STD_LOGIC;
		data_in : IN std_logic;      
		shift : OUT std_logic;
		en_c: out STD_LOGIC;
		en_i: out STD_LOGIC;
		en_b: out STD_LOGIC;
		data_out : OUT std_logic
		);
	END COMPONENT;
	COMPONENT Receiver
	PORT(
		clk : IN std_logic;
		data_in : IN std_logic;
		reset : IN std_logic;
		send_s: in STD_LOGIC;
		c_s_s : in STD_LOGIC;
		c_s_r : in STD_LOGIC;
		en_s : out STD_LOGIC;
		en_r : out STD_LOGIC;
		en_sh : OUT std_logic;
		data_out : OUT std_logic
		);
	END COMPONENT;
	COMPONENT contatore_modulo_2n
	generic(width: natural:=3);
	PORT(
		clk : IN std_logic;
		enable : IN std_logic;
		reset : IN std_logic;          
		hit : OUT std_logic;
		output : OUT std_logic_vector(width-1 downto 0)
		);
	END COMPONENT;
	signal next_bit,en_sh,en_sh1,data_o,en_i,data_r,en_c,en_s,en_r,c_s_t,c_s_s,c_s_r,en_b,send_s:STD_LOGIC:='0';
begin
	number_of_bit_t: contatore_modulo_2n port map(clk,en_b,reset,send_s,open);
	counter_t: contatore_modulo_2n port map(clk,en_c,reset,c_s_t,open);
	counter_s: contatore_modulo_2n generic map (width=>2) port map(clk,en_s,reset,c_s_s,open);
	counter_r: contatore_modulo_2n port map(clk,en_r,reset,c_s_r,open);
	trans: Transmitter port map(clk,start,reset,c_s_t,send_s,next_bit,en_sh,en_c,en_i,en_b,data_o);
	input: boundary_scan_chain port map('0',clk,reset,en_i,data,en_sh,next_bit,open);
	output : boundary_scan_chain port map(data_r,clk,reset,'1',"00000000",en_sh1,open,received);
	receive: Receiver port map(clk,data_o,reset,send_s,c_s_s,c_s_r,en_s,en_r,en_sh1,data_r);
	data_t<=data_o;
end Behavioral;

