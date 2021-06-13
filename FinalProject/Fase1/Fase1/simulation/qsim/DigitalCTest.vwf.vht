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
-- Generated on "06/13/2021 17:20:14"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          DigitalC_NoAjustment
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY DigitalC_NoAjustment_vhd_vec_tst IS
END DigitalC_NoAjustment_vhd_vec_tst;
ARCHITECTURE DigitalC_NoAjustment_arch OF DigitalC_NoAjustment_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL CLOCK_50 : STD_LOGIC;
SIGNAL minDez : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL minU : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL register0 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL register1 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL register2 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL register3 : STD_LOGIC_VECTOR(6 DOWNTO 0);
SIGNAL reset : STD_LOGIC;
SIGNAL sel : STD_LOGIC_VECTOR(1 DOWNTO 0);
COMPONENT DigitalC_NoAjustment
	PORT (
	CLOCK_50 : IN STD_LOGIC;
	minDez : BUFFER STD_LOGIC_VECTOR(3 DOWNTO 0);
	minU : BUFFER STD_LOGIC_VECTOR(3 DOWNTO 0);
	register0 : BUFFER STD_LOGIC_VECTOR(6 DOWNTO 0);
	register1 : BUFFER STD_LOGIC_VECTOR(6 DOWNTO 0);
	register2 : BUFFER STD_LOGIC_VECTOR(6 DOWNTO 0);
	register3 : BUFFER STD_LOGIC_VECTOR(6 DOWNTO 0);
	reset : IN STD_LOGIC;
	sel : BUFFER STD_LOGIC_VECTOR(1 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : DigitalC_NoAjustment
	PORT MAP (
-- list connections between master ports and signals
	CLOCK_50 => CLOCK_50,
	minDez => minDez,
	minU => minU,
	register0 => register0,
	register1 => register1,
	register2 => register2,
	register3 => register3,
	reset => reset,
	sel => sel
	);

-- CLOCK_50
t_prcs_CLOCK_50: PROCESS
BEGIN
LOOP
	CLOCK_50 <= '0';
	WAIT FOR 500 ps;
	CLOCK_50 <= '1';
	WAIT FOR 500 ps;
	IF (NOW >= 1000000 ps) THEN WAIT; END IF;
END LOOP;
END PROCESS t_prcs_CLOCK_50;

-- reset
t_prcs_reset: PROCESS
BEGIN
	reset <= '0';
WAIT;
END PROCESS t_prcs_reset;
END DigitalC_NoAjustment_arch;
