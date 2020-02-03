-- Copyright (C) 1991-2013 Altera Corporation
-- Your use of Altera Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Altera Program License 
-- Subscription Agreement, Altera MegaCore Function License 
-- Agreement, or other applicable license agreement, including, 
-- without limitation, that your use is for the sole purpose of 
-- programming logic devices manufactured by Altera and sold by 
-- Altera or its authorized distributors.  Please refer to the 
-- applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus II 64-Bit"
-- VERSION "Version 13.0.0 Build 156 04/24/2013 SJ Full Version"

-- DATE "05/08/2018 19:07:43"

-- 
-- Device: Altera EP3C55F484C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	Block1 IS
    PORT (
	\1\ : OUT std_logic;
	a : IN std_logic;
	b : IN std_logic;
	c : IN std_logic;
	\2\ : OUT std_logic;
	d : IN std_logic;
	e : IN std_logic;
	\3\ : OUT std_logic;
	f : IN std_logic;
	g : IN std_logic;
	\4\ : OUT std_logic;
	h : IN std_logic;
	i : IN std_logic;
	\5\ : OUT std_logic
	);
END Block1;

-- Design Ports Information
-- 1	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- 2	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- 3	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- 4	=>  Location: PIN_F2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- 5	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- c	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- a	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- b	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- e	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- d	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- g	=>  Location: PIN_J5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- f	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- i	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- h	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF Block1 IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \ww_1\ : std_logic;
SIGNAL ww_a : std_logic;
SIGNAL ww_b : std_logic;
SIGNAL ww_c : std_logic;
SIGNAL \ww_2\ : std_logic;
SIGNAL ww_d : std_logic;
SIGNAL ww_e : std_logic;
SIGNAL \ww_3\ : std_logic;
SIGNAL ww_f : std_logic;
SIGNAL ww_g : std_logic;
SIGNAL \ww_4\ : std_logic;
SIGNAL ww_h : std_logic;
SIGNAL ww_i : std_logic;
SIGNAL \ww_5\ : std_logic;
SIGNAL \1~output_o\ : std_logic;
SIGNAL \2~output_o\ : std_logic;
SIGNAL \3~output_o\ : std_logic;
SIGNAL \4~output_o\ : std_logic;
SIGNAL \5~output_o\ : std_logic;
SIGNAL \a~input_o\ : std_logic;
SIGNAL \c~input_o\ : std_logic;
SIGNAL \b~input_o\ : std_logic;
SIGNAL \inst|u2|SO~combout\ : std_logic;
SIGNAL \e~input_o\ : std_logic;
SIGNAL \d~input_o\ : std_logic;
SIGNAL \inst3|u1|SO~combout\ : std_logic;
SIGNAL \inst3|u2|SO~combout\ : std_logic;
SIGNAL \f~input_o\ : std_logic;
SIGNAL \g~input_o\ : std_logic;
SIGNAL \inst1|u2|SO~combout\ : std_logic;
SIGNAL \h~input_o\ : std_logic;
SIGNAL \i~input_o\ : std_logic;
SIGNAL \inst1|u1|SO~combout\ : std_logic;
SIGNAL \inst2|u2|SO~combout\ : std_logic;
SIGNAL \inst2|u3|c~combout\ : std_logic;

BEGIN

\1\ <= \ww_1\;
ww_a <= a;
ww_b <= b;
ww_c <= c;
\2\ <= \ww_2\;
ww_d <= d;
ww_e <= e;
\3\ <= \ww_3\;
ww_f <= f;
ww_g <= g;
\4\ <= \ww_4\;
ww_h <= h;
ww_i <= i;
\5\ <= \ww_5\;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

-- Location: IOOBUF_X0_Y35_N23
\1~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst|u2|SO~combout\,
	devoe => ww_devoe,
	o => \1~output_o\);

-- Location: IOOBUF_X0_Y37_N2
\2~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst3|u2|SO~combout\,
	devoe => ww_devoe,
	o => \2~output_o\);

-- Location: IOOBUF_X0_Y33_N2
\3~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst1|u2|SO~combout\,
	devoe => ww_devoe,
	o => \3~output_o\);

