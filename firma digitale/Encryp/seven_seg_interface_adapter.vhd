------------------------------------------------------------------------
-- Company: Gruppo 11
-- Engineer: Marrone, Mungiello, Orlando, Papa
-- 
-- Module Name: Seven_Seg_Interface_Adapter
-- Referring Project Name: Interface
-- Target Devices: Digilent Nexsys 2
-- Tool versions: Ise 14.2
-- Description: Componente con la funzione di gestire il diplay a
--					 sette segmenti e di interfacciarlo a device esterni 
--
-- Dependencies: RAsync_H_Count_UpCounter
--					  RAsync_2UpNCount_UpCounter
-- 				  Decoder_2_4
--					  Mux_Seven_segm
--				     Decoder_Seven_segm 
--
------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
use IEEE.NUMERIC_STD.ALL;

-- Descrizione dei segnali :
-- Value 		: Segnale vettoriale di input formato da 4 nimble
--			        indica i valori da visualizzare
-- Clock	      : Segnale di clock rispetto al quale il componente è sincrono
-- En    		: Segnale di enable 0 attivo
-- Dots  		: Segnale vettoriale di input per l'accensione dei dots
-- Anodes mask : Segnale vettoriale di input per mascherare i digits
-- Anodes		: Segnale vettoriale di output per la gestione degli anodi
-- Cathodes    : Segnale vettoriale di output per la gestione dei catodi 
--	N.b. i segnali Value,Anodes,Cathodes sono 0 attivi
--		  i segnali Dots e Anodes mask sono 1 attivi
entity seven_seg_interface_adapter is
    Port ( Value : in  STD_LOGIC_VECTOR (15 downto 0); 
			  Clock : in STD_LOGIC;
           En : in  STD_LOGIC;								              
           Dots : in  STD_LOGIC_VECTOR (3 downto 0);    
           Anodes_Mask : in  STD_LOGIC_VECTOR (3 downto 0);
           Anodes : out  STD_LOGIC_VECTOR (3 downto 0);    
           Cathodes : out  STD_LOGIC_VECTOR (7 downto 0));
end seven_seg_interface_adapter;

architecture Structural of seven_seg_interface_adapter is

component RAsync_2UpNCount_UpCounter is
		Generic (width : integer := 2);
			Port ( clock : in  STD_LOGIC;
					 reset : in  STD_LOGIC;
					 en : in  STD_LOGIC;
					 count : out  STD_LOGIC_VECTOR (width-1 downto 0) := (others => '0'));
end component;

component Decoder_2_4 is
    Port ( i : in  STD_LOGIC_VECTOR (1 downto 0);
           o : out  STD_LOGIC_VECTOR (3 downto 0));
end component;

component Decoder_Seven_segm is
    Port ( Ing : in  STD_LOGIC_VECTOR (3 downto 0);
           Cathodes : out  STD_LOGIC_VECTOR (6 downto 0));
end component;

component Mux_Seven_segm is
    Port ( Disp0 : in  STD_LOGIC_VECTOR (3 downto 0);
           Disp1 : in  STD_LOGIC_VECTOR (3 downto 0);
           Disp2 : in  STD_LOGIC_VECTOR (3 downto 0);
           Disp3 : in  STD_LOGIC_VECTOR (3 downto 0);
           Dots : in  STD_LOGIC_VECTOR (3 downto 0);
           Sel : in  STD_LOGIC_VECTOR (1 downto 0);
           Dig_out : out  STD_LOGIC_VECTOR (3 downto 0);
           Dot_out : out  STD_LOGIC);
end component;

component RAsync_H_Count_UpCounter is
	 Generic (MAX_COUNT : integer := 6; width : integer := 3);	
    Port ( clock : in  STD_LOGIC;
           reset : in  STD_LOGIC;
			  en : in STD_LOGIC;
			  hit : out STD_LOGIC;
           count : out  STD_LOGIC_VECTOR (width-1 downto 0));
end component;

-- Segnali d'appoggio temporanei

-- Out del contatore mod4, in decoder anodi
signal mod4_count : STD_LOGIC_VECTOR(1 downto 0);

-- Out del divisore di clock, enable del contatore modulo 4
signal logic_clock : STD_LOGIC;

-- Out del mux, in del decoder 7 segmenti
signal coded_cathodes : STD_LOGIC_VECTOR(3 downto 0);

-- Out del decoder di anodi, da complementare per la corretta visualizzazione su scheda 
signal temp_anodes : STD_LOGIC_VECTOR(3 downto 0);

-- Out del mux, da complementare per la corretta visualizzazione del punto su scheda
signal temp_dot : STD_LOGIC := '0';

-- Alias comodi per chiarire i collegamenti
alias Value_0 : STD_LOGIC_VECTOR(3 downto 0) is Value(15 downto 12);
alias Value_1 : STD_LOGIC_VECTOR(3 downto 0) is Value(11 downto 8);
alias Value_2 : STD_LOGIC_VECTOR(3 downto 0) is Value(7 downto 4);
alias Value_3 : STD_LOGIC_VECTOR(3 downto 0) is Value(3 downto 0);


begin

-- Divisore di clock per generare l'abilitazione del contatore mod4. Ponendo MAX_COUNT = 125000 si genera un
-- segnale di uscita fortemente asimmetrico (duty cycle molto ridotto) di frequenza pari a circa 400hz
-- se il clock in ingresso è di 50Mhz.
clock_div : RAsync_H_Count_UpCounter 
	 Generic Map ( MAX_COUNT => 125000,
					   width => 0)
       Port Map ( clock => Clock,
						reset => not En,  -- Il reset è posto a not En in modo tale che i contatori si azzerino
											   -- nel momento in cui il display è disabilitato e poi riabilitato
						en => En,         
						hit => logic_clock,
						count => open);

-- Contatore mod4 per pilotare il mux e il decoder degli anodi
count_mod4 : RAsync_2UpNCount_UpCounter generic map(width => 2)
				 port map(clock => Clock,
							 reset => not En,       -- Il reset è posto a not En in modo tale che i contatori si azzerino
															--nel momento in cui il display è disabilitato e poi riabilitato
							 en => not logic_clock, 
							 count => mod4_count);
							 
-- Decoder per produrre il segnale d'uscita Anods
anodes_decoder : Decoder_2_4 port map( i => mod4_count,
												  o => temp_anodes);
												  
-- Mux per selezionare la digit e il dot da visualizzare
cathods_mux : Mux_Seven_segm port map(Disp0 => Value_0,
												 Disp1 => Value_1,
												 Disp2 => Value_2,
												 Disp3 => Value_3,
												 Dots => Dots,
												 Sel => mod4_count,
												 Dig_out => coded_cathodes,
												 Dot_out => temp_dot);
												
-- Decoder 7 segmenti per generare il segnale che pilota cathods
seven_decoder : Decoder_Seven_segm port map(Ing => coded_cathodes,
														  Cathodes => Cathodes(6 downto 0));
														  
-- complementazione dei segnali degli anodi e del punto								
Anodes <= (not temp_anodes) or (not Anodes_Mask) or (en & en & en & en); 

--temp_anodes	Anodes_Mask	 en	Anodes
--    0 					0		 0			1
--		0					0		 1			1
--		0					1		 0			1
--		0					1		 1			1
--		1					0		 0			1
--		1					0		 1			1
--		1					1		 0			0
--		1					1		 1			1


-- Assegnazione del valore del punto
Cathodes(7) <= not temp_dot;
														  
end Structural;

