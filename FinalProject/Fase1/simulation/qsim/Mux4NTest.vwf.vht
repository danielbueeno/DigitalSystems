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
-- Generated on "06/15/2021 16:26:16"
                                                             
-- Vhdl Test Bench(with test vectors) for design  :          Mux4N
-- 
-- Simulation tool : 3rd Party
-- 

LIBRARY ieee;                                               
USE ieee.std_logic_1164.all;                                

ENTITY Mux4N_vhd_vec_tst IS
END Mux4N_vhd_vec_tst;
ARCHITECTURE Mux4N_arch OF Mux4N_vhd_vec_tst IS
-- constants                                                 
-- signals                                                   
SIGNAL dataIn0 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL dataIn1 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL dataIn2 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL dataIn3 : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL dataOut : STD_LOGIC_VECTOR(3 DOWNTO 0);
SIGNAL selection : STD_LOGIC_VECTOR(1 DOWNTO 0);
COMPONENT Mux4N
	PORT (
	dataIn0 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	dataIn1 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	dataIn2 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	dataIn3 : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
	dataOut : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
	selection : IN STD_LOGIC_VECTOR(1 DOWNTO 0)
	);
END COMPONENT;
BEGIN
	i1 : Mux4N
	PORT MAP (
-- list connections between master ports and signals
	dataIn0 => dataIn0,
	dataIn1 => dataIn1,
	dataIn2 => dataIn2,
	dataIn3 => dataIn3,
	dataOut => dataOut,
	selection => selection
	);
-- selection[1]
t_prcs_selection_1: PROCESS
BEGIN
	selection(1) <= '0';
	WAIT FOR 240000 ps;
	selection(1) <= '1';
	WAIT FOR 320000 ps;
	selection(1) <= '0';
	WAIT FOR 130000 ps;
	selection(1) <= '1';
	WAIT FOR 140000 ps;
	selection(1) <= '0';
	WAIT FOR 100000 ps;
	selection(1) <= '1';
WAIT;
END PROCESS t_prcs_selection_1;
-- selection[0]
t_prcs_selection_0: PROCESS
BEGIN
	selection(0) <= '0';
	WAIT FOR 100000 ps;
	selection(0) <= '1';
	WAIT FOR 140000 ps;
	selection(0) <= '0';
	WAIT FOR 160000 ps;
	selection(0) <= '1';
	WAIT FOR 290000 ps;
	selection(0) <= '0';
	WAIT FOR 240000 ps;
	selection(0) <= '1';
WAIT;
END PROCESS t_prcs_selection_0;
-- dataIn0[3]
t_prcs_dataIn0_3: PROCESS
BEGIN
	dataIn0(3) <= '0';
	WAIT FOR 100000 ps;
	dataIn0(3) <= '1';
	WAIT FOR 300000 ps;
	dataIn0(3) <= '0';
	WAIT FOR 100000 ps;
	dataIn0(3) <= '1';
	WAIT FOR 200000 ps;
	dataIn0(3) <= '0';
	WAIT FOR 100000 ps;
	dataIn0(3) <= '1';
WAIT;
END PROCESS t_prcs_dataIn0_3;
-- dataIn0[2]
t_prcs_dataIn0_2: PROCESS
BEGIN
	dataIn0(2) <= '0';
	WAIT FOR 400000 ps;
	dataIn0(2) <= '1';
	WAIT FOR 100000 ps;
	dataIn0(2) <= '0';
	WAIT FOR 100000 ps;
	dataIn0(2) <= '1';
	WAIT FOR 100000 ps;
	dataIn0(2) <= '0';
	WAIT FOR 100000 ps;
	dataIn0(2) <= '1';
WAIT;
END PROCESS t_prcs_dataIn0_2;
-- dataIn0[1]
t_prcs_dataIn0_1: PROCESS
BEGIN
	dataIn0(1) <= '1';
	WAIT FOR 100000 ps;
	dataIn0(1) <= '0';
	WAIT FOR 400000 ps;
	dataIn0(1) <= '1';
	WAIT FOR 200000 ps;
	dataIn0(1) <= '0';
	WAIT FOR 100000 ps;
	dataIn0(1) <= '1';
WAIT;
END PROCESS t_prcs_dataIn0_1;
-- dataIn0[0]
t_prcs_dataIn0_0: PROCESS
BEGIN
	dataIn0(0) <= '0';
	WAIT FOR 100000 ps;
	dataIn0(0) <= '1';
	WAIT FOR 300000 ps;
	dataIn0(0) <= '0';
	WAIT FOR 100000 ps;
	dataIn0(0) <= '1';
	WAIT FOR 200000 ps;
	dataIn0(0) <= '0';
	WAIT FOR 200000 ps;
	dataIn0(0) <= '1';
WAIT;
END PROCESS t_prcs_dataIn0_0;
-- dataIn1[3]
t_prcs_dataIn1_3: PROCESS
BEGIN
	dataIn1(3) <= '0';
	WAIT FOR 100000 ps;
	dataIn1(3) <= '1';
	WAIT FOR 100000 ps;
	dataIn1(3) <= '0';
	WAIT FOR 200000 ps;
	dataIn1(3) <= '1';
	WAIT FOR 200000 ps;
	dataIn1(3) <= '0';
	WAIT FOR 100000 ps;
	dataIn1(3) <= '1';
WAIT;
END PROCESS t_prcs_dataIn1_3;
-- dataIn1[2]
t_prcs_dataIn1_2: PROCESS
BEGIN
	dataIn1(2) <= '0';
	WAIT FOR 100000 ps;
	dataIn1(2) <= '1';
	WAIT FOR 300000 ps;
	dataIn1(2) <= '0';
	WAIT FOR 200000 ps;
	dataIn1(2) <= '1';
