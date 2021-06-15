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

-- DATE "06/15/2021 16:53:11"

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

ENTITY 	RegisterN IS
    PORT (
	clk : IN std_logic;
	wrEn : IN std_logic;
	rst : IN std_logic;
	dataIn : IN std_logic_vector(6 DOWNTO 0);
	dataOut : OUT std_logic_vector(6 DOWNTO 0)
	);
END RegisterN;

ARCHITECTURE structure OF RegisterN IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_clk : std_logic;
SIGNAL ww_wrEn : std_logic;
SIGNAL ww_rst : std_logic;
SIGNAL ww_dataIn : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_dataOut : std_logic_vector(6 DOWNTO 0);
SIGNAL \dataOut[0]~output_o\ : std_logic;
SIGNAL \dataOut[1]~output_o\ : std_logic;
SIGNAL \dataOut[2]~output_o\ : std_logic;
SIGNAL \dataOut[3]~output_o\ : std_logic;
SIGNAL \dataOut[4]~output_o\ : std_logic;
SIGNAL \dataOut[5]~output_o\ : std_logic;
SIGNAL \dataOut[6]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \dataIn[0]~input_o\ : std_logic;
SIGNAL \rst~input_o\ : std_logic;
SIGNAL \dataOut~0_combout\ : std_logic;
SIGNAL \wrEn~input_o\ : std_logic;
SIGNAL \dataOut[0]~1_combout\ : std_logic;
SIGNAL \dataOut[0]~reg0_q\ : std_logic;
SIGNAL \dataIn[1]~input_o\ : std_logic;
SIGNAL \dataOut~2_combout\ : std_logic;
SIGNAL \dataOut[1]~reg0_q\ : std_logic;
SIGNAL \dataIn[2]~input_o\ : std_logic;
SIGNAL \dataOut~3_combout\ : std_logic;
SIGNAL \dataOut[2]~reg0_q\ : std_logic;
SIGNAL \dataIn[3]~input_o\ : std_logic;
SIGNAL \dataOut~4_combout\ : std_logic;
SIGNAL \dataOut[3]~reg0_q\ : std_logic;
SIGNAL \dataIn[4]~input_o\ : std_logic;
SIGNAL \dataOut~5_combout\ : std_logic;
SIGNAL \dataOut[4]~reg0_q\ : std_logic;
SIGNAL \dataIn[5]~input_o\ : std_logic;
SIGNAL \dataOut~6_combout\ : std_logic;
SIGNAL \dataOut[5]~reg0_q\ : std_logic;
SIGNAL \dataIn[6]~input_o\ : std_logic;
SIGNAL \dataOut~7_combout\ : std_logic;
SIGNAL \dataOut[6]~reg0_q\ : std_logic;

BEGIN

ww_clk <= clk;
ww_wrEn <= wrEn;
ww_rst <= rst;
ww_dataIn <= dataIn;
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
	i => \dataOut[0]~reg0_q\,
	devoe => ww_devoe,
	o => \dataOut[0]~output_o\);

\dataOut[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dataOut[1]~reg0_q\,
	devoe => ww_devoe,
	o => \dataOut[1]~output_o\);

\dataOut[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dataOut[2]~reg0_q\,
	devoe => ww_devoe,
	o => \dataOut[2]~output_o\);

\dataOut[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dataOut[3]~reg0_q\,
	devoe => ww_devoe,
	o => \dataOut[3]~output_o\);

\dataOut[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dataOut[4]~reg0_q\,
	devoe => ww_devoe,
	o => \dataOut[4]~output_o\);

\dataOut[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dataOut[5]~reg0_q\,
	devoe => ww_devoe,
	o => \dataOut[5]~output_o\);

\dataOut[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \dataOut[6]~reg0_q\,
	devoe => ww_devoe,
	o => \dataOut[6]~output_o\);

\clk~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

\dataIn[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(0),
	o => \dataIn[0]~input_o\);

\rst~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_rst,
	o => \rst~input_o\);

\dataOut~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataOut~0_combout\ = (\dataIn[0]~input_o\ & !\rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataIn[0]~input_o\,
	datad => \rst~input_o\,
	combout => \dataOut~0_combout\);

\wrEn~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_wrEn,
	o => \wrEn~input_o\);

\dataOut[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataOut[0]~1_combout\ = (\rst~input_o\) # (\wrEn~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \wrEn~input_o\,
	combout => \dataOut[0]~1_combout\);

\dataOut[0]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \dataOut~0_combout\,
	ena => \dataOut[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dataOut[0]~reg0_q\);

\dataIn[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(1),
	o => \dataIn[1]~input_o\);

\dataOut~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataOut~2_combout\ = (\dataIn[1]~input_o\ & !\rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataIn[1]~input_o\,
	datad => \rst~input_o\,
	combout => \dataOut~2_combout\);

\dataOut[1]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \dataOut~2_combout\,
	ena => \dataOut[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dataOut[1]~reg0_q\);

\dataIn[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(2),
	o => \dataIn[2]~input_o\);

\dataOut~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataOut~3_combout\ = (\dataIn[2]~input_o\ & !\rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataIn[2]~input_o\,
	datad => \rst~input_o\,
	combout => \dataOut~3_combout\);

\dataOut[2]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \dataOut~3_combout\,
	ena => \dataOut[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dataOut[2]~reg0_q\);

\dataIn[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(3),
	o => \dataIn[3]~input_o\);

\dataOut~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataOut~4_combout\ = (\dataIn[3]~input_o\ & !\rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataIn[3]~input_o\,
	datad => \rst~input_o\,
	combout => \dataOut~4_combout\);

\dataOut[3]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \dataOut~4_combout\,
	ena => \dataOut[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dataOut[3]~reg0_q\);

\dataIn[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(4),
	o => \dataIn[4]~input_o\);

\dataOut~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataOut~5_combout\ = (\dataIn[4]~input_o\ & !\rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataIn[4]~input_o\,
	datad => \rst~input_o\,
	combout => \dataOut~5_combout\);

\dataOut[4]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \dataOut~5_combout\,
	ena => \dataOut[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dataOut[4]~reg0_q\);

\dataIn[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(5),
	o => \dataIn[5]~input_o\);

\dataOut~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataOut~6_combout\ = (\dataIn[5]~input_o\ & !\rst~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \dataIn[5]~input_o\,
	datad => \rst~input_o\,
	combout => \dataOut~6_combout\);

\dataOut[5]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \dataOut~6_combout\,
	ena => \dataOut[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dataOut[5]~reg0_q\);

\dataIn[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_dataIn(6),
	o => \dataIn[6]~input_o\);

\dataOut~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \dataOut~7_combout\ = (\rst~input_o\) # (\dataIn[6]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \rst~input_o\,
	datab => \dataIn[6]~input_o\,
	combout => \dataOut~7_combout\);

\dataOut[6]~reg0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~input_o\,
	d => \dataOut~7_combout\,
	ena => \dataOut[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \dataOut[6]~reg0_q\);

ww_dataOut(0) <= \dataOut[0]~output_o\;

ww_dataOut(1) <= \dataOut[1]~output_o\;

ww_dataOut(2) <= \dataOut[2]~output_o\;

ww_dataOut(3) <= \dataOut[3]~output_o\;

ww_dataOut(4) <= \dataOut[4]~output_o\;

ww_dataOut(5) <= \dataOut[5]~output_o\;

ww_dataOut(6) <= \dataOut[6]~output_o\;
END structure;


