----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    11:10:36 12/07/2017 
-- Design Name: 
-- Module Name:    RSA - Structural 
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

entity RSA is
  Generic( width : integer := 32; width_reg : integer := 8);
  --Generic( msgwidth : integer := 32);
    Port ( CharacterByte : in  STD_LOGIC_VECTOR(width_reg-1 downto 0);
			  Clock : in STD_LOGIC;
           Start : in  STD_LOGIC;
           Load : in  STD_LOGIC;
           Verify : in  STD_LOGIC;
           Done : in  STD_LOGIC;
			  Anodes : out  STD_LOGIC_VECTOR (3 downto 0);    
           Cathodes : out  STD_LOGIC_VECTOR (7 downto 0);
			  Compare_ok : out STD_LOGIC;
			  Compare_nok : out STD_LOGIC
			  );
end RSA;

architecture Structural of RSA is

component Debouncer_xilinx is 
    Port ( CLK : in  STD_LOGIC; 
           Sig : in  STD_LOGIC; 
           Deb_Sig : out  STD_LOGIC); 
end component;

component FSM_RSA is
Port ( 
			Clock : in  STD_LOGIC;			-- Clock
			--in
			
			Start_sign : in  STD_LOGIC;	--start sign
			Load : in  STD_LOGIC;     	   --load 8 bits
			Verify : in  STD_LOGIC;			--start verify signature
			Done : in  STD_LOGIC;			--end message
			Exp_Done : in  STD_LOGIC;		--end exp operation
			Count_hit :in STD_LOGIC;		--signature load
			Count_eq :in STD_LOGIC;			--
			Count_neq :in STD_LOGIC;		--
			--control
			
			Enable_Hash : out STD_LOGIC;		-- Enable hash '0' attivo (2colpi)
			Enable_Exp : out STD_LOGIC;		-- Enable exp '1' attivo
			Enable_RegExp : out STD_LOGIC;	-- Enable RegExp '0' attivo
			Enable_sign_reg : out STD_LOGIC; -- Enable sign_reg '0' attivo
			Enable_comp : out STD_LOGIC; 		-- Enable Comparator '1' attivo
			Enable_Disp : out STD_LOGIC; 		-- Enable 7segm '0' attivo	
			
			Mux_sel : out STD_LOGIC;			-- 1 per verifica, 0 per firma
			Mux_disp : out STD_LOGIC;			-- 1 MSB, 0 LSB
			Reset_State : out STD_LOGIC	 	-- Reset '0' attivo
			);
end component;

component Mux_2n_1n is
	 generic(width : integer := 8);
    Port ( a : in  STD_LOGIC_VECTOR(width-1 downto 0);
           b : in  STD_LOGIC_VECTOR(width-1 downto 0);
           s : in  STD_LOGIC;
           o : out  STD_LOGIC_VECTOR(width-1 downto 0));
end component;

component HashFunction is
Generic( width : integer := 32; width_reg : integer := 8);
    Port ( CharacterByte : in  STD_LOGIC_VECTOR(width_reg-1 downto 0);
			  Clock : in  STD_LOGIC;
           Reset : in  STD_LOGIC; -- 0 attivo
			  Reg_en : in STD_LOGIC; -- 0 attivo
           Digest : out  STD_LOGIC_VECTOR(width-1 downto 0)			  
			  );
end component;

component SignReg is
Generic( width : integer := 32; width_reg : integer := 8 );
    Port ( SignatureByte : in  STD_LOGIC_VECTOR (width_reg-1 downto 0);
           Reset : in  STD_LOGIC;  		-- Segnale di reset 0 attivo
			  Count_En : in  STD_LOGIC;   -- Segnale di enable 1 attivo
           Clock : in  STD_LOGIC;
			  hit : out STD_LOGIC;
           Signature : out  STD_LOGIC_VECTOR (width-1 downto 0)
			  );
end component;

component exponentiator is
		generic (n : integer := 32); 
		port (
				x : in  STD_LOGIC_VECTOR(n-1 downto 0);
				y : in  STD_LOGIC_VECTOR(n-1 downto 0);
				m : in  STD_LOGIC_VECTOR(n-1 downto 0);
				z: inout STD_LOGIC_VECTOR(n-1 downto 0);
				clk : in STD_LOGIC;
				reset : in STD_LOGIC; -- 0 attivo
				start : in STD_LOGIC; -- 1 attivo
				done: out STD_LOGIC
				);
