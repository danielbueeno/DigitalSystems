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

-- DATE "06/10/2021 13:25:23"

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

ENTITY 	Encoder4_2En IS
    PORT (
	enable : IN std_logic;
	inputs : IN std_logic_vector(3 DOWNTO 0);
	outputs : OUT std_logic_vector(1 DOWNTO 0)
	);
END Encoder4_2En;

ARCHITECTURE structure OF Encoder4_2En IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_enable : std_logic;
SIGNAL ww_inputs : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_outputs : std_logic_vector(1 DOWNTO 0);
SIGNAL \outputs[0]~output_o\ : std_logic;
SIGNAL \outputs[1]~output_o\ : std_logic;
SIGNAL \inputs[2]~input_o\ : std_logic;
SIGNAL \inputs[0]~input_o\ : std_logic;
SIGNAL \enable~input_o\ : std_logic;
SIGNAL \outputs[0]~2_combout\ : std_logic;
SIGNAL \inputs[1]~input_o\ : std_logic;
SIGNAL \inputs[3]~input_o\ : std_logic;
SIGNAL \Mux2~0_combout\ : std_logic;
SIGNAL \outputs[1]~3_combout\ : std_logic;
SIGNAL \outputs[1]~4_combout\ : std_logic;

BEGIN

ww_enable <= enable;
ww_inputs <= inputs;
outputs <= ww_outputs;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\outputs[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outputs[0]~2_combout\,
	oe => \outputs[1]~3_combout\,
	devoe => ww_devoe,
	o => \outputs[0]~output_o\);

\outputs[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \outputs[1]~4_combout\,
	oe => \outputs[1]~3_combout\,
	devoe => ww_devoe,
	o => \outputs[1]~output_o\);

\inputs[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputs(2),
	o => \inputs[2]~input_o\);

\inputs[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputs(0),
	o => \inputs[0]~input_o\);

\enable~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_enable,
	o => \enable~input_o\);

\outputs[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \outputs[0]~2_combout\ = (!\inputs[2]~input_o\ & (!\inputs[0]~input_o\ & \enable~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inputs[2]~input_o\,
	datab => \inputs[0]~input_o\,
	datad => \enable~input_o\,
	combout => \outputs[0]~2_combout\);

\inputs[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputs(1),
	o => \inputs[1]~input_o\);

\inputs[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_inputs(3),
	o => \inputs[3]~input_o\);

\Mux2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Mux2~0_combout\ = (\inputs[0]~input_o\ & (!\inputs[1]~input_o\ & (!\inputs[2]~input_o\ & !\inputs[3]~input_o\))) # (!\inputs[0]~input_o\ & ((\inputs[1]~input_o\ & (!\inputs[2]~input_o\ & !\inputs[3]~input_o\)) # (!\inputs[1]~input_o\ & 
-- (\inputs[2]~input_o\ $ (\inputs[3]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inputs[0]~input_o\,
	datab => \inputs[1]~input_o\,
	datac => \inputs[2]~input_o\,
	datad => \inputs[3]~input_o\,
	combout => \Mux2~0_combout\);

\outputs[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \outputs[1]~3_combout\ = (\Mux2~0_combout\) # (!\enable~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Mux2~0_combout\,
	datad => \enable~input_o\,
	combout => \outputs[1]~3_combout\);

\outputs[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \outputs[1]~4_combout\ = (!\inputs[0]~input_o\ & (!\inputs[1]~input_o\ & \enable~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inputs[0]~input_o\,
	datab => \inputs[1]~input_o\,
	datad => \enable~input_o\,
	combout => \outputs[1]~4_combout\);

ww_outputs(0) <= \outputs[0]~output_o\;

ww_outputs(1) <= \outputs[1]~output_o\;
END structure;


