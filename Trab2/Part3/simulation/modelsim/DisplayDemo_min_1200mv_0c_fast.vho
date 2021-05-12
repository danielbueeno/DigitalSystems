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

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 17.1.0 Build 590 10/25/2017 SJ Lite Edition"

-- DATE "04/22/2021 13:45:00"

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

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_F4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_E2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_P28,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	DisplayDemo IS
    PORT (
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	SW : IN std_logic_vector(4 DOWNTO 0)
	);
END DisplayDemo;

-- Design Ports Information
-- HEX0[6]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF DisplayDemo IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_SW : std_logic_vector(4 DOWNTO 0);
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \inst1|decOut_n[6]~2_combout\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \inst1|decOut_n[6]~16_combout\ : std_logic;
SIGNAL \inst1|decOut_n~6_combout\ : std_logic;
SIGNAL \inst1|decOut_n~7_combout\ : std_logic;
SIGNAL \inst1|decOut_n~8_combout\ : std_logic;
SIGNAL \inst1|decOut_n~9_combout\ : std_logic;
SIGNAL \inst1|decOut_n[3]~5_combout\ : std_logic;
SIGNAL \inst1|decOut_n[3]~17_combout\ : std_logic;
SIGNAL \inst1|decOut_n~10_combout\ : std_logic;
SIGNAL \inst1|decOut_n~11_combout\ : std_logic;
SIGNAL \inst1|decOut_n~12_combout\ : std_logic;
SIGNAL \inst1|decOut_n~13_combout\ : std_logic;
SIGNAL \inst1|decOut_n~14_combout\ : std_logic;
SIGNAL \inst1|decOut_n~15_combout\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

HEX0 <= ww_HEX0;
ww_SW <= SW;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X115_Y69_N2
\HEX0[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|decOut_n[6]~16_combout\,
	devoe => ww_devoe,
	o => \HEX0[6]~output_o\);

-- Location: IOOBUF_X115_Y67_N16
\HEX0[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|decOut_n~7_combout\,
	devoe => ww_devoe,
	o => \HEX0[5]~output_o\);

-- Location: IOOBUF_X115_Y54_N16
\HEX0[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|decOut_n~9_combout\,
	devoe => ww_devoe,
	o => \HEX0[4]~output_o\);

-- Location: IOOBUF_X115_Y50_N2
\HEX0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|decOut_n[3]~17_combout\,
	devoe => ww_devoe,
	o => \HEX0[3]~output_o\);

-- Location: IOOBUF_X67_Y73_N23
\HEX0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|decOut_n~11_combout\,
	devoe => ww_devoe,
	o => \HEX0[2]~output_o\);

-- Location: IOOBUF_X107_Y73_N23
\HEX0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|decOut_n~13_combout\,
	devoe => ww_devoe,
	o => \HEX0[1]~output_o\);

-- Location: IOOBUF_X69_Y73_N23
\HEX0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|decOut_n~15_combout\,
	devoe => ww_devoe,
	o => \HEX0[0]~output_o\);

