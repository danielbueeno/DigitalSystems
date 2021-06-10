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

-- DATE "06/10/2021 15:09:26"

-- 
-- Device: Altera EP4CE115F29C7 Package FBGA780
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Mux2N IS
    PORT (
	selection : IN std_logic_vector(1 DOWNTO 0);
	dataIn0 : IN std_logic_vector(7 DOWNTO 0);
	dataIn1 : IN std_logic_vector(7 DOWNTO 0);
	dataIn2 : IN std_logic_vector(7 DOWNTO 0);
	dataIn3 : IN std_logic_vector(7 DOWNTO 0);
	dataOut : OUT std_logic_vector(7 DOWNTO 0)
	);
END Mux2N;

ARCHITECTURE structure OF Mux2N IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_selection : std_logic_vector(1 DOWNTO 0);
SIGNAL ww_dataIn0 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_dataIn1 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_dataIn2 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_dataIn3 : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_dataOut : std_logic_vector(7 DOWNTO 0);
SIGNAL \dataOut[0]~output_o\ : std_logic;
SIGNAL \dataOut[1]~output_o\ : std_logic;
SIGNAL \dataOut[2]~output_o\ : std_logic;
SIGNAL \dataOut[3]~output_o\ : std_logic;
SIGNAL \dataOut[4]~output_o\ : std_logic;
SIGNAL \dataOut[5]~output_o\ : std_logic;
SIGNAL \dataOut[6]~output_o\ : std_logic;
SIGNAL \dataOut[7]~output_o\ : std_logic;
SIGNAL \dataIn2[0]~input_o\ : std_logic;
SIGNAL \selection[1]~input_o\ : std_logic;
SIGNAL \dataIn1[0]~input_o\ : std_logic;
SIGNAL \selection[0]~input_o\ : std_logic;
SIGNAL \dataIn0[0]~input_o\ : std_logic;
SIGNAL \Mux7~0_combout\ : std_logic;
SIGNAL \dataIn3[0]~input_o\ : std_logic;
SIGNAL \Mux7~1_combout\ : std_logic;
SIGNAL \dataIn1[1]~input_o\ : std_logic;
SIGNAL \dataIn2[1]~input_o\ : std_logic;
SIGNAL \dataIn0[1]~input_o\ : std_logic;
SIGNAL \Mux6~0_combout\ : std_logic;
SIGNAL \dataIn3[1]~input_o\ : std_logic;
SIGNAL \Mux6~1_combout\ : std_logic;
SIGNAL \dataIn2[2]~input_o\ : std_logic;
SIGNAL \dataIn1[2]~input_o\ : std_logic;
SIGNAL \dataIn0[2]~input_o\ : std_logic;
SIGNAL \Mux5~0_combout\ : std_logic;
SIGNAL \dataIn3[2]~input_o\ : std_logic;
SIGNAL \Mux5~1_combout\ : std_logic;
SIGNAL \dataIn1[3]~input_o\ : std_logic;
SIGNAL \dataIn2[3]~input_o\ : std_logic;
SIGNAL \dataIn0[3]~input_o\ : std_logic;
SIGNAL \Mux4~0_combout\ : std_logic;
SIGNAL \dataIn3[3]~input_o\ : std_logic;
SIGNAL \Mux4~1_combout\ : std_logic;
SIGNAL \dataIn2[4]~input_o\ : std_logic;
SIGNAL \dataIn1[4]~input_o\ : std_logic;
SIGNAL \dataIn0[4]~input_o\ : std_logic;
SIGNAL \Mux3~0_combout\ : std_logic;
SIGNAL \dataIn3[4]~input_o\ : std_logic;
SIGNAL \Mux3~1_combout\ : std_logic;
SIGNAL \dataIn1[5]~input_o\ : std_logic;
SIGNAL \dataIn2[5]~input_o\ : std_logic;
SIGNAL \dataIn0[5]~input_o\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \dataIn3[5]~input_o\ : std_logic;
SIGNAL \Mux2~1_combout\ : std_logic;
SIGNAL \dataIn2[6]~input_o\ : std_logic;
SIGNAL \dataIn1[6]~input_o\ : std_logic;
SIGNAL \dataIn0[6]~input_o\ : std_logic;
SIGNAL \Mux1~0_combout\ : std_logic;
SIGNAL \dataIn3[6]~input_o\ : std_logic;
SIGNAL \Mux1~1_combout\ : std_logic;
SIGNAL \dataIn1[7]~input_o\ : std_logic;
SIGNAL \dataIn2[7]~input_o\ : std_logic;
SIGNAL \dataIn0[7]~input_o\ : std_logic;
SIGNAL \Mux0~0_combout\ : std_logic;
SIGNAL \dataIn3[7]~input_o\ : std_logic;
SIGNAL \Mux0~1_combout\ : std_logic;

