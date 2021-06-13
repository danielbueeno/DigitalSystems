-- Copyright (C) 2020  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and any partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details, at
-- https://fpgasoftware.intel.com/eula.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 20.1.1 Build 720 11/11/2020 SJ Lite Edition"

-- DATE "06/13/2021 17:20:15"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	DigitalC_NoAjustment IS
    PORT (
	CLOCK_50 : IN std_logic;
	reset : IN std_logic;
	register0 : BUFFER std_logic_vector(6 DOWNTO 0);
	register1 : BUFFER std_logic_vector(6 DOWNTO 0);
	register2 : BUFFER std_logic_vector(6 DOWNTO 0);
	register3 : BUFFER std_logic_vector(6 DOWNTO 0);
	minU : BUFFER std_logic_vector(3 DOWNTO 0);
	minDez : BUFFER std_logic_vector(3 DOWNTO 0);
	sel : BUFFER std_logic_vector(1 DOWNTO 0)
	);
END DigitalC_NoAjustment;

ARCHITECTURE structure OF DigitalC_NoAjustment IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_reset : std_logic;
SIGNAL ww_register0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_register1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_register2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_register3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_minU : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_minDez : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_sel : std_logic_vector(1 DOWNTO 0);
SIGNAL \register0[0]~output_o\ : std_logic;
SIGNAL \register0[1]~output_o\ : std_logic;
SIGNAL \register0[2]~output_o\ : std_logic;
SIGNAL \register0[3]~output_o\ : std_logic;
SIGNAL \register0[4]~output_o\ : std_logic;
SIGNAL \register0[5]~output_o\ : std_logic;
SIGNAL \register0[6]~output_o\ : std_logic;
SIGNAL \register1[0]~output_o\ : std_logic;
SIGNAL \register1[1]~output_o\ : std_logic;
SIGNAL \register1[2]~output_o\ : std_logic;
SIGNAL \register1[3]~output_o\ : std_logic;
SIGNAL \register1[4]~output_o\ : std_logic;
SIGNAL \register1[5]~output_o\ : std_logic;
SIGNAL \register1[6]~output_o\ : std_logic;
SIGNAL \register2[0]~output_o\ : std_logic;
SIGNAL \register2[1]~output_o\ : std_logic;
SIGNAL \register2[2]~output_o\ : std_logic;
SIGNAL \register2[3]~output_o\ : std_logic;
SIGNAL \register2[4]~output_o\ : std_logic;
SIGNAL \register2[5]~output_o\ : std_logic;
SIGNAL \register2[6]~output_o\ : std_logic;
SIGNAL \register3[0]~output_o\ : std_logic;
SIGNAL \register3[1]~output_o\ : std_logic;
SIGNAL \register3[2]~output_o\ : std_logic;
SIGNAL \register3[3]~output_o\ : std_logic;
SIGNAL \register3[4]~output_o\ : std_logic;
SIGNAL \register3[5]~output_o\ : std_logic;
SIGNAL \register3[6]~output_o\ : std_logic;
SIGNAL \minU[0]~output_o\ : std_logic;
SIGNAL \minU[1]~output_o\ : std_logic;
SIGNAL \minU[2]~output_o\ : std_logic;
SIGNAL \minU[3]~output_o\ : std_logic;
SIGNAL \minDez[0]~output_o\ : std_logic;
SIGNAL \minDez[1]~output_o\ : std_logic;
SIGNAL \minDez[2]~output_o\ : std_logic;
SIGNAL \minDez[3]~output_o\ : std_logic;
SIGNAL \sel[0]~output_o\ : std_logic;
SIGNAL \sel[1]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \sync_gen|t_Clk|s_divCounter~3_combout\ : std_logic;
SIGNAL \sync_gen|t_Clk|s_divCounter~1_combout\ : std_logic;
SIGNAL \sync_gen|t_Clk|s_divCounter~2_combout\ : std_logic;
SIGNAL \sync_gen|t_Clk|s_divCounter~0_combout\ : std_logic;
SIGNAL \sync_gen|t_Clk|LessThan1~0_combout\ : std_logic;
SIGNAL \sync_gen|t_Clk|clkOut~q\ : std_logic;
SIGNAL \pCounter0|Add0~0_combout\ : std_logic;
SIGNAL \pCounter0|Add0~1\ : std_logic;
SIGNAL \pCounter0|Add0~2_combout\ : std_logic;
SIGNAL \pCounter0|counter~0_combout\ : std_logic;
SIGNAL \pCounter0|Add0~3\ : std_logic;
SIGNAL \pCounter0|Add0~4_combout\ : std_logic;
SIGNAL \pCounter0|Add0~5\ : std_logic;
SIGNAL \pCounter0|Add0~6_combout\ : std_logic;
SIGNAL \pCounter0|counter~1_combout\ : std_logic;
SIGNAL \pCounter0|Equal0~0_combout\ : std_logic;
SIGNAL \pCounter0|Add0~7\ : std_logic;
SIGNAL \pCounter0|Add0~8_combout\ : std_logic;
SIGNAL \pCounter0|Add0~9\ : std_logic;
SIGNAL \pCounter0|Add0~10_combout\ : std_logic;
SIGNAL \pCounter0|Add0~11\ : std_logic;
SIGNAL \pCounter0|Add0~12_combout\ : std_logic;
SIGNAL \pCounter0|Add0~13\ : std_logic;
SIGNAL \pCounter0|Add0~14_combout\ : std_logic;
SIGNAL \pCounter0|Equal0~1_combout\ : std_logic;
SIGNAL \pCounter0|Add0~15\ : std_logic;
SIGNAL \pCounter0|Add0~16_combout\ : std_logic;
SIGNAL \pCounter0|Add0~17\ : std_logic;
SIGNAL \pCounter0|Add0~18_combout\ : std_logic;
SIGNAL \pCounter0|Add0~19\ : std_logic;
SIGNAL \pCounter0|Add0~20_combout\ : std_logic;
SIGNAL \pCounter0|Add0~21\ : std_logic;
SIGNAL \pCounter0|Add0~22_combout\ : std_logic;
SIGNAL \pCounter0|Equal0~2_combout\ : std_logic;
SIGNAL \pCounter0|Add0~23\ : std_logic;
SIGNAL \pCounter0|Add0~24_combout\ : std_logic;
SIGNAL \pCounter0|Add0~25\ : std_logic;
SIGNAL \pCounter0|Add0~26_combout\ : std_logic;
SIGNAL \pCounter0|Add0~27\ : std_logic;
SIGNAL \pCounter0|Add0~28_combout\ : std_logic;
SIGNAL \pCounter0|Add0~29\ : std_logic;
SIGNAL \pCounter0|Add0~30_combout\ : std_logic;
SIGNAL \pCounter0|Equal0~3_combout\ : std_logic;
SIGNAL \pCounter0|Equal0~4_combout\ : std_logic;
SIGNAL \pCounter0|Add0~31\ : std_logic;
SIGNAL \pCounter0|Add0~32_combout\ : std_logic;
SIGNAL \pCounter0|Add0~33\ : std_logic;
SIGNAL \pCounter0|Add0~34_combout\ : std_logic;
SIGNAL \pCounter0|Add0~35\ : std_logic;
SIGNAL \pCounter0|Add0~36_combout\ : std_logic;
SIGNAL \pCounter0|Add0~37\ : std_logic;
SIGNAL \pCounter0|Add0~38_combout\ : std_logic;
SIGNAL \pCounter0|Equal0~5_combout\ : std_logic;
SIGNAL \pCounter0|Add0~39\ : std_logic;
SIGNAL \pCounter0|Add0~40_combout\ : std_logic;
SIGNAL \pCounter0|Add0~41\ : std_logic;
SIGNAL \pCounter0|Add0~42_combout\ : std_logic;
SIGNAL \pCounter0|Equal0~6_combout\ : std_logic;
SIGNAL \pCounter0|Add0~43\ : std_logic;
SIGNAL \pCounter0|Add0~44_combout\ : std_logic;
SIGNAL \pCounter0|Add0~45\ : std_logic;
SIGNAL \pCounter0|Add0~46_combout\ : std_logic;
SIGNAL \pCounter0|Equal0~7_combout\ : std_logic;
SIGNAL \pCounter0|Add0~47\ : std_logic;
SIGNAL \pCounter0|Add0~48_combout\ : std_logic;
SIGNAL \pCounter0|Add0~49\ : std_logic;
SIGNAL \pCounter0|Add0~50_combout\ : std_logic;
SIGNAL \pCounter0|Add0~51\ : std_logic;
SIGNAL \pCounter0|Add0~52_combout\ : std_logic;
SIGNAL \pCounter0|Add0~53\ : std_logic;
SIGNAL \pCounter0|Add0~54_combout\ : std_logic;
SIGNAL \pCounter0|Equal0~8_combout\ : std_logic;
SIGNAL \pCounter0|Add0~55\ : std_logic;
SIGNAL \pCounter0|Add0~56_combout\ : std_logic;
SIGNAL \pCounter0|Add0~57\ : std_logic;
SIGNAL \pCounter0|Add0~58_combout\ : std_logic;
SIGNAL \pCounter0|Add0~59\ : std_logic;
SIGNAL \pCounter0|Add0~60_combout\ : std_logic;
SIGNAL \pCounter0|Add0~61\ : std_logic;
SIGNAL \pCounter0|Add0~62_combout\ : std_logic;
SIGNAL \pCounter0|Equal0~9_combout\ : std_logic;
SIGNAL \pCounter0|Equal0~10_combout\ : std_logic;
SIGNAL \pCounter0|TC~q\ : std_logic;
SIGNAL \pCounter1|Add0~0_combout\ : std_logic;
SIGNAL \pCounter1|Add0~1\ : std_logic;
SIGNAL \pCounter1|Add0~2_combout\ : std_logic;
SIGNAL \pCounter1|counter~0_combout\ : std_logic;
SIGNAL \pCounter1|Add0~3\ : std_logic;
SIGNAL \pCounter1|Add0~4_combout\ : std_logic;
SIGNAL \pCounter1|Add0~5\ : std_logic;
SIGNAL \pCounter1|Add0~6_combout\ : std_logic;
SIGNAL \pCounter1|counter~1_combout\ : std_logic;
SIGNAL \pCounter1|Equal0~0_combout\ : std_logic;
SIGNAL \pCounter1|Add0~7\ : std_logic;
SIGNAL \pCounter1|Add0~8_combout\ : std_logic;
SIGNAL \pCounter1|Add0~9\ : std_logic;
SIGNAL \pCounter1|Add0~10_combout\ : std_logic;
SIGNAL \pCounter1|Add0~11\ : std_logic;
SIGNAL \pCounter1|Add0~12_combout\ : std_logic;
SIGNAL \pCounter1|Add0~13\ : std_logic;
SIGNAL \pCounter1|Add0~14_combout\ : std_logic;
SIGNAL \pCounter1|Equal0~1_combout\ : std_logic;
SIGNAL \pCounter1|Add0~15\ : std_logic;
SIGNAL \pCounter1|Add0~16_combout\ : std_logic;
SIGNAL \pCounter1|Add0~17\ : std_logic;
SIGNAL \pCounter1|Add0~18_combout\ : std_logic;
SIGNAL \pCounter1|Add0~19\ : std_logic;
SIGNAL \pCounter1|Add0~20_combout\ : std_logic;
SIGNAL \pCounter1|Add0~21\ : std_logic;
SIGNAL \pCounter1|Add0~22_combout\ : std_logic;
SIGNAL \pCounter1|Equal0~2_combout\ : std_logic;
SIGNAL \pCounter1|Add0~23\ : std_logic;
SIGNAL \pCounter1|Add0~24_combout\ : std_logic;
SIGNAL \pCounter1|Add0~25\ : std_logic;
SIGNAL \pCounter1|Add0~26_combout\ : std_logic;
SIGNAL \pCounter1|Add0~27\ : std_logic;
SIGNAL \pCounter1|Add0~28_combout\ : std_logic;
SIGNAL \pCounter1|Add0~29\ : std_logic;
SIGNAL \pCounter1|Add0~30_combout\ : std_logic;
SIGNAL \pCounter1|Equal0~3_combout\ : std_logic;
SIGNAL \pCounter1|Equal0~4_combout\ : std_logic;
SIGNAL \pCounter1|Add0~31\ : std_logic;
SIGNAL \pCounter1|Add0~32_combout\ : std_logic;
SIGNAL \pCounter1|Add0~33\ : std_logic;
SIGNAL \pCounter1|Add0~34_combout\ : std_logic;
SIGNAL \pCounter1|Add0~35\ : std_logic;
SIGNAL \pCounter1|Add0~36_combout\ : std_logic;
SIGNAL \pCounter1|Add0~37\ : std_logic;
SIGNAL \pCounter1|Add0~38_combout\ : std_logic;
SIGNAL \pCounter1|Equal0~5_combout\ : std_logic;
SIGNAL \pCounter1|Add0~39\ : std_logic;
SIGNAL \pCounter1|Add0~40_combout\ : std_logic;
SIGNAL \pCounter1|Add0~41\ : std_logic;
SIGNAL \pCounter1|Add0~42_combout\ : std_logic;
SIGNAL \pCounter1|Add0~43\ : std_logic;
SIGNAL \pCounter1|Add0~44_combout\ : std_logic;
SIGNAL \pCounter1|Add0~45\ : std_logic;
SIGNAL \pCounter1|Add0~46_combout\ : std_logic;
SIGNAL \pCounter1|Equal0~6_combout\ : std_logic;
SIGNAL \pCounter1|Equal0~7_combout\ : std_logic;
SIGNAL \pCounter1|Add0~47\ : std_logic;
SIGNAL \pCounter1|Add0~48_combout\ : std_logic;
SIGNAL \pCounter1|Add0~49\ : std_logic;
SIGNAL \pCounter1|Add0~50_combout\ : std_logic;
SIGNAL \pCounter1|Add0~51\ : std_logic;
SIGNAL \pCounter1|Add0~52_combout\ : std_logic;
SIGNAL \pCounter1|Add0~53\ : std_logic;
SIGNAL \pCounter1|Add0~54_combout\ : std_logic;
SIGNAL \pCounter1|Equal0~8_combout\ : std_logic;
SIGNAL \pCounter1|Add0~55\ : std_logic;
SIGNAL \pCounter1|Add0~56_combout\ : std_logic;
SIGNAL \pCounter1|Add0~57\ : std_logic;
SIGNAL \pCounter1|Add0~58_combout\ : std_logic;
SIGNAL \pCounter1|Add0~59\ : std_logic;
SIGNAL \pCounter1|Add0~60_combout\ : std_logic;
SIGNAL \pCounter1|Add0~61\ : std_logic;
SIGNAL \pCounter1|Add0~62_combout\ : std_logic;
SIGNAL \pCounter1|Equal0~9_combout\ : std_logic;
SIGNAL \pCounter1|Equal0~10_combout\ : std_logic;
SIGNAL \pCounter1|TC~q\ : std_logic;
SIGNAL \pCounter2|Add0~0_combout\ : std_logic;
SIGNAL \pCounter2|Add0~1\ : std_logic;
SIGNAL \pCounter2|Add0~2_combout\ : std_logic;
SIGNAL \pCounter2|counter~1_combout\ : std_logic;
SIGNAL \pCounter2|Add0~3\ : std_logic;
SIGNAL \pCounter2|Add0~4_combout\ : std_logic;
SIGNAL \pCounter2|Add0~5\ : std_logic;
SIGNAL \pCounter2|Add0~6_combout\ : std_logic;
SIGNAL \pCounter2|counter~0_combout\ : std_logic;
SIGNAL \pCounter2|Equal0~0_combout\ : std_logic;
SIGNAL \pCounter2|Add0~7\ : std_logic;
SIGNAL \pCounter2|Add0~8_combout\ : std_logic;
SIGNAL \pCounter2|Add0~9\ : std_logic;
SIGNAL \pCounter2|Add0~10_combout\ : std_logic;
SIGNAL \pCounter2|Add0~11\ : std_logic;
SIGNAL \pCounter2|Add0~12_combout\ : std_logic;
SIGNAL \pCounter2|Add0~13\ : std_logic;
SIGNAL \pCounter2|Add0~14_combout\ : std_logic;
SIGNAL \pCounter2|Equal0~1_combout\ : std_logic;
SIGNAL \pCounter2|Add0~15\ : std_logic;
SIGNAL \pCounter2|Add0~16_combout\ : std_logic;
SIGNAL \pCounter2|Add0~17\ : std_logic;
SIGNAL \pCounter2|Add0~18_combout\ : std_logic;
SIGNAL \pCounter2|Add0~19\ : std_logic;
SIGNAL \pCounter2|Add0~20_combout\ : std_logic;
SIGNAL \pCounter2|Add0~21\ : std_logic;
SIGNAL \pCounter2|Add0~22_combout\ : std_logic;
SIGNAL \pCounter2|Equal0~2_combout\ : std_logic;
SIGNAL \pCounter2|Add0~23\ : std_logic;
SIGNAL \pCounter2|Add0~24_combout\ : std_logic;
SIGNAL \pCounter2|Add0~25\ : std_logic;
SIGNAL \pCounter2|Add0~26_combout\ : std_logic;
SIGNAL \pCounter2|Add0~27\ : std_logic;
SIGNAL \pCounter2|Add0~28_combout\ : std_logic;
SIGNAL \pCounter2|Add0~29\ : std_logic;
SIGNAL \pCounter2|Add0~30_combout\ : std_logic;
SIGNAL \pCounter2|Equal0~3_combout\ : std_logic;
SIGNAL \pCounter2|Equal0~4_combout\ : std_logic;
SIGNAL \pCounter2|Add0~31\ : std_logic;
SIGNAL \pCounter2|Add0~32_combout\ : std_logic;
SIGNAL \pCounter2|Add0~33\ : std_logic;
SIGNAL \pCounter2|Add0~34_combout\ : std_logic;
SIGNAL \pCounter2|Add0~35\ : std_logic;
SIGNAL \pCounter2|Add0~36_combout\ : std_logic;
SIGNAL \pCounter2|Add0~37\ : std_logic;
SIGNAL \pCounter2|Add0~38_combout\ : std_logic;
SIGNAL \pCounter2|Equal0~5_combout\ : std_logic;
SIGNAL \pCounter2|Add0~39\ : std_logic;
SIGNAL \pCounter2|Add0~40_combout\ : std_logic;
SIGNAL \pCounter2|Add0~41\ : std_logic;
SIGNAL \pCounter2|Add0~42_combout\ : std_logic;
SIGNAL \pCounter2|Add0~43\ : std_logic;
SIGNAL \pCounter2|Add0~44_combout\ : std_logic;
SIGNAL \pCounter2|Add0~45\ : std_logic;
SIGNAL \pCounter2|Add0~46_combout\ : std_logic;
SIGNAL \pCounter2|Equal0~6_combout\ : std_logic;
SIGNAL \pCounter2|Add0~47\ : std_logic;
SIGNAL \pCounter2|Add0~48_combout\ : std_logic;
SIGNAL \pCounter2|Add0~49\ : std_logic;
SIGNAL \pCounter2|Add0~50_combout\ : std_logic;
SIGNAL \pCounter2|Add0~51\ : std_logic;
SIGNAL \pCounter2|Add0~52_combout\ : std_logic;
SIGNAL \pCounter2|Add0~53\ : std_logic;
SIGNAL \pCounter2|Add0~54_combout\ : std_logic;
SIGNAL \pCounter2|Equal0~7_combout\ : std_logic;
SIGNAL \pCounter2|Add0~55\ : std_logic;
SIGNAL \pCounter2|Add0~56_combout\ : std_logic;
SIGNAL \pCounter2|Add0~57\ : std_logic;
SIGNAL \pCounter2|Add0~58_combout\ : std_logic;
SIGNAL \pCounter2|Add0~59\ : std_logic;
SIGNAL \pCounter2|Add0~60_combout\ : std_logic;
SIGNAL \pCounter2|Add0~61\ : std_logic;
SIGNAL \pCounter2|Add0~62_combout\ : std_logic;
SIGNAL \pCounter2|Equal0~8_combout\ : std_logic;
SIGNAL \pCounter2|Equal0~9_combout\ : std_logic;
SIGNAL \pCounter2|Equal0~10_combout\ : std_logic;
SIGNAL \pCounter2|TC~q\ : std_logic;
SIGNAL \pCounter3|Add0~0_combout\ : std_logic;
SIGNAL \pCounter3|Add0~1\ : std_logic;
SIGNAL \pCounter3|Add0~2_combout\ : std_logic;
SIGNAL \pCounter3|Add0~5\ : std_logic;
SIGNAL \pCounter3|Add0~6_combout\ : std_logic;
SIGNAL \pCounter3|counter~0_combout\ : std_logic;
SIGNAL \pCounter3|Equal0~0_combout\ : std_logic;
SIGNAL \pCounter3|Add0~7\ : std_logic;
SIGNAL \pCounter3|Add0~8_combout\ : std_logic;
SIGNAL \pCounter3|Add0~9\ : std_logic;
SIGNAL \pCounter3|Add0~10_combout\ : std_logic;
SIGNAL \pCounter3|Add0~11\ : std_logic;
SIGNAL \pCounter3|Add0~12_combout\ : std_logic;
SIGNAL \pCounter3|Add0~13\ : std_logic;
SIGNAL \pCounter3|Add0~14_combout\ : std_logic;
SIGNAL \pCounter3|Equal0~1_combout\ : std_logic;
SIGNAL \pCounter3|Equal0~2_combout\ : std_logic;
SIGNAL \pCounter3|Add0~15\ : std_logic;
SIGNAL \pCounter3|Add0~16_combout\ : std_logic;
SIGNAL \pCounter3|Add0~17\ : std_logic;
SIGNAL \pCounter3|Add0~18_combout\ : std_logic;
SIGNAL \pCounter3|Add0~19\ : std_logic;
SIGNAL \pCounter3|Add0~20_combout\ : std_logic;
SIGNAL \pCounter3|Add0~21\ : std_logic;
SIGNAL \pCounter3|Add0~22_combout\ : std_logic;
SIGNAL \pCounter3|Equal0~3_combout\ : std_logic;
SIGNAL \pCounter3|Add0~23\ : std_logic;
SIGNAL \pCounter3|Add0~24_combout\ : std_logic;
SIGNAL \pCounter3|Add0~25\ : std_logic;
SIGNAL \pCounter3|Add0~26_combout\ : std_logic;
SIGNAL \pCounter3|Add0~27\ : std_logic;
SIGNAL \pCounter3|Add0~28_combout\ : std_logic;
SIGNAL \pCounter3|Add0~29\ : std_logic;
SIGNAL \pCounter3|Add0~30_combout\ : std_logic;
SIGNAL \pCounter3|Equal0~4_combout\ : std_logic;
SIGNAL \pCounter3|Add0~31\ : std_logic;
SIGNAL \pCounter3|Add0~32_combout\ : std_logic;
SIGNAL \pCounter3|Add0~33\ : std_logic;
SIGNAL \pCounter3|Add0~34_combout\ : std_logic;
SIGNAL \pCounter3|Add0~35\ : std_logic;
SIGNAL \pCounter3|Add0~36_combout\ : std_logic;
SIGNAL \pCounter3|Add0~37\ : std_logic;
SIGNAL \pCounter3|Add0~38_combout\ : std_logic;
SIGNAL \pCounter3|Equal0~5_combout\ : std_logic;
SIGNAL \pCounter3|Add0~39\ : std_logic;
SIGNAL \pCounter3|Add0~40_combout\ : std_logic;
SIGNAL \pCounter3|Add0~41\ : std_logic;
SIGNAL \pCounter3|Add0~42_combout\ : std_logic;
SIGNAL \pCounter3|Add0~43\ : std_logic;
SIGNAL \pCounter3|Add0~44_combout\ : std_logic;
SIGNAL \pCounter3|Add0~45\ : std_logic;
SIGNAL \pCounter3|Add0~46_combout\ : std_logic;
SIGNAL \pCounter3|Equal0~6_combout\ : std_logic;
SIGNAL \pCounter3|Add0~47\ : std_logic;
SIGNAL \pCounter3|Add0~48_combout\ : std_logic;
SIGNAL \pCounter3|Add0~49\ : std_logic;
SIGNAL \pCounter3|Add0~50_combout\ : std_logic;
SIGNAL \pCounter3|Add0~51\ : std_logic;
SIGNAL \pCounter3|Add0~52_combout\ : std_logic;
SIGNAL \pCounter3|Add0~53\ : std_logic;
SIGNAL \pCounter3|Add0~54_combout\ : std_logic;
SIGNAL \pCounter3|Equal0~7_combout\ : std_logic;
SIGNAL \pCounter3|Add0~55\ : std_logic;
SIGNAL \pCounter3|Add0~56_combout\ : std_logic;
SIGNAL \pCounter3|Add0~57\ : std_logic;
SIGNAL \pCounter3|Add0~58_combout\ : std_logic;
SIGNAL \pCounter3|Add0~59\ : std_logic;
SIGNAL \pCounter3|Add0~60_combout\ : std_logic;
SIGNAL \pCounter3|Add0~61\ : std_logic;
SIGNAL \pCounter3|Add0~62_combout\ : std_logic;
SIGNAL \pCounter3|Equal0~8_combout\ : std_logic;
SIGNAL \pCounter3|Equal0~9_combout\ : std_logic;
SIGNAL \pCounter3|Equal0~10_combout\ : std_logic;
SIGNAL \pCounter3|counter~1_combout\ : std_logic;
SIGNAL \pCounter3|Add0~3\ : std_logic;
SIGNAL \pCounter3|Add0~4_combout\ : std_logic;
SIGNAL \sync_gen|d_Clk|s_divCounter~1_combout\ : std_logic;
SIGNAL \sync_gen|d_Clk|LessThan1~1_combout\ : std_logic;
SIGNAL \sync_gen|d_Clk|s_divCounter~0_combout\ : std_logic;
SIGNAL \sync_gen|d_Clk|LessThan1~0_combout\ : std_logic;
SIGNAL \sync_gen|d_Clk|clkOut~q\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \dispC|reg_fstate.UniH~0_combout\ : std_logic;
SIGNAL \dispC|fstate.UniH~q\ : std_logic;
SIGNAL \dispC|reg_fstate.DezH~0_combout\ : std_logic;
SIGNAL \dispC|fstate.DezH~q\ : std_logic;
SIGNAL \dispC|reg_fstate.UniMin~0_combout\ : std_logic;
SIGNAL \dispC|fstate.UniMin~q\ : std_logic;
SIGNAL \dispC|reg_fstate.DezMin~0_combout\ : std_logic;
SIGNAL \dispC|fstate.DezMin~q\ : std_logic;
SIGNAL \comb~0_combout\ : std_logic;
SIGNAL \dispC|s1~2_combout\ : std_logic;
SIGNAL \mux|Mux1~0_combout\ : std_logic;
SIGNAL \mux|Mux1~1_combout\ : std_logic;
SIGNAL \mux|Mux0~0_combout\ : std_logic;
SIGNAL \mux|Mux0~1_combout\ : std_logic;
SIGNAL \mux|Mux3~0_combout\ : std_logic;
SIGNAL \mux|Mux3~1_combout\ : std_logic;
SIGNAL \mux|Mux2~0_combout\ : std_logic;
SIGNAL \mux|Mux2~1_combout\ : std_logic;
SIGNAL \decoder|decOut_n[0]~0_combout\ : std_logic;
SIGNAL \comb~1_combout\ : std_logic;
SIGNAL \decoder|decOut_n[1]~1_combout\ : std_logic;
SIGNAL \decoder|decOut_n[2]~2_combout\ : std_logic;
SIGNAL \decoder|decOut_n[3]~3_combout\ : std_logic;
SIGNAL \decoder|decOut_n[4]~4_combout\ : std_logic;
SIGNAL \decoder|decOut_n[5]~5_combout\ : std_logic;
SIGNAL \decoder|decOut_n[6]~6_combout\ : std_logic;
SIGNAL \comb~2_combout\ : std_logic;
SIGNAL \comb~3_combout\ : std_logic;
SIGNAL \comb~4_combout\ : std_logic;
SIGNAL \pCounter3|counter\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \reg3|dataOut\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \reg2|dataOut\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \reg1|dataOut\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \reg0|dataOut\ : std_logic_vector(6 DOWNTO 0);
SIGNAL \pCounter0|counter\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \pCounter1|counter\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \pCounter2|counter\ : std_logic_vector(31 DOWNTO 0);
SIGNAL \sync_gen|t_Clk|s_divCounter\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \sync_gen|d_Clk|s_divCounter\ : std_logic_vector(2 DOWNTO 0);