end component;

component Comparator32 is
generic(width : integer := 32);
    Port ( a : in  STD_LOGIC_VECTOR (width-1 downto 0);
           b : in  STD_LOGIC_VECTOR (width-1 downto 0);
			  Clock : in STD_LOGIC;		  
			  Comp_en : in  STD_LOGIC;  -- 1 attivo
           equal : out  STD_LOGIC;
			  Notequal : out  STD_LOGIC);
end component;


component seven_seg_interface_adapter is
    Port ( Value : in  STD_LOGIC_VECTOR (15 downto 0); 
			  Clock : in STD_LOGIC;
           En : in  STD_LOGIC;			-- 0 attivo					              
           Dots : in  STD_LOGIC_VECTOR (3 downto 0);    
           Anodes_Mask : in  STD_LOGIC_VECTOR (3 downto 0);
           Anodes : out  STD_LOGIC_VECTOR (3 downto 0);    
           Cathodes : out  STD_LOGIC_VECTOR (7 downto 0));
end component;

--****** FSM ******
signal reset_temp : STD_LOGIC := '0';
--****** Exp_mux ****** 

signal mux_select: STD_LOGIC := '0'; -- 1 per signature, 0 per hashing
signal Exp_mux_out : STD_LOGIC_VECTOR (width-1 downto 0) := (others =>'0');

--****** key_mux ****** 

--signal Key_mux_select: STD_LOGIC := '0'; -- 1 per e, 0 per d
signal Key_mux_out : STD_LOGIC_VECTOR (width-1 downto 0) := (others =>'0');
--signal Key_d : STD_LOGIC_VECTOR (width-1 downto 0) := (others =>'0');
--signal Key_e : STD_LOGIC_VECTOR (width-1 downto 0) := (others =>'0');

--****** exp ****** 

--signal exp_reset : STD_LOGIC := '0';
signal exp_start : STD_LOGIC := '0';
signal exp_done : STD_LOGIC := '0';
signal exp_out : STD_LOGIC_VECTOR (width-1 downto 0) := (others =>'0');

--signal exp_Key_n : STD_LOGIC_VECTOR (width-1 downto 0) := (others =>'0');

--****** sign_reg ****** 

--signal sign_Reg_reset : STD_LOGIC := '0';
signal sign_Reg_count_en : STD_LOGIC := '0';
signal sign_Reg_hit : STD_LOGIC := '0';
signal SignR_out : STD_LOGIC_VECTOR (width-1 downto 0) := (others =>'0');

--****** Comp ****** 

signal Comp_en : STD_LOGIC := '0';
signal Comp_outeq : STD_LOGIC := '0';
signal Comp_outNeq : STD_LOGIC := '0';
 
--****** HashF ****** 

--signal Hash_reset : STD_LOGIC := '0';
signal Hash_Reg_en : STD_LOGIC := '0';
signal Hash_out : STD_LOGIC_VECTOR (width-1 downto 0) := (others =>'0');

--****** RegExp ****** 
--signal RegExp_reset : STD_LOGIC := '0';
signal RegExp_Reg_en : STD_LOGIC := '0';
signal RegExp_out : STD_LOGIC_VECTOR (width-1 downto 0) := (others =>'0');

--****** Disp_mux ****** 

signal Disp_mux_select: STD_LOGIC := '0'; -- 1 per signature, 0 per hashing
signal Disp_mux_out : STD_LOGIC_VECTOR (16-1 downto 0) := (others =>'0');

--****** Disp ****** 

signal Disp_en: STD_LOGIC := '0'; -- 1 per signature, 0 per hashing
signal Disp_Anodes_out : STD_LOGIC_VECTOR (3 downto 0) := (others =>'0');
signal Disp_Cathodes_out : STD_LOGIC_VECTOR (7 downto 0) := (others =>'0');

--****** Debouncer ******
signal Start_temp: STD_LOGIC := '0';
signal Load_temp: STD_LOGIC := '0';
signal Verify_temp: STD_LOGIC := '0';
signal Done_temp: STD_LOGIC := '0';


begin

deb_0: Debouncer_xilinx 
			port map(
				CLK => Clock, 
				Sig =>  Start, 
				Deb_Sig => Start_temp 
				);
				
deb_1: Debouncer_xilinx 
			port map(
				CLK => Clock, 
				Sig =>  Load, 
				Deb_Sig => Load_temp
				);
				