BEGIN

ww_selection <= selection;
ww_dataIn0 <= dataIn0;
ww_dataIn1 <= dataIn1;
ww_dataIn2 <= dataIn2;
ww_dataIn3 <= dataIn3;
dataOut <= ww_dataOut;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\dataOut[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux7~1_combout\,
	devoe => ww_devoe,
	o => \dataOut[0]~output_o\);

\dataOut[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux6~1_combout\,
	devoe => ww_devoe,
	o => \dataOut[1]~output_o\);

\dataOut[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux5~1_combout\,
	devoe => ww_devoe,
	o => \dataOut[2]~output_o\);

\dataOut[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux4~1_combout\,
	devoe => ww_devoe,
	o => \dataOut[3]~output_o\);

\dataOut[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux3~1_combout\,
	devoe => ww_devoe,
	o => \dataOut[4]~output_o\);

\dataOut[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux2~1_combout\,
	devoe => ww_devoe,
	o => \dataOut[5]~output_o\);

\dataOut[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux1~1_combout\,
	devoe => ww_devoe,
	o => \dataOut[6]~output_o\);

\dataOut[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \Mux0~1_combout\,
	devoe => ww_devoe,
	o => \dataOut[7]~output_o\);

\dataIn2[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn2(0),
	o => \dataIn2[0]~input_o\);

\selection[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_selection(1),
	o => \selection[1]~input_o\);

\dataIn1[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn1(0),
	o => \dataIn1[0]~input_o\);

\selection[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_selection(0),
	o => \selection[0]~input_o\);

\dataIn0[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn0(0),
	o => \dataIn0[0]~input_o\);

\Mux7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~0_combout\ = (\selection[1]~input_o\ & (((\selection[0]~input_o\)))) # (!\selection[1]~input_o\ & ((\selection[0]~input_o\ & (\dataIn1[0]~input_o\)) # (!\selection[0]~input_o\ & ((\dataIn0[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selection[1]~input_o\,
	datab => \dataIn1[0]~input_o\,
	datac => \selection[0]~input_o\,
	datad => \dataIn0[0]~input_o\,
	combout => \Mux7~0_combout\);

\dataIn3[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn3(0),
	o => \dataIn3[0]~input_o\);

\Mux7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux7~1_combout\ = (\selection[1]~input_o\ & ((\Mux7~0_combout\ & ((\dataIn3[0]~input_o\))) # (!\Mux7~0_combout\ & (\dataIn2[0]~input_o\)))) # (!\selection[1]~input_o\ & (((\Mux7~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataIn2[0]~input_o\,
	datab => \selection[1]~input_o\,
	datac => \Mux7~0_combout\,
	datad => \dataIn3[0]~input_o\,
	combout => \Mux7~1_combout\);

\dataIn1[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn1(1),
	o => \dataIn1[1]~input_o\);

\dataIn2[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn2(1),
	o => \dataIn2[1]~input_o\);

\dataIn0[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn0(1),
	o => \dataIn0[1]~input_o\);

\Mux6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~0_combout\ = (\selection[0]~input_o\ & (((\selection[1]~input_o\)))) # (!\selection[0]~input_o\ & ((\selection[1]~input_o\ & (\dataIn2[1]~input_o\)) # (!\selection[1]~input_o\ & ((\dataIn0[1]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selection[0]~input_o\,
	datab => \dataIn2[1]~input_o\,
	datac => \selection[1]~input_o\,
	datad => \dataIn0[1]~input_o\,
	combout => \Mux6~0_combout\);

\dataIn3[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn3(1),
	o => \dataIn3[1]~input_o\);

