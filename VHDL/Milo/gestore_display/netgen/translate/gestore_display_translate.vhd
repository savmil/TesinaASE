--------------------------------------------------------------------------------
-- Copyright (c) 1995-2013 Xilinx, Inc.  All rights reserved.
--------------------------------------------------------------------------------
--   ____  ____
--  /   /\/   /
-- /___/  \  /    Vendor: Xilinx
-- \   \   \/     Version: P.20131013
--  \   \         Application: netgen
--  /   /         Filename: gestore_display_translate.vhd
-- /___/   /\     Timestamp: Sun Nov 12 13:01:45 2017
-- \   \  /  \ 
--  \___\/\___\
--             
-- Command	: -intstyle ise -rpw 100 -tpw 0 -ar Structure -tm gestore_display -w -dir netgen/translate -ofmt vhdl -sim gestore_display.ngd gestore_display_translate.vhd 
-- Device	: 3s100etq144-5
-- Input file	: gestore_display.ngd
-- Output file	: /home/sav/ASE/gestore_display/netgen/translate/gestore_display_translate.vhd
-- # of Entities	: 1
-- Design Name	: gestore_display
-- Xilinx	: /opt/Xilinx/14.7/ISE_DS/ISE/
--             
-- Purpose:    
--     This VHDL netlist is a verification model and uses simulation 
--     primitives which may not represent the true implementation of the 
--     device, however the netlist is functionally correct and should not 
--     be modified. This file cannot be synthesized and should only be used 
--     with supported simulation tools.
--             
-- Reference:  
--     Command Line Tools User Guide, Chapter 23
--     Synthesis and Simulation Design Guide, Chapter 6
--             
--------------------------------------------------------------------------------

library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library SIMPRIM;
use SIMPRIM.VCOMPONENTS.ALL;
use SIMPRIM.VPACKAGE.ALL;

entity gestore_display is
  port (
    clk : in STD_LOGIC := 'X'; 
    reset : in STD_LOGIC := 'X'; 
    enable : in STD_LOGIC := 'X'; 
    anode : out STD_LOGIC_VECTOR ( 3 downto 0 ); 
    cathode : out STD_LOGIC_VECTOR ( 6 downto 0 ); 
    point : in STD_LOGIC_VECTOR ( 3 downto 0 ); 
    number : in STD_LOGIC_VECTOR ( 15 downto 0 ) 
  );
end gestore_display;

architecture Structure of gestore_display is
  signal N0 : STD_LOGIC; 
  signal N1 : STD_LOGIC; 
  signal Result_0_1 : STD_LOGIC; 
  signal Result_1_1 : STD_LOGIC; 
  signal anode_0_OBUF_111 : STD_LOGIC; 
  signal anode_1_OBUF_112 : STD_LOGIC; 
  signal anode_2_OBUF_113 : STD_LOGIC; 
  signal anode_3_OBUF_114 : STD_LOGIC; 
  signal cathode_0_OBUF_122 : STD_LOGIC; 
  signal cathode_1_OBUF_123 : STD_LOGIC; 
  signal cathode_2_OBUF_124 : STD_LOGIC; 
  signal cathode_3_OBUF_125 : STD_LOGIC; 
  signal cathode_4_OBUF_126 : STD_LOGIC; 
  signal cathode_5_OBUF_127 : STD_LOGIC; 
  signal cathode_6_OBUF_128 : STD_LOGIC; 
  signal clk_BUFGP : STD_LOGIC; 
  signal clock_filter_Mcount_count_cy_10_rt_183 : STD_LOGIC; 
  signal clock_filter_Mcount_count_cy_11_rt_185 : STD_LOGIC; 
  signal clock_filter_Mcount_count_cy_12_rt_187 : STD_LOGIC; 
  signal clock_filter_Mcount_count_cy_13_rt_189 : STD_LOGIC; 
  signal clock_filter_Mcount_count_cy_14_rt_191 : STD_LOGIC; 
  signal clock_filter_Mcount_count_cy_15_rt_193 : STD_LOGIC; 
  signal clock_filter_Mcount_count_cy_16_rt_195 : STD_LOGIC; 
  signal clock_filter_Mcount_count_cy_17_rt_197 : STD_LOGIC; 
  signal clock_filter_Mcount_count_cy_18_rt_199 : STD_LOGIC; 
  signal clock_filter_Mcount_count_cy_19_rt_201 : STD_LOGIC; 
  signal clock_filter_Mcount_count_cy_1_rt_203 : STD_LOGIC; 
  signal clock_filter_Mcount_count_cy_20_rt_205 : STD_LOGIC; 
  signal clock_filter_Mcount_count_cy_21_rt_207 : STD_LOGIC; 
  signal clock_filter_Mcount_count_cy_22_rt_209 : STD_LOGIC; 
  signal clock_filter_Mcount_count_cy_23_rt_211 : STD_LOGIC; 
  signal clock_filter_Mcount_count_cy_24_rt_213 : STD_LOGIC; 
  signal clock_filter_Mcount_count_cy_25_rt_215 : STD_LOGIC; 
  signal clock_filter_Mcount_count_cy_26_rt_217 : STD_LOGIC; 
  signal clock_filter_Mcount_count_cy_27_rt_219 : STD_LOGIC; 
  signal clock_filter_Mcount_count_cy_28_rt_221 : STD_LOGIC; 
  signal clock_filter_Mcount_count_cy_29_rt_223 : STD_LOGIC; 
  signal clock_filter_Mcount_count_cy_2_rt_225 : STD_LOGIC; 
  signal clock_filter_Mcount_count_cy_30_rt_227 : STD_LOGIC; 
  signal clock_filter_Mcount_count_cy_31_rt_229 : STD_LOGIC; 
  signal clock_filter_Mcount_count_cy_32_rt_231 : STD_LOGIC; 
  signal clock_filter_Mcount_count_cy_33_rt_233 : STD_LOGIC; 
  signal clock_filter_Mcount_count_cy_34_rt_235 : STD_LOGIC; 
  signal clock_filter_Mcount_count_cy_35_rt_237 : STD_LOGIC; 
  signal clock_filter_Mcount_count_cy_36_rt_239 : STD_LOGIC; 
  signal clock_filter_Mcount_count_cy_37_rt_241 : STD_LOGIC; 
  signal clock_filter_Mcount_count_cy_38_rt_243 : STD_LOGIC; 
  signal clock_filter_Mcount_count_cy_39_rt_245 : STD_LOGIC; 
  signal clock_filter_Mcount_count_cy_3_rt_247 : STD_LOGIC; 
  signal clock_filter_Mcount_count_cy_40_rt_249 : STD_LOGIC; 
  signal clock_filter_Mcount_count_cy_41_rt_251 : STD_LOGIC; 
  signal clock_filter_Mcount_count_cy_42_rt_253 : STD_LOGIC; 
  signal clock_filter_Mcount_count_cy_43_rt_255 : STD_LOGIC; 
  signal clock_filter_Mcount_count_cy_44_rt_257 : STD_LOGIC; 
  signal clock_filter_Mcount_count_cy_45_rt_259 : STD_LOGIC; 
  signal clock_filter_Mcount_count_cy_46_rt_261 : STD_LOGIC; 
  signal clock_filter_Mcount_count_cy_47_rt_263 : STD_LOGIC; 
  signal clock_filter_Mcount_count_cy_48_rt_265 : STD_LOGIC; 
  signal clock_filter_Mcount_count_cy_49_rt_267 : STD_LOGIC; 
  signal clock_filter_Mcount_count_cy_4_rt_269 : STD_LOGIC; 
  signal clock_filter_Mcount_count_cy_50_rt_271 : STD_LOGIC; 
  signal clock_filter_Mcount_count_cy_51_rt_273 : STD_LOGIC; 
  signal clock_filter_Mcount_count_cy_52_rt_275 : STD_LOGIC; 
  signal clock_filter_Mcount_count_cy_53_rt_277 : STD_LOGIC; 
  signal clock_filter_Mcount_count_cy_54_rt_279 : STD_LOGIC; 
  signal clock_filter_Mcount_count_cy_55_rt_281 : STD_LOGIC; 
  signal clock_filter_Mcount_count_cy_56_rt_283 : STD_LOGIC; 
  signal clock_filter_Mcount_count_cy_57_rt_285 : STD_LOGIC; 
  signal clock_filter_Mcount_count_cy_58_rt_287 : STD_LOGIC; 
  signal clock_filter_Mcount_count_cy_59_rt_289 : STD_LOGIC; 
  signal clock_filter_Mcount_count_cy_5_rt_291 : STD_LOGIC; 
  signal clock_filter_Mcount_count_cy_60_rt_293 : STD_LOGIC; 
  signal clock_filter_Mcount_count_cy_61_rt_295 : STD_LOGIC; 
  signal clock_filter_Mcount_count_cy_62_rt_297 : STD_LOGIC; 
  signal clock_filter_Mcount_count_cy_63_rt_299 : STD_LOGIC; 
  signal clock_filter_Mcount_count_cy_64_rt_301 : STD_LOGIC; 
  signal clock_filter_Mcount_count_cy_65_rt_303 : STD_LOGIC; 
  signal clock_filter_Mcount_count_cy_66_rt_305 : STD_LOGIC; 
  signal clock_filter_Mcount_count_cy_67_rt_307 : STD_LOGIC; 
  signal clock_filter_Mcount_count_cy_68_rt_309 : STD_LOGIC; 
  signal clock_filter_Mcount_count_cy_69_rt_311 : STD_LOGIC; 
  signal clock_filter_Mcount_count_cy_6_rt_313 : STD_LOGIC; 
  signal clock_filter_Mcount_count_cy_70_rt_315 : STD_LOGIC; 
  signal clock_filter_Mcount_count_cy_71_rt_317 : STD_LOGIC; 
  signal clock_filter_Mcount_count_cy_72_rt_319 : STD_LOGIC; 
  signal clock_filter_Mcount_count_cy_73_rt_321 : STD_LOGIC; 
  signal clock_filter_Mcount_count_cy_74_rt_323 : STD_LOGIC; 
  signal clock_filter_Mcount_count_cy_75_rt_325 : STD_LOGIC; 
  signal clock_filter_Mcount_count_cy_76_rt_327 : STD_LOGIC; 
  signal clock_filter_Mcount_count_cy_77_rt_329 : STD_LOGIC; 
  signal clock_filter_Mcount_count_cy_78_rt_331 : STD_LOGIC; 
  signal clock_filter_Mcount_count_cy_79_rt_333 : STD_LOGIC; 
  signal clock_filter_Mcount_count_cy_7_rt_335 : STD_LOGIC; 
  signal clock_filter_Mcount_count_cy_80_rt_337 : STD_LOGIC; 
  signal clock_filter_Mcount_count_cy_81_rt_339 : STD_LOGIC; 
  signal clock_filter_Mcount_count_cy_82_rt_341 : STD_LOGIC; 
  signal clock_filter_Mcount_count_cy_83_rt_343 : STD_LOGIC; 
  signal clock_filter_Mcount_count_cy_84_rt_345 : STD_LOGIC; 
  signal clock_filter_Mcount_count_cy_85_rt_347 : STD_LOGIC; 
  signal clock_filter_Mcount_count_cy_86_rt_349 : STD_LOGIC; 
  signal clock_filter_Mcount_count_cy_87_rt_351 : STD_LOGIC; 
  signal clock_filter_Mcount_count_cy_88_rt_353 : STD_LOGIC; 
  signal clock_filter_Mcount_count_cy_89_rt_355 : STD_LOGIC; 
  signal clock_filter_Mcount_count_cy_8_rt_357 : STD_LOGIC; 
  signal clock_filter_Mcount_count_cy_90_rt_359 : STD_LOGIC; 
  signal clock_filter_Mcount_count_cy_91_rt_361 : STD_LOGIC; 
  signal clock_filter_Mcount_count_cy_92_rt_363 : STD_LOGIC; 
  signal clock_filter_Mcount_count_cy_93_rt_365 : STD_LOGIC; 
  signal clock_filter_Mcount_count_cy_94_rt_367 : STD_LOGIC; 
  signal clock_filter_Mcount_count_cy_95_rt_369 : STD_LOGIC; 
  signal clock_filter_Mcount_count_cy_96_rt_371 : STD_LOGIC; 
  signal clock_filter_Mcount_count_cy_97_rt_373 : STD_LOGIC; 
  signal clock_filter_Mcount_count_cy_98_rt_375 : STD_LOGIC; 
  signal clock_filter_Mcount_count_cy_9_rt_377 : STD_LOGIC; 
  signal clock_filter_Mcount_count_xor_99_rt_379 : STD_LOGIC; 
  signal clock_filter_hit_480 : STD_LOGIC; 
  signal clock_filter_hit_and0000 : STD_LOGIC; 
  signal clock_filter_hit_cmp_eq0000 : STD_LOGIC; 
  signal enable_IBUF_486 : STD_LOGIC; 
  signal number_0_IBUF_503 : STD_LOGIC; 
  signal number_10_IBUF_504 : STD_LOGIC; 
  signal number_11_IBUF_505 : STD_LOGIC; 
  signal number_12_IBUF_506 : STD_LOGIC; 
  signal number_13_IBUF_507 : STD_LOGIC; 
  signal number_14_IBUF_508 : STD_LOGIC; 
  signal number_15_IBUF_509 : STD_LOGIC; 
  signal number_1_IBUF_510 : STD_LOGIC; 
  signal number_2_IBUF_511 : STD_LOGIC; 
  signal number_3_IBUF_512 : STD_LOGIC; 
  signal number_4_IBUF_513 : STD_LOGIC; 
  signal number_5_IBUF_514 : STD_LOGIC; 
  signal number_6_IBUF_515 : STD_LOGIC; 
  signal number_7_IBUF_516 : STD_LOGIC; 
  signal number_8_IBUF_517 : STD_LOGIC; 
  signal number_9_IBUF_518 : STD_LOGIC; 
  signal reset_IBUF_520 : STD_LOGIC; 
  signal reset_inv : STD_LOGIC; 
  signal s_c_Mmux_valore_cifra_3_522 : STD_LOGIC; 
  signal s_c_Mmux_valore_cifra_31_523 : STD_LOGIC; 
  signal s_c_Mmux_valore_cifra_32_524 : STD_LOGIC; 
  signal s_c_Mmux_valore_cifra_33_525 : STD_LOGIC; 
  signal s_c_Mmux_valore_cifra_4_526 : STD_LOGIC; 
  signal s_c_Mmux_valore_cifra_41_527 : STD_LOGIC; 
  signal s_c_Mmux_valore_cifra_42_528 : STD_LOGIC; 
  signal s_c_Mmux_valore_cifra_43_529 : STD_LOGIC; 
  signal clk_BUFGP_IBUFG_2 : STD_LOGIC; 
  signal GND : STD_LOGIC; 
  signal Result : STD_LOGIC_VECTOR ( 99 downto 0 ); 
  signal clock_filter_Mcompar_hit_cmp_eq0000_cy : STD_LOGIC_VECTOR ( 24 downto 0 ); 
  signal clock_filter_Mcompar_hit_cmp_eq0000_lut : STD_LOGIC_VECTOR ( 24 downto 0 ); 
  signal clock_filter_Mcount_count_cy : STD_LOGIC_VECTOR ( 98 downto 0 ); 
  signal clock_filter_Mcount_count_lut : STD_LOGIC_VECTOR ( 0 downto 0 ); 
  signal clock_filter_count : STD_LOGIC_VECTOR ( 99 downto 0 ); 
  signal counter_mod_4_count : STD_LOGIC_VECTOR ( 1 downto 0 ); 
  signal valore_cifra : STD_LOGIC_VECTOR ( 3 downto 0 ); 