BEGIN

ww_CLOCK_50 <= CLOCK_50;
ww_reset <= reset;
register0 <= ww_register0;
register1 <= ww_register1;
register2 <= ww_register2;
register3 <= ww_register3;
minU <= ww_minU;
minDez <= ww_minDez;
sel <= ww_sel;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\register0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg0|dataOut\(0),
	devoe => ww_devoe,
	o => \register0[0]~output_o\);

\register0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg0|dataOut\(1),
	devoe => ww_devoe,
	o => \register0[1]~output_o\);

\register0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg0|dataOut\(2),
	devoe => ww_devoe,
	o => \register0[2]~output_o\);

\register0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg0|dataOut\(3),
	devoe => ww_devoe,
	o => \register0[3]~output_o\);

\register0[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg0|dataOut\(4),
	devoe => ww_devoe,
	o => \register0[4]~output_o\);

\register0[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg0|dataOut\(5),
	devoe => ww_devoe,
	o => \register0[5]~output_o\);

\register0[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg0|dataOut\(6),
	devoe => ww_devoe,
	o => \register0[6]~output_o\);

\register1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg1|dataOut\(0),
	devoe => ww_devoe,
	o => \register1[0]~output_o\);

\register1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg1|dataOut\(1),
	devoe => ww_devoe,
	o => \register1[1]~output_o\);

\register1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg1|dataOut\(2),
	devoe => ww_devoe,
	o => \register1[2]~output_o\);

\register1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg1|dataOut\(3),
	devoe => ww_devoe,
	o => \register1[3]~output_o\);

\register1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg1|dataOut\(4),
	devoe => ww_devoe,
	o => \register1[4]~output_o\);

\register1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg1|dataOut\(5),
	devoe => ww_devoe,
	o => \register1[5]~output_o\);

\register1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg1|dataOut\(6),
	devoe => ww_devoe,
	o => \register1[6]~output_o\);

\register2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg2|dataOut\(0),
	devoe => ww_devoe,
	o => \register2[0]~output_o\);

\register2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg2|dataOut\(1),
	devoe => ww_devoe,
	o => \register2[1]~output_o\);

\register2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg2|dataOut\(2),
	devoe => ww_devoe,
	o => \register2[2]~output_o\);

\register2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg2|dataOut\(3),
	devoe => ww_devoe,
	o => \register2[3]~output_o\);

\register2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg2|dataOut\(4),
	devoe => ww_devoe,
	o => \register2[4]~output_o\);

\register2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg2|dataOut\(5),
	devoe => ww_devoe,
	o => \register2[5]~output_o\);

\register2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg2|dataOut\(6),
	devoe => ww_devoe,
	o => \register2[6]~output_o\);

\register3[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg3|dataOut\(0),
	devoe => ww_devoe,
	o => \register3[0]~output_o\);

\register3[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg3|dataOut\(1),
	devoe => ww_devoe,
	o => \register3[1]~output_o\);

\register3[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg3|dataOut\(2),
	devoe => ww_devoe,
	o => \register3[2]~output_o\);

\register3[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg3|dataOut\(3),
	devoe => ww_devoe,
	o => \register3[3]~output_o\);

\register3[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg3|dataOut\(4),
	devoe => ww_devoe,
	o => \register3[4]~output_o\);

\register3[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg3|dataOut\(5),
	devoe => ww_devoe,
	o => \register3[5]~output_o\);

\register3[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \reg3|dataOut\(6),
	devoe => ww_devoe,
	o => \register3[6]~output_o\);

\minU[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pCounter0|counter\(0),
	devoe => ww_devoe,
	o => \minU[0]~output_o\);

\minU[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pCounter0|counter\(1),
	devoe => ww_devoe,
	o => \minU[1]~output_o\);

\minU[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pCounter0|counter\(2),
	devoe => ww_devoe,
	o => \minU[2]~output_o\);

\minU[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pCounter0|counter\(3),
	devoe => ww_devoe,
	o => \minU[3]~output_o\);

\minDez[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pCounter1|counter\(0),
	devoe => ww_devoe,
	o => \minDez[0]~output_o\);

\minDez[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pCounter1|counter\(1),
	devoe => ww_devoe,
	o => \minDez[1]~output_o\);

\minDez[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pCounter1|counter\(2),
	devoe => ww_devoe,
	o => \minDez[2]~output_o\);

\minDez[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \pCounter1|counter\(3),
	devoe => ww_devoe,
	o => \minDez[3]~output_o\);

\sel[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \comb~0_combout\,
	devoe => ww_devoe,
	o => \sel[0]~output_o\);

\sel[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dispC|s1~2_combout\,
	devoe => ww_devoe,
	o => \sel[1]~output_o\);

\CLOCK_50~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

\sync_gen|t_Clk|s_divCounter~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \sync_gen|t_Clk|s_divCounter~3_combout\ = (!\sync_gen|t_Clk|s_divCounter\(3) & (\sync_gen|t_Clk|s_divCounter\(0) $ (\sync_gen|t_Clk|s_divCounter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sync_gen|t_Clk|s_divCounter\(0),
	datac => \sync_gen|t_Clk|s_divCounter\(1),
	datad => \sync_gen|t_Clk|s_divCounter\(3),
	combout => \sync_gen|t_Clk|s_divCounter~3_combout\);

\sync_gen|t_Clk|s_divCounter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \sync_gen|t_Clk|s_divCounter~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sync_gen|t_Clk|s_divCounter\(1));

\sync_gen|t_Clk|s_divCounter~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sync_gen|t_Clk|s_divCounter~1_combout\ = (\sync_gen|t_Clk|s_divCounter\(3) & (!\sync_gen|t_Clk|s_divCounter\(2) & (!\sync_gen|t_Clk|s_divCounter\(0) & !\sync_gen|t_Clk|s_divCounter\(1)))) # (!\sync_gen|t_Clk|s_divCounter\(3) & 
-- (\sync_gen|t_Clk|s_divCounter\(2) & (\sync_gen|t_Clk|s_divCounter\(0) & \sync_gen|t_Clk|s_divCounter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sync_gen|t_Clk|s_divCounter\(3),
	datab => \sync_gen|t_Clk|s_divCounter\(2),
	datac => \sync_gen|t_Clk|s_divCounter\(0),
	datad => \sync_gen|t_Clk|s_divCounter\(1),
	combout => \sync_gen|t_Clk|s_divCounter~1_combout\);

\sync_gen|t_Clk|s_divCounter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \sync_gen|t_Clk|s_divCounter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sync_gen|t_Clk|s_divCounter\(3));

\sync_gen|t_Clk|s_divCounter~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sync_gen|t_Clk|s_divCounter~2_combout\ = (!\sync_gen|t_Clk|s_divCounter\(0) & (((!\sync_gen|t_Clk|s_divCounter\(2) & !\sync_gen|t_Clk|s_divCounter\(1))) # (!\sync_gen|t_Clk|s_divCounter\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sync_gen|t_Clk|s_divCounter\(0),
	datab => \sync_gen|t_Clk|s_divCounter\(3),
	datac => \sync_gen|t_Clk|s_divCounter\(2),
	datad => \sync_gen|t_Clk|s_divCounter\(1),
	combout => \sync_gen|t_Clk|s_divCounter~2_combout\);

\sync_gen|t_Clk|s_divCounter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \sync_gen|t_Clk|s_divCounter~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sync_gen|t_Clk|s_divCounter\(0));

\sync_gen|t_Clk|s_divCounter~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sync_gen|t_Clk|s_divCounter~0_combout\ = (!\sync_gen|t_Clk|s_divCounter\(3) & (\sync_gen|t_Clk|s_divCounter\(2) $ (((\sync_gen|t_Clk|s_divCounter\(0) & \sync_gen|t_Clk|s_divCounter\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sync_gen|t_Clk|s_divCounter\(2),
	datab => \sync_gen|t_Clk|s_divCounter\(0),
	datac => \sync_gen|t_Clk|s_divCounter\(1),
	datad => \sync_gen|t_Clk|s_divCounter\(3),
	combout => \sync_gen|t_Clk|s_divCounter~0_combout\);

\sync_gen|t_Clk|s_divCounter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \sync_gen|t_Clk|s_divCounter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sync_gen|t_Clk|s_divCounter\(2));

\sync_gen|t_Clk|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sync_gen|t_Clk|LessThan1~0_combout\ = (\sync_gen|t_Clk|s_divCounter\(2)) # (\sync_gen|t_Clk|s_divCounter\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sync_gen|t_Clk|s_divCounter\(2),
	datab => \sync_gen|t_Clk|s_divCounter\(3),
	combout => \sync_gen|t_Clk|LessThan1~0_combout\);

\sync_gen|t_Clk|clkOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \sync_gen|t_Clk|LessThan1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sync_gen|t_Clk|clkOut~q\);

\pCounter0|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pCounter0|Add0~0_combout\ = \pCounter0|counter\(0) $ (VCC)
-- \pCounter0|Add0~1\ = CARRY(\pCounter0|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pCounter0|counter\(0),
	datad => VCC,
	combout => \pCounter0|Add0~0_combout\,
	cout => \pCounter0|Add0~1\);

\pCounter0|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sync_gen|t_Clk|clkOut~q\,
	d => \pCounter0|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pCounter0|counter\(0));

\pCounter0|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \pCounter0|Add0~2_combout\ = (\pCounter0|counter\(1) & (!\pCounter0|Add0~1\)) # (!\pCounter0|counter\(1) & ((\pCounter0|Add0~1\) # (GND)))
-- \pCounter0|Add0~3\ = CARRY((!\pCounter0|Add0~1\) # (!\pCounter0|counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pCounter0|counter\(1),
	datad => VCC,
	cin => \pCounter0|Add0~1\,
	combout => \pCounter0|Add0~2_combout\,
	cout => \pCounter0|Add0~3\);

\pCounter0|counter~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pCounter0|counter~0_combout\ = (\pCounter0|Add0~2_combout\ & !\pCounter0|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pCounter0|Add0~2_combout\,
	datad => \pCounter0|Equal0~10_combout\,
	combout => \pCounter0|counter~0_combout\);

\pCounter0|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sync_gen|t_Clk|clkOut~q\,
	d => \pCounter0|counter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pCounter0|counter\(1));

\pCounter0|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \pCounter0|Add0~4_combout\ = (\pCounter0|counter\(2) & (\pCounter0|Add0~3\ $ (GND))) # (!\pCounter0|counter\(2) & (!\pCounter0|Add0~3\ & VCC))
-- \pCounter0|Add0~5\ = CARRY((\pCounter0|counter\(2) & !\pCounter0|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pCounter0|counter\(2),
	datad => VCC,
	cin => \pCounter0|Add0~3\,
	combout => \pCounter0|Add0~4_combout\,
	cout => \pCounter0|Add0~5\);

\pCounter0|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sync_gen|t_Clk|clkOut~q\,
	d => \pCounter0|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pCounter0|counter\(2));

\pCounter0|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \pCounter0|Add0~6_combout\ = (\pCounter0|counter\(3) & (!\pCounter0|Add0~5\)) # (!\pCounter0|counter\(3) & ((\pCounter0|Add0~5\) # (GND)))
-- \pCounter0|Add0~7\ = CARRY((!\pCounter0|Add0~5\) # (!\pCounter0|counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pCounter0|counter\(3),
	datad => VCC,
	cin => \pCounter0|Add0~5\,
	combout => \pCounter0|Add0~6_combout\,
	cout => \pCounter0|Add0~7\);

\pCounter0|counter~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \pCounter0|counter~1_combout\ = (\pCounter0|Add0~6_combout\ & !\pCounter0|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pCounter0|Add0~6_combout\,
	datad => \pCounter0|Equal0~10_combout\,
	combout => \pCounter0|counter~1_combout\);

\pCounter0|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sync_gen|t_Clk|clkOut~q\,
	d => \pCounter0|counter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pCounter0|counter\(3));

