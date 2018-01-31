----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date:    12:06:45 12/12/2017 
-- Design Name: 
-- Module Name:    FSM_RSA - Behavioral 
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

entity FSM_RSA is
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

end FSM_RSA;

architecture Behavioral of FSM_RSA is

-- Definizione dell'insieme degli stati
type State is (Idle, V_wait8, S_wait8, V_Hash,V_waitReg, V_waitH, S_waitH, S_Hash, V_wait_sign, V_decrypt, V_comp, V_reg, S_encrypt, S_dispMSB, S_dispLSB);

-- Definizione dei segnali di "stato" e inizializzazione allo stato iniziale idle
signal Current_State, Next_State : State := Idle;

begin

-- Process per la gestione dell'evoluzione dello stato
state_management : process(Clock)

begin
	
	if falling_edge(Clock) then
		Current_State <= Next_State;
	else
		Current_State <= Current_State;
	end if;

end process;

-- Process per la gestione della FSM
FSM : process(Current_State, Start_sign, Load, Verify, Done, Exp_Done, Count_eq, Count_neq, Count_hit)
begin

	case Current_State is
	
	  --macchina in attesa di comandi. Tutti i registri disabilitati
		when Idle => 
				Enable_Hash <= '1'; 
				Enable_Exp <= '0';
				Enable_RegExp <= '1';
				Enable_sign_reg <= '1';
				Enable_comp <= '0';
				Enable_Disp <= '1';
				Reset_State  <= '0';
				Mux_sel <= '0';
				Mux_disp <= '0';
	
			if (Verify = '1') then
					Next_State <= V_wait8;
				else 
					if ( Start_sign ='1') then
						Next_state <= S_wait8;
						else
							Next_state <= Idle;
					end if;
			end if;
			
			when S_encrypt => 
				Enable_Hash <= '1';
				Enable_Exp <= '1';  -- abilito
				Enable_RegExp <= '0';  -- abilito
				Enable_sign_reg <= '1';
				Enable_comp <= '0';
				Enable_Disp <= '1';
				Reset_State  <= '1'; 
				Mux_sel <= '0'; --decript M_h**d modn
				Mux_disp <= '0';
					
				if (Exp_Done = '1') then
						Next_State <= S_dispMSB;
					else
						Next_state <= S_encrypt;
				end if;
			
			when S_dispLSB => 
				Enable_Hash <= '1';
				Enable_Exp <= '0';  
				Enable_RegExp <= '1';  
				Enable_sign_reg <= '1';
				Enable_comp <= '0';
				Enable_Disp <= '0'; -- abilito
				Reset_State  <= '1'; 
				Mux_sel <= '0'; --LSB
				Mux_disp <= '0';
					
				if (Done = '1') then
						Next_State <= Idle;
					else
						Next_state <=S_dispLSB;
				end if;
			
			when S_dispMSB => 
				Enable_Hash <= '1';
				Enable_Exp <= '0';  
				Enable_RegExp <= '1';  
				Enable_sign_reg <= '1';
				Enable_comp <= '0';
				Enable_Disp <= '0'; -- abilito
				Reset_State  <= '1'; 
				Mux_sel <= '1'; --MSB
				Mux_disp <= '0';
					
				if (Load = '1') then
						Next_State <= S_dispLSB;
					else
						Next_state <=S_dispMSB;
				end if;
			
			when S_waitH => 
			   Enable_Hash <= '1'; --disabilito tutto
				Enable_Exp <= '0';
				Enable_RegExp <= '1';
				Enable_sign_reg <= '1';
				Enable_comp <= '0';
				Enable_Disp <= '1';
				Reset_State  <= '1';
				Mux_sel <= '0';
			  
				if( Load = '0') then
					Next_State <= S_wait8;
				else
					Next_State <= S_waitH;
				end if;
			
	
			when S_Hash => 
			   Enable_Hash <= '0'; -- abilito
				Enable_Exp <= '0';
				Enable_RegExp <= '1';
				Enable_sign_reg <= '1';
				Enable_comp <= '0';
				Enable_Disp <= '1';
				Reset_State  <= '1';
				Mux_sel <= '0';
				Mux_disp <= '0';
			
			  Next_State <= S_waitH;
			
			when S_wait8 => 		
				Enable_Hash <= '1'; --disabilito tutto
				Enable_Exp <= '0';
				Enable_RegExp <= '1';
				Enable_sign_reg <= '1';
				Enable_comp <= '0';
				Enable_Disp <= '1';
				Reset_State  <= '1';
				Mux_sel <= '0';
				Mux_disp <= '0';
				
				if (Done = '1') then
					Next_State <= S_encrypt;
				else 
					if ( Load = '1') then
						Next_state <= S_Hash;
						else 
							Next_state <= S_wait8;
					end if;
				end if;
			
			when V_comp => 
				Enable_Hash <= '1';
				Enable_Exp <= '0';  
				Enable_RegExp <= '0';
				Enable_sign_reg <= '1';
				Enable_comp <= '1';  -- abilito
				Enable_Disp <= '1';
				Reset_State  <= '1'; 
				Mux_sel <= '1'; --decript M_h**e modn
				Mux_disp <= '0';
			
				if (Count_eq = '1' OR Count_neq ='1') then
					if (Done = '1') then
						Next_State <= Idle;
					end if;
				end if;
			
			when V_decrypt => 
				Enable_Hash <= '1';
				Enable_Exp <= '1';  -- abilito
				Enable_RegExp <= '0';  -- abilito
				Enable_sign_reg <= '1';
				Enable_comp <= '0';
				Enable_Disp <= '1';
				Reset_State  <= '1'; 
				Mux_sel <= '1'; --decript M_h**e modn
				Mux_disp <= '0';
					
				if (Exp_Done = '1') then
						Next_State <= V_comp;
					else
						Next_state <= V_decrypt;
				end if;
			
			
		when V_Reg => 
			   Enable_Hash <= '1'; 
				Enable_Exp <= '0';
				Enable_RegExp <= '1';
				Enable_sign_reg <= '0'; -- abilito
				Enable_comp <= '0';
				Enable_Disp <= '1';
				Reset_State  <= '1';
				Mux_sel <= '0';
				Mux_disp <= '0';
				
				if( Count_hit = '1') then
					Next_State <= V_decrypt;
				else
					Next_State <= V_waitReg;
				end if;

		
		when V_waitReg => 
			   Enable_Hash <= '1'; --disabilito tutto
				Enable_Exp <= '0';
				Enable_RegExp <= '1';
				Enable_sign_reg <= '1';
				Enable_comp <= '0';
				Enable_Disp <= '1';
				Reset_State  <= '1';
				Mux_sel <= '0';
				Mux_disp <= '0';
				
				if( Load = '0') then
					Next_State <= V_wait_sign;
				else
					Next_State <= V_waitReg;
				end if;
		
		
		when V_wait8 => 		
				Enable_Hash <= '1'; --disabilito tutto
				Enable_Exp <= '0';
				Enable_RegExp <= '1';
				Enable_sign_reg <= '1';
				Enable_comp <= '0';
				Enable_Disp <= '1';
				Reset_State  <= '1';
				Mux_sel <= '0';
				Mux_disp <= '0';
				
				if (Done = '1') then
						Next_State <= V_wait_sign;
					else 
						if ( Load = '1') then
							Next_state <= V_Hash;
							else 
								Next_state <= V_wait8;
						end if;
				end if;
				  
		
		when V_Hash => 
			   Enable_Hash <= '0'; -- abilito
				Enable_Exp <= '0';
				Enable_RegExp <= '1';
				Enable_sign_reg <= '1';
				Enable_comp <= '0';
				Enable_Disp <= '1';
				Reset_State  <= '1';
				Mux_sel <= '0';
				Mux_disp <= '0';
			
			  Next_State <= V_waitH;
			  
		
		when V_waitH => 
			   Enable_Hash <= '1'; --disabilito tutto
				Enable_Exp <= '0';
				Enable_RegExp <= '1';
				Enable_sign_reg <= '1';
				Enable_comp <= '0';
				Enable_Disp <= '1';
				Reset_State  <= '1';
				Mux_sel <= '0';
			  
				if( Load = '0') then
					Next_State <= V_wait8;
				else
					Next_State <= V_waitH;
				end if;
		
		
		when V_wait_sign => 
				Enable_Hash <= '1';  --disabilito tutto
				Enable_Exp <= '0';
				Enable_RegExp <= '1';
				Enable_sign_reg <= '1';
				Enable_comp <= '0';
				Enable_Disp <= '1';
				Reset_State  <= '1';
				Mux_sel <= '0';
				
			if (Load = '1') then -- AND Count_hit = '0') then
				Next_State <= V_reg;	
--			else
--				if (Count_hit = '1') then
--				Next_state <= V_decrypt;
				else
					Next_state <= V_wait_sign;
				--end if;
			end if;	
			 
		
     
			  
	end case;		
end process;

end Behavioral;