begin
  XST_GND : X_ZERO
    port map (
      O => N0
    );
  XST_VCC : X_ONE
    port map (
      O => N1
    );
  clock_filter_hit : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => clock_filter_hit_and0000,
      I => clock_filter_hit_cmp_eq0000,
      O => clock_filter_hit_480,
      SET => GND,
      RST => GND
    );
  clock_filter_count_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => enable_IBUF_486,
      RST => reset_inv,
      I => Result(0),
      O => clock_filter_count(0),
      SET => GND
    );
  clock_filter_count_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => enable_IBUF_486,
      RST => reset_inv,
      I => Result(1),
      O => clock_filter_count(1),
      SET => GND
    );
  clock_filter_count_2 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => enable_IBUF_486,
      RST => reset_inv,
      I => Result(2),
      O => clock_filter_count(2),
      SET => GND
    );
  clock_filter_count_3 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => enable_IBUF_486,
      RST => reset_inv,
      I => Result(3),
      O => clock_filter_count(3),
      SET => GND
    );
  clock_filter_count_4 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => enable_IBUF_486,
      RST => reset_inv,
      I => Result(4),
      O => clock_filter_count(4),
      SET => GND
    );
  clock_filter_count_5 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => enable_IBUF_486,
      RST => reset_inv,
      I => Result(5),
      O => clock_filter_count(5),
      SET => GND
    );
  clock_filter_count_6 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => enable_IBUF_486,
      RST => reset_inv,
      I => Result(6),
      O => clock_filter_count(6),
      SET => GND
    );
  clock_filter_count_7 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => enable_IBUF_486,
      RST => reset_inv,
      I => Result(7),
      O => clock_filter_count(7),
      SET => GND
    );
  clock_filter_count_8 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => enable_IBUF_486,
      RST => reset_inv,
      I => Result(8),
      O => clock_filter_count(8),
      SET => GND
    );
  clock_filter_count_9 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => enable_IBUF_486,
      RST => reset_inv,
      I => Result(9),
      O => clock_filter_count(9),
      SET => GND
    );
  clock_filter_count_10 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => enable_IBUF_486,
      RST => reset_inv,
      I => Result(10),
      O => clock_filter_count(10),
      SET => GND
    );
  clock_filter_count_11 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => enable_IBUF_486,
      RST => reset_inv,
      I => Result(11),
      O => clock_filter_count(11),
      SET => GND
    );
  clock_filter_count_12 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => enable_IBUF_486,
      RST => reset_inv,
      I => Result(12),
      O => clock_filter_count(12),
      SET => GND
    );
  clock_filter_count_13 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => enable_IBUF_486,
      RST => reset_inv,
      I => Result(13),
      O => clock_filter_count(13),
      SET => GND
    );
  clock_filter_count_14 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => enable_IBUF_486,
      RST => reset_inv,
      I => Result(14),
      O => clock_filter_count(14),
      SET => GND
    );
  clock_filter_count_15 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => enable_IBUF_486,
      RST => reset_inv,
      I => Result(15),
      O => clock_filter_count(15),
      SET => GND
    );
  clock_filter_count_16 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => enable_IBUF_486,
      RST => reset_inv,
      I => Result(16),
      O => clock_filter_count(16),
      SET => GND
    );
  clock_filter_count_17 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => enable_IBUF_486,
      RST => reset_inv,
      I => Result(17),
      O => clock_filter_count(17),
      SET => GND
    );
  clock_filter_count_18 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => enable_IBUF_486,
      RST => reset_inv,
      I => Result(18),
      O => clock_filter_count(18),
      SET => GND
    );
  clock_filter_count_19 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => enable_IBUF_486,
      RST => reset_inv,
      I => Result(19),
      O => clock_filter_count(19),
      SET => GND
    );
  clock_filter_count_20 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => enable_IBUF_486,
      RST => reset_inv,
      I => Result(20),
      O => clock_filter_count(20),
      SET => GND
    );
  clock_filter_count_21 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => enable_IBUF_486,
      RST => reset_inv,
      I => Result(21),
      O => clock_filter_count(21),
      SET => GND
    );
  clock_filter_count_22 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => enable_IBUF_486,
      RST => reset_inv,
      I => Result(22),
      O => clock_filter_count(22),
      SET => GND
    );
  clock_filter_count_23 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => enable_IBUF_486,
      RST => reset_inv,
      I => Result(23),
      O => clock_filter_count(23),
      SET => GND
    );
  clock_filter_count_24 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => enable_IBUF_486,
      RST => reset_inv,
      I => Result(24),
      O => clock_filter_count(24),
      SET => GND
    );
  clock_filter_count_25 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => enable_IBUF_486,
      RST => reset_inv,
      I => Result(25),
      O => clock_filter_count(25),
      SET => GND
    );
  clock_filter_count_26 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => enable_IBUF_486,
      RST => reset_inv,
      I => Result(26),
      O => clock_filter_count(26),
      SET => GND
    );
  clock_filter_count_27 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => enable_IBUF_486,
      RST => reset_inv,
      I => Result(27),
      O => clock_filter_count(27),
      SET => GND
    );
  clock_filter_count_28 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => enable_IBUF_486,
      RST => reset_inv,
      I => Result(28),
      O => clock_filter_count(28),
      SET => GND
    );
  clock_filter_count_29 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => enable_IBUF_486,
      RST => reset_inv,
      I => Result(29),
      O => clock_filter_count(29),
      SET => GND
    );
  clock_filter_count_30 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => enable_IBUF_486,
      RST => reset_inv,
      I => Result(30),
      O => clock_filter_count(30),
      SET => GND
    );
  clock_filter_count_31 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => enable_IBUF_486,
      RST => reset_inv,
      I => Result(31),
      O => clock_filter_count(31),
      SET => GND
    );
  clock_filter_count_32 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => enable_IBUF_486,
      RST => reset_inv,
      I => Result(32),
      O => clock_filter_count(32),
      SET => GND
    );
  clock_filter_count_33 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => enable_IBUF_486,
      RST => reset_inv,
      I => Result(33),
      O => clock_filter_count(33),
      SET => GND
    );
  clock_filter_count_34 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => enable_IBUF_486,
      RST => reset_inv,
      I => Result(34),
      O => clock_filter_count(34),
      SET => GND
    );
  clock_filter_count_35 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => enable_IBUF_486,
      RST => reset_inv,
      I => Result(35),
      O => clock_filter_count(35),
      SET => GND
    );
  clock_filter_count_36 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => enable_IBUF_486,
      RST => reset_inv,
      I => Result(36),
      O => clock_filter_count(36),
      SET => GND
    );
  clock_filter_count_37 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => enable_IBUF_486,
      RST => reset_inv,
      I => Result(37),
      O => clock_filter_count(37),
      SET => GND
    );
  clock_filter_count_38 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => enable_IBUF_486,
      RST => reset_inv,
      I => Result(38),
      O => clock_filter_count(38),
      SET => GND
    );
  clock_filter_count_39 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => enable_IBUF_486,
      RST => reset_inv,
      I => Result(39),
      O => clock_filter_count(39),
      SET => GND
    );
  clock_filter_count_40 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => enable_IBUF_486,
      RST => reset_inv,
      I => Result(40),
      O => clock_filter_count(40),
      SET => GND
    );
  clock_filter_count_41 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => enable_IBUF_486,
      RST => reset_inv,
      I => Result(41),
      O => clock_filter_count(41),
      SET => GND
    );
  clock_filter_count_42 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => enable_IBUF_486,
      RST => reset_inv,
      I => Result(42),
      O => clock_filter_count(42),
      SET => GND
    );
  clock_filter_count_43 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => enable_IBUF_486,
      RST => reset_inv,
      I => Result(43),
      O => clock_filter_count(43),
      SET => GND
    );
  clock_filter_count_44 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => enable_IBUF_486,
      RST => reset_inv,
      I => Result(44),
      O => clock_filter_count(44),
      SET => GND
    );
  clock_filter_count_45 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => enable_IBUF_486,
      RST => reset_inv,
      I => Result(45),
      O => clock_filter_count(45),
      SET => GND
    );
  clock_filter_count_46 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => enable_IBUF_486,
      RST => reset_inv,
      I => Result(46),
      O => clock_filter_count(46),
      SET => GND
    );
  clock_filter_count_47 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => enable_IBUF_486,
      RST => reset_inv,
      I => Result(47),
      O => clock_filter_count(47),
      SET => GND
    );
  clock_filter_count_48 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => enable_IBUF_486,
      RST => reset_inv,
      I => Result(48),
      O => clock_filter_count(48),
      SET => GND
    );
  clock_filter_count_49 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => enable_IBUF_486,
      RST => reset_inv,
      I => Result(49),
      O => clock_filter_count(49),
      SET => GND
    );
  clock_filter_count_50 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => enable_IBUF_486,
      RST => reset_inv,
      I => Result(50),
      O => clock_filter_count(50),
      SET => GND
    );
  clock_filter_count_51 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => enable_IBUF_486,
      RST => reset_inv,
      I => Result(51),
      O => clock_filter_count(51),
      SET => GND
    );
  clock_filter_count_52 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => enable_IBUF_486,
      RST => reset_inv,
      I => Result(52),
      O => clock_filter_count(52),
      SET => GND
    );
  clock_filter_count_53 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => enable_IBUF_486,
      RST => reset_inv,
      I => Result(53),
      O => clock_filter_count(53),
      SET => GND
    );
  clock_filter_count_54 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => enable_IBUF_486,
      RST => reset_inv,
      I => Result(54),
      O => clock_filter_count(54),
      SET => GND
    );
  clock_filter_count_55 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => enable_IBUF_486,
      RST => reset_inv,
      I => Result(55),
      O => clock_filter_count(55),
      SET => GND
    );
  clock_filter_count_56 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => enable_IBUF_486,
      RST => reset_inv,
      I => Result(56),
      O => clock_filter_count(56),
      SET => GND
    );
  clock_filter_count_57 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => enable_IBUF_486,
      RST => reset_inv,
      I => Result(57),
      O => clock_filter_count(57),
      SET => GND
    );
  clock_filter_count_58 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => enable_IBUF_486,
      RST => reset_inv,
      I => Result(58),
      O => clock_filter_count(58),
      SET => GND
    );
  clock_filter_count_59 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => enable_IBUF_486,
      RST => reset_inv,
      I => Result(59),
      O => clock_filter_count(59),
      SET => GND
    );
  clock_filter_count_60 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => enable_IBUF_486,
      RST => reset_inv,
      I => Result(60),
      O => clock_filter_count(60),
      SET => GND
    );
  clock_filter_count_61 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => enable_IBUF_486,
      RST => reset_inv,
      I => Result(61),
      O => clock_filter_count(61),
      SET => GND
    );
  clock_filter_count_62 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => enable_IBUF_486,
      RST => reset_inv,
      I => Result(62),
      O => clock_filter_count(62),
      SET => GND
    );
  clock_filter_count_63 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => enable_IBUF_486,
      RST => reset_inv,
      I => Result(63),
      O => clock_filter_count(63),
      SET => GND
    );
  clock_filter_count_64 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => enable_IBUF_486,
      RST => reset_inv,
      I => Result(64),
      O => clock_filter_count(64),
      SET => GND
    );
  clock_filter_count_65 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => enable_IBUF_486,
      RST => reset_inv,
      I => Result(65),
      O => clock_filter_count(65),
      SET => GND
    );
  clock_filter_count_66 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => enable_IBUF_486,
      RST => reset_inv,
      I => Result(66),
      O => clock_filter_count(66),
      SET => GND
    );
  clock_filter_count_67 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => enable_IBUF_486,
      RST => reset_inv,
      I => Result(67),
      O => clock_filter_count(67),
      SET => GND
    );
  clock_filter_count_68 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => enable_IBUF_486,
      RST => reset_inv,
      I => Result(68),
      O => clock_filter_count(68),
      SET => GND
    );
  clock_filter_count_69 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => enable_IBUF_486,
      RST => reset_inv,
      I => Result(69),
      O => clock_filter_count(69),
      SET => GND
    );
  clock_filter_count_70 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => enable_IBUF_486,
      RST => reset_inv,
      I => Result(70),
      O => clock_filter_count(70),
      SET => GND
    );
  clock_filter_count_71 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => enable_IBUF_486,
      RST => reset_inv,
      I => Result(71),
      O => clock_filter_count(71),
      SET => GND
    );
  clock_filter_count_72 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => enable_IBUF_486,
      RST => reset_inv,
      I => Result(72),
      O => clock_filter_count(72),
      SET => GND
    );
  clock_filter_count_73 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => enable_IBUF_486,
      RST => reset_inv,
      I => Result(73),
      O => clock_filter_count(73),
      SET => GND
    );
  clock_filter_count_74 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => enable_IBUF_486,
      RST => reset_inv,
      I => Result(74),
      O => clock_filter_count(74),
      SET => GND
    );
  clock_filter_count_75 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => enable_IBUF_486,
      RST => reset_inv,
      I => Result(75),
      O => clock_filter_count(75),
      SET => GND
    );
  clock_filter_count_76 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => enable_IBUF_486,
      RST => reset_inv,
      I => Result(76),
      O => clock_filter_count(76),
      SET => GND
    );
  clock_filter_count_77 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => enable_IBUF_486,
      RST => reset_inv,
      I => Result(77),
      O => clock_filter_count(77),
      SET => GND
    );
  clock_filter_count_78 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => enable_IBUF_486,
      RST => reset_inv,
      I => Result(78),
      O => clock_filter_count(78),
      SET => GND
    );
  clock_filter_count_79 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => enable_IBUF_486,
      RST => reset_inv,
      I => Result(79),
      O => clock_filter_count(79),
      SET => GND
    );
  clock_filter_count_80 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => enable_IBUF_486,
      RST => reset_inv,
      I => Result(80),
      O => clock_filter_count(80),
      SET => GND
    );
  clock_filter_count_81 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => enable_IBUF_486,
      RST => reset_inv,
      I => Result(81),
      O => clock_filter_count(81),
      SET => GND
    );
  clock_filter_count_82 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => enable_IBUF_486,
      RST => reset_inv,
      I => Result(82),
      O => clock_filter_count(82),
      SET => GND
    );
  clock_filter_count_83 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => enable_IBUF_486,
      RST => reset_inv,
      I => Result(83),
      O => clock_filter_count(83),
      SET => GND
    );
  clock_filter_count_84 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => enable_IBUF_486,
      RST => reset_inv,
      I => Result(84),
      O => clock_filter_count(84),
      SET => GND
    );
  clock_filter_count_85 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => enable_IBUF_486,
      RST => reset_inv,
      I => Result(85),
      O => clock_filter_count(85),
      SET => GND
    );
  clock_filter_count_86 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => enable_IBUF_486,
      RST => reset_inv,
      I => Result(86),
      O => clock_filter_count(86),
      SET => GND
    );
  clock_filter_count_87 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => enable_IBUF_486,
      RST => reset_inv,
      I => Result(87),
      O => clock_filter_count(87),
      SET => GND
    );
  clock_filter_count_88 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => enable_IBUF_486,
      RST => reset_inv,
      I => Result(88),
      O => clock_filter_count(88),
      SET => GND
    );
  clock_filter_count_89 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => enable_IBUF_486,
      RST => reset_inv,
      I => Result(89),
      O => clock_filter_count(89),
      SET => GND
    );
  clock_filter_count_90 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => enable_IBUF_486,
      RST => reset_inv,
      I => Result(90),
      O => clock_filter_count(90),
      SET => GND
    );
  clock_filter_count_91 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => enable_IBUF_486,
      RST => reset_inv,
      I => Result(91),
      O => clock_filter_count(91),
      SET => GND
    );
  clock_filter_count_92 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => enable_IBUF_486,
      RST => reset_inv,
      I => Result(92),
      O => clock_filter_count(92),
      SET => GND
    );
  clock_filter_count_93 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => enable_IBUF_486,
      RST => reset_inv,
      I => Result(93),
      O => clock_filter_count(93),
      SET => GND
    );
  clock_filter_count_94 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => enable_IBUF_486,
      RST => reset_inv,
      I => Result(94),
      O => clock_filter_count(94),
      SET => GND
    );
  clock_filter_count_95 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => enable_IBUF_486,
      RST => reset_inv,
      I => Result(95),
      O => clock_filter_count(95),
      SET => GND
    );
  clock_filter_count_96 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => enable_IBUF_486,
      RST => reset_inv,
      I => Result(96),
      O => clock_filter_count(96),
      SET => GND
    );
  clock_filter_count_97 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => enable_IBUF_486,
      RST => reset_inv,
      I => Result(97),
      O => clock_filter_count(97),
      SET => GND
    );
  clock_filter_count_98 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => enable_IBUF_486,
      RST => reset_inv,
      I => Result(98),
      O => clock_filter_count(98),
      SET => GND
    );
  clock_filter_count_99 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => enable_IBUF_486,
      RST => reset_inv,
      I => Result(99),
      O => clock_filter_count(99),
      SET => GND
    );
  counter_mod_4_count_0 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => clock_filter_hit_480,
      RST => reset_inv,
      I => Result_0_1,
      O => counter_mod_4_count(0),
      SET => GND
    );
  counter_mod_4_count_1 : X_FF
    generic map(
      INIT => '0'
    )
    port map (
      CLK => clk_BUFGP,
      CE => clock_filter_hit_480,
      RST => reset_inv,
      I => Result_1_1,
      O => counter_mod_4_count(1),
      SET => GND
    );
  clock_filter_Mcompar_hit_cmp_eq0000_lut_0_Q : X_LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      ADR0 => clock_filter_count(0),
      ADR1 => clock_filter_count(1),
      ADR2 => clock_filter_count(2),
      ADR3 => clock_filter_count(3),
      O => clock_filter_Mcompar_hit_cmp_eq0000_lut(0)
    );
  clock_filter_Mcompar_hit_cmp_eq0000_cy_0_Q : X_MUX2
    port map (
      IB => N1,
      IA => N0,
      SEL => clock_filter_Mcompar_hit_cmp_eq0000_lut(0),
      O => clock_filter_Mcompar_hit_cmp_eq0000_cy(0)
    );
  clock_filter_Mcompar_hit_cmp_eq0000_lut_1_Q : X_LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      ADR0 => clock_filter_count(4),
      ADR1 => clock_filter_count(5),
      ADR2 => clock_filter_count(6),
      ADR3 => clock_filter_count(7),
      O => clock_filter_Mcompar_hit_cmp_eq0000_lut(1)
    );
  clock_filter_Mcompar_hit_cmp_eq0000_cy_1_Q : X_MUX2
    port map (
      IB => clock_filter_Mcompar_hit_cmp_eq0000_cy(0),
      IA => N0,
      SEL => clock_filter_Mcompar_hit_cmp_eq0000_lut(1),
      O => clock_filter_Mcompar_hit_cmp_eq0000_cy(1)
    );
  clock_filter_Mcompar_hit_cmp_eq0000_lut_2_Q : X_LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      ADR0 => clock_filter_count(8),
      ADR1 => clock_filter_count(9),
      ADR2 => clock_filter_count(10),
      ADR3 => clock_filter_count(11),
      O => clock_filter_Mcompar_hit_cmp_eq0000_lut(2)
    );
  clock_filter_Mcompar_hit_cmp_eq0000_cy_2_Q : X_MUX2
    port map (
      IB => clock_filter_Mcompar_hit_cmp_eq0000_cy(1),
      IA => N0,
      SEL => clock_filter_Mcompar_hit_cmp_eq0000_lut(2),
      O => clock_filter_Mcompar_hit_cmp_eq0000_cy(2)
    );
  clock_filter_Mcompar_hit_cmp_eq0000_lut_3_Q : X_LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      ADR0 => clock_filter_count(12),
      ADR1 => clock_filter_count(13),
      ADR2 => clock_filter_count(14),
      ADR3 => clock_filter_count(15),
      O => clock_filter_Mcompar_hit_cmp_eq0000_lut(3)
    );
  clock_filter_Mcompar_hit_cmp_eq0000_cy_3_Q : X_MUX2
    port map (
      IB => clock_filter_Mcompar_hit_cmp_eq0000_cy(2),
      IA => N0,
      SEL => clock_filter_Mcompar_hit_cmp_eq0000_lut(3),
      O => clock_filter_Mcompar_hit_cmp_eq0000_cy(3)
    );
  clock_filter_Mcompar_hit_cmp_eq0000_lut_4_Q : X_LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      ADR0 => clock_filter_count(16),
      ADR1 => clock_filter_count(17),
      ADR2 => clock_filter_count(18),
      ADR3 => clock_filter_count(19),
      O => clock_filter_Mcompar_hit_cmp_eq0000_lut(4)
    );
  clock_filter_Mcompar_hit_cmp_eq0000_cy_4_Q : X_MUX2
    port map (
      IB => clock_filter_Mcompar_hit_cmp_eq0000_cy(3),
      IA => N0,
      SEL => clock_filter_Mcompar_hit_cmp_eq0000_lut(4),
      O => clock_filter_Mcompar_hit_cmp_eq0000_cy(4)
    );
  clock_filter_Mcompar_hit_cmp_eq0000_lut_5_Q : X_LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      ADR0 => clock_filter_count(20),
      ADR1 => clock_filter_count(21),
      ADR2 => clock_filter_count(22),
      ADR3 => clock_filter_count(23),
      O => clock_filter_Mcompar_hit_cmp_eq0000_lut(5)
    );
  clock_filter_Mcompar_hit_cmp_eq0000_cy_5_Q : X_MUX2
    port map (
      IB => clock_filter_Mcompar_hit_cmp_eq0000_cy(4),
      IA => N0,
      SEL => clock_filter_Mcompar_hit_cmp_eq0000_lut(5),
      O => clock_filter_Mcompar_hit_cmp_eq0000_cy(5)
    );
  clock_filter_Mcompar_hit_cmp_eq0000_lut_6_Q : X_LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      ADR0 => clock_filter_count(24),
      ADR1 => clock_filter_count(25),
      ADR2 => clock_filter_count(26),
      ADR3 => clock_filter_count(27),
      O => clock_filter_Mcompar_hit_cmp_eq0000_lut(6)
    );
  clock_filter_Mcompar_hit_cmp_eq0000_cy_6_Q : X_MUX2
    port map (
      IB => clock_filter_Mcompar_hit_cmp_eq0000_cy(5),
      IA => N0,
      SEL => clock_filter_Mcompar_hit_cmp_eq0000_lut(6),
      O => clock_filter_Mcompar_hit_cmp_eq0000_cy(6)
    );
  clock_filter_Mcompar_hit_cmp_eq0000_lut_7_Q : X_LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      ADR0 => clock_filter_count(28),
      ADR1 => clock_filter_count(29),
      ADR2 => clock_filter_count(30),
      ADR3 => clock_filter_count(31),
      O => clock_filter_Mcompar_hit_cmp_eq0000_lut(7)
    );
  clock_filter_Mcompar_hit_cmp_eq0000_cy_7_Q : X_MUX2
    port map (
      IB => clock_filter_Mcompar_hit_cmp_eq0000_cy(6),
      IA => N0,
      SEL => clock_filter_Mcompar_hit_cmp_eq0000_lut(7),
      O => clock_filter_Mcompar_hit_cmp_eq0000_cy(7)
    );
  clock_filter_Mcompar_hit_cmp_eq0000_lut_8_Q : X_LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      ADR0 => clock_filter_count(32),
      ADR1 => clock_filter_count(33),
      ADR2 => clock_filter_count(34),
      ADR3 => clock_filter_count(35),
      O => clock_filter_Mcompar_hit_cmp_eq0000_lut(8)
    );
  clock_filter_Mcompar_hit_cmp_eq0000_cy_8_Q : X_MUX2
    port map (
      IB => clock_filter_Mcompar_hit_cmp_eq0000_cy(7),
      IA => N0,
      SEL => clock_filter_Mcompar_hit_cmp_eq0000_lut(8),
      O => clock_filter_Mcompar_hit_cmp_eq0000_cy(8)
    );
  clock_filter_Mcompar_hit_cmp_eq0000_lut_9_Q : X_LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      ADR0 => clock_filter_count(36),
      ADR1 => clock_filter_count(37),
      ADR2 => clock_filter_count(38),
      ADR3 => clock_filter_count(39),
      O => clock_filter_Mcompar_hit_cmp_eq0000_lut(9)
    );
  clock_filter_Mcompar_hit_cmp_eq0000_cy_9_Q : X_MUX2
    port map (
      IB => clock_filter_Mcompar_hit_cmp_eq0000_cy(8),
      IA => N0,
      SEL => clock_filter_Mcompar_hit_cmp_eq0000_lut(9),
      O => clock_filter_Mcompar_hit_cmp_eq0000_cy(9)
    );
  clock_filter_Mcompar_hit_cmp_eq0000_lut_10_Q : X_LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      ADR0 => clock_filter_count(40),
      ADR1 => clock_filter_count(41),
      ADR2 => clock_filter_count(42),
      ADR3 => clock_filter_count(43),
      O => clock_filter_Mcompar_hit_cmp_eq0000_lut(10)
    );
  clock_filter_Mcompar_hit_cmp_eq0000_cy_10_Q : X_MUX2
    port map (
      IB => clock_filter_Mcompar_hit_cmp_eq0000_cy(9),
      IA => N0,
      SEL => clock_filter_Mcompar_hit_cmp_eq0000_lut(10),
      O => clock_filter_Mcompar_hit_cmp_eq0000_cy(10)
    );
  clock_filter_Mcompar_hit_cmp_eq0000_lut_11_Q : X_LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      ADR0 => clock_filter_count(44),
      ADR1 => clock_filter_count(45),
      ADR2 => clock_filter_count(46),
      ADR3 => clock_filter_count(47),
      O => clock_filter_Mcompar_hit_cmp_eq0000_lut(11)
    );
  clock_filter_Mcompar_hit_cmp_eq0000_cy_11_Q : X_MUX2
    port map (
      IB => clock_filter_Mcompar_hit_cmp_eq0000_cy(10),
      IA => N0,
      SEL => clock_filter_Mcompar_hit_cmp_eq0000_lut(11),
      O => clock_filter_Mcompar_hit_cmp_eq0000_cy(11)
    );
  clock_filter_Mcompar_hit_cmp_eq0000_lut_12_Q : X_LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      ADR0 => clock_filter_count(48),
      ADR1 => clock_filter_count(49),
      ADR2 => clock_filter_count(50),
      ADR3 => clock_filter_count(51),
      O => clock_filter_Mcompar_hit_cmp_eq0000_lut(12)
    );
  clock_filter_Mcompar_hit_cmp_eq0000_cy_12_Q : X_MUX2
    port map (
      IB => clock_filter_Mcompar_hit_cmp_eq0000_cy(11),
      IA => N0,
      SEL => clock_filter_Mcompar_hit_cmp_eq0000_lut(12),
      O => clock_filter_Mcompar_hit_cmp_eq0000_cy(12)
    );
  clock_filter_Mcompar_hit_cmp_eq0000_lut_13_Q : X_LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      ADR0 => clock_filter_count(52),
      ADR1 => clock_filter_count(53),
      ADR2 => clock_filter_count(54),
      ADR3 => clock_filter_count(55),
      O => clock_filter_Mcompar_hit_cmp_eq0000_lut(13)
    );
  clock_filter_Mcompar_hit_cmp_eq0000_cy_13_Q : X_MUX2
    port map (
      IB => clock_filter_Mcompar_hit_cmp_eq0000_cy(12),
      IA => N0,
      SEL => clock_filter_Mcompar_hit_cmp_eq0000_lut(13),
      O => clock_filter_Mcompar_hit_cmp_eq0000_cy(13)
    );
  clock_filter_Mcompar_hit_cmp_eq0000_lut_14_Q : X_LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      ADR0 => clock_filter_count(56),
      ADR1 => clock_filter_count(57),
      ADR2 => clock_filter_count(58),
      ADR3 => clock_filter_count(59),
      O => clock_filter_Mcompar_hit_cmp_eq0000_lut(14)
    );
  clock_filter_Mcompar_hit_cmp_eq0000_cy_14_Q : X_MUX2
    port map (
      IB => clock_filter_Mcompar_hit_cmp_eq0000_cy(13),
      IA => N0,
      SEL => clock_filter_Mcompar_hit_cmp_eq0000_lut(14),
      O => clock_filter_Mcompar_hit_cmp_eq0000_cy(14)
    );
  clock_filter_Mcompar_hit_cmp_eq0000_lut_15_Q : X_LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      ADR0 => clock_filter_count(60),
      ADR1 => clock_filter_count(61),
      ADR2 => clock_filter_count(62),
      ADR3 => clock_filter_count(63),
      O => clock_filter_Mcompar_hit_cmp_eq0000_lut(15)
    );
  clock_filter_Mcompar_hit_cmp_eq0000_cy_15_Q : X_MUX2
    port map (
      IB => clock_filter_Mcompar_hit_cmp_eq0000_cy(14),
      IA => N0,
      SEL => clock_filter_Mcompar_hit_cmp_eq0000_lut(15),
      O => clock_filter_Mcompar_hit_cmp_eq0000_cy(15)
    );
  clock_filter_Mcompar_hit_cmp_eq0000_lut_16_Q : X_LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      ADR0 => clock_filter_count(64),
      ADR1 => clock_filter_count(65),
      ADR2 => clock_filter_count(66),
      ADR3 => clock_filter_count(67),
      O => clock_filter_Mcompar_hit_cmp_eq0000_lut(16)
    );
  clock_filter_Mcompar_hit_cmp_eq0000_cy_16_Q : X_MUX2
    port map (
      IB => N1,
      IA => N0,
      SEL => clock_filter_Mcompar_hit_cmp_eq0000_lut(16),
      O => clock_filter_Mcompar_hit_cmp_eq0000_cy(16)
    );
  clock_filter_Mcompar_hit_cmp_eq0000_lut_17_Q : X_LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      ADR0 => clock_filter_count(68),
      ADR1 => clock_filter_count(69),
      ADR2 => clock_filter_count(70),
      ADR3 => clock_filter_count(71),
      O => clock_filter_Mcompar_hit_cmp_eq0000_lut(17)
    );
  clock_filter_Mcompar_hit_cmp_eq0000_cy_17_Q : X_MUX2
    port map (
      IB => clock_filter_Mcompar_hit_cmp_eq0000_cy(16),
      IA => N0,
      SEL => clock_filter_Mcompar_hit_cmp_eq0000_lut(17),
      O => clock_filter_Mcompar_hit_cmp_eq0000_cy(17)
    );
  clock_filter_Mcompar_hit_cmp_eq0000_lut_18_Q : X_LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      ADR0 => clock_filter_count(72),
      ADR1 => clock_filter_count(73),
      ADR2 => clock_filter_count(74),
      ADR3 => clock_filter_count(75),
      O => clock_filter_Mcompar_hit_cmp_eq0000_lut(18)
    );
  clock_filter_Mcompar_hit_cmp_eq0000_cy_18_Q : X_MUX2
    port map (
      IB => clock_filter_Mcompar_hit_cmp_eq0000_cy(17),
      IA => N0,
      SEL => clock_filter_Mcompar_hit_cmp_eq0000_lut(18),
      O => clock_filter_Mcompar_hit_cmp_eq0000_cy(18)
    );
  clock_filter_Mcompar_hit_cmp_eq0000_lut_19_Q : X_LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      ADR0 => clock_filter_count(76),
      ADR1 => clock_filter_count(77),
      ADR2 => clock_filter_count(78),
      ADR3 => clock_filter_count(79),
      O => clock_filter_Mcompar_hit_cmp_eq0000_lut(19)
    );
  clock_filter_Mcompar_hit_cmp_eq0000_cy_19_Q : X_MUX2
    port map (
      IB => clock_filter_Mcompar_hit_cmp_eq0000_cy(18),
      IA => N0,
      SEL => clock_filter_Mcompar_hit_cmp_eq0000_lut(19),
      O => clock_filter_Mcompar_hit_cmp_eq0000_cy(19)
    );
  clock_filter_Mcompar_hit_cmp_eq0000_lut_20_Q : X_LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      ADR0 => clock_filter_count(80),
      ADR1 => clock_filter_count(81),
      ADR2 => clock_filter_count(82),
      ADR3 => clock_filter_count(83),
      O => clock_filter_Mcompar_hit_cmp_eq0000_lut(20)
    );
  clock_filter_Mcompar_hit_cmp_eq0000_cy_20_Q : X_MUX2
    port map (
      IB => clock_filter_Mcompar_hit_cmp_eq0000_cy(19),
      IA => N0,
      SEL => clock_filter_Mcompar_hit_cmp_eq0000_lut(20),
      O => clock_filter_Mcompar_hit_cmp_eq0000_cy(20)
    );
  clock_filter_Mcompar_hit_cmp_eq0000_lut_21_Q : X_LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      ADR0 => clock_filter_count(84),
      ADR1 => clock_filter_count(85),
      ADR2 => clock_filter_count(86),
      ADR3 => clock_filter_count(87),
      O => clock_filter_Mcompar_hit_cmp_eq0000_lut(21)
    );
  clock_filter_Mcompar_hit_cmp_eq0000_cy_21_Q : X_MUX2
    port map (
      IB => clock_filter_Mcompar_hit_cmp_eq0000_cy(20),
      IA => N0,
      SEL => clock_filter_Mcompar_hit_cmp_eq0000_lut(21),
      O => clock_filter_Mcompar_hit_cmp_eq0000_cy(21)
    );
  clock_filter_Mcompar_hit_cmp_eq0000_lut_22_Q : X_LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      ADR0 => clock_filter_count(88),
      ADR1 => clock_filter_count(89),
      ADR2 => clock_filter_count(90),
      ADR3 => clock_filter_count(91),
      O => clock_filter_Mcompar_hit_cmp_eq0000_lut(22)
    );
  clock_filter_Mcompar_hit_cmp_eq0000_cy_22_Q : X_MUX2
    port map (
      IB => clock_filter_Mcompar_hit_cmp_eq0000_cy(21),
      IA => N0,
      SEL => clock_filter_Mcompar_hit_cmp_eq0000_lut(22),
      O => clock_filter_Mcompar_hit_cmp_eq0000_cy(22)
    );
  clock_filter_Mcompar_hit_cmp_eq0000_lut_23_Q : X_LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      ADR0 => clock_filter_count(92),
      ADR1 => clock_filter_count(93),
      ADR2 => clock_filter_count(94),
      ADR3 => clock_filter_count(95),
      O => clock_filter_Mcompar_hit_cmp_eq0000_lut(23)
    );
  clock_filter_Mcompar_hit_cmp_eq0000_cy_23_Q : X_MUX2
    port map (
      IB => clock_filter_Mcompar_hit_cmp_eq0000_cy(22),
      IA => N0,
      SEL => clock_filter_Mcompar_hit_cmp_eq0000_lut(23),
      O => clock_filter_Mcompar_hit_cmp_eq0000_cy(23)
    );
  clock_filter_Mcompar_hit_cmp_eq0000_lut_24_Q : X_LUT4
    generic map(
      INIT => X"8000"
    )
    port map (
      ADR0 => clock_filter_count(96),
      ADR1 => clock_filter_count(97),
      ADR2 => clock_filter_count(98),
      ADR3 => clock_filter_count(99),
      O => clock_filter_Mcompar_hit_cmp_eq0000_lut(24)
    );
  clock_filter_Mcompar_hit_cmp_eq0000_cy_24_Q : X_MUX2
    port map (
      IB => clock_filter_Mcompar_hit_cmp_eq0000_cy(23),
      IA => N0,
      SEL => clock_filter_Mcompar_hit_cmp_eq0000_lut(24),
      O => clock_filter_Mcompar_hit_cmp_eq0000_cy(24)
    );
  s_c_Mmux_valore_cifra_2_f5_2 : X_MUX2
    port map (
      IA => s_c_Mmux_valore_cifra_43_529,
      IB => s_c_Mmux_valore_cifra_33_525,
      SEL => counter_mod_4_count(1),
      O => valore_cifra(3)
    );
  s_c_Mmux_valore_cifra_43 : X_LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      ADR0 => counter_mod_4_count(0),
      ADR1 => number_3_IBUF_512,
      ADR2 => number_7_IBUF_516,
      O => s_c_Mmux_valore_cifra_43_529
    );
  s_c_Mmux_valore_cifra_33 : X_LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      ADR0 => counter_mod_4_count(0),
      ADR1 => number_11_IBUF_505,
      ADR2 => number_15_IBUF_509,
      O => s_c_Mmux_valore_cifra_33_525
    );
  s_c_Mmux_valore_cifra_2_f5_1 : X_MUX2
    port map (
      IA => s_c_Mmux_valore_cifra_42_528,
      IB => s_c_Mmux_valore_cifra_32_524,
      SEL => counter_mod_4_count(1),
      O => valore_cifra(2)
    );
  s_c_Mmux_valore_cifra_42 : X_LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      ADR0 => counter_mod_4_count(0),
      ADR1 => number_2_IBUF_511,
      ADR2 => number_6_IBUF_515,
      O => s_c_Mmux_valore_cifra_42_528
    );
  s_c_Mmux_valore_cifra_32 : X_LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      ADR0 => counter_mod_4_count(0),
      ADR1 => number_10_IBUF_504,
      ADR2 => number_14_IBUF_508,
      O => s_c_Mmux_valore_cifra_32_524
    );
  s_c_Mmux_valore_cifra_2_f5_0 : X_MUX2
    port map (
      IA => s_c_Mmux_valore_cifra_41_527,
      IB => s_c_Mmux_valore_cifra_31_523,
      SEL => counter_mod_4_count(1),
      O => valore_cifra(1)
    );
  s_c_Mmux_valore_cifra_41 : X_LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      ADR0 => counter_mod_4_count(0),
      ADR1 => number_1_IBUF_510,
      ADR2 => number_5_IBUF_514,
      O => s_c_Mmux_valore_cifra_41_527
    );
  s_c_Mmux_valore_cifra_31 : X_LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      ADR0 => counter_mod_4_count(0),
      ADR1 => number_9_IBUF_518,
      ADR2 => number_13_IBUF_507,
      O => s_c_Mmux_valore_cifra_31_523
    );
  s_c_Mmux_valore_cifra_2_f5 : X_MUX2
    port map (
      IA => s_c_Mmux_valore_cifra_4_526,
      IB => s_c_Mmux_valore_cifra_3_522,
      SEL => counter_mod_4_count(1),
      O => valore_cifra(0)
    );
  s_c_Mmux_valore_cifra_4 : X_LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      ADR0 => counter_mod_4_count(0),
      ADR1 => number_0_IBUF_503,
      ADR2 => number_4_IBUF_513,
      O => s_c_Mmux_valore_cifra_4_526
    );
  s_c_Mmux_valore_cifra_3 : X_LUT3
    generic map(
      INIT => X"E4"
    )
    port map (
      ADR0 => counter_mod_4_count(0),
      ADR1 => number_8_IBUF_517,
      ADR2 => number_12_IBUF_506,
      O => s_c_Mmux_valore_cifra_3_522
    );
  clock_filter_Mcount_count_cy_0_Q : X_MUX2
    port map (
      IB => N0,
      IA => N1,
      SEL => clock_filter_Mcount_count_lut(0),
      O => clock_filter_Mcount_count_cy(0)
    );
  clock_filter_Mcount_count_xor_0_Q : X_XOR2
    port map (
      I0 => N0,
      I1 => clock_filter_Mcount_count_lut(0),
      O => Result(0)
    );
  clock_filter_Mcount_count_cy_1_Q : X_MUX2
    port map (
      IB => clock_filter_Mcount_count_cy(0),
      IA => N0,
      SEL => clock_filter_Mcount_count_cy_1_rt_203,
      O => clock_filter_Mcount_count_cy(1)
    );
  clock_filter_Mcount_count_xor_1_Q : X_XOR2
    port map (
      I0 => clock_filter_Mcount_count_cy(0),
      I1 => clock_filter_Mcount_count_cy_1_rt_203,
      O => Result(1)
    );
  clock_filter_Mcount_count_cy_2_Q : X_MUX2
    port map (
      IB => clock_filter_Mcount_count_cy(1),
      IA => N0,
      SEL => clock_filter_Mcount_count_cy_2_rt_225,
      O => clock_filter_Mcount_count_cy(2)
    );
  clock_filter_Mcount_count_xor_2_Q : X_XOR2
    port map (
      I0 => clock_filter_Mcount_count_cy(1),
      I1 => clock_filter_Mcount_count_cy_2_rt_225,
      O => Result(2)
    );
  clock_filter_Mcount_count_cy_3_Q : X_MUX2
    port map (
      IB => clock_filter_Mcount_count_cy(2),
      IA => N0,
      SEL => clock_filter_Mcount_count_cy_3_rt_247,
      O => clock_filter_Mcount_count_cy(3)
    );
  clock_filter_Mcount_count_xor_3_Q : X_XOR2
    port map (
      I0 => clock_filter_Mcount_count_cy(2),
      I1 => clock_filter_Mcount_count_cy_3_rt_247,
      O => Result(3)
    );
  clock_filter_Mcount_count_cy_4_Q : X_MUX2
    port map (
      IB => clock_filter_Mcount_count_cy(3),
      IA => N0,
      SEL => clock_filter_Mcount_count_cy_4_rt_269,
      O => clock_filter_Mcount_count_cy(4)
    );
  clock_filter_Mcount_count_xor_4_Q : X_XOR2
    port map (
      I0 => clock_filter_Mcount_count_cy(3),
      I1 => clock_filter_Mcount_count_cy_4_rt_269,
      O => Result(4)
    );
  clock_filter_Mcount_count_cy_5_Q : X_MUX2
    port map (
      IB => clock_filter_Mcount_count_cy(4),
      IA => N0,
      SEL => clock_filter_Mcount_count_cy_5_rt_291,
      O => clock_filter_Mcount_count_cy(5)
    );
  clock_filter_Mcount_count_xor_5_Q : X_XOR2
    port map (
      I0 => clock_filter_Mcount_count_cy(4),
      I1 => clock_filter_Mcount_count_cy_5_rt_291,
      O => Result(5)
    );
  clock_filter_Mcount_count_cy_6_Q : X_MUX2
    port map (
      IB => clock_filter_Mcount_count_cy(5),
      IA => N0,
      SEL => clock_filter_Mcount_count_cy_6_rt_313,
      O => clock_filter_Mcount_count_cy(6)
    );
  clock_filter_Mcount_count_xor_6_Q : X_XOR2
    port map (
      I0 => clock_filter_Mcount_count_cy(5),
      I1 => clock_filter_Mcount_count_cy_6_rt_313,
      O => Result(6)
    );
  clock_filter_Mcount_count_cy_7_Q : X_MUX2
    port map (
      IB => clock_filter_Mcount_count_cy(6),
      IA => N0,
      SEL => clock_filter_Mcount_count_cy_7_rt_335,
      O => clock_filter_Mcount_count_cy(7)
    );
  clock_filter_Mcount_count_xor_7_Q : X_XOR2
    port map (
      I0 => clock_filter_Mcount_count_cy(6),
      I1 => clock_filter_Mcount_count_cy_7_rt_335,
      O => Result(7)
    );
  clock_filter_Mcount_count_cy_8_Q : X_MUX2
    port map (
      IB => clock_filter_Mcount_count_cy(7),
      IA => N0,
      SEL => clock_filter_Mcount_count_cy_8_rt_357,
      O => clock_filter_Mcount_count_cy(8)
    );
  clock_filter_Mcount_count_xor_8_Q : X_XOR2
    port map (
      I0 => clock_filter_Mcount_count_cy(7),
      I1 => clock_filter_Mcount_count_cy_8_rt_357,
      O => Result(8)
    );
  clock_filter_Mcount_count_cy_9_Q : X_MUX2
    port map (
      IB => clock_filter_Mcount_count_cy(8),
      IA => N0,
      SEL => clock_filter_Mcount_count_cy_9_rt_377,
      O => clock_filter_Mcount_count_cy(9)
    );
  clock_filter_Mcount_count_xor_9_Q : X_XOR2
    port map (
      I0 => clock_filter_Mcount_count_cy(8),
      I1 => clock_filter_Mcount_count_cy_9_rt_377,
      O => Result(9)
    );
  clock_filter_Mcount_count_cy_10_Q : X_MUX2
    port map (
      IB => clock_filter_Mcount_count_cy(9),
      IA => N0,
      SEL => clock_filter_Mcount_count_cy_10_rt_183,
      O => clock_filter_Mcount_count_cy(10)
    );
  clock_filter_Mcount_count_xor_10_Q : X_XOR2
    port map (
      I0 => clock_filter_Mcount_count_cy(9),
      I1 => clock_filter_Mcount_count_cy_10_rt_183,
      O => Result(10)
    );
  clock_filter_Mcount_count_cy_11_Q : X_MUX2
    port map (
      IB => clock_filter_Mcount_count_cy(10),
      IA => N0,
      SEL => clock_filter_Mcount_count_cy_11_rt_185,
      O => clock_filter_Mcount_count_cy(11)
    );
  clock_filter_Mcount_count_xor_11_Q : X_XOR2
    port map (
      I0 => clock_filter_Mcount_count_cy(10),
      I1 => clock_filter_Mcount_count_cy_11_rt_185,
      O => Result(11)
    );
  clock_filter_Mcount_count_cy_12_Q : X_MUX2
    port map (
      IB => clock_filter_Mcount_count_cy(11),
      IA => N0,
      SEL => clock_filter_Mcount_count_cy_12_rt_187,
      O => clock_filter_Mcount_count_cy(12)
    );
  clock_filter_Mcount_count_xor_12_Q : X_XOR2
    port map (
      I0 => clock_filter_Mcount_count_cy(11),
      I1 => clock_filter_Mcount_count_cy_12_rt_187,
      O => Result(12)
    );
  clock_filter_Mcount_count_cy_13_Q : X_MUX2
    port map (
      IB => clock_filter_Mcount_count_cy(12),
      IA => N0,
      SEL => clock_filter_Mcount_count_cy_13_rt_189,
      O => clock_filter_Mcount_count_cy(13)
    );
  clock_filter_Mcount_count_xor_13_Q : X_XOR2
    port map (
      I0 => clock_filter_Mcount_count_cy(12),
      I1 => clock_filter_Mcount_count_cy_13_rt_189,
      O => Result(13)
    );
  clock_filter_Mcount_count_cy_14_Q : X_MUX2
    port map (
      IB => clock_filter_Mcount_count_cy(13),
      IA => N0,
      SEL => clock_filter_Mcount_count_cy_14_rt_191,
      O => clock_filter_Mcount_count_cy(14)
    );
  clock_filter_Mcount_count_xor_14_Q : X_XOR2
    port map (
      I0 => clock_filter_Mcount_count_cy(13),
      I1 => clock_filter_Mcount_count_cy_14_rt_191,
      O => Result(14)
    );
  clock_filter_Mcount_count_cy_15_Q : X_MUX2
    port map (
      IB => clock_filter_Mcount_count_cy(14),
      IA => N0,
      SEL => clock_filter_Mcount_count_cy_15_rt_193,
      O => clock_filter_Mcount_count_cy(15)
    );
  clock_filter_Mcount_count_xor_15_Q : X_XOR2
    port map (
      I0 => clock_filter_Mcount_count_cy(14),
      I1 => clock_filter_Mcount_count_cy_15_rt_193,
      O => Result(15)
    );
  clock_filter_Mcount_count_cy_16_Q : X_MUX2
    port map (
      IB => clock_filter_Mcount_count_cy(15),
      IA => N0,
      SEL => clock_filter_Mcount_count_cy_16_rt_195,
      O => clock_filter_Mcount_count_cy(16)
    );
  clock_filter_Mcount_count_xor_16_Q : X_XOR2
    port map (
      I0 => clock_filter_Mcount_count_cy(15),
      I1 => clock_filter_Mcount_count_cy_16_rt_195,
      O => Result(16)
    );
  clock_filter_Mcount_count_cy_17_Q : X_MUX2
    port map (
      IB => clock_filter_Mcount_count_cy(16),
      IA => N0,
      SEL => clock_filter_Mcount_count_cy_17_rt_197,
      O => clock_filter_Mcount_count_cy(17)
    );
  clock_filter_Mcount_count_xor_17_Q : X_XOR2
    port map (
      I0 => clock_filter_Mcount_count_cy(16),
      I1 => clock_filter_Mcount_count_cy_17_rt_197,
      O => Result(17)
    );
  clock_filter_Mcount_count_cy_18_Q : X_MUX2
    port map (
      IB => clock_filter_Mcount_count_cy(17),
      IA => N0,
      SEL => clock_filter_Mcount_count_cy_18_rt_199,
      O => clock_filter_Mcount_count_cy(18)
    );
  clock_filter_Mcount_count_xor_18_Q : X_XOR2
    port map (
      I0 => clock_filter_Mcount_count_cy(17),
      I1 => clock_filter_Mcount_count_cy_18_rt_199,
      O => Result(18)
    );
  clock_filter_Mcount_count_cy_19_Q : X_MUX2
    port map (
      IB => clock_filter_Mcount_count_cy(18),
      IA => N0,
      SEL => clock_filter_Mcount_count_cy_19_rt_201,
      O => clock_filter_Mcount_count_cy(19)
    );
  clock_filter_Mcount_count_xor_19_Q : X_XOR2
    port map (
      I0 => clock_filter_Mcount_count_cy(18),
      I1 => clock_filter_Mcount_count_cy_19_rt_201,
      O => Result(19)
    );
  clock_filter_Mcount_count_cy_20_Q : X_MUX2
    port map (
      IB => clock_filter_Mcount_count_cy(19),
      IA => N0,
      SEL => clock_filter_Mcount_count_cy_20_rt_205,
      O => clock_filter_Mcount_count_cy(20)
    );
  clock_filter_Mcount_count_xor_20_Q : X_XOR2
    port map (
      I0 => clock_filter_Mcount_count_cy(19),
      I1 => clock_filter_Mcount_count_cy_20_rt_205,
      O => Result(20)
    );
  clock_filter_Mcount_count_cy_21_Q : X_MUX2
    port map (
      IB => clock_filter_Mcount_count_cy(20),
      IA => N0,
      SEL => clock_filter_Mcount_count_cy_21_rt_207,
      O => clock_filter_Mcount_count_cy(21)
    );
  clock_filter_Mcount_count_xor_21_Q : X_XOR2
    port map (
      I0 => clock_filter_Mcount_count_cy(20),
      I1 => clock_filter_Mcount_count_cy_21_rt_207,
      O => Result(21)
    );
  clock_filter_Mcount_count_cy_22_Q : X_MUX2
    port map (
      IB => clock_filter_Mcount_count_cy(21),
      IA => N0,
      SEL => clock_filter_Mcount_count_cy_22_rt_209,
      O => clock_filter_Mcount_count_cy(22)
    );
  clock_filter_Mcount_count_xor_22_Q : X_XOR2
    port map (
      I0 => clock_filter_Mcount_count_cy(21),
      I1 => clock_filter_Mcount_count_cy_22_rt_209,
      O => Result(22)
    );
  clock_filter_Mcount_count_cy_23_Q : X_MUX2
    port map (
      IB => clock_filter_Mcount_count_cy(22),
      IA => N0,
      SEL => clock_filter_Mcount_count_cy_23_rt_211,
      O => clock_filter_Mcount_count_cy(23)
    );
  clock_filter_Mcount_count_xor_23_Q : X_XOR2
    port map (
      I0 => clock_filter_Mcount_count_cy(22),
      I1 => clock_filter_Mcount_count_cy_23_rt_211,
      O => Result(23)
    );
  clock_filter_Mcount_count_cy_24_Q : X_MUX2
    port map (
      IB => clock_filter_Mcount_count_cy(23),
      IA => N0,
      SEL => clock_filter_Mcount_count_cy_24_rt_213,
      O => clock_filter_Mcount_count_cy(24)
    );
  clock_filter_Mcount_count_xor_24_Q : X_XOR2
    port map (
      I0 => clock_filter_Mcount_count_cy(23),
      I1 => clock_filter_Mcount_count_cy_24_rt_213,
      O => Result(24)
    );
  clock_filter_Mcount_count_cy_25_Q : X_MUX2
    port map (
      IB => clock_filter_Mcount_count_cy(24),
      IA => N0,
      SEL => clock_filter_Mcount_count_cy_25_rt_215,
      O => clock_filter_Mcount_count_cy(25)
    );
  clock_filter_Mcount_count_xor_25_Q : X_XOR2
    port map (
      I0 => clock_filter_Mcount_count_cy(24),
      I1 => clock_filter_Mcount_count_cy_25_rt_215,
      O => Result(25)
    );
  clock_filter_Mcount_count_cy_26_Q : X_MUX2
    port map (
      IB => clock_filter_Mcount_count_cy(25),
      IA => N0,
      SEL => clock_filter_Mcount_count_cy_26_rt_217,
      O => clock_filter_Mcount_count_cy(26)
    );
  clock_filter_Mcount_count_xor_26_Q : X_XOR2
    port map (
      I0 => clock_filter_Mcount_count_cy(25),
      I1 => clock_filter_Mcount_count_cy_26_rt_217,
      O => Result(26)
    );
  clock_filter_Mcount_count_cy_27_Q : X_MUX2
    port map (
      IB => clock_filter_Mcount_count_cy(26),
      IA => N0,
      SEL => clock_filter_Mcount_count_cy_27_rt_219,
      O => clock_filter_Mcount_count_cy(27)
    );
  clock_filter_Mcount_count_xor_27_Q : X_XOR2
    port map (
      I0 => clock_filter_Mcount_count_cy(26),
      I1 => clock_filter_Mcount_count_cy_27_rt_219,
      O => Result(27)
    );
  clock_filter_Mcount_count_cy_28_Q : X_MUX2
    port map (
      IB => clock_filter_Mcount_count_cy(27),
      IA => N0,
      SEL => clock_filter_Mcount_count_cy_28_rt_221,
      O => clock_filter_Mcount_count_cy(28)
    );
  clock_filter_Mcount_count_xor_28_Q : X_XOR2
    port map (
      I0 => clock_filter_Mcount_count_cy(27),
      I1 => clock_filter_Mcount_count_cy_28_rt_221,
      O => Result(28)
    );
  clock_filter_Mcount_count_cy_29_Q : X_MUX2
    port map (
      IB => clock_filter_Mcount_count_cy(28),
      IA => N0,
      SEL => clock_filter_Mcount_count_cy_29_rt_223,
      O => clock_filter_Mcount_count_cy(29)
    );
  clock_filter_Mcount_count_xor_29_Q : X_XOR2
    port map (
      I0 => clock_filter_Mcount_count_cy(28),
      I1 => clock_filter_Mcount_count_cy_29_rt_223,
      O => Result(29)
    );
  clock_filter_Mcount_count_cy_30_Q : X_MUX2
    port map (
      IB => clock_filter_Mcount_count_cy(29),
      IA => N0,
      SEL => clock_filter_Mcount_count_cy_30_rt_227,
      O => clock_filter_Mcount_count_cy(30)
    );
  clock_filter_Mcount_count_xor_30_Q : X_XOR2
    port map (
      I0 => clock_filter_Mcount_count_cy(29),
      I1 => clock_filter_Mcount_count_cy_30_rt_227,
      O => Result(30)
    );
  clock_filter_Mcount_count_cy_31_Q : X_MUX2
    port map (
      IB => clock_filter_Mcount_count_cy(30),
      IA => N0,
      SEL => clock_filter_Mcount_count_cy_31_rt_229,
      O => clock_filter_Mcount_count_cy(31)
    );
  clock_filter_Mcount_count_xor_31_Q : X_XOR2
    port map (
      I0 => clock_filter_Mcount_count_cy(30),
      I1 => clock_filter_Mcount_count_cy_31_rt_229,
      O => Result(31)
    );
  clock_filter_Mcount_count_cy_32_Q : X_MUX2
    port map (
      IB => clock_filter_Mcount_count_cy(31),
      IA => N0,
      SEL => clock_filter_Mcount_count_cy_32_rt_231,
      O => clock_filter_Mcount_count_cy(32)
    );
  clock_filter_Mcount_count_xor_32_Q : X_XOR2
    port map (
      I0 => clock_filter_Mcount_count_cy(31),
      I1 => clock_filter_Mcount_count_cy_32_rt_231,
      O => Result(32)
    );
  clock_filter_Mcount_count_cy_33_Q : X_MUX2
    port map (
      IB => clock_filter_Mcount_count_cy(32),
      IA => N0,
      SEL => clock_filter_Mcount_count_cy_33_rt_233,
      O => clock_filter_Mcount_count_cy(33)
    );
  clock_filter_Mcount_count_xor_33_Q : X_XOR2
    port map (
      I0 => clock_filter_Mcount_count_cy(32),
      I1 => clock_filter_Mcount_count_cy_33_rt_233,
      O => Result(33)
    );
  clock_filter_Mcount_count_cy_34_Q : X_MUX2
    port map (
      IB => clock_filter_Mcount_count_cy(33),
      IA => N0,
      SEL => clock_filter_Mcount_count_cy_34_rt_235,
      O => clock_filter_Mcount_count_cy(34)
    );
  clock_filter_Mcount_count_xor_34_Q : X_XOR2
    port map (
      I0 => clock_filter_Mcount_count_cy(33),
      I1 => clock_filter_Mcount_count_cy_34_rt_235,
      O => Result(34)
    );
  clock_filter_Mcount_count_cy_35_Q : X_MUX2
    port map (
      IB => clock_filter_Mcount_count_cy(34),
      IA => N0,
      SEL => clock_filter_Mcount_count_cy_35_rt_237,
      O => clock_filter_Mcount_count_cy(35)
    );
  clock_filter_Mcount_count_xor_35_Q : X_XOR2
    port map (
      I0 => clock_filter_Mcount_count_cy(34),
      I1 => clock_filter_Mcount_count_cy_35_rt_237,
      O => Result(35)
    );
  clock_filter_Mcount_count_cy_36_Q : X_MUX2
    port map (
      IB => clock_filter_Mcount_count_cy(35),
      IA => N0,
      SEL => clock_filter_Mcount_count_cy_36_rt_239,
      O => clock_filter_Mcount_count_cy(36)
    );
  clock_filter_Mcount_count_xor_36_Q : X_XOR2
    port map (
      I0 => clock_filter_Mcount_count_cy(35),
      I1 => clock_filter_Mcount_count_cy_36_rt_239,
      O => Result(36)
    );
  clock_filter_Mcount_count_cy_37_Q : X_MUX2
    port map (
      IB => clock_filter_Mcount_count_cy(36),
      IA => N0,
      SEL => clock_filter_Mcount_count_cy_37_rt_241,
      O => clock_filter_Mcount_count_cy(37)
    );
  clock_filter_Mcount_count_xor_37_Q : X_XOR2
    port map (
      I0 => clock_filter_Mcount_count_cy(36),
      I1 => clock_filter_Mcount_count_cy_37_rt_241,
      O => Result(37)
    );
  clock_filter_Mcount_count_cy_38_Q : X_MUX2
    port map (
      IB => clock_filter_Mcount_count_cy(37),
      IA => N0,
      SEL => clock_filter_Mcount_count_cy_38_rt_243,
      O => clock_filter_Mcount_count_cy(38)
    );
  clock_filter_Mcount_count_xor_38_Q : X_XOR2
    port map (
      I0 => clock_filter_Mcount_count_cy(37),
      I1 => clock_filter_Mcount_count_cy_38_rt_243,
      O => Result(38)
    );
  clock_filter_Mcount_count_cy_39_Q : X_MUX2
    port map (
      IB => clock_filter_Mcount_count_cy(38),
      IA => N0,
      SEL => clock_filter_Mcount_count_cy_39_rt_245,
      O => clock_filter_Mcount_count_cy(39)
    );
  clock_filter_Mcount_count_xor_39_Q : X_XOR2
    port map (
      I0 => clock_filter_Mcount_count_cy(38),
      I1 => clock_filter_Mcount_count_cy_39_rt_245,
      O => Result(39)
    );
  clock_filter_Mcount_count_cy_40_Q : X_MUX2
    port map (
      IB => clock_filter_Mcount_count_cy(39),
      IA => N0,
      SEL => clock_filter_Mcount_count_cy_40_rt_249,
      O => clock_filter_Mcount_count_cy(40)
    );
  clock_filter_Mcount_count_xor_40_Q : X_XOR2
    port map (
      I0 => clock_filter_Mcount_count_cy(39),
      I1 => clock_filter_Mcount_count_cy_40_rt_249,
      O => Result(40)
    );
  clock_filter_Mcount_count_cy_41_Q : X_MUX2
    port map (
      IB => clock_filter_Mcount_count_cy(40),
      IA => N0,
      SEL => clock_filter_Mcount_count_cy_41_rt_251,
      O => clock_filter_Mcount_count_cy(41)
    );
  clock_filter_Mcount_count_xor_41_Q : X_XOR2
    port map (
      I0 => clock_filter_Mcount_count_cy(40),
      I1 => clock_filter_Mcount_count_cy_41_rt_251,
      O => Result(41)
    );
  clock_filter_Mcount_count_cy_42_Q : X_MUX2
    port map (
      IB => clock_filter_Mcount_count_cy(41),
      IA => N0,
      SEL => clock_filter_Mcount_count_cy_42_rt_253,
      O => clock_filter_Mcount_count_cy(42)
    );
  clock_filter_Mcount_count_xor_42_Q : X_XOR2
    port map (
      I0 => clock_filter_Mcount_count_cy(41),
      I1 => clock_filter_Mcount_count_cy_42_rt_253,
      O => Result(42)
    );
  clock_filter_Mcount_count_cy_43_Q : X_MUX2
    port map (
      IB => clock_filter_Mcount_count_cy(42),
      IA => N0,
      SEL => clock_filter_Mcount_count_cy_43_rt_255,
      O => clock_filter_Mcount_count_cy(43)
    );
  clock_filter_Mcount_count_xor_43_Q : X_XOR2
    port map (
      I0 => clock_filter_Mcount_count_cy(42),
      I1 => clock_filter_Mcount_count_cy_43_rt_255,
      O => Result(43)
    );
  clock_filter_Mcount_count_cy_44_Q : X_MUX2
    port map (
      IB => clock_filter_Mcount_count_cy(43),
      IA => N0,
      SEL => clock_filter_Mcount_count_cy_44_rt_257,
      O => clock_filter_Mcount_count_cy(44)
    );
  clock_filter_Mcount_count_xor_44_Q : X_XOR2
    port map (
      I0 => clock_filter_Mcount_count_cy(43),
      I1 => clock_filter_Mcount_count_cy_44_rt_257,
      O => Result(44)
    );
  clock_filter_Mcount_count_cy_45_Q : X_MUX2
    port map (
      IB => clock_filter_Mcount_count_cy(44),
      IA => N0,
      SEL => clock_filter_Mcount_count_cy_45_rt_259,
      O => clock_filter_Mcount_count_cy(45)
    );
  clock_filter_Mcount_count_xor_45_Q : X_XOR2
    port map (
      I0 => clock_filter_Mcount_count_cy(44),
      I1 => clock_filter_Mcount_count_cy_45_rt_259,
      O => Result(45)
    );
  clock_filter_Mcount_count_cy_46_Q : X_MUX2
    port map (
      IB => clock_filter_Mcount_count_cy(45),
      IA => N0,
      SEL => clock_filter_Mcount_count_cy_46_rt_261,
      O => clock_filter_Mcount_count_cy(46)
    );
  clock_filter_Mcount_count_xor_46_Q : X_XOR2
    port map (
      I0 => clock_filter_Mcount_count_cy(45),
      I1 => clock_filter_Mcount_count_cy_46_rt_261,
      O => Result(46)
    );
  clock_filter_Mcount_count_cy_47_Q : X_MUX2
    port map (
      IB => clock_filter_Mcount_count_cy(46),
      IA => N0,
      SEL => clock_filter_Mcount_count_cy_47_rt_263,
      O => clock_filter_Mcount_count_cy(47)
    );
  clock_filter_Mcount_count_xor_47_Q : X_XOR2
    port map (
      I0 => clock_filter_Mcount_count_cy(46),
      I1 => clock_filter_Mcount_count_cy_47_rt_263,
      O => Result(47)
    );
  clock_filter_Mcount_count_cy_48_Q : X_MUX2
    port map (
      IB => clock_filter_Mcount_count_cy(47),
      IA => N0,
      SEL => clock_filter_Mcount_count_cy_48_rt_265,
      O => clock_filter_Mcount_count_cy(48)
    );
  clock_filter_Mcount_count_xor_48_Q : X_XOR2
    port map (
      I0 => clock_filter_Mcount_count_cy(47),
      I1 => clock_filter_Mcount_count_cy_48_rt_265,
      O => Result(48)
    );
  clock_filter_Mcount_count_cy_49_Q : X_MUX2
    port map (
      IB => clock_filter_Mcount_count_cy(48),
      IA => N0,
      SEL => clock_filter_Mcount_count_cy_49_rt_267,
      O => clock_filter_Mcount_count_cy(49)
    );
  clock_filter_Mcount_count_xor_49_Q : X_XOR2
    port map (
      I0 => clock_filter_Mcount_count_cy(48),
      I1 => clock_filter_Mcount_count_cy_49_rt_267,
      O => Result(49)
    );
  clock_filter_Mcount_count_cy_50_Q : X_MUX2
    port map (
      IB => clock_filter_Mcount_count_cy(49),
      IA => N0,
      SEL => clock_filter_Mcount_count_cy_50_rt_271,
      O => clock_filter_Mcount_count_cy(50)
    );
  clock_filter_Mcount_count_xor_50_Q : X_XOR2
    port map (
      I0 => clock_filter_Mcount_count_cy(49),
      I1 => clock_filter_Mcount_count_cy_50_rt_271,
      O => Result(50)
    );
  clock_filter_Mcount_count_cy_51_Q : X_MUX2
    port map (
      IB => clock_filter_Mcount_count_cy(50),
      IA => N0,
      SEL => clock_filter_Mcount_count_cy_51_rt_273,
      O => clock_filter_Mcount_count_cy(51)
    );
  clock_filter_Mcount_count_xor_51_Q : X_XOR2
    port map (
      I0 => clock_filter_Mcount_count_cy(50),
      I1 => clock_filter_Mcount_count_cy_51_rt_273,
      O => Result(51)
    );
  clock_filter_Mcount_count_cy_52_Q : X_MUX2
    port map (
      IB => clock_filter_Mcount_count_cy(51),
      IA => N0,
      SEL => clock_filter_Mcount_count_cy_52_rt_275,
      O => clock_filter_Mcount_count_cy(52)
    );
  clock_filter_Mcount_count_xor_52_Q : X_XOR2
    port map (
      I0 => clock_filter_Mcount_count_cy(51),
      I1 => clock_filter_Mcount_count_cy_52_rt_275,
      O => Result(52)
    );
  clock_filter_Mcount_count_cy_53_Q : X_MUX2
    port map (
      IB => clock_filter_Mcount_count_cy(52),
      IA => N0,
      SEL => clock_filter_Mcount_count_cy_53_rt_277,
      O => clock_filter_Mcount_count_cy(53)
    );
  clock_filter_Mcount_count_xor_53_Q : X_XOR2
    port map (
      I0 => clock_filter_Mcount_count_cy(52),
      I1 => clock_filter_Mcount_count_cy_53_rt_277,
      O => Result(53)
    );
  clock_filter_Mcount_count_cy_54_Q : X_MUX2
    port map (
      IB => clock_filter_Mcount_count_cy(53),
      IA => N0,
      SEL => clock_filter_Mcount_count_cy_54_rt_279,
      O => clock_filter_Mcount_count_cy(54)
    );
  clock_filter_Mcount_count_xor_54_Q : X_XOR2
    port map (
      I0 => clock_filter_Mcount_count_cy(53),
      I1 => clock_filter_Mcount_count_cy_54_rt_279,
      O => Result(54)
    );
  clock_filter_Mcount_count_cy_55_Q : X_MUX2
    port map (
      IB => clock_filter_Mcount_count_cy(54),
      IA => N0,
      SEL => clock_filter_Mcount_count_cy_55_rt_281,
      O => clock_filter_Mcount_count_cy(55)
    );
  clock_filter_Mcount_count_xor_55_Q : X_XOR2
    port map (
      I0 => clock_filter_Mcount_count_cy(54),
      I1 => clock_filter_Mcount_count_cy_55_rt_281,
      O => Result(55)
    );
  clock_filter_Mcount_count_cy_56_Q : X_MUX2
    port map (
      IB => clock_filter_Mcount_count_cy(55),
      IA => N0,
      SEL => clock_filter_Mcount_count_cy_56_rt_283,
      O => clock_filter_Mcount_count_cy(56)
    );
  clock_filter_Mcount_count_xor_56_Q : X_XOR2
    port map (
      I0 => clock_filter_Mcount_count_cy(55),
      I1 => clock_filter_Mcount_count_cy_56_rt_283,
      O => Result(56)
    );
  clock_filter_Mcount_count_cy_57_Q : X_MUX2
    port map (
      IB => clock_filter_Mcount_count_cy(56),
      IA => N0,
      SEL => clock_filter_Mcount_count_cy_57_rt_285,
      O => clock_filter_Mcount_count_cy(57)
    );
  clock_filter_Mcount_count_xor_57_Q : X_XOR2
    port map (
      I0 => clock_filter_Mcount_count_cy(56),
      I1 => clock_filter_Mcount_count_cy_57_rt_285,
      O => Result(57)
    );
  clock_filter_Mcount_count_cy_58_Q : X_MUX2
    port map (
      IB => clock_filter_Mcount_count_cy(57),
      IA => N0,
      SEL => clock_filter_Mcount_count_cy_58_rt_287,
      O => clock_filter_Mcount_count_cy(58)
    );
  clock_filter_Mcount_count_xor_58_Q : X_XOR2
    port map (
      I0 => clock_filter_Mcount_count_cy(57),
      I1 => clock_filter_Mcount_count_cy_58_rt_287,
      O => Result(58)
    );
  clock_filter_Mcount_count_cy_59_Q : X_MUX2
    port map (
      IB => clock_filter_Mcount_count_cy(58),
      IA => N0,
      SEL => clock_filter_Mcount_count_cy_59_rt_289,
      O => clock_filter_Mcount_count_cy(59)
    );
  clock_filter_Mcount_count_xor_59_Q : X_XOR2
    port map (
      I0 => clock_filter_Mcount_count_cy(58),
      I1 => clock_filter_Mcount_count_cy_59_rt_289,
      O => Result(59)
    );
  clock_filter_Mcount_count_cy_60_Q : X_MUX2
    port map (
      IB => clock_filter_Mcount_count_cy(59),
      IA => N0,
      SEL => clock_filter_Mcount_count_cy_60_rt_293,
      O => clock_filter_Mcount_count_cy(60)
    );
  clock_filter_Mcount_count_xor_60_Q : X_XOR2
    port map (
      I0 => clock_filter_Mcount_count_cy(59),
      I1 => clock_filter_Mcount_count_cy_60_rt_293,
      O => Result(60)
    );
  clock_filter_Mcount_count_cy_61_Q : X_MUX2
    port map (
      IB => clock_filter_Mcount_count_cy(60),
      IA => N0,
      SEL => clock_filter_Mcount_count_cy_61_rt_295,
      O => clock_filter_Mcount_count_cy(61)
    );
  clock_filter_Mcount_count_xor_61_Q : X_XOR2
    port map (
      I0 => clock_filter_Mcount_count_cy(60),
      I1 => clock_filter_Mcount_count_cy_61_rt_295,
      O => Result(61)
    );
  clock_filter_Mcount_count_cy_62_Q : X_MUX2
    port map (
      IB => clock_filter_Mcount_count_cy(61),
      IA => N0,
      SEL => clock_filter_Mcount_count_cy_62_rt_297,
      O => clock_filter_Mcount_count_cy(62)
    );
  clock_filter_Mcount_count_xor_62_Q : X_XOR2
    port map (
      I0 => clock_filter_Mcount_count_cy(61),
      I1 => clock_filter_Mcount_count_cy_62_rt_297,
      O => Result(62)
    );
  clock_filter_Mcount_count_cy_63_Q : X_MUX2
    port map (
      IB => clock_filter_Mcount_count_cy(62),
      IA => N0,
      SEL => clock_filter_Mcount_count_cy_63_rt_299,
      O => clock_filter_Mcount_count_cy(63)
    );
  clock_filter_Mcount_count_xor_63_Q : X_XOR2
    port map (
      I0 => clock_filter_Mcount_count_cy(62),
      I1 => clock_filter_Mcount_count_cy_63_rt_299,
      O => Result(63)
    );
  clock_filter_Mcount_count_cy_64_Q : X_MUX2
    port map (
      IB => clock_filter_Mcount_count_cy(63),
      IA => N0,
      SEL => clock_filter_Mcount_count_cy_64_rt_301,
      O => clock_filter_Mcount_count_cy(64)
    );
  clock_filter_Mcount_count_xor_64_Q : X_XOR2
    port map (
      I0 => clock_filter_Mcount_count_cy(63),
      I1 => clock_filter_Mcount_count_cy_64_rt_301,
      O => Result(64)
    );
  clock_filter_Mcount_count_cy_65_Q : X_MUX2
    port map (
      IB => clock_filter_Mcount_count_cy(64),
      IA => N0,
      SEL => clock_filter_Mcount_count_cy_65_rt_303,
      O => clock_filter_Mcount_count_cy(65)
    );
  clock_filter_Mcount_count_xor_65_Q : X_XOR2
    port map (
      I0 => clock_filter_Mcount_count_cy(64),
      I1 => clock_filter_Mcount_count_cy_65_rt_303,
      O => Result(65)
    );
  clock_filter_Mcount_count_cy_66_Q : X_MUX2
    port map (
      IB => clock_filter_Mcount_count_cy(65),
      IA => N0,
      SEL => clock_filter_Mcount_count_cy_66_rt_305,
      O => clock_filter_Mcount_count_cy(66)
    );
  clock_filter_Mcount_count_xor_66_Q : X_XOR2
    port map (
      I0 => clock_filter_Mcount_count_cy(65),
      I1 => clock_filter_Mcount_count_cy_66_rt_305,
      O => Result(66)
    );
  clock_filter_Mcount_count_cy_67_Q : X_MUX2
    port map (
      IB => clock_filter_Mcount_count_cy(66),
      IA => N0,
      SEL => clock_filter_Mcount_count_cy_67_rt_307,
      O => clock_filter_Mcount_count_cy(67)
    );
  clock_filter_Mcount_count_xor_67_Q : X_XOR2
    port map (
      I0 => clock_filter_Mcount_count_cy(66),
      I1 => clock_filter_Mcount_count_cy_67_rt_307,
      O => Result(67)
    );
  clock_filter_Mcount_count_cy_68_Q : X_MUX2
    port map (
      IB => clock_filter_Mcount_count_cy(67),
      IA => N0,
      SEL => clock_filter_Mcount_count_cy_68_rt_309,
      O => clock_filter_Mcount_count_cy(68)
    );
  clock_filter_Mcount_count_xor_68_Q : X_XOR2
    port map (
      I0 => clock_filter_Mcount_count_cy(67),
      I1 => clock_filter_Mcount_count_cy_68_rt_309,
      O => Result(68)
    );
  clock_filter_Mcount_count_cy_69_Q : X_MUX2
    port map (
      IB => clock_filter_Mcount_count_cy(68),
      IA => N0,
      SEL => clock_filter_Mcount_count_cy_69_rt_311,
      O => clock_filter_Mcount_count_cy(69)
    );
  clock_filter_Mcount_count_xor_69_Q : X_XOR2
    port map (
      I0 => clock_filter_Mcount_count_cy(68),
      I1 => clock_filter_Mcount_count_cy_69_rt_311,
      O => Result(69)
    );
  clock_filter_Mcount_count_cy_70_Q : X_MUX2
    port map (
      IB => clock_filter_Mcount_count_cy(69),
      IA => N0,
      SEL => clock_filter_Mcount_count_cy_70_rt_315,
      O => clock_filter_Mcount_count_cy(70)
    );
  clock_filter_Mcount_count_xor_70_Q : X_XOR2
    port map (
      I0 => clock_filter_Mcount_count_cy(69),
      I1 => clock_filter_Mcount_count_cy_70_rt_315,
      O => Result(70)
    );
  clock_filter_Mcount_count_cy_71_Q : X_MUX2
    port map (
      IB => clock_filter_Mcount_count_cy(70),
      IA => N0,
      SEL => clock_filter_Mcount_count_cy_71_rt_317,
      O => clock_filter_Mcount_count_cy(71)
    );
  clock_filter_Mcount_count_xor_71_Q : X_XOR2
    port map (
      I0 => clock_filter_Mcount_count_cy(70),
      I1 => clock_filter_Mcount_count_cy_71_rt_317,
      O => Result(71)
    );
  clock_filter_Mcount_count_cy_72_Q : X_MUX2
    port map (
      IB => clock_filter_Mcount_count_cy(71),
      IA => N0,
      SEL => clock_filter_Mcount_count_cy_72_rt_319,
      O => clock_filter_Mcount_count_cy(72)
    );
  clock_filter_Mcount_count_xor_72_Q : X_XOR2
    port map (
      I0 => clock_filter_Mcount_count_cy(71),
      I1 => clock_filter_Mcount_count_cy_72_rt_319,
      O => Result(72)
    );
  clock_filter_Mcount_count_cy_73_Q : X_MUX2
    port map (
      IB => clock_filter_Mcount_count_cy(72),
      IA => N0,
      SEL => clock_filter_Mcount_count_cy_73_rt_321,
      O => clock_filter_Mcount_count_cy(73)
    );
  clock_filter_Mcount_count_xor_73_Q : X_XOR2
    port map (
      I0 => clock_filter_Mcount_count_cy(72),
      I1 => clock_filter_Mcount_count_cy_73_rt_321,
      O => Result(73)
    );
  clock_filter_Mcount_count_cy_74_Q : X_MUX2
    port map (
      IB => clock_filter_Mcount_count_cy(73),
      IA => N0,
      SEL => clock_filter_Mcount_count_cy_74_rt_323,
      O => clock_filter_Mcount_count_cy(74)
    );
  clock_filter_Mcount_count_xor_74_Q : X_XOR2
    port map (
      I0 => clock_filter_Mcount_count_cy(73),
      I1 => clock_filter_Mcount_count_cy_74_rt_323,
      O => Result(74)
    );
  clock_filter_Mcount_count_cy_75_Q : X_MUX2
    port map (
      IB => clock_filter_Mcount_count_cy(74),
      IA => N0,
      SEL => clock_filter_Mcount_count_cy_75_rt_325,
      O => clock_filter_Mcount_count_cy(75)
    );
  clock_filter_Mcount_count_xor_75_Q : X_XOR2
    port map (
      I0 => clock_filter_Mcount_count_cy(74),
      I1 => clock_filter_Mcount_count_cy_75_rt_325,
      O => Result(75)
    );
  clock_filter_Mcount_count_cy_76_Q : X_MUX2
    port map (
      IB => clock_filter_Mcount_count_cy(75),
      IA => N0,
      SEL => clock_filter_Mcount_count_cy_76_rt_327,
      O => clock_filter_Mcount_count_cy(76)
    );
  clock_filter_Mcount_count_xor_76_Q : X_XOR2
    port map (
      I0 => clock_filter_Mcount_count_cy(75),
      I1 => clock_filter_Mcount_count_cy_76_rt_327,
      O => Result(76)
    );
  clock_filter_Mcount_count_cy_77_Q : X_MUX2
    port map (
      IB => clock_filter_Mcount_count_cy(76),
      IA => N0,
      SEL => clock_filter_Mcount_count_cy_77_rt_329,
      O => clock_filter_Mcount_count_cy(77)
    );
  clock_filter_Mcount_count_xor_77_Q : X_XOR2
    port map (
      I0 => clock_filter_Mcount_count_cy(76),
      I1 => clock_filter_Mcount_count_cy_77_rt_329,
      O => Result(77)
    );
  clock_filter_Mcount_count_cy_78_Q : X_MUX2
    port map (
      IB => clock_filter_Mcount_count_cy(77),
      IA => N0,
      SEL => clock_filter_Mcount_count_cy_78_rt_331,
      O => clock_filter_Mcount_count_cy(78)
    );
  clock_filter_Mcount_count_xor_78_Q : X_XOR2
    port map (
      I0 => clock_filter_Mcount_count_cy(77),
      I1 => clock_filter_Mcount_count_cy_78_rt_331,
      O => Result(78)
    );
  clock_filter_Mcount_count_cy_79_Q : X_MUX2
    port map (
      IB => clock_filter_Mcount_count_cy(78),
      IA => N0,
      SEL => clock_filter_Mcount_count_cy_79_rt_333,
      O => clock_filter_Mcount_count_cy(79)
    );
  clock_filter_Mcount_count_xor_79_Q : X_XOR2
    port map (
      I0 => clock_filter_Mcount_count_cy(78),
      I1 => clock_filter_Mcount_count_cy_79_rt_333,
      O => Result(79)
    );
  clock_filter_Mcount_count_cy_80_Q : X_MUX2
    port map (
      IB => clock_filter_Mcount_count_cy(79),
      IA => N0,
      SEL => clock_filter_Mcount_count_cy_80_rt_337,
      O => clock_filter_Mcount_count_cy(80)
    );
  clock_filter_Mcount_count_xor_80_Q : X_XOR2
    port map (
      I0 => clock_filter_Mcount_count_cy(79),
      I1 => clock_filter_Mcount_count_cy_80_rt_337,
      O => Result(80)
    );
  clock_filter_Mcount_count_cy_81_Q : X_MUX2
    port map (
      IB => clock_filter_Mcount_count_cy(80),
      IA => N0,
      SEL => clock_filter_Mcount_count_cy_81_rt_339,
      O => clock_filter_Mcount_count_cy(81)
    );
  clock_filter_Mcount_count_xor_81_Q : X_XOR2
    port map (
      I0 => clock_filter_Mcount_count_cy(80),
      I1 => clock_filter_Mcount_count_cy_81_rt_339,
      O => Result(81)
    );
  clock_filter_Mcount_count_cy_82_Q : X_MUX2
    port map (
      IB => clock_filter_Mcount_count_cy(81),
      IA => N0,
      SEL => clock_filter_Mcount_count_cy_82_rt_341,
      O => clock_filter_Mcount_count_cy(82)
    );
  clock_filter_Mcount_count_xor_82_Q : X_XOR2
    port map (
      I0 => clock_filter_Mcount_count_cy(81),
      I1 => clock_filter_Mcount_count_cy_82_rt_341,
      O => Result(82)
    );
  clock_filter_Mcount_count_cy_83_Q : X_MUX2
    port map (
      IB => clock_filter_Mcount_count_cy(82),
      IA => N0,
      SEL => clock_filter_Mcount_count_cy_83_rt_343,
      O => clock_filter_Mcount_count_cy(83)
    );
  clock_filter_Mcount_count_xor_83_Q : X_XOR2
    port map (
      I0 => clock_filter_Mcount_count_cy(82),
      I1 => clock_filter_Mcount_count_cy_83_rt_343,
      O => Result(83)
    );
  clock_filter_Mcount_count_cy_84_Q : X_MUX2
    port map (
      IB => clock_filter_Mcount_count_cy(83),
      IA => N0,
      SEL => clock_filter_Mcount_count_cy_84_rt_345,
      O => clock_filter_Mcount_count_cy(84)
    );
  clock_filter_Mcount_count_xor_84_Q : X_XOR2
    port map (
      I0 => clock_filter_Mcount_count_cy(83),
      I1 => clock_filter_Mcount_count_cy_84_rt_345,
      O => Result(84)
    );
  clock_filter_Mcount_count_cy_85_Q : X_MUX2
    port map (
      IB => clock_filter_Mcount_count_cy(84),
      IA => N0,
      SEL => clock_filter_Mcount_count_cy_85_rt_347,
      O => clock_filter_Mcount_count_cy(85)
    );
  clock_filter_Mcount_count_xor_85_Q : X_XOR2
    port map (
      I0 => clock_filter_Mcount_count_cy(84),
      I1 => clock_filter_Mcount_count_cy_85_rt_347,
      O => Result(85)
    );
  clock_filter_Mcount_count_cy_86_Q : X_MUX2
    port map (
      IB => clock_filter_Mcount_count_cy(85),
      IA => N0,
      SEL => clock_filter_Mcount_count_cy_86_rt_349,
      O => clock_filter_Mcount_count_cy(86)
    );
  clock_filter_Mcount_count_xor_86_Q : X_XOR2
    port map (
      I0 => clock_filter_Mcount_count_cy(85),
      I1 => clock_filter_Mcount_count_cy_86_rt_349,
      O => Result(86)
    );
  clock_filter_Mcount_count_cy_87_Q : X_MUX2
    port map (
      IB => clock_filter_Mcount_count_cy(86),
      IA => N0,
      SEL => clock_filter_Mcount_count_cy_87_rt_351,
      O => clock_filter_Mcount_count_cy(87)
    );
  clock_filter_Mcount_count_xor_87_Q : X_XOR2
    port map (
      I0 => clock_filter_Mcount_count_cy(86),
      I1 => clock_filter_Mcount_count_cy_87_rt_351,
      O => Result(87)
    );
  clock_filter_Mcount_count_cy_88_Q : X_MUX2
    port map (
      IB => clock_filter_Mcount_count_cy(87),
      IA => N0,
      SEL => clock_filter_Mcount_count_cy_88_rt_353,
      O => clock_filter_Mcount_count_cy(88)
    );
  clock_filter_Mcount_count_xor_88_Q : X_XOR2
    port map (
      I0 => clock_filter_Mcount_count_cy(87),
      I1 => clock_filter_Mcount_count_cy_88_rt_353,
      O => Result(88)
    );
  clock_filter_Mcount_count_cy_89_Q : X_MUX2
    port map (
      IB => clock_filter_Mcount_count_cy(88),
      IA => N0,
      SEL => clock_filter_Mcount_count_cy_89_rt_355,
      O => clock_filter_Mcount_count_cy(89)
    );
  clock_filter_Mcount_count_xor_89_Q : X_XOR2
    port map (
      I0 => clock_filter_Mcount_count_cy(88),
      I1 => clock_filter_Mcount_count_cy_89_rt_355,
      O => Result(89)
    );
  clock_filter_Mcount_count_cy_90_Q : X_MUX2
    port map (
      IB => clock_filter_Mcount_count_cy(89),
      IA => N0,
      SEL => clock_filter_Mcount_count_cy_90_rt_359,
      O => clock_filter_Mcount_count_cy(90)
    );
  clock_filter_Mcount_count_xor_90_Q : X_XOR2
    port map (
      I0 => clock_filter_Mcount_count_cy(89),
      I1 => clock_filter_Mcount_count_cy_90_rt_359,
      O => Result(90)
    );
  clock_filter_Mcount_count_cy_91_Q : X_MUX2
    port map (
      IB => clock_filter_Mcount_count_cy(90),
      IA => N0,
      SEL => clock_filter_Mcount_count_cy_91_rt_361,
      O => clock_filter_Mcount_count_cy(91)
    );
  clock_filter_Mcount_count_xor_91_Q : X_XOR2
    port map (
      I0 => clock_filter_Mcount_count_cy(90),
      I1 => clock_filter_Mcount_count_cy_91_rt_361,
      O => Result(91)
    );
  clock_filter_Mcount_count_cy_92_Q : X_MUX2
    port map (
      IB => clock_filter_Mcount_count_cy(91),
      IA => N0,
      SEL => clock_filter_Mcount_count_cy_92_rt_363,
      O => clock_filter_Mcount_count_cy(92)
    );
  clock_filter_Mcount_count_xor_92_Q : X_XOR2
    port map (
      I0 => clock_filter_Mcount_count_cy(91),
      I1 => clock_filter_Mcount_count_cy_92_rt_363,
      O => Result(92)
    );
  clock_filter_Mcount_count_cy_93_Q : X_MUX2
    port map (
      IB => clock_filter_Mcount_count_cy(92),
      IA => N0,
      SEL => clock_filter_Mcount_count_cy_93_rt_365,
      O => clock_filter_Mcount_count_cy(93)
    );
  clock_filter_Mcount_count_xor_93_Q : X_XOR2
    port map (
      I0 => clock_filter_Mcount_count_cy(92),
      I1 => clock_filter_Mcount_count_cy_93_rt_365,
      O => Result(93)
    );
  clock_filter_Mcount_count_cy_94_Q : X_MUX2
    port map (
      IB => clock_filter_Mcount_count_cy(93),
      IA => N0,
      SEL => clock_filter_Mcount_count_cy_94_rt_367,
      O => clock_filter_Mcount_count_cy(94)
    );
  clock_filter_Mcount_count_xor_94_Q : X_XOR2
    port map (
      I0 => clock_filter_Mcount_count_cy(93),
      I1 => clock_filter_Mcount_count_cy_94_rt_367,
      O => Result(94)
    );
  clock_filter_Mcount_count_cy_95_Q : X_MUX2
    port map (
      IB => clock_filter_Mcount_count_cy(94),
      IA => N0,
      SEL => clock_filter_Mcount_count_cy_95_rt_369,
      O => clock_filter_Mcount_count_cy(95)
    );
  clock_filter_Mcount_count_xor_95_Q : X_XOR2
    port map (
      I0 => clock_filter_Mcount_count_cy(94),
      I1 => clock_filter_Mcount_count_cy_95_rt_369,
      O => Result(95)
    );
  clock_filter_Mcount_count_cy_96_Q : X_MUX2
    port map (
      IB => clock_filter_Mcount_count_cy(95),
      IA => N0,
      SEL => clock_filter_Mcount_count_cy_96_rt_371,
      O => clock_filter_Mcount_count_cy(96)
    );
  clock_filter_Mcount_count_xor_96_Q : X_XOR2
    port map (
      I0 => clock_filter_Mcount_count_cy(95),
      I1 => clock_filter_Mcount_count_cy_96_rt_371,
      O => Result(96)
    );
  clock_filter_Mcount_count_cy_97_Q : X_MUX2
    port map (
      IB => clock_filter_Mcount_count_cy(96),
      IA => N0,
      SEL => clock_filter_Mcount_count_cy_97_rt_373,
      O => clock_filter_Mcount_count_cy(97)
    );
  clock_filter_Mcount_count_xor_97_Q : X_XOR2
    port map (
      I0 => clock_filter_Mcount_count_cy(96),
      I1 => clock_filter_Mcount_count_cy_97_rt_373,
      O => Result(97)
    );
  clock_filter_Mcount_count_cy_98_Q : X_MUX2
    port map (
      IB => clock_filter_Mcount_count_cy(97),
      IA => N0,
      SEL => clock_filter_Mcount_count_cy_98_rt_375,
      O => clock_filter_Mcount_count_cy(98)
    );
  clock_filter_Mcount_count_xor_98_Q : X_XOR2
    port map (
      I0 => clock_filter_Mcount_count_cy(97),
      I1 => clock_filter_Mcount_count_cy_98_rt_375,
      O => Result(98)
    );
  clock_filter_Mcount_count_xor_99_Q : X_XOR2
    port map (
      I0 => clock_filter_Mcount_count_cy(98),
      I1 => clock_filter_Mcount_count_xor_99_rt_379,
      O => Result(99)
    );
  clock_filter_hit_and00001 : X_LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      ADR0 => reset_IBUF_520,
      ADR1 => enable_IBUF_486,
      O => clock_filter_hit_and0000
    );
  gestore_anodi_x_2_cmp_eq00001 : X_LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      ADR0 => counter_mod_4_count(0),
      ADR1 => counter_mod_4_count(1),
      O => anode_2_OBUF_113
    );
  gestore_anodi_x_1_cmp_eq00001 : X_LUT2
    generic map(
      INIT => X"4"
    )
    port map (
      ADR0 => counter_mod_4_count(1),
      ADR1 => counter_mod_4_count(0),
      O => anode_1_OBUF_112
    );
  gestore_anodi_x_0_cmp_eq00001 : X_LUT2
    generic map(
      INIT => X"1"
    )
    port map (
      ADR0 => counter_mod_4_count(0),
      ADR1 => counter_mod_4_count(1),
      O => anode_0_OBUF_111
    );
  anode_3_1 : X_LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      ADR0 => counter_mod_4_count(0),
      ADR1 => counter_mod_4_count(1),
      O => anode_3_OBUF_114
    );
  counter_mod_4_Mcount_count_xor_1_11 : X_LUT2
    generic map(
      INIT => X"6"
    )
    port map (
      ADR0 => counter_mod_4_count(1),
      ADR1 => counter_mod_4_count(0),
      O => Result_1_1
    );
  cathode_4_1 : X_LUT4
    generic map(
      INIT => X"454C"
    )
    port map (
      ADR0 => valore_cifra(3),
      ADR1 => valore_cifra(0),
      ADR2 => valore_cifra(1),
      ADR3 => valore_cifra(2),
      O => cathode_4_OBUF_126
    );
  d_7_s_c_o1 : X_LUT4
    generic map(
      INIT => X"80C2"
    )
    port map (
      ADR0 => valore_cifra(1),
      ADR1 => valore_cifra(3),
      ADR2 => valore_cifra(2),
      ADR3 => valore_cifra(0),
      O => cathode_2_OBUF_124
    );
  d_7_s_g_o1 : X_LUT4
    generic map(
      INIT => X"0941"
    )
    port map (
      ADR0 => valore_cifra(1),
      ADR1 => valore_cifra(2),
      ADR2 => valore_cifra(3),
      ADR3 => valore_cifra(0),
      O => cathode_6_OBUF_128
    );
  cathode_5_1 : X_LUT4
    generic map(
      INIT => X"6032"
    )
    port map (
      ADR0 => valore_cifra(1),
      ADR1 => valore_cifra(3),
      ADR2 => valore_cifra(0),
      ADR3 => valore_cifra(2),
      O => cathode_5_OBUF_127
    );
  cathode_1_1 : X_LUT4
    generic map(
      INIT => X"B860"
    )
    port map (
      ADR0 => valore_cifra(3),
      ADR1 => valore_cifra(0),
      ADR2 => valore_cifra(2),
      ADR3 => valore_cifra(1),
      O => cathode_1_OBUF_123
    );
  d_7_s_d_o1 : X_LUT4
    generic map(
      INIT => X"9086"
    )
    port map (
      ADR0 => valore_cifra(0),
      ADR1 => valore_cifra(2),
      ADR2 => valore_cifra(1),
      ADR3 => valore_cifra(3),
      O => cathode_3_OBUF_125
    );
  d_7_s_a_o1 : X_LUT4
    generic map(
      INIT => X"2812"
    )
    port map (
      ADR0 => valore_cifra(0),
      ADR1 => valore_cifra(1),
      ADR2 => valore_cifra(2),
      ADR3 => valore_cifra(3),
      O => cathode_0_OBUF_122
    );
  clock_filter_Mcompar_hit_cmp_eq000011 : X_LUT2
    generic map(
      INIT => X"8"
    )
    port map (
      ADR0 => clock_filter_Mcompar_hit_cmp_eq0000_cy(15),
      ADR1 => clock_filter_Mcompar_hit_cmp_eq0000_cy(24),
      O => clock_filter_hit_cmp_eq0000
    );
  reset_IBUF : X_BUF
    port map (
      I => reset,
      O => reset_IBUF_520
    );
  enable_IBUF : X_BUF
    port map (
      I => enable,
      O => enable_IBUF_486
    );
  number_15_IBUF : X_BUF
    port map (
      I => number(15),
      O => number_15_IBUF_509
    );
  number_14_IBUF : X_BUF
    port map (
      I => number(14),
      O => number_14_IBUF_508
    );
  number_13_IBUF : X_BUF
    port map (
      I => number(13),
      O => number_13_IBUF_507
    );
  number_12_IBUF : X_BUF
    port map (
      I => number(12),
      O => number_12_IBUF_506
    );
  number_11_IBUF : X_BUF
    port map (
      I => number(11),
      O => number_11_IBUF_505
    );
  number_10_IBUF : X_BUF
    port map (
      I => number(10),
      O => number_10_IBUF_504
    );
  number_9_IBUF : X_BUF
    port map (
      I => number(9),
      O => number_9_IBUF_518
    );
  number_8_IBUF : X_BUF
    port map (
      I => number(8),
      O => number_8_IBUF_517
    );
  number_7_IBUF : X_BUF
    port map (
      I => number(7),
      O => number_7_IBUF_516
    );
  number_6_IBUF : X_BUF
    port map (
      I => number(6),
      O => number_6_IBUF_515
    );
  number_5_IBUF : X_BUF
    port map (
      I => number(5),
      O => number_5_IBUF_514
    );
  number_4_IBUF : X_BUF
    port map (
      I => number(4),
      O => number_4_IBUF_513
    );
  number_3_IBUF : X_BUF
    port map (
      I => number(3),
      O => number_3_IBUF_512
    );
  number_2_IBUF : X_BUF
    port map (
      I => number(2),
      O => number_2_IBUF_511
    );
  number_1_IBUF : X_BUF
    port map (
      I => number(1),
      O => number_1_IBUF_510
    );
  number_0_IBUF : X_BUF
    port map (
      I => number(0),
      O => number_0_IBUF_503
    );
  clock_filter_Mcount_count_cy_1_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => clock_filter_count(1),
      O => clock_filter_Mcount_count_cy_1_rt_203,
      ADR1 => GND
    );
  clock_filter_Mcount_count_cy_2_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => clock_filter_count(2),
      O => clock_filter_Mcount_count_cy_2_rt_225,
      ADR1 => GND
    );
  clock_filter_Mcount_count_cy_3_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => clock_filter_count(3),
      O => clock_filter_Mcount_count_cy_3_rt_247,
      ADR1 => GND
    );
  clock_filter_Mcount_count_cy_4_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => clock_filter_count(4),
      O => clock_filter_Mcount_count_cy_4_rt_269,
      ADR1 => GND
    );
  clock_filter_Mcount_count_cy_5_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => clock_filter_count(5),
      O => clock_filter_Mcount_count_cy_5_rt_291,
      ADR1 => GND
    );
  clock_filter_Mcount_count_cy_6_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => clock_filter_count(6),
      O => clock_filter_Mcount_count_cy_6_rt_313,
      ADR1 => GND
    );
  clock_filter_Mcount_count_cy_7_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => clock_filter_count(7),
      O => clock_filter_Mcount_count_cy_7_rt_335,
      ADR1 => GND
    );
  clock_filter_Mcount_count_cy_8_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => clock_filter_count(8),
      O => clock_filter_Mcount_count_cy_8_rt_357,
      ADR1 => GND
    );
  clock_filter_Mcount_count_cy_9_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => clock_filter_count(9),
      O => clock_filter_Mcount_count_cy_9_rt_377,
      ADR1 => GND
    );
  clock_filter_Mcount_count_cy_10_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => clock_filter_count(10),
      O => clock_filter_Mcount_count_cy_10_rt_183,
      ADR1 => GND
    );
  clock_filter_Mcount_count_cy_11_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => clock_filter_count(11),
      O => clock_filter_Mcount_count_cy_11_rt_185,
      ADR1 => GND
    );
  clock_filter_Mcount_count_cy_12_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => clock_filter_count(12),
      O => clock_filter_Mcount_count_cy_12_rt_187,
      ADR1 => GND
    );
  clock_filter_Mcount_count_cy_13_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => clock_filter_count(13),
      O => clock_filter_Mcount_count_cy_13_rt_189,
      ADR1 => GND
    );
  clock_filter_Mcount_count_cy_14_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => clock_filter_count(14),
      O => clock_filter_Mcount_count_cy_14_rt_191,
      ADR1 => GND
    );
  clock_filter_Mcount_count_cy_15_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => clock_filter_count(15),
      O => clock_filter_Mcount_count_cy_15_rt_193,
      ADR1 => GND
    );
  clock_filter_Mcount_count_cy_16_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => clock_filter_count(16),
      O => clock_filter_Mcount_count_cy_16_rt_195,
      ADR1 => GND
    );
  clock_filter_Mcount_count_cy_17_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => clock_filter_count(17),
      O => clock_filter_Mcount_count_cy_17_rt_197,
      ADR1 => GND
    );
  clock_filter_Mcount_count_cy_18_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => clock_filter_count(18),
      O => clock_filter_Mcount_count_cy_18_rt_199,
      ADR1 => GND
    );
  clock_filter_Mcount_count_cy_19_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => clock_filter_count(19),
      O => clock_filter_Mcount_count_cy_19_rt_201,
      ADR1 => GND
    );
  clock_filter_Mcount_count_cy_20_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => clock_filter_count(20),
      O => clock_filter_Mcount_count_cy_20_rt_205,
      ADR1 => GND
    );
  clock_filter_Mcount_count_cy_21_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => clock_filter_count(21),
      O => clock_filter_Mcount_count_cy_21_rt_207,
      ADR1 => GND
    );
  clock_filter_Mcount_count_cy_22_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => clock_filter_count(22),
      O => clock_filter_Mcount_count_cy_22_rt_209,
      ADR1 => GND
    );
  clock_filter_Mcount_count_cy_23_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => clock_filter_count(23),
      O => clock_filter_Mcount_count_cy_23_rt_211,
      ADR1 => GND
    );
  clock_filter_Mcount_count_cy_24_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => clock_filter_count(24),
      O => clock_filter_Mcount_count_cy_24_rt_213,
      ADR1 => GND
    );
  clock_filter_Mcount_count_cy_25_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => clock_filter_count(25),
      O => clock_filter_Mcount_count_cy_25_rt_215,
      ADR1 => GND
    );
  clock_filter_Mcount_count_cy_26_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => clock_filter_count(26),
      O => clock_filter_Mcount_count_cy_26_rt_217,
      ADR1 => GND
    );
  clock_filter_Mcount_count_cy_27_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => clock_filter_count(27),
      O => clock_filter_Mcount_count_cy_27_rt_219,
      ADR1 => GND
    );
  clock_filter_Mcount_count_cy_28_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => clock_filter_count(28),
      O => clock_filter_Mcount_count_cy_28_rt_221,
      ADR1 => GND
    );
  clock_filter_Mcount_count_cy_29_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => clock_filter_count(29),
      O => clock_filter_Mcount_count_cy_29_rt_223,
      ADR1 => GND
    );
  clock_filter_Mcount_count_cy_30_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => clock_filter_count(30),
      O => clock_filter_Mcount_count_cy_30_rt_227,
      ADR1 => GND
    );
  clock_filter_Mcount_count_cy_31_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => clock_filter_count(31),
      O => clock_filter_Mcount_count_cy_31_rt_229,
      ADR1 => GND
    );
  clock_filter_Mcount_count_cy_32_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => clock_filter_count(32),
      O => clock_filter_Mcount_count_cy_32_rt_231,
      ADR1 => GND
    );
  clock_filter_Mcount_count_cy_33_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => clock_filter_count(33),
      O => clock_filter_Mcount_count_cy_33_rt_233,
      ADR1 => GND
    );
  clock_filter_Mcount_count_cy_34_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => clock_filter_count(34),
      O => clock_filter_Mcount_count_cy_34_rt_235,
      ADR1 => GND
    );
  clock_filter_Mcount_count_cy_35_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => clock_filter_count(35),
      O => clock_filter_Mcount_count_cy_35_rt_237,
      ADR1 => GND
    );
  clock_filter_Mcount_count_cy_36_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => clock_filter_count(36),
      O => clock_filter_Mcount_count_cy_36_rt_239,
      ADR1 => GND
    );
  clock_filter_Mcount_count_cy_37_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => clock_filter_count(37),
      O => clock_filter_Mcount_count_cy_37_rt_241,
      ADR1 => GND
    );
  clock_filter_Mcount_count_cy_38_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => clock_filter_count(38),
      O => clock_filter_Mcount_count_cy_38_rt_243,
      ADR1 => GND
    );
  clock_filter_Mcount_count_cy_39_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => clock_filter_count(39),
      O => clock_filter_Mcount_count_cy_39_rt_245,
      ADR1 => GND
    );
  clock_filter_Mcount_count_cy_40_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => clock_filter_count(40),
      O => clock_filter_Mcount_count_cy_40_rt_249,
      ADR1 => GND
    );
  clock_filter_Mcount_count_cy_41_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => clock_filter_count(41),
      O => clock_filter_Mcount_count_cy_41_rt_251,
      ADR1 => GND
    );
  clock_filter_Mcount_count_cy_42_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => clock_filter_count(42),
      O => clock_filter_Mcount_count_cy_42_rt_253,
      ADR1 => GND
    );
  clock_filter_Mcount_count_cy_43_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => clock_filter_count(43),
      O => clock_filter_Mcount_count_cy_43_rt_255,
      ADR1 => GND
    );
  clock_filter_Mcount_count_cy_44_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => clock_filter_count(44),
      O => clock_filter_Mcount_count_cy_44_rt_257,
      ADR1 => GND
    );
  clock_filter_Mcount_count_cy_45_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => clock_filter_count(45),
      O => clock_filter_Mcount_count_cy_45_rt_259,
      ADR1 => GND
    );
  clock_filter_Mcount_count_cy_46_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => clock_filter_count(46),
      O => clock_filter_Mcount_count_cy_46_rt_261,
      ADR1 => GND
    );
  clock_filter_Mcount_count_cy_47_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => clock_filter_count(47),
      O => clock_filter_Mcount_count_cy_47_rt_263,
      ADR1 => GND
    );
  clock_filter_Mcount_count_cy_48_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => clock_filter_count(48),
      O => clock_filter_Mcount_count_cy_48_rt_265,
      ADR1 => GND
    );
  clock_filter_Mcount_count_cy_49_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => clock_filter_count(49),
      O => clock_filter_Mcount_count_cy_49_rt_267,
      ADR1 => GND
    );
  clock_filter_Mcount_count_cy_50_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => clock_filter_count(50),
      O => clock_filter_Mcount_count_cy_50_rt_271,
      ADR1 => GND
    );
  clock_filter_Mcount_count_cy_51_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => clock_filter_count(51),
      O => clock_filter_Mcount_count_cy_51_rt_273,
      ADR1 => GND
    );
  clock_filter_Mcount_count_cy_52_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => clock_filter_count(52),
      O => clock_filter_Mcount_count_cy_52_rt_275,
      ADR1 => GND
    );
  clock_filter_Mcount_count_cy_53_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => clock_filter_count(53),
      O => clock_filter_Mcount_count_cy_53_rt_277,
      ADR1 => GND
    );
  clock_filter_Mcount_count_cy_54_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => clock_filter_count(54),
      O => clock_filter_Mcount_count_cy_54_rt_279,
      ADR1 => GND
    );
  clock_filter_Mcount_count_cy_55_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => clock_filter_count(55),
      O => clock_filter_Mcount_count_cy_55_rt_281,
      ADR1 => GND
    );
  clock_filter_Mcount_count_cy_56_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => clock_filter_count(56),
      O => clock_filter_Mcount_count_cy_56_rt_283,
      ADR1 => GND
    );
  clock_filter_Mcount_count_cy_57_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => clock_filter_count(57),
      O => clock_filter_Mcount_count_cy_57_rt_285,
      ADR1 => GND
    );
  clock_filter_Mcount_count_cy_58_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => clock_filter_count(58),
      O => clock_filter_Mcount_count_cy_58_rt_287,
      ADR1 => GND
    );
  clock_filter_Mcount_count_cy_59_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => clock_filter_count(59),
      O => clock_filter_Mcount_count_cy_59_rt_289,
      ADR1 => GND
    );
  clock_filter_Mcount_count_cy_60_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => clock_filter_count(60),
      O => clock_filter_Mcount_count_cy_60_rt_293,
      ADR1 => GND
    );
  clock_filter_Mcount_count_cy_61_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => clock_filter_count(61),
      O => clock_filter_Mcount_count_cy_61_rt_295,
      ADR1 => GND
    );
  clock_filter_Mcount_count_cy_62_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => clock_filter_count(62),
      O => clock_filter_Mcount_count_cy_62_rt_297,
      ADR1 => GND
    );
  clock_filter_Mcount_count_cy_63_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => clock_filter_count(63),
      O => clock_filter_Mcount_count_cy_63_rt_299,
      ADR1 => GND
    );
  clock_filter_Mcount_count_cy_64_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => clock_filter_count(64),
      O => clock_filter_Mcount_count_cy_64_rt_301,
      ADR1 => GND
    );
  clock_filter_Mcount_count_cy_65_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => clock_filter_count(65),
      O => clock_filter_Mcount_count_cy_65_rt_303,
      ADR1 => GND
    );
  clock_filter_Mcount_count_cy_66_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => clock_filter_count(66),
      O => clock_filter_Mcount_count_cy_66_rt_305,
      ADR1 => GND
    );
  clock_filter_Mcount_count_cy_67_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => clock_filter_count(67),
      O => clock_filter_Mcount_count_cy_67_rt_307,
      ADR1 => GND
    );
  clock_filter_Mcount_count_cy_68_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => clock_filter_count(68),
      O => clock_filter_Mcount_count_cy_68_rt_309,
      ADR1 => GND
    );
  clock_filter_Mcount_count_cy_69_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => clock_filter_count(69),
      O => clock_filter_Mcount_count_cy_69_rt_311,
      ADR1 => GND
    );
  clock_filter_Mcount_count_cy_70_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => clock_filter_count(70),
      O => clock_filter_Mcount_count_cy_70_rt_315,
      ADR1 => GND
    );
  clock_filter_Mcount_count_cy_71_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => clock_filter_count(71),
      O => clock_filter_Mcount_count_cy_71_rt_317,
      ADR1 => GND
    );
  clock_filter_Mcount_count_cy_72_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => clock_filter_count(72),
      O => clock_filter_Mcount_count_cy_72_rt_319,
      ADR1 => GND
    );
  clock_filter_Mcount_count_cy_73_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => clock_filter_count(73),
      O => clock_filter_Mcount_count_cy_73_rt_321,
      ADR1 => GND
    );
  clock_filter_Mcount_count_cy_74_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => clock_filter_count(74),
      O => clock_filter_Mcount_count_cy_74_rt_323,
      ADR1 => GND
    );
  clock_filter_Mcount_count_cy_75_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => clock_filter_count(75),
      O => clock_filter_Mcount_count_cy_75_rt_325,
      ADR1 => GND
    );
  clock_filter_Mcount_count_cy_76_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => clock_filter_count(76),
      O => clock_filter_Mcount_count_cy_76_rt_327,
      ADR1 => GND
    );
  clock_filter_Mcount_count_cy_77_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => clock_filter_count(77),
      O => clock_filter_Mcount_count_cy_77_rt_329,
      ADR1 => GND
    );
  clock_filter_Mcount_count_cy_78_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => clock_filter_count(78),
      O => clock_filter_Mcount_count_cy_78_rt_331,
      ADR1 => GND
    );
  clock_filter_Mcount_count_cy_79_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => clock_filter_count(79),
      O => clock_filter_Mcount_count_cy_79_rt_333,
      ADR1 => GND
    );
  clock_filter_Mcount_count_cy_80_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => clock_filter_count(80),
      O => clock_filter_Mcount_count_cy_80_rt_337,
      ADR1 => GND
    );
  clock_filter_Mcount_count_cy_81_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => clock_filter_count(81),
      O => clock_filter_Mcount_count_cy_81_rt_339,
      ADR1 => GND
    );
  clock_filter_Mcount_count_cy_82_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => clock_filter_count(82),
      O => clock_filter_Mcount_count_cy_82_rt_341,
      ADR1 => GND
    );
  clock_filter_Mcount_count_cy_83_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => clock_filter_count(83),
      O => clock_filter_Mcount_count_cy_83_rt_343,
      ADR1 => GND
    );
  clock_filter_Mcount_count_cy_84_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => clock_filter_count(84),
      O => clock_filter_Mcount_count_cy_84_rt_345,
      ADR1 => GND
    );
  clock_filter_Mcount_count_cy_85_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => clock_filter_count(85),
      O => clock_filter_Mcount_count_cy_85_rt_347,
      ADR1 => GND
    );
  clock_filter_Mcount_count_cy_86_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => clock_filter_count(86),
      O => clock_filter_Mcount_count_cy_86_rt_349,
      ADR1 => GND
    );
  clock_filter_Mcount_count_cy_87_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => clock_filter_count(87),
      O => clock_filter_Mcount_count_cy_87_rt_351,
      ADR1 => GND
    );
  clock_filter_Mcount_count_cy_88_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => clock_filter_count(88),
      O => clock_filter_Mcount_count_cy_88_rt_353,
      ADR1 => GND
    );
  clock_filter_Mcount_count_cy_89_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => clock_filter_count(89),
      O => clock_filter_Mcount_count_cy_89_rt_355,
      ADR1 => GND
    );
  clock_filter_Mcount_count_cy_90_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => clock_filter_count(90),
      O => clock_filter_Mcount_count_cy_90_rt_359,
      ADR1 => GND
    );
  clock_filter_Mcount_count_cy_91_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => clock_filter_count(91),
      O => clock_filter_Mcount_count_cy_91_rt_361,
      ADR1 => GND
    );
  clock_filter_Mcount_count_cy_92_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => clock_filter_count(92),
      O => clock_filter_Mcount_count_cy_92_rt_363,
      ADR1 => GND
    );
  clock_filter_Mcount_count_cy_93_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => clock_filter_count(93),
      O => clock_filter_Mcount_count_cy_93_rt_365,
      ADR1 => GND
    );
  clock_filter_Mcount_count_cy_94_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => clock_filter_count(94),
      O => clock_filter_Mcount_count_cy_94_rt_367,
      ADR1 => GND
    );
  clock_filter_Mcount_count_cy_95_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => clock_filter_count(95),
      O => clock_filter_Mcount_count_cy_95_rt_369,
      ADR1 => GND
    );
  clock_filter_Mcount_count_cy_96_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => clock_filter_count(96),
      O => clock_filter_Mcount_count_cy_96_rt_371,
      ADR1 => GND
    );
  clock_filter_Mcount_count_cy_97_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => clock_filter_count(97),
      O => clock_filter_Mcount_count_cy_97_rt_373,
      ADR1 => GND
    );
  clock_filter_Mcount_count_cy_98_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => clock_filter_count(98),
      O => clock_filter_Mcount_count_cy_98_rt_375,
      ADR1 => GND
    );
  clock_filter_Mcount_count_xor_99_rt : X_LUT2
    generic map(
      INIT => X"A"
    )
    port map (
      ADR0 => clock_filter_count(99),
      O => clock_filter_Mcount_count_xor_99_rt_379,
      ADR1 => GND
    );
  clock_filter_Mcount_count_lut_0_INV_0 : X_INV
    port map (
      I => clock_filter_count(0),
      O => clock_filter_Mcount_count_lut(0)
    );
  reset_inv1_INV_0 : X_INV
    port map (
      I => reset_IBUF_520,
      O => reset_inv
    );
  counter_mod_4_Mcount_count_xor_0_11_INV_0 : X_INV
    port map (
      I => counter_mod_4_count(0),
      O => Result_0_1
    );
  clk_BUFGP_BUFG : X_CKBUF
    port map (
      I => clk_BUFGP_IBUFG_2,
      O => clk_BUFGP
    );
  clk_BUFGP_IBUFG : X_CKBUF
    port map (
      I => clk,
      O => clk_BUFGP_IBUFG_2
    );
  anode_0_OBUF : X_OBUF
    port map (
      I => anode_0_OBUF_111,
      O => anode(0)
    );
  anode_1_OBUF : X_OBUF
    port map (
      I => anode_1_OBUF_112,
      O => anode(1)
    );
  anode_2_OBUF : X_OBUF
    port map (
      I => anode_2_OBUF_113,
      O => anode(2)
    );
  anode_3_OBUF : X_OBUF
    port map (
      I => anode_3_OBUF_114,
      O => anode(3)
    );
  cathode_0_OBUF : X_OBUF
    port map (
      I => cathode_0_OBUF_122,
      O => cathode(0)
    );
  cathode_1_OBUF : X_OBUF
    port map (
      I => cathode_1_OBUF_123,
      O => cathode(1)
    );
  cathode_2_OBUF : X_OBUF
    port map (
      I => cathode_2_OBUF_124,
      O => cathode(2)
    );
  cathode_3_OBUF : X_OBUF
    port map (
      I => cathode_3_OBUF_125,
      O => cathode(3)
    );
  cathode_4_OBUF : X_OBUF
    port map (
      I => cathode_4_OBUF_126,
      O => cathode(4)
    );
  cathode_5_OBUF : X_OBUF
    port map (
      I => cathode_5_OBUF_127,
      O => cathode(5)
    );
  cathode_6_OBUF : X_OBUF
    port map (
      I => cathode_6_OBUF_128,
      O => cathode(6)
    );
  NlwBlock_gestore_display_GND : X_ZERO
    port map (
      O => GND
    );
  NlwBlockROC : X_ROC
    generic map (ROC_WIDTH => 100 ns)
    port map (O => GSR);
  NlwBlockTOC : X_TOC
    port map (O => GTS);

end Structure;

