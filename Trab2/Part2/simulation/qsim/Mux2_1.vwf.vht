-- Copyright (C) 2017  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- *****************************************************************************
-- This file contains a Vhdl test bench with test vectors .The test vectors     
-- are exported from a vector file in the Quartus Waveform Editor and apply to  
-- the top level entity of the current Quartus project .The user can use this   
-- testbench to simulate his design using a third-party simulation tool .       
-- *****************************************************************************
-- Generated on "03/19/2021 07:54:12"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Mux2_1
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Mux2_1_vhd_vec_tst IS
END Mux2_1_vhd_vec_tst;
ARCHITECTURE Mux2_1_arch OF Mux2_1_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL inputs : STD_LOGIC_VECTOR(1 DOWNTO 0);
SIGNAL output : STD_LOGIC;
SIGNAL sel : STD_LOGIC;
COMPONENT Mux2_1
	PORT (
	inputs : IN STD_LOGIC_VECTOR(1 DOWNTO 0);
	output : OUT STD_LOGIC;
	sel : IN STD_LOGIC
	);
END COMPONENT;
BEGIN
	i1 : Mux2_1
	PORT MAP (
-- list connections between master ports and signals
	inputs => inputs,
	output => output,
	sel => sel
	);
-- inputs[1]
t_prcs_inputs_1: PROCESS
BEGIN
	inputs(1) <= '1';
	WAIT FOR 80000 ps;
	inputs(1) <= '0';
	WAIT FOR 280000 ps;
	inputs(1) <= '1';
	WAIT FOR 180000 ps;
	inputs(1) <= '0';
	WAIT FOR 100000 ps;
	inputs(1) <= '1';
	WAIT FOR 180000 ps;
	inputs(1) <= '0';
WAIT;
END PROCESS t_prcs_inputs_1;
-- inputs[0]
t_prcs_inputs_0: PROCESS
BEGIN
	inputs(0) <= '0';
	WAIT FOR 80000 ps;
	inputs(0) <= '1';
	WAIT FOR 280000 ps;
	inputs(0) <= '0';
	WAIT FOR 280000 ps;
	inputs(0) <= '1';
	WAIT FOR 180000 ps;
	inputs(0) <= '0';
	WAIT FOR 60000 ps;
	inputs(0) <= '1';
WAIT;
END PROCESS t_prcs_inputs_0;

-- sel
t_prcs_sel: PROCESS
BEGIN
	sel <= '0';
	WAIT FOR 80000 ps;
	sel <= '1';
	WAIT FOR 180000 ps;
	sel <= '0';
	WAIT FOR 100000 ps;
	sel <= '1';
	WAIT FOR 180000 ps;
	sel <= '0';
	WAIT FOR 80000 ps;
	sel <= '1';
	WAIT FOR 220000 ps;
	sel <= '0';
WAIT;
END PROCESS t_prcs_sel;
END Mux2_1_arch;