-- Location: IOOBUF_X0_Y39_N9
\4~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|u2|SO~combout\,
	devoe => ww_devoe,
	o => \4~output_o\);

-- Location: IOOBUF_X0_Y34_N9
\5~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \inst2|u3|c~combout\,
	devoe => ww_devoe,
	o => \5~output_o\);

-- Location: IOIBUF_X0_Y33_N22
\a~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_a,
	o => \a~input_o\);

-- Location: IOIBUF_X0_Y24_N22
\c~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_c,
	o => \c~input_o\);

-- Location: IOIBUF_X0_Y38_N1
\b~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_b,
	o => \b~input_o\);

-- Location: LCCOMB_X1_Y35_N16
\inst|u2|SO\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst|u2|SO~combout\ = \a~input_o\ $ (\c~input_o\ $ (\b~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~input_o\,
	datac => \c~input_o\,
	datad => \b~input_o\,
	combout => \inst|u2|SO~combout\);

-- Location: IOIBUF_X0_Y34_N15
\e~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_e,
	o => \e~input_o\);

-- Location: IOIBUF_X0_Y33_N8
\d~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_d,
	o => \d~input_o\);

-- Location: LCCOMB_X1_Y35_N2
\inst3|u1|SO\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|u1|SO~combout\ = \d~input_o\ $ (((\c~input_o\) # (\a~input_o\ $ (\b~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011100100110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \a~input_o\,
	datab => \d~input_o\,
	datac => \c~input_o\,
	datad => \b~input_o\,
	combout => \inst3|u1|SO~combout\);

-- Location: LCCOMB_X1_Y35_N20
\inst3|u2|SO\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst3|u2|SO~combout\ = \e~input_o\ $ (\inst3|u1|SO~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \e~input_o\,
	datad => \inst3|u1|SO~combout\,
	combout => \inst3|u2|SO~combout\);

-- Location: IOIBUF_X0_Y35_N1
\f~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_f,
	o => \f~input_o\);

-- Location: IOIBUF_X0_Y38_N8
\g~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_g,
	o => \g~input_o\);

-- Location: LCCOMB_X1_Y35_N30
\inst1|u2|SO\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|u2|SO~combout\ = \f~input_o\ $ (\g~input_o\ $ (((\e~input_o\) # (\inst3|u1|SO~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f~input_o\,
	datab => \g~input_o\,
	datac => \e~input_o\,
	datad => \inst3|u1|SO~combout\,
	combout => \inst1|u2|SO~combout\);

-- Location: IOIBUF_X0_Y35_N8
\h~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_h,
	o => \h~input_o\);

-- Location: IOIBUF_X0_Y20_N1
\i~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_i,
	o => \i~input_o\);

-- Location: LCCOMB_X1_Y35_N0
\inst1|u1|SO\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst1|u1|SO~combout\ = \f~input_o\ $ (((\e~input_o\) # (\inst3|u1|SO~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \f~input_o\,
	datac => \e~input_o\,
	datad => \inst3|u1|SO~combout\,
	combout => \inst1|u1|SO~combout\);

-- Location: LCCOMB_X1_Y35_N18
\inst2|u2|SO\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|u2|SO~combout\ = \h~input_o\ $ (\i~input_o\ $ (((\g~input_o\) # (\inst1|u1|SO~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110010110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \h~input_o\,
	datab => \g~input_o\,
	datac => \i~input_o\,
	datad => \inst1|u1|SO~combout\,
	combout => \inst2|u2|SO~combout\);

-- Location: LCCOMB_X1_Y35_N28
\inst2|u3|c\ : cycloneiii_lcell_comb
-- Equation(s):
-- \inst2|u3|c~combout\ = (\i~input_o\) # (\h~input_o\ $ (((\g~input_o\) # (\inst1|u1|SO~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010111110110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \h~input_o\,
	datab => \g~input_o\,
	datac => \i~input_o\,
	datad => \inst1|u1|SO~combout\,
	combout => \inst2|u3|c~combout\);

\ww_1\ <= \1~output_o\;

\ww_2\ <= \2~output_o\;

\ww_3\ <= \3~output_o\;

\ww_4\ <= \4~output_o\;

\ww_5\ <= \5~output_o\;
END structure;