\Mux6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux6~1_combout\ = (\selection[0]~input_o\ & ((\Mux6~0_combout\ & ((\dataIn3[1]~input_o\))) # (!\Mux6~0_combout\ & (\dataIn1[1]~input_o\)))) # (!\selection[0]~input_o\ & (((\Mux6~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataIn1[1]~input_o\,
	datab => \selection[0]~input_o\,
	datac => \Mux6~0_combout\,
	datad => \dataIn3[1]~input_o\,
	combout => \Mux6~1_combout\);

\dataIn2[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn2(2),
	o => \dataIn2[2]~input_o\);

\dataIn1[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn1(2),
	o => \dataIn1[2]~input_o\);

\dataIn0[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn0(2),
	o => \dataIn0[2]~input_o\);

\Mux5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~0_combout\ = (\selection[1]~input_o\ & (((\selection[0]~input_o\)))) # (!\selection[1]~input_o\ & ((\selection[0]~input_o\ & (\dataIn1[2]~input_o\)) # (!\selection[0]~input_o\ & ((\dataIn0[2]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selection[1]~input_o\,
	datab => \dataIn1[2]~input_o\,
	datac => \selection[0]~input_o\,
	datad => \dataIn0[2]~input_o\,
	combout => \Mux5~0_combout\);

\dataIn3[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn3(2),
	o => \dataIn3[2]~input_o\);

\Mux5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux5~1_combout\ = (\selection[1]~input_o\ & ((\Mux5~0_combout\ & ((\dataIn3[2]~input_o\))) # (!\Mux5~0_combout\ & (\dataIn2[2]~input_o\)))) # (!\selection[1]~input_o\ & (((\Mux5~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataIn2[2]~input_o\,
	datab => \selection[1]~input_o\,
	datac => \Mux5~0_combout\,
	datad => \dataIn3[2]~input_o\,
	combout => \Mux5~1_combout\);

\dataIn1[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn1(3),
	o => \dataIn1[3]~input_o\);

\dataIn2[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn2(3),
	o => \dataIn2[3]~input_o\);

\dataIn0[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn0(3),
	o => \dataIn0[3]~input_o\);

\Mux4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~0_combout\ = (\selection[0]~input_o\ & (((\selection[1]~input_o\)))) # (!\selection[0]~input_o\ & ((\selection[1]~input_o\ & (\dataIn2[3]~input_o\)) # (!\selection[1]~input_o\ & ((\dataIn0[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selection[0]~input_o\,
	datab => \dataIn2[3]~input_o\,
	datac => \selection[1]~input_o\,
	datad => \dataIn0[3]~input_o\,
	combout => \Mux4~0_combout\);

\dataIn3[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn3(3),
	o => \dataIn3[3]~input_o\);

\Mux4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux4~1_combout\ = (\selection[0]~input_o\ & ((\Mux4~0_combout\ & ((\dataIn3[3]~input_o\))) # (!\Mux4~0_combout\ & (\dataIn1[3]~input_o\)))) # (!\selection[0]~input_o\ & (((\Mux4~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataIn1[3]~input_o\,
	datab => \selection[0]~input_o\,
	datac => \Mux4~0_combout\,
	datad => \dataIn3[3]~input_o\,
	combout => \Mux4~1_combout\);

\dataIn2[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn2(4),
	o => \dataIn2[4]~input_o\);

\dataIn1[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn1(4),
	o => \dataIn1[4]~input_o\);

\dataIn0[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn0(4),
	o => \dataIn0[4]~input_o\);

\Mux3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~0_combout\ = (\selection[1]~input_o\ & (((\selection[0]~input_o\)))) # (!\selection[1]~input_o\ & ((\selection[0]~input_o\ & (\dataIn1[4]~input_o\)) # (!\selection[0]~input_o\ & ((\dataIn0[4]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selection[1]~input_o\,
	datab => \dataIn1[4]~input_o\,
	datac => \selection[0]~input_o\,
	datad => \dataIn0[4]~input_o\,
	combout => \Mux3~0_combout\);

\dataIn3[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn3(4),
	o => \dataIn3[4]~input_o\);

\Mux3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux3~1_combout\ = (\selection[1]~input_o\ & ((\Mux3~0_combout\ & ((\dataIn3[4]~input_o\))) # (!\Mux3~0_combout\ & (\dataIn2[4]~input_o\)))) # (!\selection[1]~input_o\ & (((\Mux3~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataIn2[4]~input_o\,
	datab => \selection[1]~input_o\,
	datac => \Mux3~0_combout\,
	datad => \dataIn3[4]~input_o\,
	combout => \Mux3~1_combout\);

\dataIn1[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn1(5),
	o => \dataIn1[5]~input_o\);

\dataIn2[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn2(5),
	o => \dataIn2[5]~input_o\);

\dataIn0[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn0(5),
	o => \dataIn0[5]~input_o\);

\Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\selection[0]~input_o\ & (((\selection[1]~input_o\)))) # (!\selection[0]~input_o\ & ((\selection[1]~input_o\ & (\dataIn2[5]~input_o\)) # (!\selection[1]~input_o\ & ((\dataIn0[5]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selection[0]~input_o\,
	datab => \dataIn2[5]~input_o\,
	datac => \selection[1]~input_o\,
	datad => \dataIn0[5]~input_o\,
	combout => \Mux2~0_combout\);