-- Location: IOIBUF_X115_Y13_N8
\SW[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: IOIBUF_X115_Y14_N1
\SW[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: IOIBUF_X115_Y15_N8
\SW[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: IOIBUF_X115_Y17_N1
\SW[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: LCCOMB_X114_Y50_N20
\inst1|decOut_n[6]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|decOut_n[6]~2_combout\ = (\SW[0]~input_o\ & (!\SW[3]~input_o\ & (\SW[1]~input_o\ $ (!\SW[2]~input_o\)))) # (!\SW[0]~input_o\ & (!\SW[1]~input_o\ & (\SW[3]~input_o\ $ (!\SW[2]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \SW[2]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \inst1|decOut_n[6]~2_combout\);

-- Location: IOIBUF_X115_Y18_N8
\SW[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: LCCOMB_X114_Y50_N14
\inst1|decOut_n[6]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|decOut_n[6]~16_combout\ = (\inst1|decOut_n[6]~2_combout\) # (!\SW[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|decOut_n[6]~2_combout\,
	datad => \SW[4]~input_o\,
	combout => \inst1|decOut_n[6]~16_combout\);

-- Location: LCCOMB_X114_Y50_N24
\inst1|decOut_n~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|decOut_n~6_combout\ = (\SW[2]~input_o\ & (!\SW[1]~input_o\ & \SW[0]~input_o\)) # (!\SW[2]~input_o\ & (\SW[1]~input_o\ & !\SW[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[1]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \inst1|decOut_n~6_combout\);

-- Location: LCCOMB_X114_Y50_N10
\inst1|decOut_n~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|decOut_n~7_combout\ = ((\SW[0]~input_o\ & (\inst1|decOut_n~6_combout\ $ (!\SW[3]~input_o\))) # (!\SW[0]~input_o\ & (\inst1|decOut_n~6_combout\ & !\SW[3]~input_o\))) # (!\SW[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000011011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \inst1|decOut_n~6_combout\,
	datac => \SW[3]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \inst1|decOut_n~7_combout\);

-- Location: LCCOMB_X114_Y50_N28
\inst1|decOut_n~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|decOut_n~8_combout\ = (\SW[1]~input_o\ & (!\SW[3]~input_o\ & ((\SW[0]~input_o\)))) # (!\SW[1]~input_o\ & ((\SW[2]~input_o\ & (!\SW[3]~input_o\)) # (!\SW[2]~input_o\ & ((\SW[0]~input_o\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \SW[2]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \inst1|decOut_n~8_combout\);

-- Location: LCCOMB_X114_Y50_N30
\inst1|decOut_n~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|decOut_n~9_combout\ = (\inst1|decOut_n~8_combout\) # (!\SW[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|decOut_n~8_combout\,
	datad => \SW[4]~input_o\,
	combout => \inst1|decOut_n~9_combout\);

-- Location: LCCOMB_X114_Y50_N8
\inst1|decOut_n[3]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|decOut_n[3]~5_combout\ = (\SW[1]~input_o\ & ((\SW[2]~input_o\ & ((\SW[0]~input_o\))) # (!\SW[2]~input_o\ & (\SW[3]~input_o\ & !\SW[0]~input_o\)))) # (!\SW[1]~input_o\ & (!\SW[3]~input_o\ & (\SW[2]~input_o\ $ (\SW[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \SW[2]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \inst1|decOut_n[3]~5_combout\);

-- Location: LCCOMB_X114_Y50_N18
\inst1|decOut_n[3]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|decOut_n[3]~17_combout\ = (\inst1|decOut_n[3]~5_combout\) # (!\SW[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \inst1|decOut_n[3]~5_combout\,
	datad => \SW[4]~input_o\,
	combout => \inst1|decOut_n[3]~17_combout\);

-- Location: LCCOMB_X114_Y50_N0
\inst1|decOut_n~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|decOut_n~10_combout\ = (\SW[2]~input_o\ & (!\SW[1]~input_o\ & \SW[0]~input_o\)) # (!\SW[2]~input_o\ & (\SW[1]~input_o\ & !\SW[0]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010001001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \SW[1]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \inst1|decOut_n~10_combout\);

-- Location: LCCOMB_X114_Y50_N26
\inst1|decOut_n~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|decOut_n~11_combout\ = ((\SW[2]~input_o\ & (!\inst1|decOut_n~10_combout\ & \SW[3]~input_o\)) # (!\SW[2]~input_o\ & (\inst1|decOut_n~10_combout\ & !\SW[3]~input_o\))) # (!\SW[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[2]~input_o\,
	datab => \inst1|decOut_n~10_combout\,
	datac => \SW[3]~input_o\,
	datad => \SW[4]~input_o\,
	combout => \inst1|decOut_n~11_combout\);

-- Location: LCCOMB_X114_Y50_N12
\inst1|decOut_n~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|decOut_n~12_combout\ = (\SW[3]~input_o\ & ((\SW[0]~input_o\ & (\SW[1]~input_o\)) # (!\SW[0]~input_o\ & ((\SW[2]~input_o\))))) # (!\SW[3]~input_o\ & (\SW[2]~input_o\ & (\SW[1]~input_o\ $ (\SW[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \SW[2]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \inst1|decOut_n~12_combout\);

-- Location: LCCOMB_X114_Y50_N22
\inst1|decOut_n~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|decOut_n~13_combout\ = (\inst1|decOut_n~12_combout\) # (!\SW[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \inst1|decOut_n~12_combout\,
	datad => \SW[4]~input_o\,
	combout => \inst1|decOut_n~13_combout\);

-- Location: LCCOMB_X114_Y50_N16
\inst1|decOut_n~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|decOut_n~14_combout\ = (\SW[3]~input_o\ & (\SW[0]~input_o\ & (\SW[1]~input_o\ $ (\SW[2]~input_o\)))) # (!\SW[3]~input_o\ & (!\SW[1]~input_o\ & (\SW[2]~input_o\ $ (\SW[0]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[3]~input_o\,
	datab => \SW[1]~input_o\,
	datac => \SW[2]~input_o\,
	datad => \SW[0]~input_o\,
	combout => \inst1|decOut_n~14_combout\);

-- Location: LCCOMB_X114_Y50_N2
\inst1|decOut_n~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \inst1|decOut_n~15_combout\ = (\inst1|decOut_n~14_combout\) # (!\SW[4]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \inst1|decOut_n~14_combout\,
	datad => \SW[4]~input_o\,
	combout => \inst1|decOut_n~15_combout\);

ww_HEX0(6) <= \HEX0[6]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(0) <= \HEX0[0]~output_o\;
END structure;