\pCounter0|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pCounter0|Equal0~0_combout\ = (\pCounter0|counter\(0) & (\pCounter0|counter\(3) & (!\pCounter0|counter\(1) & !\pCounter0|counter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pCounter0|counter\(0),
	datab => \pCounter0|counter\(3),
	datac => \pCounter0|counter\(1),
	datad => \pCounter0|counter\(2),
	combout => \pCounter0|Equal0~0_combout\);

\pCounter0|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \pCounter0|Add0~8_combout\ = (\pCounter0|counter\(4) & (\pCounter0|Add0~7\ $ (GND))) # (!\pCounter0|counter\(4) & (!\pCounter0|Add0~7\ & VCC))
-- \pCounter0|Add0~9\ = CARRY((\pCounter0|counter\(4) & !\pCounter0|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pCounter0|counter\(4),
	datad => VCC,
	cin => \pCounter0|Add0~7\,
	combout => \pCounter0|Add0~8_combout\,
	cout => \pCounter0|Add0~9\);

\pCounter0|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sync_gen|t_Clk|clkOut~q\,
	d => \pCounter0|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pCounter0|counter\(4));

\pCounter0|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \pCounter0|Add0~10_combout\ = (\pCounter0|counter\(5) & (!\pCounter0|Add0~9\)) # (!\pCounter0|counter\(5) & ((\pCounter0|Add0~9\) # (GND)))
-- \pCounter0|Add0~11\ = CARRY((!\pCounter0|Add0~9\) # (!\pCounter0|counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pCounter0|counter\(5),
	datad => VCC,
	cin => \pCounter0|Add0~9\,
	combout => \pCounter0|Add0~10_combout\,
	cout => \pCounter0|Add0~11\);

\pCounter0|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sync_gen|t_Clk|clkOut~q\,
	d => \pCounter0|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pCounter0|counter\(5));

\pCounter0|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \pCounter0|Add0~12_combout\ = (\pCounter0|counter\(6) & (\pCounter0|Add0~11\ $ (GND))) # (!\pCounter0|counter\(6) & (!\pCounter0|Add0~11\ & VCC))
-- \pCounter0|Add0~13\ = CARRY((\pCounter0|counter\(6) & !\pCounter0|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pCounter0|counter\(6),
	datad => VCC,
	cin => \pCounter0|Add0~11\,
	combout => \pCounter0|Add0~12_combout\,
	cout => \pCounter0|Add0~13\);

\pCounter0|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sync_gen|t_Clk|clkOut~q\,
	d => \pCounter0|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pCounter0|counter\(6));

\pCounter0|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \pCounter0|Add0~14_combout\ = (\pCounter0|counter\(7) & (!\pCounter0|Add0~13\)) # (!\pCounter0|counter\(7) & ((\pCounter0|Add0~13\) # (GND)))
-- \pCounter0|Add0~15\ = CARRY((!\pCounter0|Add0~13\) # (!\pCounter0|counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pCounter0|counter\(7),
	datad => VCC,
	cin => \pCounter0|Add0~13\,
	combout => \pCounter0|Add0~14_combout\,
	cout => \pCounter0|Add0~15\);

\pCounter0|counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sync_gen|t_Clk|clkOut~q\,
	d => \pCounter0|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pCounter0|counter\(7));

\pCounter0|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \pCounter0|Equal0~1_combout\ = (!\pCounter0|counter\(4) & (!\pCounter0|counter\(5) & (!\pCounter0|counter\(6) & !\pCounter0|counter\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pCounter0|counter\(4),
	datab => \pCounter0|counter\(5),
	datac => \pCounter0|counter\(6),
	datad => \pCounter0|counter\(7),
	combout => \pCounter0|Equal0~1_combout\);

\pCounter0|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \pCounter0|Add0~16_combout\ = (\pCounter0|counter\(8) & (\pCounter0|Add0~15\ $ (GND))) # (!\pCounter0|counter\(8) & (!\pCounter0|Add0~15\ & VCC))
-- \pCounter0|Add0~17\ = CARRY((\pCounter0|counter\(8) & !\pCounter0|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pCounter0|counter\(8),
	datad => VCC,
	cin => \pCounter0|Add0~15\,
	combout => \pCounter0|Add0~16_combout\,
	cout => \pCounter0|Add0~17\);

\pCounter0|counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sync_gen|t_Clk|clkOut~q\,
	d => \pCounter0|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pCounter0|counter\(8));

\pCounter0|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \pCounter0|Add0~18_combout\ = (\pCounter0|counter\(9) & (!\pCounter0|Add0~17\)) # (!\pCounter0|counter\(9) & ((\pCounter0|Add0~17\) # (GND)))
-- \pCounter0|Add0~19\ = CARRY((!\pCounter0|Add0~17\) # (!\pCounter0|counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pCounter0|counter\(9),
	datad => VCC,
	cin => \pCounter0|Add0~17\,
	combout => \pCounter0|Add0~18_combout\,
	cout => \pCounter0|Add0~19\);

\pCounter0|counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sync_gen|t_Clk|clkOut~q\,
	d => \pCounter0|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pCounter0|counter\(9));

\pCounter0|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \pCounter0|Add0~20_combout\ = (\pCounter0|counter\(10) & (\pCounter0|Add0~19\ $ (GND))) # (!\pCounter0|counter\(10) & (!\pCounter0|Add0~19\ & VCC))
-- \pCounter0|Add0~21\ = CARRY((\pCounter0|counter\(10) & !\pCounter0|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pCounter0|counter\(10),
	datad => VCC,
	cin => \pCounter0|Add0~19\,
	combout => \pCounter0|Add0~20_combout\,
	cout => \pCounter0|Add0~21\);

\pCounter0|counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sync_gen|t_Clk|clkOut~q\,
	d => \pCounter0|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pCounter0|counter\(10));

\pCounter0|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \pCounter0|Add0~22_combout\ = (\pCounter0|counter\(11) & (!\pCounter0|Add0~21\)) # (!\pCounter0|counter\(11) & ((\pCounter0|Add0~21\) # (GND)))
-- \pCounter0|Add0~23\ = CARRY((!\pCounter0|Add0~21\) # (!\pCounter0|counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pCounter0|counter\(11),
	datad => VCC,
	cin => \pCounter0|Add0~21\,
	combout => \pCounter0|Add0~22_combout\,
	cout => \pCounter0|Add0~23\);

\pCounter0|counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sync_gen|t_Clk|clkOut~q\,
	d => \pCounter0|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pCounter0|counter\(11));

\pCounter0|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \pCounter0|Equal0~2_combout\ = (!\pCounter0|counter\(8) & (!\pCounter0|counter\(9) & (!\pCounter0|counter\(10) & !\pCounter0|counter\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pCounter0|counter\(8),
	datab => \pCounter0|counter\(9),
	datac => \pCounter0|counter\(10),
	datad => \pCounter0|counter\(11),
	combout => \pCounter0|Equal0~2_combout\);

\pCounter0|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \pCounter0|Add0~24_combout\ = (\pCounter0|counter\(12) & (\pCounter0|Add0~23\ $ (GND))) # (!\pCounter0|counter\(12) & (!\pCounter0|Add0~23\ & VCC))
-- \pCounter0|Add0~25\ = CARRY((\pCounter0|counter\(12) & !\pCounter0|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pCounter0|counter\(12),
	datad => VCC,
	cin => \pCounter0|Add0~23\,
	combout => \pCounter0|Add0~24_combout\,
	cout => \pCounter0|Add0~25\);

\pCounter0|counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sync_gen|t_Clk|clkOut~q\,
	d => \pCounter0|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pCounter0|counter\(12));

\pCounter0|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \pCounter0|Add0~26_combout\ = (\pCounter0|counter\(13) & (!\pCounter0|Add0~25\)) # (!\pCounter0|counter\(13) & ((\pCounter0|Add0~25\) # (GND)))
-- \pCounter0|Add0~27\ = CARRY((!\pCounter0|Add0~25\) # (!\pCounter0|counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pCounter0|counter\(13),
	datad => VCC,
	cin => \pCounter0|Add0~25\,
	combout => \pCounter0|Add0~26_combout\,
	cout => \pCounter0|Add0~27\);

\pCounter0|counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sync_gen|t_Clk|clkOut~q\,
	d => \pCounter0|Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pCounter0|counter\(13));

\pCounter0|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \pCounter0|Add0~28_combout\ = (\pCounter0|counter\(14) & (\pCounter0|Add0~27\ $ (GND))) # (!\pCounter0|counter\(14) & (!\pCounter0|Add0~27\ & VCC))
-- \pCounter0|Add0~29\ = CARRY((\pCounter0|counter\(14) & !\pCounter0|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pCounter0|counter\(14),
	datad => VCC,
	cin => \pCounter0|Add0~27\,
	combout => \pCounter0|Add0~28_combout\,
	cout => \pCounter0|Add0~29\);

\pCounter0|counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sync_gen|t_Clk|clkOut~q\,
	d => \pCounter0|Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pCounter0|counter\(14));

\pCounter0|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \pCounter0|Add0~30_combout\ = (\pCounter0|counter\(15) & (!\pCounter0|Add0~29\)) # (!\pCounter0|counter\(15) & ((\pCounter0|Add0~29\) # (GND)))
-- \pCounter0|Add0~31\ = CARRY((!\pCounter0|Add0~29\) # (!\pCounter0|counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pCounter0|counter\(15),
	datad => VCC,
	cin => \pCounter0|Add0~29\,
	combout => \pCounter0|Add0~30_combout\,
	cout => \pCounter0|Add0~31\);

\pCounter0|counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sync_gen|t_Clk|clkOut~q\,
	d => \pCounter0|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pCounter0|counter\(15));

