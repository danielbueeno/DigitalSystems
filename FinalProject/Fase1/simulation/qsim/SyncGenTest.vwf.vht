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

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "06/15/2021 16:12:53"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          SyncGen
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY SyncGen_vhd_vec_tst IS
END SyncGen_vhd_vec_tst;
ARCHITECTURE SyncGen_arch OF SyncGen_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL clk : STD_LOGIC;
SIGNAL DispClk : STD_LOGIC;
SIGNAL ProgClk : STD_LOGIC;
SIGNAL TimeClk : STD_LOGIC;
COMPONENT SyncGen
	PORT (
	clk : IN STD_LOGIC;
	DispClk : OUT STD_LOGIC;
	ProgClk : OUT STD_LOGIC;
	TimeClk : OUT STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : SyncGen
	PORT MAP (
-- list connections between master ports and signals
	clk => clk,
	DispClk => DispClk,
	ProgClk => ProgClk,
	TimeClk => TimeClk
	);

-- clk
t_prcs_clk: PROCESS
BEGIN
LOOP
	clk <= '0';
	WAIT FOR 10000 ps;
	clk <= '1';
	WAIT FOR 10000 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_clk;
END SyncGen_arch;