\dataIn3[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn3(5),
	o => \dataIn3[5]~input_o\);

\Mux2~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~1_combout\ = (\selection[0]~input_o\ & ((\Mux2~0_combout\ & ((\dataIn3[5]~input_o\))) # (!\Mux2~0_combout\ & (\dataIn1[5]~input_o\)))) # (!\selection[0]~input_o\ & (((\Mux2~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataIn1[5]~input_o\,
	datab => \selection[0]~input_o\,
	datac => \Mux2~0_combout\,
	datad => \dataIn3[5]~input_o\,
	combout => \Mux2~1_combout\);

\dataIn2[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn2(6),
	o => \dataIn2[6]~input_o\);

\dataIn1[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn1(6),
	o => \dataIn1[6]~input_o\);

\dataIn0[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn0(6),
	o => \dataIn0[6]~input_o\);

\Mux1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~0_combout\ = (\selection[1]~input_o\ & (((\selection[0]~input_o\)))) # (!\selection[1]~input_o\ & ((\selection[0]~input_o\ & (\dataIn1[6]~input_o\)) # (!\selection[0]~input_o\ & ((\dataIn0[6]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selection[1]~input_o\,
	datab => \dataIn1[6]~input_o\,
	datac => \selection[0]~input_o\,
	datad => \dataIn0[6]~input_o\,
	combout => \Mux1~0_combout\);

\dataIn3[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn3(6),
	o => \dataIn3[6]~input_o\);

\Mux1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux1~1_combout\ = (\selection[1]~input_o\ & ((\Mux1~0_combout\ & ((\dataIn3[6]~input_o\))) # (!\Mux1~0_combout\ & (\dataIn2[6]~input_o\)))) # (!\selection[1]~input_o\ & (((\Mux1~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataIn2[6]~input_o\,
	datab => \selection[1]~input_o\,
	datac => \Mux1~0_combout\,
	datad => \dataIn3[6]~input_o\,
	combout => \Mux1~1_combout\);

\dataIn1[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn1(7),
	o => \dataIn1[7]~input_o\);

\dataIn2[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn2(7),
	o => \dataIn2[7]~input_o\);

\dataIn0[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn0(7),
	o => \dataIn0[7]~input_o\);

\Mux0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~0_combout\ = (\selection[0]~input_o\ & (((\selection[1]~input_o\)))) # (!\selection[0]~input_o\ & ((\selection[1]~input_o\ & (\dataIn2[7]~input_o\)) # (!\selection[1]~input_o\ & ((\dataIn0[7]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \selection[0]~input_o\,
	datab => \dataIn2[7]~input_o\,
	datac => \selection[1]~input_o\,
	datad => \dataIn0[7]~input_o\,
	combout => \Mux0~0_combout\);

\dataIn3[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn3(7),
	o => \dataIn3[7]~input_o\);

\Mux0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux0~1_combout\ = (\selection[0]~input_o\ & ((\Mux0~0_combout\ & ((\dataIn3[7]~input_o\))) # (!\Mux0~0_combout\ & (\dataIn1[7]~input_o\)))) # (!\selection[0]~input_o\ & (((\Mux0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataIn1[7]~input_o\,
	datab => \selection[0]~input_o\,
	datac => \Mux0~0_combout\,
	datad => \dataIn3[7]~input_o\,
	combout => \Mux0~1_combout\);

ww_dataOut(0) <= \dataOut[0]~output_o\;

ww_dataOut(1) <= \dataOut[1]~output_o\;

ww_dataOut(2) <= \dataOut[2]~output_o\;

ww_dataOut(3) <= \dataOut[3]~output_o\;

ww_dataOut(4) <= \dataOut[4]~output_o\;

ww_dataOut(5) <= \dataOut[5]~output_o\;

ww_dataOut(6) <= \dataOut[6]~output_o\;

ww_dataOut(7) <= \dataOut[7]~output_o\;
END structure;


