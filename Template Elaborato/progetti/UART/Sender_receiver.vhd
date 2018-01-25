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

architecture Structural of Sender_receiver is
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
		fin: IN std_logic;
		shift : OUT std_logic;
		en_c: out STD_LOGIC;
		en_i: out STD_LOGIC;
		en_b: out STD_LOGIC;
		end_t: out STD_LOGIC_VECTOR(0 downto 0);
		data_out : OUT std_logic
		);
	END COMPONENT;
	COMPONENT Receiver
	PORT(
		clk : IN std_logic;
		data_in : IN std_logic;
		reset : IN std_logic;
		rec: in STD_LOGIC;
		c_s_s : in STD_LOGIC;
		c_s_r : in STD_LOGIC;
		en_b_r: OUT std_logic;
		en_s : out STD_LOGIC;
		en_r : out STD_LOGIC;
		en_sh : OUT std_logic;
		data_out : OUT std_logic
		);
	END COMPONENT;
	COMPONENT contatore_modulo_2n
	generic(width: natural:=4);
	PORT(
		clk : IN std_logic;
		enable : IN std_logic;
		reset : IN std_logic;          
		hit : OUT std_logic;
		output : OUT std_logic_vector(width-1 downto 0)
		);
	END COMPONENT;
	COMPONENT latch_d_en
	generic(width: natural:=1);
	PORT(
		clk : IN std_logic;
		reset : IN std_logic;
		en : IN std_logic;
		d : IN std_logic_vector(width-1 downto 0);          
		q : OUT std_logic_vector(width-1 downto 0)
		);
	END COMPONENT;
	signal next_bit,en_sh,en_sh1,data_o,en_i,data_r,en_c,en_s,en_r,c_s_t,c_s_s,c_s_r,en_b_t,en_b_r,send_s,rec:STD_LOGIC:='0';
	signal data_to_trasmit: STD_LOGIC_VECTOR(10 downto 0) := (others =>'0');
	signal end_t1,end_t:STD_LOGIC_VECTOR(0 downto 0):="0";
begin
	data_to_trasmit<='1' & data &"01";
	number_of_bit_t: contatore_modulo_2n generic map(width=>3) port map(clk,en_b_t,reset,send_s,open);--numero di bit trasmessi
	number_of_bit_r: contatore_modulo_2n generic map(width=>3) port map(clk,en_b_r,reset,rec,open);--numero di bit ricevuti
	counter_t: contatore_modulo_2n port map(clk,en_c,reset,c_s_t,open);-- tempo che occorre attende prima di inviare successivo bit
	counter_s: contatore_modulo_2n generic map (width=>3) port map(clk,en_s,reset,c_s_s,open);-- conta per far sfasare il ricevitore
	counter_r: contatore_modulo_2n port map(clk,en_r,reset,c_s_r,open);-- tempo che deve attendere il ricevitore prima di ricevere successivo bit
	trans: Transmitter port map(clk,start,reset,c_s_t,send_s,next_bit,end_t(0),en_sh,en_c,en_i,en_b_t,end_t1,data_o);
	end_trasmission: latch_d_en port map (clk,reset,end_t1(0),end_t1,end_t);
	input: boundary_scan_chain generic map (n=>11) port map('0',clk,reset,en_i,data_to_trasmit,en_sh,next_bit,open);
	output : boundary_scan_chain port map(data_r,clk,reset,'1',"00000000",en_sh1,open,received);
	receive: Receiver port map(clk,data_o,reset,rec,c_s_s,c_s_r,en_b_r,en_s,en_r,en_sh1,data_r);
	data_t<=data_o;
end Structural;