deb_2: Debouncer_xilinx 
			port map(
				CLK => Clock, 
				Sig =>  Verify, 
				Deb_Sig => Verify_temp
				);
				
deb_3: Debouncer_xilinx 
			port map(
				CLK => Clock, 
				Sig =>  Done, 
				Deb_Sig => Done_temp
				);

RSAFSM : FSM_RSA
			port map(
				Clock => Clock,			-- Clock
				--in
				Start_sign => Start_temp,	--start sign
				Load => Load_temp,     	   --load 8 bits
				Verify => Verify_temp,	--start verify signature
				Done => Done_temp,			--end message
				Exp_Done => exp_done,		--end exp operation
				Count_hit =>  sign_Reg_hit,		--signature load
				Count_eq => Comp_outeq,			--
				Count_neq => Comp_outneq,		--
				--control
				
				Enable_Hash => Hash_Reg_en,		-- Enable hash '0' attivo (2colpi)
				Enable_Exp => exp_start,		-- Enable exp '1' attivo
				Enable_RegExp => RegExp_Reg_en,	-- Enable RegExp '0' attivo
				Enable_sign_reg => sign_Reg_count_en, -- Enable sign_reg '0' attivo
				Enable_comp => Comp_en, 		-- Enable Comparator '1' attivo
				Enable_Disp => Disp_en, 		-- Enable 7segm '0' attivo	
				
				Mux_sel => mux_select,			-- 1 per verifica, 0 per firma
				Mux_disp => Disp_mux_select,			-- 1 MSB, 0 LSB
				Reset_State =>	reset_temp	-- Reset '0' attivo
				);

RegExp : entity work.Generic_RAsync_Register 
			generic map (width => width)
			port map ( 
				D=> exp_out,
				clock => Clock,
				reset => reset_temp,
				en => RegExp_Reg_en,
				Q => RegExp_out
				);

HashF : HashFunction generic map( width => width, width_reg => width_reg)
			port map(
				CharacterByte => CharacterByte,
				Clock => Clock,
				Reset => reset_temp,
				Reg_en => Hash_Reg_en,
				Digest => Hash_out
				);

Exp_mux : Mux_2n_1n generic map (width => width)
			port map(
				a => Hash_out,
				b => SignR_out,
				s => mux_select,
				o => Exp_mux_out
				);

key_mux : Mux_2n_1n generic map (width => width)
			port map(
				a => x"00000011",						-- x"737FD3F9" ,        -- x"00000071", priv d (17)  x11    10001  Key_d
				b => x"00000071", --pub e (17)  x11    10001  Key_e -- x"00000071", pubb e (113) x71  1110001 Key_e
				s => mux_select,
				o => key_mux_out
				);
					
-- y^x modm RSA: M^emodn
exp: exponentiator 
			generic map (n => width)
			port map(
				x => Key_mux_out,
				y => Exp_mux_out,
				m => x"0000008F" ,					--x"FFFFFFFF",              --x"0000008F", n (143) x8F 10001111 exp_Key_n
				z => exp_out,
				clk => Clock,
				reset => NOT reset_temp,
				start => exp_start,
				done => exp_done 
				);

sign_reg : SignReg generic map ( width => width , width_reg => width_reg)
			port map( 
				SignatureByte => CharacterByte,
				Reset => reset_temp,
				Count_En => sign_Reg_count_en,
				Clock => Clock,
				hit => sign_Reg_hit,
				Signature => SignR_out
				);

Comp : Comparator32 generic map (width => width)
			port map(
				a => RegExp_out,
				b => Hash_out,
				Clock => Clock,
				Comp_en => Comp_en,
				equal => Comp_outeq,
				Notequal => Comp_outNeq
				);

Disp_mux : Mux_2n_1n generic map (width => 16)
			port map(
				a => RegExp_out(15 downto 0) ,
				b => RegExp_out(31 downto 16),
				s => Disp_mux_select,
				o => Disp_mux_out
				);

Disp : seven_seg_interface_adapter 
			port map ( 
				Value => Disp_mux_out,
				Clock => Clock,
				En => Disp_en,
				Dots => "0000",
				Anodes_Mask => "1111",
				Anodes => Disp_Anodes_out,
				Cathodes => Disp_Cathodes_out
				);
           


Compare_ok <= Comp_outeq;
Compare_nok <= Comp_outNeq;
Anodes <= Disp_Anodes_out;
Cathodes <= Disp_Cathodes_out;

end Structural;