WAIT;
END PROCESS t_prcs_dataIn1_2;
-- dataIn1[1]
t_prcs_dataIn1_1: PROCESS
BEGIN
	dataIn1(1) <= '0';
	WAIT FOR 200000 ps;
	dataIn1(1) <= '1';
	WAIT FOR 300000 ps;
	dataIn1(1) <= '0';
	WAIT FOR 200000 ps;
	dataIn1(1) <= '1';
WAIT;
END PROCESS t_prcs_dataIn1_1;
-- dataIn1[0]
t_prcs_dataIn1_0: PROCESS
BEGIN
	dataIn1(0) <= '1';
	WAIT FOR 100000 ps;
	dataIn1(0) <= '0';
	WAIT FOR 100000 ps;
	dataIn1(0) <= '1';
	WAIT FOR 400000 ps;
	dataIn1(0) <= '0';
	WAIT FOR 100000 ps;
	dataIn1(0) <= '1';
WAIT;
END PROCESS t_prcs_dataIn1_0;
-- dataIn2[3]
t_prcs_dataIn2_3: PROCESS
BEGIN
	dataIn2(3) <= '1';
	WAIT FOR 100000 ps;
	dataIn2(3) <= '0';
	WAIT FOR 200000 ps;
	dataIn2(3) <= '1';
	WAIT FOR 100000 ps;
	dataIn2(3) <= '0';
	WAIT FOR 500000 ps;
	dataIn2(3) <= '1';
WAIT;
END PROCESS t_prcs_dataIn2_3;
-- dataIn2[2]
t_prcs_dataIn2_2: PROCESS
BEGIN
	dataIn2(2) <= '1';
	WAIT FOR 100000 ps;
	dataIn2(2) <= '0';
	WAIT FOR 100000 ps;
	dataIn2(2) <= '1';
	WAIT FOR 100000 ps;
	dataIn2(2) <= '0';
	WAIT FOR 100000 ps;
	dataIn2(2) <= '1';
	WAIT FOR 500000 ps;
	dataIn2(2) <= '0';
WAIT;
END PROCESS t_prcs_dataIn2_2;
-- dataIn2[1]
t_prcs_dataIn2_1: PROCESS
BEGIN
	dataIn2(1) <= '0';
	WAIT FOR 700000 ps;
	dataIn2(1) <= '1';
	WAIT FOR 100000 ps;
	dataIn2(1) <= '0';
WAIT;
END PROCESS t_prcs_dataIn2_1;
-- dataIn2[0]
t_prcs_dataIn2_0: PROCESS
BEGIN
	dataIn2(0) <= '0';
	WAIT FOR 300000 ps;
	dataIn2(0) <= '1';
	WAIT FOR 100000 ps;
	dataIn2(0) <= '0';
	WAIT FOR 400000 ps;
	dataIn2(0) <= '1';
WAIT;
END PROCESS t_prcs_dataIn2_0;
-- dataIn3[3]
t_prcs_dataIn3_3: PROCESS
BEGIN
	dataIn3(3) <= '1';
	WAIT FOR 500000 ps;
	dataIn3(3) <= '0';
	WAIT FOR 100000 ps;
	dataIn3(3) <= '1';
	WAIT FOR 100000 ps;
	dataIn3(3) <= '0';
	WAIT FOR 200000 ps;
	dataIn3(3) <= '1';
WAIT;
END PROCESS t_prcs_dataIn3_3;
-- dataIn3[2]
t_prcs_dataIn3_2: PROCESS
BEGIN
	dataIn3(2) <= '1';
	WAIT FOR 200000 ps;
	dataIn3(2) <= '0';
	WAIT FOR 200000 ps;
	dataIn3(2) <= '1';
	WAIT FOR 100000 ps;
	dataIn3(2) <= '0';
	WAIT FOR 100000 ps;
	dataIn3(2) <= '1';
	WAIT FOR 100000 ps;
	dataIn3(2) <= '0';
	WAIT FOR 100000 ps;
	dataIn3(2) <= '1';
	WAIT FOR 100000 ps;
	dataIn3(2) <= '0';
WAIT;
END PROCESS t_prcs_dataIn3_2;
-- dataIn3[1]
t_prcs_dataIn3_1: PROCESS
BEGIN
	dataIn3(1) <= '0';
	WAIT FOR 100000 ps;
	dataIn3(1) <= '1';
	WAIT FOR 100000 ps;
	dataIn3(1) <= '0';
	WAIT FOR 300000 ps;
	dataIn3(1) <= '1';
	WAIT FOR 100000 ps;
	dataIn3(1) <= '0';
	WAIT FOR 100000 ps;
	dataIn3(1) <= '1';
	WAIT FOR 200000 ps;
	dataIn3(1) <= '0';
WAIT;
END PROCESS t_prcs_dataIn3_1;
-- dataIn3[0]
t_prcs_dataIn3_0: PROCESS
BEGIN
	dataIn3(0) <= '1';
	WAIT FOR 100000 ps;
	dataIn3(0) <= '0';
	WAIT FOR 100000 ps;
	dataIn3(0) <= '1';
	WAIT FOR 400000 ps;
	dataIn3(0) <= '0';
	WAIT FOR 200000 ps;
	dataIn3(0) <= '1';
	WAIT FOR 100000 ps;
	dataIn3(0) <= '0';
WAIT;
END PROCESS t_prcs_dataIn3_0;
END Mux4N_arch;