\pCounter0|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \pCounter0|Equal0~3_combout\ = (!\pCounter0|counter\(12) & (!\pCounter0|counter\(13) & (!\pCounter0|counter\(14) & !\pCounter0|counter\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pCounter0|counter\(12),
	datab => \pCounter0|counter\(13),
	datac => \pCounter0|counter\(14),
	datad => \pCounter0|counter\(15),
	combout => \pCounter0|Equal0~3_combout\);

\pCounter0|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \pCounter0|Equal0~4_combout\ = (\pCounter0|Equal0~0_combout\ & (\pCounter0|Equal0~1_combout\ & (\pCounter0|Equal0~2_combout\ & \pCounter0|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pCounter0|Equal0~0_combout\,
	datab => \pCounter0|Equal0~1_combout\,
	datac => \pCounter0|Equal0~2_combout\,
	datad => \pCounter0|Equal0~3_combout\,
	combout => \pCounter0|Equal0~4_combout\);

\pCounter0|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \pCounter0|Add0~32_combout\ = (\pCounter0|counter\(16) & (\pCounter0|Add0~31\ $ (GND))) # (!\pCounter0|counter\(16) & (!\pCounter0|Add0~31\ & VCC))
-- \pCounter0|Add0~33\ = CARRY((\pCounter0|counter\(16) & !\pCounter0|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pCounter0|counter\(16),
	datad => VCC,
	cin => \pCounter0|Add0~31\,
	combout => \pCounter0|Add0~32_combout\,
	cout => \pCounter0|Add0~33\);

\pCounter0|counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sync_gen|t_Clk|clkOut~q\,
	d => \pCounter0|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pCounter0|counter\(16));

\pCounter0|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \pCounter0|Add0~34_combout\ = (\pCounter0|counter\(17) & (!\pCounter0|Add0~33\)) # (!\pCounter0|counter\(17) & ((\pCounter0|Add0~33\) # (GND)))
-- \pCounter0|Add0~35\ = CARRY((!\pCounter0|Add0~33\) # (!\pCounter0|counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pCounter0|counter\(17),
	datad => VCC,
	cin => \pCounter0|Add0~33\,
	combout => \pCounter0|Add0~34_combout\,
	cout => \pCounter0|Add0~35\);

\pCounter0|counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sync_gen|t_Clk|clkOut~q\,
	d => \pCounter0|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pCounter0|counter\(17));

\pCounter0|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \pCounter0|Add0~36_combout\ = (\pCounter0|counter\(18) & (\pCounter0|Add0~35\ $ (GND))) # (!\pCounter0|counter\(18) & (!\pCounter0|Add0~35\ & VCC))
-- \pCounter0|Add0~37\ = CARRY((\pCounter0|counter\(18) & !\pCounter0|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pCounter0|counter\(18),
	datad => VCC,
	cin => \pCounter0|Add0~35\,
	combout => \pCounter0|Add0~36_combout\,
	cout => \pCounter0|Add0~37\);

\pCounter0|counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sync_gen|t_Clk|clkOut~q\,
	d => \pCounter0|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pCounter0|counter\(18));

\pCounter0|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \pCounter0|Add0~38_combout\ = (\pCounter0|counter\(19) & (!\pCounter0|Add0~37\)) # (!\pCounter0|counter\(19) & ((\pCounter0|Add0~37\) # (GND)))
-- \pCounter0|Add0~39\ = CARRY((!\pCounter0|Add0~37\) # (!\pCounter0|counter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pCounter0|counter\(19),
	datad => VCC,
	cin => \pCounter0|Add0~37\,
	combout => \pCounter0|Add0~38_combout\,
	cout => \pCounter0|Add0~39\);

\pCounter0|counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sync_gen|t_Clk|clkOut~q\,
	d => \pCounter0|Add0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pCounter0|counter\(19));

\pCounter0|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \pCounter0|Equal0~5_combout\ = (!\pCounter0|counter\(16) & (!\pCounter0|counter\(17) & (!\pCounter0|counter\(18) & !\pCounter0|counter\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pCounter0|counter\(16),
	datab => \pCounter0|counter\(17),
	datac => \pCounter0|counter\(18),
	datad => \pCounter0|counter\(19),
	combout => \pCounter0|Equal0~5_combout\);

\pCounter0|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \pCounter0|Add0~40_combout\ = (\pCounter0|counter\(20) & (\pCounter0|Add0~39\ $ (GND))) # (!\pCounter0|counter\(20) & (!\pCounter0|Add0~39\ & VCC))
-- \pCounter0|Add0~41\ = CARRY((\pCounter0|counter\(20) & !\pCounter0|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pCounter0|counter\(20),
	datad => VCC,
	cin => \pCounter0|Add0~39\,
	combout => \pCounter0|Add0~40_combout\,
	cout => \pCounter0|Add0~41\);

\pCounter0|counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sync_gen|t_Clk|clkOut~q\,
	d => \pCounter0|Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pCounter0|counter\(20));

\pCounter0|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \pCounter0|Add0~42_combout\ = (\pCounter0|counter\(21) & (!\pCounter0|Add0~41\)) # (!\pCounter0|counter\(21) & ((\pCounter0|Add0~41\) # (GND)))
-- \pCounter0|Add0~43\ = CARRY((!\pCounter0|Add0~41\) # (!\pCounter0|counter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pCounter0|counter\(21),
	datad => VCC,
	cin => \pCounter0|Add0~41\,
	combout => \pCounter0|Add0~42_combout\,
	cout => \pCounter0|Add0~43\);

\pCounter0|counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sync_gen|t_Clk|clkOut~q\,
	d => \pCounter0|Add0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pCounter0|counter\(21));

\pCounter0|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \pCounter0|Equal0~6_combout\ = (!\pCounter0|counter\(20) & !\pCounter0|counter\(21))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pCounter0|counter\(20),
	datad => \pCounter0|counter\(21),
	combout => \pCounter0|Equal0~6_combout\);

\pCounter0|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \pCounter0|Add0~44_combout\ = (\pCounter0|counter\(22) & (\pCounter0|Add0~43\ $ (GND))) # (!\pCounter0|counter\(22) & (!\pCounter0|Add0~43\ & VCC))
-- \pCounter0|Add0~45\ = CARRY((\pCounter0|counter\(22) & !\pCounter0|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pCounter0|counter\(22),
	datad => VCC,
	cin => \pCounter0|Add0~43\,
	combout => \pCounter0|Add0~44_combout\,
	cout => \pCounter0|Add0~45\);

\pCounter0|counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sync_gen|t_Clk|clkOut~q\,
	d => \pCounter0|Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pCounter0|counter\(22));

\pCounter0|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \pCounter0|Add0~46_combout\ = (\pCounter0|counter\(23) & (!\pCounter0|Add0~45\)) # (!\pCounter0|counter\(23) & ((\pCounter0|Add0~45\) # (GND)))
-- \pCounter0|Add0~47\ = CARRY((!\pCounter0|Add0~45\) # (!\pCounter0|counter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pCounter0|counter\(23),
	datad => VCC,
	cin => \pCounter0|Add0~45\,
	combout => \pCounter0|Add0~46_combout\,
	cout => \pCounter0|Add0~47\);

\pCounter0|counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sync_gen|t_Clk|clkOut~q\,
	d => \pCounter0|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pCounter0|counter\(23));

\pCounter0|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \pCounter0|Equal0~7_combout\ = (\pCounter0|Equal0~5_combout\ & (\pCounter0|Equal0~6_combout\ & (!\pCounter0|counter\(22) & !\pCounter0|counter\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pCounter0|Equal0~5_combout\,
	datab => \pCounter0|Equal0~6_combout\,
	datac => \pCounter0|counter\(22),
	datad => \pCounter0|counter\(23),
	combout => \pCounter0|Equal0~7_combout\);

\pCounter0|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \pCounter0|Add0~48_combout\ = (\pCounter0|counter\(24) & (\pCounter0|Add0~47\ $ (GND))) # (!\pCounter0|counter\(24) & (!\pCounter0|Add0~47\ & VCC))
-- \pCounter0|Add0~49\ = CARRY((\pCounter0|counter\(24) & !\pCounter0|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pCounter0|counter\(24),
	datad => VCC,
	cin => \pCounter0|Add0~47\,
	combout => \pCounter0|Add0~48_combout\,
	cout => \pCounter0|Add0~49\);

\pCounter0|counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sync_gen|t_Clk|clkOut~q\,
	d => \pCounter0|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pCounter0|counter\(24));

\pCounter0|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \pCounter0|Add0~50_combout\ = (\pCounter0|counter\(25) & (!\pCounter0|Add0~49\)) # (!\pCounter0|counter\(25) & ((\pCounter0|Add0~49\) # (GND)))
-- \pCounter0|Add0~51\ = CARRY((!\pCounter0|Add0~49\) # (!\pCounter0|counter\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pCounter0|counter\(25),
	datad => VCC,
	cin => \pCounter0|Add0~49\,
	combout => \pCounter0|Add0~50_combout\,
	cout => \pCounter0|Add0~51\);

\pCounter0|counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sync_gen|t_Clk|clkOut~q\,
	d => \pCounter0|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pCounter0|counter\(25));

\pCounter0|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \pCounter0|Add0~52_combout\ = (\pCounter0|counter\(26) & (\pCounter0|Add0~51\ $ (GND))) # (!\pCounter0|counter\(26) & (!\pCounter0|Add0~51\ & VCC))
-- \pCounter0|Add0~53\ = CARRY((\pCounter0|counter\(26) & !\pCounter0|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pCounter0|counter\(26),
	datad => VCC,
	cin => \pCounter0|Add0~51\,
	combout => \pCounter0|Add0~52_combout\,
	cout => \pCounter0|Add0~53\);

\pCounter0|counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sync_gen|t_Clk|clkOut~q\,
	d => \pCounter0|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pCounter0|counter\(26));

\pCounter0|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \pCounter0|Add0~54_combout\ = (\pCounter0|counter\(27) & (!\pCounter0|Add0~53\)) # (!\pCounter0|counter\(27) & ((\pCounter0|Add0~53\) # (GND)))
-- \pCounter0|Add0~55\ = CARRY((!\pCounter0|Add0~53\) # (!\pCounter0|counter\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pCounter0|counter\(27),
	datad => VCC,
	cin => \pCounter0|Add0~53\,
	combout => \pCounter0|Add0~54_combout\,
	cout => \pCounter0|Add0~55\);

\pCounter0|counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sync_gen|t_Clk|clkOut~q\,
	d => \pCounter0|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pCounter0|counter\(27));

\pCounter0|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \pCounter0|Equal0~8_combout\ = (!\pCounter0|counter\(24) & (!\pCounter0|counter\(25) & (!\pCounter0|counter\(26) & !\pCounter0|counter\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pCounter0|counter\(24),
	datab => \pCounter0|counter\(25),
	datac => \pCounter0|counter\(26),
	datad => \pCounter0|counter\(27),
	combout => \pCounter0|Equal0~8_combout\);

\pCounter0|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \pCounter0|Add0~56_combout\ = (\pCounter0|counter\(28) & (\pCounter0|Add0~55\ $ (GND))) # (!\pCounter0|counter\(28) & (!\pCounter0|Add0~55\ & VCC))
-- \pCounter0|Add0~57\ = CARRY((\pCounter0|counter\(28) & !\pCounter0|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pCounter0|counter\(28),
	datad => VCC,
	cin => \pCounter0|Add0~55\,
	combout => \pCounter0|Add0~56_combout\,
	cout => \pCounter0|Add0~57\);

\pCounter0|counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sync_gen|t_Clk|clkOut~q\,
	d => \pCounter0|Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pCounter0|counter\(28));

\pCounter0|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \pCounter0|Add0~58_combout\ = (\pCounter0|counter\(29) & (!\pCounter0|Add0~57\)) # (!\pCounter0|counter\(29) & ((\pCounter0|Add0~57\) # (GND)))
-- \pCounter0|Add0~59\ = CARRY((!\pCounter0|Add0~57\) # (!\pCounter0|counter\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pCounter0|counter\(29),
	datad => VCC,
	cin => \pCounter0|Add0~57\,
	combout => \pCounter0|Add0~58_combout\,
	cout => \pCounter0|Add0~59\);

\pCounter0|counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sync_gen|t_Clk|clkOut~q\,
	d => \pCounter0|Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pCounter0|counter\(29));

\pCounter0|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \pCounter0|Add0~60_combout\ = (\pCounter0|counter\(30) & (\pCounter0|Add0~59\ $ (GND))) # (!\pCounter0|counter\(30) & (!\pCounter0|Add0~59\ & VCC))
-- \pCounter0|Add0~61\ = CARRY((\pCounter0|counter\(30) & !\pCounter0|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pCounter0|counter\(30),
	datad => VCC,
	cin => \pCounter0|Add0~59\,
	combout => \pCounter0|Add0~60_combout\,
	cout => \pCounter0|Add0~61\);

\pCounter0|counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sync_gen|t_Clk|clkOut~q\,
	d => \pCounter0|Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pCounter0|counter\(30));

\pCounter0|Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \pCounter0|Add0~62_combout\ = \pCounter0|counter\(31) $ (\pCounter0|Add0~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pCounter0|counter\(31),
	cin => \pCounter0|Add0~61\,
	combout => \pCounter0|Add0~62_combout\);

\pCounter0|counter[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sync_gen|t_Clk|clkOut~q\,
	d => \pCounter0|Add0~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pCounter0|counter\(31));

\pCounter0|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \pCounter0|Equal0~9_combout\ = (!\pCounter0|counter\(28) & (!\pCounter0|counter\(29) & (!\pCounter0|counter\(30) & !\pCounter0|counter\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pCounter0|counter\(28),
	datab => \pCounter0|counter\(29),
	datac => \pCounter0|counter\(30),
	datad => \pCounter0|counter\(31),
	combout => \pCounter0|Equal0~9_combout\);

\pCounter0|Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \pCounter0|Equal0~10_combout\ = (\pCounter0|Equal0~4_combout\ & (\pCounter0|Equal0~7_combout\ & (\pCounter0|Equal0~8_combout\ & \pCounter0|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pCounter0|Equal0~4_combout\,
	datab => \pCounter0|Equal0~7_combout\,
	datac => \pCounter0|Equal0~8_combout\,
	datad => \pCounter0|Equal0~9_combout\,
	combout => \pCounter0|Equal0~10_combout\);

\pCounter0|TC\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sync_gen|t_Clk|clkOut~q\,
	d => \pCounter0|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pCounter0|TC~q\);

\pCounter1|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pCounter1|Add0~0_combout\ = \pCounter1|counter\(0) $ (VCC)
-- \pCounter1|Add0~1\ = CARRY(\pCounter1|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pCounter1|counter\(0),
	datad => VCC,
	combout => \pCounter1|Add0~0_combout\,
	cout => \pCounter1|Add0~1\);

\pCounter1|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pCounter0|TC~q\,
	d => \pCounter1|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pCounter1|counter\(0));

\pCounter1|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \pCounter1|Add0~2_combout\ = (\pCounter1|counter\(1) & (!\pCounter1|Add0~1\)) # (!\pCounter1|counter\(1) & ((\pCounter1|Add0~1\) # (GND)))
-- \pCounter1|Add0~3\ = CARRY((!\pCounter1|Add0~1\) # (!\pCounter1|counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pCounter1|counter\(1),
	datad => VCC,
	cin => \pCounter1|Add0~1\,
	combout => \pCounter1|Add0~2_combout\,
	cout => \pCounter1|Add0~3\);

\pCounter1|counter~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pCounter1|counter~0_combout\ = (\pCounter1|Add0~2_combout\ & !\pCounter1|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pCounter1|Add0~2_combout\,
	datad => \pCounter1|Equal0~10_combout\,
	combout => \pCounter1|counter~0_combout\);

\pCounter1|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pCounter0|TC~q\,
	d => \pCounter1|counter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pCounter1|counter\(1));

\pCounter1|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \pCounter1|Add0~4_combout\ = (\pCounter1|counter\(2) & (\pCounter1|Add0~3\ $ (GND))) # (!\pCounter1|counter\(2) & (!\pCounter1|Add0~3\ & VCC))
-- \pCounter1|Add0~5\ = CARRY((\pCounter1|counter\(2) & !\pCounter1|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pCounter1|counter\(2),
	datad => VCC,
	cin => \pCounter1|Add0~3\,
	combout => \pCounter1|Add0~4_combout\,
	cout => \pCounter1|Add0~5\);

\pCounter1|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pCounter0|TC~q\,
	d => \pCounter1|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pCounter1|counter\(2));

\pCounter1|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \pCounter1|Add0~6_combout\ = (\pCounter1|counter\(3) & (!\pCounter1|Add0~5\)) # (!\pCounter1|counter\(3) & ((\pCounter1|Add0~5\) # (GND)))
-- \pCounter1|Add0~7\ = CARRY((!\pCounter1|Add0~5\) # (!\pCounter1|counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pCounter1|counter\(3),
	datad => VCC,
	cin => \pCounter1|Add0~5\,
	combout => \pCounter1|Add0~6_combout\,
	cout => \pCounter1|Add0~7\);

\pCounter1|counter~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \pCounter1|counter~1_combout\ = (\pCounter1|Add0~6_combout\ & !\pCounter1|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pCounter1|Add0~6_combout\,
	datad => \pCounter1|Equal0~10_combout\,
	combout => \pCounter1|counter~1_combout\);

\pCounter1|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pCounter0|TC~q\,
	d => \pCounter1|counter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pCounter1|counter\(3));

\pCounter1|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pCounter1|Equal0~0_combout\ = (\pCounter1|counter\(0) & (\pCounter1|counter\(3) & (!\pCounter1|counter\(1) & !\pCounter1|counter\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pCounter1|counter\(0),
	datab => \pCounter1|counter\(3),
	datac => \pCounter1|counter\(1),
	datad => \pCounter1|counter\(2),
	combout => \pCounter1|Equal0~0_combout\);

\pCounter1|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \pCounter1|Add0~8_combout\ = (\pCounter1|counter\(4) & (\pCounter1|Add0~7\ $ (GND))) # (!\pCounter1|counter\(4) & (!\pCounter1|Add0~7\ & VCC))
-- \pCounter1|Add0~9\ = CARRY((\pCounter1|counter\(4) & !\pCounter1|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pCounter1|counter\(4),
	datad => VCC,
	cin => \pCounter1|Add0~7\,
	combout => \pCounter1|Add0~8_combout\,
	cout => \pCounter1|Add0~9\);

\pCounter1|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pCounter0|TC~q\,
	d => \pCounter1|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pCounter1|counter\(4));

\pCounter1|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \pCounter1|Add0~10_combout\ = (\pCounter1|counter\(5) & (!\pCounter1|Add0~9\)) # (!\pCounter1|counter\(5) & ((\pCounter1|Add0~9\) # (GND)))
-- \pCounter1|Add0~11\ = CARRY((!\pCounter1|Add0~9\) # (!\pCounter1|counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pCounter1|counter\(5),
	datad => VCC,
	cin => \pCounter1|Add0~9\,
	combout => \pCounter1|Add0~10_combout\,
	cout => \pCounter1|Add0~11\);

\pCounter1|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pCounter0|TC~q\,
	d => \pCounter1|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pCounter1|counter\(5));

\pCounter1|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \pCounter1|Add0~12_combout\ = (\pCounter1|counter\(6) & (\pCounter1|Add0~11\ $ (GND))) # (!\pCounter1|counter\(6) & (!\pCounter1|Add0~11\ & VCC))
-- \pCounter1|Add0~13\ = CARRY((\pCounter1|counter\(6) & !\pCounter1|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pCounter1|counter\(6),
	datad => VCC,
	cin => \pCounter1|Add0~11\,
	combout => \pCounter1|Add0~12_combout\,
	cout => \pCounter1|Add0~13\);

\pCounter1|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pCounter0|TC~q\,
	d => \pCounter1|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pCounter1|counter\(6));

\pCounter1|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \pCounter1|Add0~14_combout\ = (\pCounter1|counter\(7) & (!\pCounter1|Add0~13\)) # (!\pCounter1|counter\(7) & ((\pCounter1|Add0~13\) # (GND)))
-- \pCounter1|Add0~15\ = CARRY((!\pCounter1|Add0~13\) # (!\pCounter1|counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pCounter1|counter\(7),
	datad => VCC,
	cin => \pCounter1|Add0~13\,
	combout => \pCounter1|Add0~14_combout\,
	cout => \pCounter1|Add0~15\);

\pCounter1|counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pCounter0|TC~q\,
	d => \pCounter1|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pCounter1|counter\(7));

\pCounter1|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \pCounter1|Equal0~1_combout\ = (!\pCounter1|counter\(4) & (!\pCounter1|counter\(5) & (!\pCounter1|counter\(6) & !\pCounter1|counter\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pCounter1|counter\(4),
	datab => \pCounter1|counter\(5),
	datac => \pCounter1|counter\(6),
	datad => \pCounter1|counter\(7),
	combout => \pCounter1|Equal0~1_combout\);

\pCounter1|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \pCounter1|Add0~16_combout\ = (\pCounter1|counter\(8) & (\pCounter1|Add0~15\ $ (GND))) # (!\pCounter1|counter\(8) & (!\pCounter1|Add0~15\ & VCC))
-- \pCounter1|Add0~17\ = CARRY((\pCounter1|counter\(8) & !\pCounter1|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pCounter1|counter\(8),
	datad => VCC,
	cin => \pCounter1|Add0~15\,
	combout => \pCounter1|Add0~16_combout\,
	cout => \pCounter1|Add0~17\);

\pCounter1|counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pCounter0|TC~q\,
	d => \pCounter1|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pCounter1|counter\(8));

\pCounter1|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \pCounter1|Add0~18_combout\ = (\pCounter1|counter\(9) & (!\pCounter1|Add0~17\)) # (!\pCounter1|counter\(9) & ((\pCounter1|Add0~17\) # (GND)))
-- \pCounter1|Add0~19\ = CARRY((!\pCounter1|Add0~17\) # (!\pCounter1|counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pCounter1|counter\(9),
	datad => VCC,
	cin => \pCounter1|Add0~17\,
	combout => \pCounter1|Add0~18_combout\,
	cout => \pCounter1|Add0~19\);

\pCounter1|counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pCounter0|TC~q\,
	d => \pCounter1|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pCounter1|counter\(9));

\pCounter1|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \pCounter1|Add0~20_combout\ = (\pCounter1|counter\(10) & (\pCounter1|Add0~19\ $ (GND))) # (!\pCounter1|counter\(10) & (!\pCounter1|Add0~19\ & VCC))
-- \pCounter1|Add0~21\ = CARRY((\pCounter1|counter\(10) & !\pCounter1|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pCounter1|counter\(10),
	datad => VCC,
	cin => \pCounter1|Add0~19\,
	combout => \pCounter1|Add0~20_combout\,
	cout => \pCounter1|Add0~21\);

\pCounter1|counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pCounter0|TC~q\,
	d => \pCounter1|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pCounter1|counter\(10));

\pCounter1|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \pCounter1|Add0~22_combout\ = (\pCounter1|counter\(11) & (!\pCounter1|Add0~21\)) # (!\pCounter1|counter\(11) & ((\pCounter1|Add0~21\) # (GND)))
-- \pCounter1|Add0~23\ = CARRY((!\pCounter1|Add0~21\) # (!\pCounter1|counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pCounter1|counter\(11),
	datad => VCC,
	cin => \pCounter1|Add0~21\,
	combout => \pCounter1|Add0~22_combout\,
	cout => \pCounter1|Add0~23\);

\pCounter1|counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pCounter0|TC~q\,
	d => \pCounter1|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pCounter1|counter\(11));

\pCounter1|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \pCounter1|Equal0~2_combout\ = (!\pCounter1|counter\(8) & (!\pCounter1|counter\(9) & (!\pCounter1|counter\(10) & !\pCounter1|counter\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pCounter1|counter\(8),
	datab => \pCounter1|counter\(9),
	datac => \pCounter1|counter\(10),
	datad => \pCounter1|counter\(11),
	combout => \pCounter1|Equal0~2_combout\);

\pCounter1|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \pCounter1|Add0~24_combout\ = (\pCounter1|counter\(12) & (\pCounter1|Add0~23\ $ (GND))) # (!\pCounter1|counter\(12) & (!\pCounter1|Add0~23\ & VCC))
-- \pCounter1|Add0~25\ = CARRY((\pCounter1|counter\(12) & !\pCounter1|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pCounter1|counter\(12),
	datad => VCC,
	cin => \pCounter1|Add0~23\,
	combout => \pCounter1|Add0~24_combout\,
	cout => \pCounter1|Add0~25\);

\pCounter1|counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pCounter0|TC~q\,
	d => \pCounter1|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pCounter1|counter\(12));

\pCounter1|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \pCounter1|Add0~26_combout\ = (\pCounter1|counter\(13) & (!\pCounter1|Add0~25\)) # (!\pCounter1|counter\(13) & ((\pCounter1|Add0~25\) # (GND)))
-- \pCounter1|Add0~27\ = CARRY((!\pCounter1|Add0~25\) # (!\pCounter1|counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pCounter1|counter\(13),
	datad => VCC,
	cin => \pCounter1|Add0~25\,
	combout => \pCounter1|Add0~26_combout\,
	cout => \pCounter1|Add0~27\);

\pCounter1|counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pCounter0|TC~q\,
	d => \pCounter1|Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pCounter1|counter\(13));

\pCounter1|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \pCounter1|Add0~28_combout\ = (\pCounter1|counter\(14) & (\pCounter1|Add0~27\ $ (GND))) # (!\pCounter1|counter\(14) & (!\pCounter1|Add0~27\ & VCC))
-- \pCounter1|Add0~29\ = CARRY((\pCounter1|counter\(14) & !\pCounter1|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pCounter1|counter\(14),
	datad => VCC,
	cin => \pCounter1|Add0~27\,
	combout => \pCounter1|Add0~28_combout\,
	cout => \pCounter1|Add0~29\);

\pCounter1|counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pCounter0|TC~q\,
	d => \pCounter1|Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pCounter1|counter\(14));

\pCounter1|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \pCounter1|Add0~30_combout\ = (\pCounter1|counter\(15) & (!\pCounter1|Add0~29\)) # (!\pCounter1|counter\(15) & ((\pCounter1|Add0~29\) # (GND)))
-- \pCounter1|Add0~31\ = CARRY((!\pCounter1|Add0~29\) # (!\pCounter1|counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pCounter1|counter\(15),
	datad => VCC,
	cin => \pCounter1|Add0~29\,
	combout => \pCounter1|Add0~30_combout\,
	cout => \pCounter1|Add0~31\);

\pCounter1|counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pCounter0|TC~q\,
	d => \pCounter1|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pCounter1|counter\(15));

\pCounter1|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \pCounter1|Equal0~3_combout\ = (!\pCounter1|counter\(12) & (!\pCounter1|counter\(13) & (!\pCounter1|counter\(14) & !\pCounter1|counter\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pCounter1|counter\(12),
	datab => \pCounter1|counter\(13),
	datac => \pCounter1|counter\(14),
	datad => \pCounter1|counter\(15),
	combout => \pCounter1|Equal0~3_combout\);

\pCounter1|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \pCounter1|Equal0~4_combout\ = (\pCounter1|Equal0~0_combout\ & (\pCounter1|Equal0~1_combout\ & (\pCounter1|Equal0~2_combout\ & \pCounter1|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pCounter1|Equal0~0_combout\,
	datab => \pCounter1|Equal0~1_combout\,
	datac => \pCounter1|Equal0~2_combout\,
	datad => \pCounter1|Equal0~3_combout\,
	combout => \pCounter1|Equal0~4_combout\);

\pCounter1|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \pCounter1|Add0~32_combout\ = (\pCounter1|counter\(16) & (\pCounter1|Add0~31\ $ (GND))) # (!\pCounter1|counter\(16) & (!\pCounter1|Add0~31\ & VCC))
-- \pCounter1|Add0~33\ = CARRY((\pCounter1|counter\(16) & !\pCounter1|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pCounter1|counter\(16),
	datad => VCC,
	cin => \pCounter1|Add0~31\,
	combout => \pCounter1|Add0~32_combout\,
	cout => \pCounter1|Add0~33\);

\pCounter1|counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pCounter0|TC~q\,
	d => \pCounter1|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pCounter1|counter\(16));

\pCounter1|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \pCounter1|Add0~34_combout\ = (\pCounter1|counter\(17) & (!\pCounter1|Add0~33\)) # (!\pCounter1|counter\(17) & ((\pCounter1|Add0~33\) # (GND)))
-- \pCounter1|Add0~35\ = CARRY((!\pCounter1|Add0~33\) # (!\pCounter1|counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pCounter1|counter\(17),
	datad => VCC,
	cin => \pCounter1|Add0~33\,
	combout => \pCounter1|Add0~34_combout\,
	cout => \pCounter1|Add0~35\);

\pCounter1|counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pCounter0|TC~q\,
	d => \pCounter1|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pCounter1|counter\(17));

\pCounter1|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \pCounter1|Add0~36_combout\ = (\pCounter1|counter\(18) & (\pCounter1|Add0~35\ $ (GND))) # (!\pCounter1|counter\(18) & (!\pCounter1|Add0~35\ & VCC))
-- \pCounter1|Add0~37\ = CARRY((\pCounter1|counter\(18) & !\pCounter1|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pCounter1|counter\(18),
	datad => VCC,
	cin => \pCounter1|Add0~35\,
	combout => \pCounter1|Add0~36_combout\,
	cout => \pCounter1|Add0~37\);

\pCounter1|counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pCounter0|TC~q\,
	d => \pCounter1|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pCounter1|counter\(18));

\pCounter1|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \pCounter1|Add0~38_combout\ = (\pCounter1|counter\(19) & (!\pCounter1|Add0~37\)) # (!\pCounter1|counter\(19) & ((\pCounter1|Add0~37\) # (GND)))
-- \pCounter1|Add0~39\ = CARRY((!\pCounter1|Add0~37\) # (!\pCounter1|counter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pCounter1|counter\(19),
	datad => VCC,
	cin => \pCounter1|Add0~37\,
	combout => \pCounter1|Add0~38_combout\,
	cout => \pCounter1|Add0~39\);

\pCounter1|counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pCounter0|TC~q\,
	d => \pCounter1|Add0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pCounter1|counter\(19));

\pCounter1|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \pCounter1|Equal0~5_combout\ = (!\pCounter1|counter\(16) & (!\pCounter1|counter\(17) & (!\pCounter1|counter\(18) & !\pCounter1|counter\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pCounter1|counter\(16),
	datab => \pCounter1|counter\(17),
	datac => \pCounter1|counter\(18),
	datad => \pCounter1|counter\(19),
	combout => \pCounter1|Equal0~5_combout\);

\pCounter1|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \pCounter1|Add0~40_combout\ = (\pCounter1|counter\(20) & (\pCounter1|Add0~39\ $ (GND))) # (!\pCounter1|counter\(20) & (!\pCounter1|Add0~39\ & VCC))
-- \pCounter1|Add0~41\ = CARRY((\pCounter1|counter\(20) & !\pCounter1|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pCounter1|counter\(20),
	datad => VCC,
	cin => \pCounter1|Add0~39\,
	combout => \pCounter1|Add0~40_combout\,
	cout => \pCounter1|Add0~41\);

\pCounter1|counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pCounter0|TC~q\,
	d => \pCounter1|Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pCounter1|counter\(20));

\pCounter1|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \pCounter1|Add0~42_combout\ = (\pCounter1|counter\(21) & (!\pCounter1|Add0~41\)) # (!\pCounter1|counter\(21) & ((\pCounter1|Add0~41\) # (GND)))
-- \pCounter1|Add0~43\ = CARRY((!\pCounter1|Add0~41\) # (!\pCounter1|counter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pCounter1|counter\(21),
	datad => VCC,
	cin => \pCounter1|Add0~41\,
	combout => \pCounter1|Add0~42_combout\,
	cout => \pCounter1|Add0~43\);

\pCounter1|counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pCounter0|TC~q\,
	d => \pCounter1|Add0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pCounter1|counter\(21));

\pCounter1|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \pCounter1|Add0~44_combout\ = (\pCounter1|counter\(22) & (\pCounter1|Add0~43\ $ (GND))) # (!\pCounter1|counter\(22) & (!\pCounter1|Add0~43\ & VCC))
-- \pCounter1|Add0~45\ = CARRY((\pCounter1|counter\(22) & !\pCounter1|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pCounter1|counter\(22),
	datad => VCC,
	cin => \pCounter1|Add0~43\,
	combout => \pCounter1|Add0~44_combout\,
	cout => \pCounter1|Add0~45\);

\pCounter1|counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pCounter0|TC~q\,
	d => \pCounter1|Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pCounter1|counter\(22));

\pCounter1|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \pCounter1|Add0~46_combout\ = (\pCounter1|counter\(23) & (!\pCounter1|Add0~45\)) # (!\pCounter1|counter\(23) & ((\pCounter1|Add0~45\) # (GND)))
-- \pCounter1|Add0~47\ = CARRY((!\pCounter1|Add0~45\) # (!\pCounter1|counter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pCounter1|counter\(23),
	datad => VCC,
	cin => \pCounter1|Add0~45\,
	combout => \pCounter1|Add0~46_combout\,
	cout => \pCounter1|Add0~47\);

\pCounter1|counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pCounter0|TC~q\,
	d => \pCounter1|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pCounter1|counter\(23));

\pCounter1|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \pCounter1|Equal0~6_combout\ = (!\pCounter1|counter\(22) & !\pCounter1|counter\(23))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \pCounter1|counter\(22),
	datad => \pCounter1|counter\(23),
	combout => \pCounter1|Equal0~6_combout\);

\pCounter1|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \pCounter1|Equal0~7_combout\ = (\pCounter1|Equal0~5_combout\ & (\pCounter1|Equal0~6_combout\ & (!\pCounter1|counter\(20) & !\pCounter1|counter\(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pCounter1|Equal0~5_combout\,
	datab => \pCounter1|Equal0~6_combout\,
	datac => \pCounter1|counter\(20),
	datad => \pCounter1|counter\(21),
	combout => \pCounter1|Equal0~7_combout\);

\pCounter1|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \pCounter1|Add0~48_combout\ = (\pCounter1|counter\(24) & (\pCounter1|Add0~47\ $ (GND))) # (!\pCounter1|counter\(24) & (!\pCounter1|Add0~47\ & VCC))
-- \pCounter1|Add0~49\ = CARRY((\pCounter1|counter\(24) & !\pCounter1|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pCounter1|counter\(24),
	datad => VCC,
	cin => \pCounter1|Add0~47\,
	combout => \pCounter1|Add0~48_combout\,
	cout => \pCounter1|Add0~49\);

\pCounter1|counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pCounter0|TC~q\,
	d => \pCounter1|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pCounter1|counter\(24));

\pCounter1|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \pCounter1|Add0~50_combout\ = (\pCounter1|counter\(25) & (!\pCounter1|Add0~49\)) # (!\pCounter1|counter\(25) & ((\pCounter1|Add0~49\) # (GND)))
-- \pCounter1|Add0~51\ = CARRY((!\pCounter1|Add0~49\) # (!\pCounter1|counter\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pCounter1|counter\(25),
	datad => VCC,
	cin => \pCounter1|Add0~49\,
	combout => \pCounter1|Add0~50_combout\,
	cout => \pCounter1|Add0~51\);

\pCounter1|counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pCounter0|TC~q\,
	d => \pCounter1|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pCounter1|counter\(25));

\pCounter1|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \pCounter1|Add0~52_combout\ = (\pCounter1|counter\(26) & (\pCounter1|Add0~51\ $ (GND))) # (!\pCounter1|counter\(26) & (!\pCounter1|Add0~51\ & VCC))
-- \pCounter1|Add0~53\ = CARRY((\pCounter1|counter\(26) & !\pCounter1|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pCounter1|counter\(26),
	datad => VCC,
	cin => \pCounter1|Add0~51\,
	combout => \pCounter1|Add0~52_combout\,
	cout => \pCounter1|Add0~53\);

\pCounter1|counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pCounter0|TC~q\,
	d => \pCounter1|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pCounter1|counter\(26));

\pCounter1|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \pCounter1|Add0~54_combout\ = (\pCounter1|counter\(27) & (!\pCounter1|Add0~53\)) # (!\pCounter1|counter\(27) & ((\pCounter1|Add0~53\) # (GND)))
-- \pCounter1|Add0~55\ = CARRY((!\pCounter1|Add0~53\) # (!\pCounter1|counter\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pCounter1|counter\(27),
	datad => VCC,
	cin => \pCounter1|Add0~53\,
	combout => \pCounter1|Add0~54_combout\,
	cout => \pCounter1|Add0~55\);

\pCounter1|counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pCounter0|TC~q\,
	d => \pCounter1|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pCounter1|counter\(27));

\pCounter1|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \pCounter1|Equal0~8_combout\ = (!\pCounter1|counter\(24) & (!\pCounter1|counter\(25) & (!\pCounter1|counter\(26) & !\pCounter1|counter\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pCounter1|counter\(24),
	datab => \pCounter1|counter\(25),
	datac => \pCounter1|counter\(26),
	datad => \pCounter1|counter\(27),
	combout => \pCounter1|Equal0~8_combout\);

\pCounter1|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \pCounter1|Add0~56_combout\ = (\pCounter1|counter\(28) & (\pCounter1|Add0~55\ $ (GND))) # (!\pCounter1|counter\(28) & (!\pCounter1|Add0~55\ & VCC))
-- \pCounter1|Add0~57\ = CARRY((\pCounter1|counter\(28) & !\pCounter1|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pCounter1|counter\(28),
	datad => VCC,
	cin => \pCounter1|Add0~55\,
	combout => \pCounter1|Add0~56_combout\,
	cout => \pCounter1|Add0~57\);

\pCounter1|counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pCounter0|TC~q\,
	d => \pCounter1|Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pCounter1|counter\(28));

\pCounter1|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \pCounter1|Add0~58_combout\ = (\pCounter1|counter\(29) & (!\pCounter1|Add0~57\)) # (!\pCounter1|counter\(29) & ((\pCounter1|Add0~57\) # (GND)))
-- \pCounter1|Add0~59\ = CARRY((!\pCounter1|Add0~57\) # (!\pCounter1|counter\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pCounter1|counter\(29),
	datad => VCC,
	cin => \pCounter1|Add0~57\,
	combout => \pCounter1|Add0~58_combout\,
	cout => \pCounter1|Add0~59\);

\pCounter1|counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pCounter0|TC~q\,
	d => \pCounter1|Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pCounter1|counter\(29));

\pCounter1|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \pCounter1|Add0~60_combout\ = (\pCounter1|counter\(30) & (\pCounter1|Add0~59\ $ (GND))) # (!\pCounter1|counter\(30) & (!\pCounter1|Add0~59\ & VCC))
-- \pCounter1|Add0~61\ = CARRY((\pCounter1|counter\(30) & !\pCounter1|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pCounter1|counter\(30),
	datad => VCC,
	cin => \pCounter1|Add0~59\,
	combout => \pCounter1|Add0~60_combout\,
	cout => \pCounter1|Add0~61\);

\pCounter1|counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pCounter0|TC~q\,
	d => \pCounter1|Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pCounter1|counter\(30));

\pCounter1|Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \pCounter1|Add0~62_combout\ = \pCounter1|counter\(31) $ (\pCounter1|Add0~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pCounter1|counter\(31),
	cin => \pCounter1|Add0~61\,
	combout => \pCounter1|Add0~62_combout\);

\pCounter1|counter[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pCounter0|TC~q\,
	d => \pCounter1|Add0~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pCounter1|counter\(31));

\pCounter1|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \pCounter1|Equal0~9_combout\ = (!\pCounter1|counter\(28) & (!\pCounter1|counter\(29) & (!\pCounter1|counter\(30) & !\pCounter1|counter\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pCounter1|counter\(28),
	datab => \pCounter1|counter\(29),
	datac => \pCounter1|counter\(30),
	datad => \pCounter1|counter\(31),
	combout => \pCounter1|Equal0~9_combout\);

\pCounter1|Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \pCounter1|Equal0~10_combout\ = (\pCounter1|Equal0~4_combout\ & (\pCounter1|Equal0~7_combout\ & (\pCounter1|Equal0~8_combout\ & \pCounter1|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pCounter1|Equal0~4_combout\,
	datab => \pCounter1|Equal0~7_combout\,
	datac => \pCounter1|Equal0~8_combout\,
	datad => \pCounter1|Equal0~9_combout\,
	combout => \pCounter1|Equal0~10_combout\);

\pCounter1|TC\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pCounter0|TC~q\,
	d => \pCounter1|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pCounter1|TC~q\);

\pCounter2|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pCounter2|Add0~0_combout\ = \pCounter2|counter\(0) $ (VCC)
-- \pCounter2|Add0~1\ = CARRY(\pCounter2|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pCounter2|counter\(0),
	datad => VCC,
	combout => \pCounter2|Add0~0_combout\,
	cout => \pCounter2|Add0~1\);

\pCounter2|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pCounter1|TC~q\,
	d => \pCounter2|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pCounter2|counter\(0));

\pCounter2|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \pCounter2|Add0~2_combout\ = (\pCounter2|counter\(1) & (!\pCounter2|Add0~1\)) # (!\pCounter2|counter\(1) & ((\pCounter2|Add0~1\) # (GND)))
-- \pCounter2|Add0~3\ = CARRY((!\pCounter2|Add0~1\) # (!\pCounter2|counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pCounter2|counter\(1),
	datad => VCC,
	cin => \pCounter2|Add0~1\,
	combout => \pCounter2|Add0~2_combout\,
	cout => \pCounter2|Add0~3\);

\pCounter2|counter~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \pCounter2|counter~1_combout\ = (\pCounter2|Add0~2_combout\ & !\pCounter2|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pCounter2|Add0~2_combout\,
	datad => \pCounter2|Equal0~10_combout\,
	combout => \pCounter2|counter~1_combout\);

\pCounter2|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pCounter1|TC~q\,
	d => \pCounter2|counter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pCounter2|counter\(1));

\pCounter2|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \pCounter2|Add0~4_combout\ = (\pCounter2|counter\(2) & (\pCounter2|Add0~3\ $ (GND))) # (!\pCounter2|counter\(2) & (!\pCounter2|Add0~3\ & VCC))
-- \pCounter2|Add0~5\ = CARRY((\pCounter2|counter\(2) & !\pCounter2|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pCounter2|counter\(2),
	datad => VCC,
	cin => \pCounter2|Add0~3\,
	combout => \pCounter2|Add0~4_combout\,
	cout => \pCounter2|Add0~5\);

\pCounter2|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pCounter1|TC~q\,
	d => \pCounter2|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pCounter2|counter\(2));

\pCounter2|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \pCounter2|Add0~6_combout\ = (\pCounter2|counter\(3) & (!\pCounter2|Add0~5\)) # (!\pCounter2|counter\(3) & ((\pCounter2|Add0~5\) # (GND)))
-- \pCounter2|Add0~7\ = CARRY((!\pCounter2|Add0~5\) # (!\pCounter2|counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pCounter2|counter\(3),
	datad => VCC,
	cin => \pCounter2|Add0~5\,
	combout => \pCounter2|Add0~6_combout\,
	cout => \pCounter2|Add0~7\);

\pCounter2|counter~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pCounter2|counter~0_combout\ = (\pCounter2|Add0~6_combout\ & !\pCounter2|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pCounter2|Add0~6_combout\,
	datad => \pCounter2|Equal0~10_combout\,
	combout => \pCounter2|counter~0_combout\);

\pCounter2|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pCounter1|TC~q\,
	d => \pCounter2|counter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pCounter2|counter\(3));

\pCounter2|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pCounter2|Equal0~0_combout\ = (\pCounter2|counter\(0) & (\pCounter2|counter\(3) & (!\pCounter2|counter\(2) & !\pCounter2|counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pCounter2|counter\(0),
	datab => \pCounter2|counter\(3),
	datac => \pCounter2|counter\(2),
	datad => \pCounter2|counter\(1),
	combout => \pCounter2|Equal0~0_combout\);

\pCounter2|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \pCounter2|Add0~8_combout\ = (\pCounter2|counter\(4) & (\pCounter2|Add0~7\ $ (GND))) # (!\pCounter2|counter\(4) & (!\pCounter2|Add0~7\ & VCC))
-- \pCounter2|Add0~9\ = CARRY((\pCounter2|counter\(4) & !\pCounter2|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pCounter2|counter\(4),
	datad => VCC,
	cin => \pCounter2|Add0~7\,
	combout => \pCounter2|Add0~8_combout\,
	cout => \pCounter2|Add0~9\);

\pCounter2|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pCounter1|TC~q\,
	d => \pCounter2|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pCounter2|counter\(4));

\pCounter2|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \pCounter2|Add0~10_combout\ = (\pCounter2|counter\(5) & (!\pCounter2|Add0~9\)) # (!\pCounter2|counter\(5) & ((\pCounter2|Add0~9\) # (GND)))
-- \pCounter2|Add0~11\ = CARRY((!\pCounter2|Add0~9\) # (!\pCounter2|counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pCounter2|counter\(5),
	datad => VCC,
	cin => \pCounter2|Add0~9\,
	combout => \pCounter2|Add0~10_combout\,
	cout => \pCounter2|Add0~11\);

\pCounter2|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pCounter1|TC~q\,
	d => \pCounter2|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pCounter2|counter\(5));

\pCounter2|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \pCounter2|Add0~12_combout\ = (\pCounter2|counter\(6) & (\pCounter2|Add0~11\ $ (GND))) # (!\pCounter2|counter\(6) & (!\pCounter2|Add0~11\ & VCC))
-- \pCounter2|Add0~13\ = CARRY((\pCounter2|counter\(6) & !\pCounter2|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pCounter2|counter\(6),
	datad => VCC,
	cin => \pCounter2|Add0~11\,
	combout => \pCounter2|Add0~12_combout\,
	cout => \pCounter2|Add0~13\);

\pCounter2|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pCounter1|TC~q\,
	d => \pCounter2|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pCounter2|counter\(6));

\pCounter2|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \pCounter2|Add0~14_combout\ = (\pCounter2|counter\(7) & (!\pCounter2|Add0~13\)) # (!\pCounter2|counter\(7) & ((\pCounter2|Add0~13\) # (GND)))
-- \pCounter2|Add0~15\ = CARRY((!\pCounter2|Add0~13\) # (!\pCounter2|counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pCounter2|counter\(7),
	datad => VCC,
	cin => \pCounter2|Add0~13\,
	combout => \pCounter2|Add0~14_combout\,
	cout => \pCounter2|Add0~15\);

\pCounter2|counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pCounter1|TC~q\,
	d => \pCounter2|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pCounter2|counter\(7));

\pCounter2|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \pCounter2|Equal0~1_combout\ = (!\pCounter2|counter\(4) & (!\pCounter2|counter\(5) & (!\pCounter2|counter\(6) & !\pCounter2|counter\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pCounter2|counter\(4),
	datab => \pCounter2|counter\(5),
	datac => \pCounter2|counter\(6),
	datad => \pCounter2|counter\(7),
	combout => \pCounter2|Equal0~1_combout\);

\pCounter2|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \pCounter2|Add0~16_combout\ = (\pCounter2|counter\(8) & (\pCounter2|Add0~15\ $ (GND))) # (!\pCounter2|counter\(8) & (!\pCounter2|Add0~15\ & VCC))
-- \pCounter2|Add0~17\ = CARRY((\pCounter2|counter\(8) & !\pCounter2|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pCounter2|counter\(8),
	datad => VCC,
	cin => \pCounter2|Add0~15\,
	combout => \pCounter2|Add0~16_combout\,
	cout => \pCounter2|Add0~17\);

\pCounter2|counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pCounter1|TC~q\,
	d => \pCounter2|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pCounter2|counter\(8));

\pCounter2|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \pCounter2|Add0~18_combout\ = (\pCounter2|counter\(9) & (!\pCounter2|Add0~17\)) # (!\pCounter2|counter\(9) & ((\pCounter2|Add0~17\) # (GND)))
-- \pCounter2|Add0~19\ = CARRY((!\pCounter2|Add0~17\) # (!\pCounter2|counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pCounter2|counter\(9),
	datad => VCC,
	cin => \pCounter2|Add0~17\,
	combout => \pCounter2|Add0~18_combout\,
	cout => \pCounter2|Add0~19\);

\pCounter2|counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pCounter1|TC~q\,
	d => \pCounter2|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pCounter2|counter\(9));

\pCounter2|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \pCounter2|Add0~20_combout\ = (\pCounter2|counter\(10) & (\pCounter2|Add0~19\ $ (GND))) # (!\pCounter2|counter\(10) & (!\pCounter2|Add0~19\ & VCC))
-- \pCounter2|Add0~21\ = CARRY((\pCounter2|counter\(10) & !\pCounter2|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pCounter2|counter\(10),
	datad => VCC,
	cin => \pCounter2|Add0~19\,
	combout => \pCounter2|Add0~20_combout\,
	cout => \pCounter2|Add0~21\);

\pCounter2|counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pCounter1|TC~q\,
	d => \pCounter2|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pCounter2|counter\(10));

\pCounter2|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \pCounter2|Add0~22_combout\ = (\pCounter2|counter\(11) & (!\pCounter2|Add0~21\)) # (!\pCounter2|counter\(11) & ((\pCounter2|Add0~21\) # (GND)))
-- \pCounter2|Add0~23\ = CARRY((!\pCounter2|Add0~21\) # (!\pCounter2|counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pCounter2|counter\(11),
	datad => VCC,
	cin => \pCounter2|Add0~21\,
	combout => \pCounter2|Add0~22_combout\,
	cout => \pCounter2|Add0~23\);

\pCounter2|counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pCounter1|TC~q\,
	d => \pCounter2|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pCounter2|counter\(11));

\pCounter2|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \pCounter2|Equal0~2_combout\ = (!\pCounter2|counter\(8) & (!\pCounter2|counter\(9) & (!\pCounter2|counter\(10) & !\pCounter2|counter\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pCounter2|counter\(8),
	datab => \pCounter2|counter\(9),
	datac => \pCounter2|counter\(10),
	datad => \pCounter2|counter\(11),
	combout => \pCounter2|Equal0~2_combout\);

\pCounter2|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \pCounter2|Add0~24_combout\ = (\pCounter2|counter\(12) & (\pCounter2|Add0~23\ $ (GND))) # (!\pCounter2|counter\(12) & (!\pCounter2|Add0~23\ & VCC))
-- \pCounter2|Add0~25\ = CARRY((\pCounter2|counter\(12) & !\pCounter2|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pCounter2|counter\(12),
	datad => VCC,
	cin => \pCounter2|Add0~23\,
	combout => \pCounter2|Add0~24_combout\,
	cout => \pCounter2|Add0~25\);

\pCounter2|counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pCounter1|TC~q\,
	d => \pCounter2|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pCounter2|counter\(12));

\pCounter2|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \pCounter2|Add0~26_combout\ = (\pCounter2|counter\(13) & (!\pCounter2|Add0~25\)) # (!\pCounter2|counter\(13) & ((\pCounter2|Add0~25\) # (GND)))
-- \pCounter2|Add0~27\ = CARRY((!\pCounter2|Add0~25\) # (!\pCounter2|counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pCounter2|counter\(13),
	datad => VCC,
	cin => \pCounter2|Add0~25\,
	combout => \pCounter2|Add0~26_combout\,
	cout => \pCounter2|Add0~27\);

\pCounter2|counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pCounter1|TC~q\,
	d => \pCounter2|Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pCounter2|counter\(13));

\pCounter2|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \pCounter2|Add0~28_combout\ = (\pCounter2|counter\(14) & (\pCounter2|Add0~27\ $ (GND))) # (!\pCounter2|counter\(14) & (!\pCounter2|Add0~27\ & VCC))
-- \pCounter2|Add0~29\ = CARRY((\pCounter2|counter\(14) & !\pCounter2|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pCounter2|counter\(14),
	datad => VCC,
	cin => \pCounter2|Add0~27\,
	combout => \pCounter2|Add0~28_combout\,
	cout => \pCounter2|Add0~29\);

\pCounter2|counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pCounter1|TC~q\,
	d => \pCounter2|Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pCounter2|counter\(14));

\pCounter2|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \pCounter2|Add0~30_combout\ = (\pCounter2|counter\(15) & (!\pCounter2|Add0~29\)) # (!\pCounter2|counter\(15) & ((\pCounter2|Add0~29\) # (GND)))
-- \pCounter2|Add0~31\ = CARRY((!\pCounter2|Add0~29\) # (!\pCounter2|counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pCounter2|counter\(15),
	datad => VCC,
	cin => \pCounter2|Add0~29\,
	combout => \pCounter2|Add0~30_combout\,
	cout => \pCounter2|Add0~31\);

\pCounter2|counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pCounter1|TC~q\,
	d => \pCounter2|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pCounter2|counter\(15));

\pCounter2|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \pCounter2|Equal0~3_combout\ = (!\pCounter2|counter\(12) & (!\pCounter2|counter\(13) & (!\pCounter2|counter\(14) & !\pCounter2|counter\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pCounter2|counter\(12),
	datab => \pCounter2|counter\(13),
	datac => \pCounter2|counter\(14),
	datad => \pCounter2|counter\(15),
	combout => \pCounter2|Equal0~3_combout\);

\pCounter2|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \pCounter2|Equal0~4_combout\ = (\pCounter2|Equal0~0_combout\ & (\pCounter2|Equal0~1_combout\ & (\pCounter2|Equal0~2_combout\ & \pCounter2|Equal0~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pCounter2|Equal0~0_combout\,
	datab => \pCounter2|Equal0~1_combout\,
	datac => \pCounter2|Equal0~2_combout\,
	datad => \pCounter2|Equal0~3_combout\,
	combout => \pCounter2|Equal0~4_combout\);

\pCounter2|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \pCounter2|Add0~32_combout\ = (\pCounter2|counter\(16) & (\pCounter2|Add0~31\ $ (GND))) # (!\pCounter2|counter\(16) & (!\pCounter2|Add0~31\ & VCC))
-- \pCounter2|Add0~33\ = CARRY((\pCounter2|counter\(16) & !\pCounter2|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pCounter2|counter\(16),
	datad => VCC,
	cin => \pCounter2|Add0~31\,
	combout => \pCounter2|Add0~32_combout\,
	cout => \pCounter2|Add0~33\);

\pCounter2|counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pCounter1|TC~q\,
	d => \pCounter2|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pCounter2|counter\(16));

\pCounter2|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \pCounter2|Add0~34_combout\ = (\pCounter2|counter\(17) & (!\pCounter2|Add0~33\)) # (!\pCounter2|counter\(17) & ((\pCounter2|Add0~33\) # (GND)))
-- \pCounter2|Add0~35\ = CARRY((!\pCounter2|Add0~33\) # (!\pCounter2|counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pCounter2|counter\(17),
	datad => VCC,
	cin => \pCounter2|Add0~33\,
	combout => \pCounter2|Add0~34_combout\,
	cout => \pCounter2|Add0~35\);

\pCounter2|counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pCounter1|TC~q\,
	d => \pCounter2|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pCounter2|counter\(17));

\pCounter2|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \pCounter2|Add0~36_combout\ = (\pCounter2|counter\(18) & (\pCounter2|Add0~35\ $ (GND))) # (!\pCounter2|counter\(18) & (!\pCounter2|Add0~35\ & VCC))
-- \pCounter2|Add0~37\ = CARRY((\pCounter2|counter\(18) & !\pCounter2|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pCounter2|counter\(18),
	datad => VCC,
	cin => \pCounter2|Add0~35\,
	combout => \pCounter2|Add0~36_combout\,
	cout => \pCounter2|Add0~37\);

\pCounter2|counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pCounter1|TC~q\,
	d => \pCounter2|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pCounter2|counter\(18));

\pCounter2|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \pCounter2|Add0~38_combout\ = (\pCounter2|counter\(19) & (!\pCounter2|Add0~37\)) # (!\pCounter2|counter\(19) & ((\pCounter2|Add0~37\) # (GND)))
-- \pCounter2|Add0~39\ = CARRY((!\pCounter2|Add0~37\) # (!\pCounter2|counter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pCounter2|counter\(19),
	datad => VCC,
	cin => \pCounter2|Add0~37\,
	combout => \pCounter2|Add0~38_combout\,
	cout => \pCounter2|Add0~39\);

\pCounter2|counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pCounter1|TC~q\,
	d => \pCounter2|Add0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pCounter2|counter\(19));

\pCounter2|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \pCounter2|Equal0~5_combout\ = (!\pCounter2|counter\(16) & (!\pCounter2|counter\(17) & (!\pCounter2|counter\(18) & !\pCounter2|counter\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pCounter2|counter\(16),
	datab => \pCounter2|counter\(17),
	datac => \pCounter2|counter\(18),
	datad => \pCounter2|counter\(19),
	combout => \pCounter2|Equal0~5_combout\);

\pCounter2|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \pCounter2|Add0~40_combout\ = (\pCounter2|counter\(20) & (\pCounter2|Add0~39\ $ (GND))) # (!\pCounter2|counter\(20) & (!\pCounter2|Add0~39\ & VCC))
-- \pCounter2|Add0~41\ = CARRY((\pCounter2|counter\(20) & !\pCounter2|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pCounter2|counter\(20),
	datad => VCC,
	cin => \pCounter2|Add0~39\,
	combout => \pCounter2|Add0~40_combout\,
	cout => \pCounter2|Add0~41\);

\pCounter2|counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pCounter1|TC~q\,
	d => \pCounter2|Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pCounter2|counter\(20));

\pCounter2|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \pCounter2|Add0~42_combout\ = (\pCounter2|counter\(21) & (!\pCounter2|Add0~41\)) # (!\pCounter2|counter\(21) & ((\pCounter2|Add0~41\) # (GND)))
-- \pCounter2|Add0~43\ = CARRY((!\pCounter2|Add0~41\) # (!\pCounter2|counter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pCounter2|counter\(21),
	datad => VCC,
	cin => \pCounter2|Add0~41\,
	combout => \pCounter2|Add0~42_combout\,
	cout => \pCounter2|Add0~43\);

\pCounter2|counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pCounter1|TC~q\,
	d => \pCounter2|Add0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pCounter2|counter\(21));

\pCounter2|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \pCounter2|Add0~44_combout\ = (\pCounter2|counter\(22) & (\pCounter2|Add0~43\ $ (GND))) # (!\pCounter2|counter\(22) & (!\pCounter2|Add0~43\ & VCC))
-- \pCounter2|Add0~45\ = CARRY((\pCounter2|counter\(22) & !\pCounter2|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pCounter2|counter\(22),
	datad => VCC,
	cin => \pCounter2|Add0~43\,
	combout => \pCounter2|Add0~44_combout\,
	cout => \pCounter2|Add0~45\);

\pCounter2|counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pCounter1|TC~q\,
	d => \pCounter2|Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pCounter2|counter\(22));

\pCounter2|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \pCounter2|Add0~46_combout\ = (\pCounter2|counter\(23) & (!\pCounter2|Add0~45\)) # (!\pCounter2|counter\(23) & ((\pCounter2|Add0~45\) # (GND)))
-- \pCounter2|Add0~47\ = CARRY((!\pCounter2|Add0~45\) # (!\pCounter2|counter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pCounter2|counter\(23),
	datad => VCC,
	cin => \pCounter2|Add0~45\,
	combout => \pCounter2|Add0~46_combout\,
	cout => \pCounter2|Add0~47\);

\pCounter2|counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pCounter1|TC~q\,
	d => \pCounter2|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pCounter2|counter\(23));

\pCounter2|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \pCounter2|Equal0~6_combout\ = (!\pCounter2|counter\(20) & (!\pCounter2|counter\(21) & (!\pCounter2|counter\(22) & !\pCounter2|counter\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pCounter2|counter\(20),
	datab => \pCounter2|counter\(21),
	datac => \pCounter2|counter\(22),
	datad => \pCounter2|counter\(23),
	combout => \pCounter2|Equal0~6_combout\);

\pCounter2|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \pCounter2|Add0~48_combout\ = (\pCounter2|counter\(24) & (\pCounter2|Add0~47\ $ (GND))) # (!\pCounter2|counter\(24) & (!\pCounter2|Add0~47\ & VCC))
-- \pCounter2|Add0~49\ = CARRY((\pCounter2|counter\(24) & !\pCounter2|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pCounter2|counter\(24),
	datad => VCC,
	cin => \pCounter2|Add0~47\,
	combout => \pCounter2|Add0~48_combout\,
	cout => \pCounter2|Add0~49\);

\pCounter2|counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pCounter1|TC~q\,
	d => \pCounter2|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pCounter2|counter\(24));

\pCounter2|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \pCounter2|Add0~50_combout\ = (\pCounter2|counter\(25) & (!\pCounter2|Add0~49\)) # (!\pCounter2|counter\(25) & ((\pCounter2|Add0~49\) # (GND)))
-- \pCounter2|Add0~51\ = CARRY((!\pCounter2|Add0~49\) # (!\pCounter2|counter\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pCounter2|counter\(25),
	datad => VCC,
	cin => \pCounter2|Add0~49\,
	combout => \pCounter2|Add0~50_combout\,
	cout => \pCounter2|Add0~51\);

\pCounter2|counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pCounter1|TC~q\,
	d => \pCounter2|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pCounter2|counter\(25));

\pCounter2|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \pCounter2|Add0~52_combout\ = (\pCounter2|counter\(26) & (\pCounter2|Add0~51\ $ (GND))) # (!\pCounter2|counter\(26) & (!\pCounter2|Add0~51\ & VCC))
-- \pCounter2|Add0~53\ = CARRY((\pCounter2|counter\(26) & !\pCounter2|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pCounter2|counter\(26),
	datad => VCC,
	cin => \pCounter2|Add0~51\,
	combout => \pCounter2|Add0~52_combout\,
	cout => \pCounter2|Add0~53\);

\pCounter2|counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pCounter1|TC~q\,
	d => \pCounter2|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pCounter2|counter\(26));

\pCounter2|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \pCounter2|Add0~54_combout\ = (\pCounter2|counter\(27) & (!\pCounter2|Add0~53\)) # (!\pCounter2|counter\(27) & ((\pCounter2|Add0~53\) # (GND)))
-- \pCounter2|Add0~55\ = CARRY((!\pCounter2|Add0~53\) # (!\pCounter2|counter\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pCounter2|counter\(27),
	datad => VCC,
	cin => \pCounter2|Add0~53\,
	combout => \pCounter2|Add0~54_combout\,
	cout => \pCounter2|Add0~55\);

\pCounter2|counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pCounter1|TC~q\,
	d => \pCounter2|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pCounter2|counter\(27));

\pCounter2|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \pCounter2|Equal0~7_combout\ = (!\pCounter2|counter\(24) & (!\pCounter2|counter\(25) & (!\pCounter2|counter\(26) & !\pCounter2|counter\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pCounter2|counter\(24),
	datab => \pCounter2|counter\(25),
	datac => \pCounter2|counter\(26),
	datad => \pCounter2|counter\(27),
	combout => \pCounter2|Equal0~7_combout\);

\pCounter2|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \pCounter2|Add0~56_combout\ = (\pCounter2|counter\(28) & (\pCounter2|Add0~55\ $ (GND))) # (!\pCounter2|counter\(28) & (!\pCounter2|Add0~55\ & VCC))
-- \pCounter2|Add0~57\ = CARRY((\pCounter2|counter\(28) & !\pCounter2|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pCounter2|counter\(28),
	datad => VCC,
	cin => \pCounter2|Add0~55\,
	combout => \pCounter2|Add0~56_combout\,
	cout => \pCounter2|Add0~57\);

\pCounter2|counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pCounter1|TC~q\,
	d => \pCounter2|Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pCounter2|counter\(28));

\pCounter2|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \pCounter2|Add0~58_combout\ = (\pCounter2|counter\(29) & (!\pCounter2|Add0~57\)) # (!\pCounter2|counter\(29) & ((\pCounter2|Add0~57\) # (GND)))
-- \pCounter2|Add0~59\ = CARRY((!\pCounter2|Add0~57\) # (!\pCounter2|counter\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pCounter2|counter\(29),
	datad => VCC,
	cin => \pCounter2|Add0~57\,
	combout => \pCounter2|Add0~58_combout\,
	cout => \pCounter2|Add0~59\);

\pCounter2|counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pCounter1|TC~q\,
	d => \pCounter2|Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pCounter2|counter\(29));

\pCounter2|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \pCounter2|Add0~60_combout\ = (\pCounter2|counter\(30) & (\pCounter2|Add0~59\ $ (GND))) # (!\pCounter2|counter\(30) & (!\pCounter2|Add0~59\ & VCC))
-- \pCounter2|Add0~61\ = CARRY((\pCounter2|counter\(30) & !\pCounter2|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pCounter2|counter\(30),
	datad => VCC,
	cin => \pCounter2|Add0~59\,
	combout => \pCounter2|Add0~60_combout\,
	cout => \pCounter2|Add0~61\);

\pCounter2|counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pCounter1|TC~q\,
	d => \pCounter2|Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pCounter2|counter\(30));

\pCounter2|Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \pCounter2|Add0~62_combout\ = \pCounter2|counter\(31) $ (\pCounter2|Add0~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pCounter2|counter\(31),
	cin => \pCounter2|Add0~61\,
	combout => \pCounter2|Add0~62_combout\);

\pCounter2|counter[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pCounter1|TC~q\,
	d => \pCounter2|Add0~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pCounter2|counter\(31));

\pCounter2|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \pCounter2|Equal0~8_combout\ = (!\pCounter2|counter\(28) & (!\pCounter2|counter\(29) & (!\pCounter2|counter\(30) & !\pCounter2|counter\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pCounter2|counter\(28),
	datab => \pCounter2|counter\(29),
	datac => \pCounter2|counter\(30),
	datad => \pCounter2|counter\(31),
	combout => \pCounter2|Equal0~8_combout\);

\pCounter2|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \pCounter2|Equal0~9_combout\ = (\pCounter2|Equal0~7_combout\ & \pCounter2|Equal0~8_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pCounter2|Equal0~7_combout\,
	datab => \pCounter2|Equal0~8_combout\,
	combout => \pCounter2|Equal0~9_combout\);

\pCounter2|Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \pCounter2|Equal0~10_combout\ = (\pCounter2|Equal0~4_combout\ & (\pCounter2|Equal0~5_combout\ & (\pCounter2|Equal0~6_combout\ & \pCounter2|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pCounter2|Equal0~4_combout\,
	datab => \pCounter2|Equal0~5_combout\,
	datac => \pCounter2|Equal0~6_combout\,
	datad => \pCounter2|Equal0~9_combout\,
	combout => \pCounter2|Equal0~10_combout\);

\pCounter2|TC\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pCounter1|TC~q\,
	d => \pCounter2|Equal0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pCounter2|TC~q\);

\pCounter3|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pCounter3|Add0~0_combout\ = \pCounter3|counter\(0) $ (VCC)
-- \pCounter3|Add0~1\ = CARRY(\pCounter3|counter\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pCounter3|counter\(0),
	datad => VCC,
	combout => \pCounter3|Add0~0_combout\,
	cout => \pCounter3|Add0~1\);

\pCounter3|counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pCounter2|TC~q\,
	d => \pCounter3|Add0~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pCounter3|counter\(0));

\pCounter3|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \pCounter3|Add0~2_combout\ = (\pCounter3|counter\(1) & (!\pCounter3|Add0~1\)) # (!\pCounter3|counter\(1) & ((\pCounter3|Add0~1\) # (GND)))
-- \pCounter3|Add0~3\ = CARRY((!\pCounter3|Add0~1\) # (!\pCounter3|counter\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pCounter3|counter\(1),
	datad => VCC,
	cin => \pCounter3|Add0~1\,
	combout => \pCounter3|Add0~2_combout\,
	cout => \pCounter3|Add0~3\);

\pCounter3|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \pCounter3|Add0~4_combout\ = (\pCounter3|counter\(2) & (\pCounter3|Add0~3\ $ (GND))) # (!\pCounter3|counter\(2) & (!\pCounter3|Add0~3\ & VCC))
-- \pCounter3|Add0~5\ = CARRY((\pCounter3|counter\(2) & !\pCounter3|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pCounter3|counter\(2),
	datad => VCC,
	cin => \pCounter3|Add0~3\,
	combout => \pCounter3|Add0~4_combout\,
	cout => \pCounter3|Add0~5\);

\pCounter3|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \pCounter3|Add0~6_combout\ = (\pCounter3|counter\(3) & (!\pCounter3|Add0~5\)) # (!\pCounter3|counter\(3) & ((\pCounter3|Add0~5\) # (GND)))
-- \pCounter3|Add0~7\ = CARRY((!\pCounter3|Add0~5\) # (!\pCounter3|counter\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pCounter3|counter\(3),
	datad => VCC,
	cin => \pCounter3|Add0~5\,
	combout => \pCounter3|Add0~6_combout\,
	cout => \pCounter3|Add0~7\);

\pCounter3|counter~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pCounter3|counter~0_combout\ = (\pCounter3|Add0~6_combout\ & !\pCounter3|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pCounter3|Add0~6_combout\,
	datad => \pCounter3|Equal0~10_combout\,
	combout => \pCounter3|counter~0_combout\);

\pCounter3|counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pCounter2|TC~q\,
	d => \pCounter3|counter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pCounter3|counter\(3));

\pCounter3|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \pCounter3|Equal0~0_combout\ = (\pCounter3|counter\(0) & (\pCounter3|counter\(3) & (!\pCounter3|counter\(2) & !\pCounter3|counter\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pCounter3|counter\(0),
	datab => \pCounter3|counter\(3),
	datac => \pCounter3|counter\(2),
	datad => \pCounter3|counter\(1),
	combout => \pCounter3|Equal0~0_combout\);

\pCounter3|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \pCounter3|Add0~8_combout\ = (\pCounter3|counter\(4) & (\pCounter3|Add0~7\ $ (GND))) # (!\pCounter3|counter\(4) & (!\pCounter3|Add0~7\ & VCC))
-- \pCounter3|Add0~9\ = CARRY((\pCounter3|counter\(4) & !\pCounter3|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pCounter3|counter\(4),
	datad => VCC,
	cin => \pCounter3|Add0~7\,
	combout => \pCounter3|Add0~8_combout\,
	cout => \pCounter3|Add0~9\);

\pCounter3|counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pCounter2|TC~q\,
	d => \pCounter3|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pCounter3|counter\(4));

\pCounter3|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \pCounter3|Add0~10_combout\ = (\pCounter3|counter\(5) & (!\pCounter3|Add0~9\)) # (!\pCounter3|counter\(5) & ((\pCounter3|Add0~9\) # (GND)))
-- \pCounter3|Add0~11\ = CARRY((!\pCounter3|Add0~9\) # (!\pCounter3|counter\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pCounter3|counter\(5),
	datad => VCC,
	cin => \pCounter3|Add0~9\,
	combout => \pCounter3|Add0~10_combout\,
	cout => \pCounter3|Add0~11\);

\pCounter3|counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pCounter2|TC~q\,
	d => \pCounter3|Add0~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pCounter3|counter\(5));

\pCounter3|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \pCounter3|Add0~12_combout\ = (\pCounter3|counter\(6) & (\pCounter3|Add0~11\ $ (GND))) # (!\pCounter3|counter\(6) & (!\pCounter3|Add0~11\ & VCC))
-- \pCounter3|Add0~13\ = CARRY((\pCounter3|counter\(6) & !\pCounter3|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pCounter3|counter\(6),
	datad => VCC,
	cin => \pCounter3|Add0~11\,
	combout => \pCounter3|Add0~12_combout\,
	cout => \pCounter3|Add0~13\);

\pCounter3|counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pCounter2|TC~q\,
	d => \pCounter3|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pCounter3|counter\(6));

\pCounter3|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \pCounter3|Add0~14_combout\ = (\pCounter3|counter\(7) & (!\pCounter3|Add0~13\)) # (!\pCounter3|counter\(7) & ((\pCounter3|Add0~13\) # (GND)))
-- \pCounter3|Add0~15\ = CARRY((!\pCounter3|Add0~13\) # (!\pCounter3|counter\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pCounter3|counter\(7),
	datad => VCC,
	cin => \pCounter3|Add0~13\,
	combout => \pCounter3|Add0~14_combout\,
	cout => \pCounter3|Add0~15\);

\pCounter3|counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pCounter2|TC~q\,
	d => \pCounter3|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pCounter3|counter\(7));

\pCounter3|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \pCounter3|Equal0~1_combout\ = (!\pCounter3|counter\(4) & (!\pCounter3|counter\(5) & (!\pCounter3|counter\(6) & !\pCounter3|counter\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pCounter3|counter\(4),
	datab => \pCounter3|counter\(5),
	datac => \pCounter3|counter\(6),
	datad => \pCounter3|counter\(7),
	combout => \pCounter3|Equal0~1_combout\);

\pCounter3|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \pCounter3|Equal0~2_combout\ = (\pCounter3|Equal0~0_combout\ & \pCounter3|Equal0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pCounter3|Equal0~0_combout\,
	datab => \pCounter3|Equal0~1_combout\,
	combout => \pCounter3|Equal0~2_combout\);

\pCounter3|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \pCounter3|Add0~16_combout\ = (\pCounter3|counter\(8) & (\pCounter3|Add0~15\ $ (GND))) # (!\pCounter3|counter\(8) & (!\pCounter3|Add0~15\ & VCC))
-- \pCounter3|Add0~17\ = CARRY((\pCounter3|counter\(8) & !\pCounter3|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pCounter3|counter\(8),
	datad => VCC,
	cin => \pCounter3|Add0~15\,
	combout => \pCounter3|Add0~16_combout\,
	cout => \pCounter3|Add0~17\);

\pCounter3|counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pCounter2|TC~q\,
	d => \pCounter3|Add0~16_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pCounter3|counter\(8));

\pCounter3|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \pCounter3|Add0~18_combout\ = (\pCounter3|counter\(9) & (!\pCounter3|Add0~17\)) # (!\pCounter3|counter\(9) & ((\pCounter3|Add0~17\) # (GND)))
-- \pCounter3|Add0~19\ = CARRY((!\pCounter3|Add0~17\) # (!\pCounter3|counter\(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pCounter3|counter\(9),
	datad => VCC,
	cin => \pCounter3|Add0~17\,
	combout => \pCounter3|Add0~18_combout\,
	cout => \pCounter3|Add0~19\);

\pCounter3|counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pCounter2|TC~q\,
	d => \pCounter3|Add0~18_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pCounter3|counter\(9));

\pCounter3|Add0~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \pCounter3|Add0~20_combout\ = (\pCounter3|counter\(10) & (\pCounter3|Add0~19\ $ (GND))) # (!\pCounter3|counter\(10) & (!\pCounter3|Add0~19\ & VCC))
-- \pCounter3|Add0~21\ = CARRY((\pCounter3|counter\(10) & !\pCounter3|Add0~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pCounter3|counter\(10),
	datad => VCC,
	cin => \pCounter3|Add0~19\,
	combout => \pCounter3|Add0~20_combout\,
	cout => \pCounter3|Add0~21\);

\pCounter3|counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pCounter2|TC~q\,
	d => \pCounter3|Add0~20_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pCounter3|counter\(10));

\pCounter3|Add0~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \pCounter3|Add0~22_combout\ = (\pCounter3|counter\(11) & (!\pCounter3|Add0~21\)) # (!\pCounter3|counter\(11) & ((\pCounter3|Add0~21\) # (GND)))
-- \pCounter3|Add0~23\ = CARRY((!\pCounter3|Add0~21\) # (!\pCounter3|counter\(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pCounter3|counter\(11),
	datad => VCC,
	cin => \pCounter3|Add0~21\,
	combout => \pCounter3|Add0~22_combout\,
	cout => \pCounter3|Add0~23\);

\pCounter3|counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pCounter2|TC~q\,
	d => \pCounter3|Add0~22_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pCounter3|counter\(11));

\pCounter3|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \pCounter3|Equal0~3_combout\ = (!\pCounter3|counter\(8) & (!\pCounter3|counter\(9) & (!\pCounter3|counter\(10) & !\pCounter3|counter\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pCounter3|counter\(8),
	datab => \pCounter3|counter\(9),
	datac => \pCounter3|counter\(10),
	datad => \pCounter3|counter\(11),
	combout => \pCounter3|Equal0~3_combout\);

\pCounter3|Add0~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \pCounter3|Add0~24_combout\ = (\pCounter3|counter\(12) & (\pCounter3|Add0~23\ $ (GND))) # (!\pCounter3|counter\(12) & (!\pCounter3|Add0~23\ & VCC))
-- \pCounter3|Add0~25\ = CARRY((\pCounter3|counter\(12) & !\pCounter3|Add0~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pCounter3|counter\(12),
	datad => VCC,
	cin => \pCounter3|Add0~23\,
	combout => \pCounter3|Add0~24_combout\,
	cout => \pCounter3|Add0~25\);

\pCounter3|counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pCounter2|TC~q\,
	d => \pCounter3|Add0~24_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pCounter3|counter\(12));

\pCounter3|Add0~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \pCounter3|Add0~26_combout\ = (\pCounter3|counter\(13) & (!\pCounter3|Add0~25\)) # (!\pCounter3|counter\(13) & ((\pCounter3|Add0~25\) # (GND)))
-- \pCounter3|Add0~27\ = CARRY((!\pCounter3|Add0~25\) # (!\pCounter3|counter\(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pCounter3|counter\(13),
	datad => VCC,
	cin => \pCounter3|Add0~25\,
	combout => \pCounter3|Add0~26_combout\,
	cout => \pCounter3|Add0~27\);

\pCounter3|counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pCounter2|TC~q\,
	d => \pCounter3|Add0~26_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pCounter3|counter\(13));

\pCounter3|Add0~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \pCounter3|Add0~28_combout\ = (\pCounter3|counter\(14) & (\pCounter3|Add0~27\ $ (GND))) # (!\pCounter3|counter\(14) & (!\pCounter3|Add0~27\ & VCC))
-- \pCounter3|Add0~29\ = CARRY((\pCounter3|counter\(14) & !\pCounter3|Add0~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pCounter3|counter\(14),
	datad => VCC,
	cin => \pCounter3|Add0~27\,
	combout => \pCounter3|Add0~28_combout\,
	cout => \pCounter3|Add0~29\);

\pCounter3|counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pCounter2|TC~q\,
	d => \pCounter3|Add0~28_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pCounter3|counter\(14));

\pCounter3|Add0~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \pCounter3|Add0~30_combout\ = (\pCounter3|counter\(15) & (!\pCounter3|Add0~29\)) # (!\pCounter3|counter\(15) & ((\pCounter3|Add0~29\) # (GND)))
-- \pCounter3|Add0~31\ = CARRY((!\pCounter3|Add0~29\) # (!\pCounter3|counter\(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pCounter3|counter\(15),
	datad => VCC,
	cin => \pCounter3|Add0~29\,
	combout => \pCounter3|Add0~30_combout\,
	cout => \pCounter3|Add0~31\);

\pCounter3|counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pCounter2|TC~q\,
	d => \pCounter3|Add0~30_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pCounter3|counter\(15));

\pCounter3|Equal0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \pCounter3|Equal0~4_combout\ = (!\pCounter3|counter\(12) & (!\pCounter3|counter\(13) & (!\pCounter3|counter\(14) & !\pCounter3|counter\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pCounter3|counter\(12),
	datab => \pCounter3|counter\(13),
	datac => \pCounter3|counter\(14),
	datad => \pCounter3|counter\(15),
	combout => \pCounter3|Equal0~4_combout\);

\pCounter3|Add0~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \pCounter3|Add0~32_combout\ = (\pCounter3|counter\(16) & (\pCounter3|Add0~31\ $ (GND))) # (!\pCounter3|counter\(16) & (!\pCounter3|Add0~31\ & VCC))
-- \pCounter3|Add0~33\ = CARRY((\pCounter3|counter\(16) & !\pCounter3|Add0~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pCounter3|counter\(16),
	datad => VCC,
	cin => \pCounter3|Add0~31\,
	combout => \pCounter3|Add0~32_combout\,
	cout => \pCounter3|Add0~33\);

\pCounter3|counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pCounter2|TC~q\,
	d => \pCounter3|Add0~32_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pCounter3|counter\(16));

\pCounter3|Add0~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \pCounter3|Add0~34_combout\ = (\pCounter3|counter\(17) & (!\pCounter3|Add0~33\)) # (!\pCounter3|counter\(17) & ((\pCounter3|Add0~33\) # (GND)))
-- \pCounter3|Add0~35\ = CARRY((!\pCounter3|Add0~33\) # (!\pCounter3|counter\(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pCounter3|counter\(17),
	datad => VCC,
	cin => \pCounter3|Add0~33\,
	combout => \pCounter3|Add0~34_combout\,
	cout => \pCounter3|Add0~35\);

\pCounter3|counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pCounter2|TC~q\,
	d => \pCounter3|Add0~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pCounter3|counter\(17));

\pCounter3|Add0~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \pCounter3|Add0~36_combout\ = (\pCounter3|counter\(18) & (\pCounter3|Add0~35\ $ (GND))) # (!\pCounter3|counter\(18) & (!\pCounter3|Add0~35\ & VCC))
-- \pCounter3|Add0~37\ = CARRY((\pCounter3|counter\(18) & !\pCounter3|Add0~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pCounter3|counter\(18),
	datad => VCC,
	cin => \pCounter3|Add0~35\,
	combout => \pCounter3|Add0~36_combout\,
	cout => \pCounter3|Add0~37\);

\pCounter3|counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pCounter2|TC~q\,
	d => \pCounter3|Add0~36_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pCounter3|counter\(18));

\pCounter3|Add0~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \pCounter3|Add0~38_combout\ = (\pCounter3|counter\(19) & (!\pCounter3|Add0~37\)) # (!\pCounter3|counter\(19) & ((\pCounter3|Add0~37\) # (GND)))
-- \pCounter3|Add0~39\ = CARRY((!\pCounter3|Add0~37\) # (!\pCounter3|counter\(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pCounter3|counter\(19),
	datad => VCC,
	cin => \pCounter3|Add0~37\,
	combout => \pCounter3|Add0~38_combout\,
	cout => \pCounter3|Add0~39\);

\pCounter3|counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pCounter2|TC~q\,
	d => \pCounter3|Add0~38_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pCounter3|counter\(19));

\pCounter3|Equal0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \pCounter3|Equal0~5_combout\ = (!\pCounter3|counter\(16) & (!\pCounter3|counter\(17) & (!\pCounter3|counter\(18) & !\pCounter3|counter\(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pCounter3|counter\(16),
	datab => \pCounter3|counter\(17),
	datac => \pCounter3|counter\(18),
	datad => \pCounter3|counter\(19),
	combout => \pCounter3|Equal0~5_combout\);

\pCounter3|Add0~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \pCounter3|Add0~40_combout\ = (\pCounter3|counter\(20) & (\pCounter3|Add0~39\ $ (GND))) # (!\pCounter3|counter\(20) & (!\pCounter3|Add0~39\ & VCC))
-- \pCounter3|Add0~41\ = CARRY((\pCounter3|counter\(20) & !\pCounter3|Add0~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pCounter3|counter\(20),
	datad => VCC,
	cin => \pCounter3|Add0~39\,
	combout => \pCounter3|Add0~40_combout\,
	cout => \pCounter3|Add0~41\);

\pCounter3|counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pCounter2|TC~q\,
	d => \pCounter3|Add0~40_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pCounter3|counter\(20));

\pCounter3|Add0~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \pCounter3|Add0~42_combout\ = (\pCounter3|counter\(21) & (!\pCounter3|Add0~41\)) # (!\pCounter3|counter\(21) & ((\pCounter3|Add0~41\) # (GND)))
-- \pCounter3|Add0~43\ = CARRY((!\pCounter3|Add0~41\) # (!\pCounter3|counter\(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pCounter3|counter\(21),
	datad => VCC,
	cin => \pCounter3|Add0~41\,
	combout => \pCounter3|Add0~42_combout\,
	cout => \pCounter3|Add0~43\);

\pCounter3|counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pCounter2|TC~q\,
	d => \pCounter3|Add0~42_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pCounter3|counter\(21));

\pCounter3|Add0~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \pCounter3|Add0~44_combout\ = (\pCounter3|counter\(22) & (\pCounter3|Add0~43\ $ (GND))) # (!\pCounter3|counter\(22) & (!\pCounter3|Add0~43\ & VCC))
-- \pCounter3|Add0~45\ = CARRY((\pCounter3|counter\(22) & !\pCounter3|Add0~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pCounter3|counter\(22),
	datad => VCC,
	cin => \pCounter3|Add0~43\,
	combout => \pCounter3|Add0~44_combout\,
	cout => \pCounter3|Add0~45\);

\pCounter3|counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pCounter2|TC~q\,
	d => \pCounter3|Add0~44_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pCounter3|counter\(22));

\pCounter3|Add0~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \pCounter3|Add0~46_combout\ = (\pCounter3|counter\(23) & (!\pCounter3|Add0~45\)) # (!\pCounter3|counter\(23) & ((\pCounter3|Add0~45\) # (GND)))
-- \pCounter3|Add0~47\ = CARRY((!\pCounter3|Add0~45\) # (!\pCounter3|counter\(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pCounter3|counter\(23),
	datad => VCC,
	cin => \pCounter3|Add0~45\,
	combout => \pCounter3|Add0~46_combout\,
	cout => \pCounter3|Add0~47\);

\pCounter3|counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pCounter2|TC~q\,
	d => \pCounter3|Add0~46_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pCounter3|counter\(23));

\pCounter3|Equal0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \pCounter3|Equal0~6_combout\ = (!\pCounter3|counter\(20) & (!\pCounter3|counter\(21) & (!\pCounter3|counter\(22) & !\pCounter3|counter\(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pCounter3|counter\(20),
	datab => \pCounter3|counter\(21),
	datac => \pCounter3|counter\(22),
	datad => \pCounter3|counter\(23),
	combout => \pCounter3|Equal0~6_combout\);

\pCounter3|Add0~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \pCounter3|Add0~48_combout\ = (\pCounter3|counter\(24) & (\pCounter3|Add0~47\ $ (GND))) # (!\pCounter3|counter\(24) & (!\pCounter3|Add0~47\ & VCC))
-- \pCounter3|Add0~49\ = CARRY((\pCounter3|counter\(24) & !\pCounter3|Add0~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pCounter3|counter\(24),
	datad => VCC,
	cin => \pCounter3|Add0~47\,
	combout => \pCounter3|Add0~48_combout\,
	cout => \pCounter3|Add0~49\);

\pCounter3|counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pCounter2|TC~q\,
	d => \pCounter3|Add0~48_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pCounter3|counter\(24));

\pCounter3|Add0~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \pCounter3|Add0~50_combout\ = (\pCounter3|counter\(25) & (!\pCounter3|Add0~49\)) # (!\pCounter3|counter\(25) & ((\pCounter3|Add0~49\) # (GND)))
-- \pCounter3|Add0~51\ = CARRY((!\pCounter3|Add0~49\) # (!\pCounter3|counter\(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pCounter3|counter\(25),
	datad => VCC,
	cin => \pCounter3|Add0~49\,
	combout => \pCounter3|Add0~50_combout\,
	cout => \pCounter3|Add0~51\);

\pCounter3|counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pCounter2|TC~q\,
	d => \pCounter3|Add0~50_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pCounter3|counter\(25));

\pCounter3|Add0~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \pCounter3|Add0~52_combout\ = (\pCounter3|counter\(26) & (\pCounter3|Add0~51\ $ (GND))) # (!\pCounter3|counter\(26) & (!\pCounter3|Add0~51\ & VCC))
-- \pCounter3|Add0~53\ = CARRY((\pCounter3|counter\(26) & !\pCounter3|Add0~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pCounter3|counter\(26),
	datad => VCC,
	cin => \pCounter3|Add0~51\,
	combout => \pCounter3|Add0~52_combout\,
	cout => \pCounter3|Add0~53\);

\pCounter3|counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pCounter2|TC~q\,
	d => \pCounter3|Add0~52_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pCounter3|counter\(26));

\pCounter3|Add0~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \pCounter3|Add0~54_combout\ = (\pCounter3|counter\(27) & (!\pCounter3|Add0~53\)) # (!\pCounter3|counter\(27) & ((\pCounter3|Add0~53\) # (GND)))
-- \pCounter3|Add0~55\ = CARRY((!\pCounter3|Add0~53\) # (!\pCounter3|counter\(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pCounter3|counter\(27),
	datad => VCC,
	cin => \pCounter3|Add0~53\,
	combout => \pCounter3|Add0~54_combout\,
	cout => \pCounter3|Add0~55\);

\pCounter3|counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pCounter2|TC~q\,
	d => \pCounter3|Add0~54_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pCounter3|counter\(27));

\pCounter3|Equal0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \pCounter3|Equal0~7_combout\ = (!\pCounter3|counter\(24) & (!\pCounter3|counter\(25) & (!\pCounter3|counter\(26) & !\pCounter3|counter\(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pCounter3|counter\(24),
	datab => \pCounter3|counter\(25),
	datac => \pCounter3|counter\(26),
	datad => \pCounter3|counter\(27),
	combout => \pCounter3|Equal0~7_combout\);

\pCounter3|Add0~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \pCounter3|Add0~56_combout\ = (\pCounter3|counter\(28) & (\pCounter3|Add0~55\ $ (GND))) # (!\pCounter3|counter\(28) & (!\pCounter3|Add0~55\ & VCC))
-- \pCounter3|Add0~57\ = CARRY((\pCounter3|counter\(28) & !\pCounter3|Add0~55\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pCounter3|counter\(28),
	datad => VCC,
	cin => \pCounter3|Add0~55\,
	combout => \pCounter3|Add0~56_combout\,
	cout => \pCounter3|Add0~57\);

\pCounter3|counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pCounter2|TC~q\,
	d => \pCounter3|Add0~56_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pCounter3|counter\(28));

\pCounter3|Add0~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \pCounter3|Add0~58_combout\ = (\pCounter3|counter\(29) & (!\pCounter3|Add0~57\)) # (!\pCounter3|counter\(29) & ((\pCounter3|Add0~57\) # (GND)))
-- \pCounter3|Add0~59\ = CARRY((!\pCounter3|Add0~57\) # (!\pCounter3|counter\(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pCounter3|counter\(29),
	datad => VCC,
	cin => \pCounter3|Add0~57\,
	combout => \pCounter3|Add0~58_combout\,
	cout => \pCounter3|Add0~59\);

\pCounter3|counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pCounter2|TC~q\,
	d => \pCounter3|Add0~58_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pCounter3|counter\(29));

\pCounter3|Add0~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \pCounter3|Add0~60_combout\ = (\pCounter3|counter\(30) & (\pCounter3|Add0~59\ $ (GND))) # (!\pCounter3|counter\(30) & (!\pCounter3|Add0~59\ & VCC))
-- \pCounter3|Add0~61\ = CARRY((\pCounter3|counter\(30) & !\pCounter3|Add0~59\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pCounter3|counter\(30),
	datad => VCC,
	cin => \pCounter3|Add0~59\,
	combout => \pCounter3|Add0~60_combout\,
	cout => \pCounter3|Add0~61\);

\pCounter3|counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pCounter2|TC~q\,
	d => \pCounter3|Add0~60_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pCounter3|counter\(30));

\pCounter3|Add0~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \pCounter3|Add0~62_combout\ = \pCounter3|counter\(31) $ (\pCounter3|Add0~61\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \pCounter3|counter\(31),
	cin => \pCounter3|Add0~61\,
	combout => \pCounter3|Add0~62_combout\);

\pCounter3|counter[31]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pCounter2|TC~q\,
	d => \pCounter3|Add0~62_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pCounter3|counter\(31));

\pCounter3|Equal0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \pCounter3|Equal0~8_combout\ = (!\pCounter3|counter\(28) & (!\pCounter3|counter\(29) & (!\pCounter3|counter\(30) & !\pCounter3|counter\(31))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pCounter3|counter\(28),
	datab => \pCounter3|counter\(29),
	datac => \pCounter3|counter\(30),
	datad => \pCounter3|counter\(31),
	combout => \pCounter3|Equal0~8_combout\);

\pCounter3|Equal0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \pCounter3|Equal0~9_combout\ = (\pCounter3|Equal0~5_combout\ & (\pCounter3|Equal0~6_combout\ & (\pCounter3|Equal0~7_combout\ & \pCounter3|Equal0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pCounter3|Equal0~5_combout\,
	datab => \pCounter3|Equal0~6_combout\,
	datac => \pCounter3|Equal0~7_combout\,
	datad => \pCounter3|Equal0~8_combout\,
	combout => \pCounter3|Equal0~9_combout\);

\pCounter3|Equal0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \pCounter3|Equal0~10_combout\ = (\pCounter3|Equal0~2_combout\ & (\pCounter3|Equal0~3_combout\ & (\pCounter3|Equal0~4_combout\ & \pCounter3|Equal0~9_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pCounter3|Equal0~2_combout\,
	datab => \pCounter3|Equal0~3_combout\,
	datac => \pCounter3|Equal0~4_combout\,
	datad => \pCounter3|Equal0~9_combout\,
	combout => \pCounter3|Equal0~10_combout\);

\pCounter3|counter~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \pCounter3|counter~1_combout\ = (\pCounter3|Add0~2_combout\ & !\pCounter3|Equal0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pCounter3|Add0~2_combout\,
	datad => \pCounter3|Equal0~10_combout\,
	combout => \pCounter3|counter~1_combout\);

\pCounter3|counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pCounter2|TC~q\,
	d => \pCounter3|counter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pCounter3|counter\(1));

\pCounter3|counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \pCounter2|TC~q\,
	d => \pCounter3|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \pCounter3|counter\(2));

\sync_gen|d_Clk|s_divCounter~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sync_gen|d_Clk|s_divCounter~1_combout\ = (\sync_gen|d_Clk|s_divCounter\(1) & (\sync_gen|d_Clk|s_divCounter\(0) & !\sync_gen|d_Clk|s_divCounter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sync_gen|d_Clk|s_divCounter\(1),
	datab => \sync_gen|d_Clk|s_divCounter\(0),
	datad => \sync_gen|d_Clk|s_divCounter\(2),
	combout => \sync_gen|d_Clk|s_divCounter~1_combout\);

\sync_gen|d_Clk|s_divCounter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \sync_gen|d_Clk|s_divCounter~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sync_gen|d_Clk|s_divCounter\(2));

\sync_gen|d_Clk|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sync_gen|d_Clk|LessThan1~1_combout\ = (!\sync_gen|d_Clk|s_divCounter\(0) & !\sync_gen|d_Clk|s_divCounter\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \sync_gen|d_Clk|s_divCounter\(0),
	datad => \sync_gen|d_Clk|s_divCounter\(2),
	combout => \sync_gen|d_Clk|LessThan1~1_combout\);

\sync_gen|d_Clk|s_divCounter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \sync_gen|d_Clk|LessThan1~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sync_gen|d_Clk|s_divCounter\(0));

\sync_gen|d_Clk|s_divCounter~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sync_gen|d_Clk|s_divCounter~0_combout\ = (!\sync_gen|d_Clk|s_divCounter\(2) & (\sync_gen|d_Clk|s_divCounter\(1) $ (\sync_gen|d_Clk|s_divCounter\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sync_gen|d_Clk|s_divCounter\(1),
	datac => \sync_gen|d_Clk|s_divCounter\(0),
	datad => \sync_gen|d_Clk|s_divCounter\(2),
	combout => \sync_gen|d_Clk|s_divCounter~0_combout\);

\sync_gen|d_Clk|s_divCounter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \sync_gen|d_Clk|s_divCounter~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sync_gen|d_Clk|s_divCounter\(1));

\sync_gen|d_Clk|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sync_gen|d_Clk|LessThan1~0_combout\ = (\sync_gen|d_Clk|s_divCounter\(1)) # ((\sync_gen|d_Clk|s_divCounter\(0)) # (\sync_gen|d_Clk|s_divCounter\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sync_gen|d_Clk|s_divCounter\(1),
	datab => \sync_gen|d_Clk|s_divCounter\(0),
	datac => \sync_gen|d_Clk|s_divCounter\(2),
	combout => \sync_gen|d_Clk|LessThan1~0_combout\);

\sync_gen|d_Clk|clkOut\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \sync_gen|d_Clk|LessThan1~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \sync_gen|d_Clk|clkOut~q\);

\reset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

\dispC|reg_fstate.UniH~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispC|reg_fstate.UniH~0_combout\ = (\dispC|fstate.DezMin~q\ & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dispC|fstate.DezMin~q\,
	datad => \reset~input_o\,
	combout => \dispC|reg_fstate.UniH~0_combout\);

\dispC|fstate.UniH\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sync_gen|d_Clk|clkOut~q\,
	d => \dispC|reg_fstate.UniH~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dispC|fstate.UniH~q\);

\dispC|reg_fstate.DezH~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispC|reg_fstate.DezH~0_combout\ = (\dispC|fstate.UniH~q\ & !\reset~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dispC|fstate.UniH~q\,
	datad => \reset~input_o\,
	combout => \dispC|reg_fstate.DezH~0_combout\);

\dispC|fstate.DezH\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sync_gen|d_Clk|clkOut~q\,
	d => \dispC|reg_fstate.DezH~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dispC|fstate.DezH~q\);

\dispC|reg_fstate.UniMin~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispC|reg_fstate.UniMin~0_combout\ = (!\reset~input_o\ & !\dispC|fstate.DezH~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \dispC|fstate.DezH~q\,
	combout => \dispC|reg_fstate.UniMin~0_combout\);

\dispC|fstate.UniMin\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sync_gen|d_Clk|clkOut~q\,
	d => \dispC|reg_fstate.UniMin~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dispC|fstate.UniMin~q\);

\dispC|reg_fstate.DezMin~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispC|reg_fstate.DezMin~0_combout\ = (!\reset~input_o\ & !\dispC|fstate.UniMin~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \dispC|fstate.UniMin~q\,
	combout => \dispC|reg_fstate.DezMin~0_combout\);

\dispC|fstate.DezMin\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \sync_gen|d_Clk|clkOut~q\,
	d => \dispC|reg_fstate.DezMin~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dispC|fstate.DezMin~q\);

\comb~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb~0_combout\ = (!\reset~input_o\ & ((\dispC|fstate.DezMin~q\) # (\dispC|fstate.DezH~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dispC|fstate.DezMin~q\,
	datab => \dispC|fstate.DezH~q\,
	datad => \reset~input_o\,
	combout => \comb~0_combout\);

\dispC|s1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dispC|s1~2_combout\ = (\dispC|fstate.UniMin~q\ & (!\reset~input_o\ & !\dispC|fstate.DezMin~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dispC|fstate.UniMin~q\,
	datac => \reset~input_o\,
	datad => \dispC|fstate.DezMin~q\,
	combout => \dispC|s1~2_combout\);

\mux|Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux|Mux1~0_combout\ = (\comb~0_combout\ & (((!\dispC|s1~2_combout\)))) # (!\comb~0_combout\ & ((\dispC|s1~2_combout\ & ((\pCounter2|counter\(2)))) # (!\dispC|s1~2_combout\ & (\pCounter0|counter\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb~0_combout\,
	datab => \pCounter0|counter\(2),
	datac => \dispC|s1~2_combout\,
	datad => \pCounter2|counter\(2),
	combout => \mux|Mux1~0_combout\);

\mux|Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux|Mux1~1_combout\ = (\comb~0_combout\ & ((\mux|Mux1~0_combout\ & ((\pCounter1|counter\(2)))) # (!\mux|Mux1~0_combout\ & (\pCounter3|counter\(2))))) # (!\comb~0_combout\ & (((\mux|Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pCounter3|counter\(2),
	datab => \comb~0_combout\,
	datac => \mux|Mux1~0_combout\,
	datad => \pCounter1|counter\(2),
	combout => \mux|Mux1~1_combout\);

\mux|Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux|Mux0~0_combout\ = (\dispC|s1~2_combout\ & ((\comb~0_combout\ & (!\pCounter3|counter\(3))) # (!\comb~0_combout\ & ((!\pCounter2|counter\(3)))))) # (!\dispC|s1~2_combout\ & (((\comb~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dispC|s1~2_combout\,
	datab => \pCounter3|counter\(3),
	datac => \comb~0_combout\,
	datad => \pCounter2|counter\(3),
	combout => \mux|Mux0~0_combout\);

\mux|Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux|Mux0~1_combout\ = (\dispC|s1~2_combout\ & (((\mux|Mux0~0_combout\)))) # (!\dispC|s1~2_combout\ & ((\mux|Mux0~0_combout\ & ((!\pCounter1|counter\(3)))) # (!\mux|Mux0~0_combout\ & (!\pCounter0|counter\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pCounter0|counter\(3),
	datab => \dispC|s1~2_combout\,
	datac => \mux|Mux0~0_combout\,
	datad => \pCounter1|counter\(3),
	combout => \mux|Mux0~1_combout\);

\mux|Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux|Mux3~0_combout\ = (\dispC|s1~2_combout\ & ((\comb~0_combout\ & (!\pCounter3|counter\(0))) # (!\comb~0_combout\ & ((!\pCounter2|counter\(0)))))) # (!\dispC|s1~2_combout\ & (((\comb~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0111000001111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dispC|s1~2_combout\,
	datab => \pCounter3|counter\(0),
	datac => \comb~0_combout\,
	datad => \pCounter2|counter\(0),
	combout => \mux|Mux3~0_combout\);

\mux|Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux|Mux3~1_combout\ = (\dispC|s1~2_combout\ & (((\mux|Mux3~0_combout\)))) # (!\dispC|s1~2_combout\ & ((\mux|Mux3~0_combout\ & ((!\pCounter1|counter\(0)))) # (!\mux|Mux3~0_combout\ & (!\pCounter0|counter\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pCounter0|counter\(0),
	datab => \dispC|s1~2_combout\,
	datac => \mux|Mux3~0_combout\,
	datad => \pCounter1|counter\(0),
	combout => \mux|Mux3~1_combout\);

\mux|Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux|Mux2~0_combout\ = (\comb~0_combout\ & (\dispC|s1~2_combout\)) # (!\comb~0_combout\ & ((\dispC|s1~2_combout\ & (\pCounter2|counter\(1))) # (!\dispC|s1~2_combout\ & ((\pCounter0|counter\(1))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \comb~0_combout\,
	datab => \dispC|s1~2_combout\,
	datac => \pCounter2|counter\(1),
	datad => \pCounter0|counter\(1),
	combout => \mux|Mux2~0_combout\);

\mux|Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \mux|Mux2~1_combout\ = (\comb~0_combout\ & ((\mux|Mux2~0_combout\ & (\pCounter3|counter\(1))) # (!\mux|Mux2~0_combout\ & ((\pCounter1|counter\(1)))))) # (!\comb~0_combout\ & (((\mux|Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pCounter3|counter\(1),
	datab => \pCounter1|counter\(1),
	datac => \comb~0_combout\,
	datad => \mux|Mux2~0_combout\,
	combout => \mux|Mux2~1_combout\);

\decoder|decOut_n[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decOut_n[0]~0_combout\ = (\mux|Mux1~1_combout\ & (!\mux|Mux2~1_combout\ & (\mux|Mux0~1_combout\ $ (!\mux|Mux3~1_combout\)))) # (!\mux|Mux1~1_combout\ & (!\mux|Mux3~1_combout\ & (\mux|Mux0~1_combout\ $ (\mux|Mux2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000110000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux|Mux1~1_combout\,
	datab => \mux|Mux0~1_combout\,
	datac => \mux|Mux3~1_combout\,
	datad => \mux|Mux2~1_combout\,
	combout => \decoder|decOut_n[0]~0_combout\);

\comb~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb~1_combout\ = (\reset~input_o\) # ((!\dispC|fstate.DezMin~q\ & (!\dispC|fstate.DezH~q\ & !\dispC|fstate.UniMin~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dispC|fstate.DezMin~q\,
	datab => \dispC|fstate.DezH~q\,
	datac => \dispC|fstate.UniMin~q\,
	datad => \reset~input_o\,
	combout => \comb~1_combout\);

\reg0|dataOut[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \decoder|decOut_n[0]~0_combout\,
	ena => \comb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg0|dataOut\(0));

\decoder|decOut_n[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decOut_n[1]~1_combout\ = (\mux|Mux2~1_combout\ & ((\mux|Mux3~1_combout\ & (\mux|Mux1~1_combout\)) # (!\mux|Mux3~1_combout\ & ((!\mux|Mux0~1_combout\))))) # (!\mux|Mux2~1_combout\ & (\mux|Mux1~1_combout\ & (\mux|Mux3~1_combout\ $ 
-- (\mux|Mux0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux|Mux1~1_combout\,
	datab => \mux|Mux2~1_combout\,
	datac => \mux|Mux3~1_combout\,
	datad => \mux|Mux0~1_combout\,
	combout => \decoder|decOut_n[1]~1_combout\);

\reg0|dataOut[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \decoder|decOut_n[1]~1_combout\,
	ena => \comb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg0|dataOut\(1));

\decoder|decOut_n[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decOut_n[2]~2_combout\ = (\mux|Mux1~1_combout\ & (!\mux|Mux0~1_combout\ & ((\mux|Mux3~1_combout\) # (\mux|Mux2~1_combout\)))) # (!\mux|Mux1~1_combout\ & (\mux|Mux3~1_combout\ & (\mux|Mux2~1_combout\ & \mux|Mux0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux|Mux3~1_combout\,
	datab => \mux|Mux2~1_combout\,
	datac => \mux|Mux1~1_combout\,
	datad => \mux|Mux0~1_combout\,
	combout => \decoder|decOut_n[2]~2_combout\);

\reg0|dataOut[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \decoder|decOut_n[2]~2_combout\,
	ena => \comb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg0|dataOut\(2));

\decoder|decOut_n[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decOut_n[3]~3_combout\ = (\mux|Mux2~1_combout\ & ((\mux|Mux1~1_combout\ & ((!\mux|Mux3~1_combout\))) # (!\mux|Mux1~1_combout\ & (!\mux|Mux0~1_combout\ & \mux|Mux3~1_combout\)))) # (!\mux|Mux2~1_combout\ & (\mux|Mux0~1_combout\ & 
-- (\mux|Mux1~1_combout\ $ (!\mux|Mux3~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux|Mux1~1_combout\,
	datab => \mux|Mux0~1_combout\,
	datac => \mux|Mux2~1_combout\,
	datad => \mux|Mux3~1_combout\,
	combout => \decoder|decOut_n[3]~3_combout\);

\reg0|dataOut[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \decoder|decOut_n[3]~3_combout\,
	ena => \comb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg0|dataOut\(3));

\decoder|decOut_n[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decOut_n[4]~4_combout\ = (\mux|Mux2~1_combout\ & (\mux|Mux0~1_combout\ & ((!\mux|Mux3~1_combout\)))) # (!\mux|Mux2~1_combout\ & ((\mux|Mux1~1_combout\ & (\mux|Mux0~1_combout\)) # (!\mux|Mux1~1_combout\ & ((!\mux|Mux3~1_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010101011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux|Mux0~1_combout\,
	datab => \mux|Mux1~1_combout\,
	datac => \mux|Mux2~1_combout\,
	datad => \mux|Mux3~1_combout\,
	combout => \decoder|decOut_n[4]~4_combout\);

\reg0|dataOut[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \decoder|decOut_n[4]~4_combout\,
	ena => \comb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg0|dataOut\(4));

\decoder|decOut_n[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decOut_n[5]~5_combout\ = (\mux|Mux2~1_combout\ & (\mux|Mux0~1_combout\ & ((!\mux|Mux3~1_combout\) # (!\mux|Mux1~1_combout\)))) # (!\mux|Mux2~1_combout\ & (!\mux|Mux3~1_combout\ & (\mux|Mux0~1_combout\ $ (\mux|Mux1~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100010011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux|Mux0~1_combout\,
	datab => \mux|Mux2~1_combout\,
	datac => \mux|Mux1~1_combout\,
	datad => \mux|Mux3~1_combout\,
	combout => \decoder|decOut_n[5]~5_combout\);

\reg0|dataOut[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \decoder|decOut_n[5]~5_combout\,
	ena => \comb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg0|dataOut\(5));

\decoder|decOut_n[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \decoder|decOut_n[6]~6_combout\ = (\mux|Mux3~1_combout\ & (!\mux|Mux2~1_combout\ & (\mux|Mux0~1_combout\ $ (\mux|Mux1~1_combout\)))) # (!\mux|Mux3~1_combout\ & (\mux|Mux0~1_combout\ & (\mux|Mux1~1_combout\ $ (!\mux|Mux2~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000011010000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \mux|Mux0~1_combout\,
	datab => \mux|Mux1~1_combout\,
	datac => \mux|Mux2~1_combout\,
	datad => \mux|Mux3~1_combout\,
	combout => \decoder|decOut_n[6]~6_combout\);

\reg0|dataOut[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \decoder|decOut_n[6]~6_combout\,
	ena => \comb~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg0|dataOut\(6));

\comb~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb~2_combout\ = (!\reset~input_o\ & ((\dispC|fstate.DezMin~q\) # ((!\dispC|fstate.UniMin~q\ & \dispC|fstate.DezH~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \dispC|fstate.UniMin~q\,
	datac => \dispC|fstate.DezH~q\,
	datad => \dispC|fstate.DezMin~q\,
	combout => \comb~2_combout\);

\reg1|dataOut[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \decoder|decOut_n[0]~0_combout\,
	ena => \comb~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|dataOut\(0));

\reg1|dataOut[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \decoder|decOut_n[1]~1_combout\,
	ena => \comb~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|dataOut\(1));

\reg1|dataOut[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \decoder|decOut_n[2]~2_combout\,
	ena => \comb~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|dataOut\(2));

\reg1|dataOut[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \decoder|decOut_n[3]~3_combout\,
	ena => \comb~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|dataOut\(3));

\reg1|dataOut[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \decoder|decOut_n[4]~4_combout\,
	ena => \comb~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|dataOut\(4));

\reg1|dataOut[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \decoder|decOut_n[5]~5_combout\,
	ena => \comb~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|dataOut\(5));

\reg1|dataOut[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \decoder|decOut_n[6]~6_combout\,
	ena => \comb~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg1|dataOut\(6));

\comb~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb~3_combout\ = (!\reset~input_o\ & (!\dispC|fstate.DezMin~q\ & (!\dispC|fstate.DezH~q\ & \dispC|fstate.UniMin~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \dispC|fstate.DezMin~q\,
	datac => \dispC|fstate.DezH~q\,
	datad => \dispC|fstate.UniMin~q\,
	combout => \comb~3_combout\);

\reg2|dataOut[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \decoder|decOut_n[0]~0_combout\,
	ena => \comb~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg2|dataOut\(0));

\reg2|dataOut[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \decoder|decOut_n[1]~1_combout\,
	ena => \comb~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg2|dataOut\(1));

\reg2|dataOut[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \decoder|decOut_n[2]~2_combout\,
	ena => \comb~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg2|dataOut\(2));

\reg2|dataOut[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \decoder|decOut_n[3]~3_combout\,
	ena => \comb~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg2|dataOut\(3));

\reg2|dataOut[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \decoder|decOut_n[4]~4_combout\,
	ena => \comb~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg2|dataOut\(4));

\reg2|dataOut[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \decoder|decOut_n[5]~5_combout\,
	ena => \comb~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg2|dataOut\(5));

\reg2|dataOut[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \decoder|decOut_n[6]~6_combout\,
	ena => \comb~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg2|dataOut\(6));

\comb~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \comb~4_combout\ = (!\reset~input_o\ & (!\dispC|fstate.DezMin~q\ & (\dispC|fstate.DezH~q\ & \dispC|fstate.UniMin~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \reset~input_o\,
	datab => \dispC|fstate.DezMin~q\,
	datac => \dispC|fstate.DezH~q\,
	datad => \dispC|fstate.UniMin~q\,
	combout => \comb~4_combout\);

\reg3|dataOut[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \decoder|decOut_n[0]~0_combout\,
	ena => \comb~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|dataOut\(0));

\reg3|dataOut[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \decoder|decOut_n[1]~1_combout\,
	ena => \comb~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|dataOut\(1));

\reg3|dataOut[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \decoder|decOut_n[2]~2_combout\,
	ena => \comb~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|dataOut\(2));

\reg3|dataOut[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \decoder|decOut_n[3]~3_combout\,
	ena => \comb~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|dataOut\(3));

\reg3|dataOut[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \decoder|decOut_n[4]~4_combout\,
	ena => \comb~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|dataOut\(4));

\reg3|dataOut[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \decoder|decOut_n[5]~5_combout\,
	ena => \comb~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|dataOut\(5));

\reg3|dataOut[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \decoder|decOut_n[6]~6_combout\,
	ena => \comb~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \reg3|dataOut\(6));

ww_register0(0) <= \register0[0]~output_o\;

ww_register0(1) <= \register0[1]~output_o\;

ww_register0(2) <= \register0[2]~output_o\;

ww_register0(3) <= \register0[3]~output_o\;

ww_register0(4) <= \register0[4]~output_o\;

ww_register0(5) <= \register0[5]~output_o\;

ww_register0(6) <= \register0[6]~output_o\;

ww_register1(0) <= \register1[0]~output_o\;

ww_register1(1) <= \register1[1]~output_o\;

ww_register1(2) <= \register1[2]~output_o\;

ww_register1(3) <= \register1[3]~output_o\;

ww_register1(4) <= \register1[4]~output_o\;

ww_register1(5) <= \register1[5]~output_o\;

ww_register1(6) <= \register1[6]~output_o\;

ww_register2(0) <= \register2[0]~output_o\;

ww_register2(1) <= \register2[1]~output_o\;

ww_register2(2) <= \register2[2]~output_o\;

ww_register2(3) <= \register2[3]~output_o\;

ww_register2(4) <= \register2[4]~output_o\;

ww_register2(5) <= \register2[5]~output_o\;

ww_register2(6) <= \register2[6]~output_o\;

ww_register3(0) <= \register3[0]~output_o\;

ww_register3(1) <= \register3[1]~output_o\;

ww_register3(2) <= \register3[2]~output_o\;

ww_register3(3) <= \register3[3]~output_o\;

ww_register3(4) <= \register3[4]~output_o\;

ww_register3(5) <= \register3[5]~output_o\;

ww_register3(6) <= \register3[6]~output_o\;

ww_minU(0) <= \minU[0]~output_o\;

ww_minU(1) <= \minU[1]~output_o\;

ww_minU(2) <= \minU[2]~output_o\;

ww_minU(3) <= \minU[3]~output_o\;

ww_minDez(0) <= \minDez[0]~output_o\;

ww_minDez(1) <= \minDez[1]~output_o\;

ww_minDez(2) <= \minDez[2]~output_o\;

ww_minDez(3) <= \minDez[3]~output_o\;

ww_sel(0) <= \sel[0]~output_o\;

ww_sel(1) <= \sel[1]~output_o\;
END structure;


