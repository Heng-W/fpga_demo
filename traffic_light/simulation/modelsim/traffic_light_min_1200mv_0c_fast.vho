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

-- DATE "02/02/2020 22:45:19"

-- 
-- Device: Altera EP3C55F484C8 Package FBGA484
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY ALTERA;
LIBRARY CYCLONEIII;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIII.CYCLONEIII_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	traffic_light IS
    PORT (
	clk : IN std_logic;
	reset : IN std_logic;
	q : OUT std_logic_vector(5 DOWNTO 0)
	);
END traffic_light;

-- Design Ports Information
-- q[0]	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[1]	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[2]	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[3]	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[4]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- q[5]	=>  Location: PIN_W1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- clk	=>  Location: PIN_G2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- reset	=>  Location: PIN_G1,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF traffic_light IS
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
SIGNAL ww_reset : std_logic;
SIGNAL ww_q : std_logic_vector(5 DOWNTO 0);
SIGNAL \clk~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \reset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Add0~3_combout\ : std_logic;
SIGNAL \Add0~5_combout\ : std_logic;
SIGNAL \q[0]~output_o\ : std_logic;
SIGNAL \q[1]~output_o\ : std_logic;
SIGNAL \q[2]~output_o\ : std_logic;
SIGNAL \q[3]~output_o\ : std_logic;
SIGNAL \q[4]~output_o\ : std_logic;
SIGNAL \q[5]~output_o\ : std_logic;
SIGNAL \clk~input_o\ : std_logic;
SIGNAL \clk~inputclkctrl_outclk\ : std_logic;
SIGNAL \Selector8~0_combout\ : std_logic;
SIGNAL \reset~input_o\ : std_logic;
SIGNAL \REGCOM:s[1]~q\ : std_logic;
SIGNAL \Add0~1_combout\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \Selector5~0_combout\ : std_logic;
SIGNAL \REGCOM:s[4]~q\ : std_logic;
SIGNAL \Selector6~0_combout\ : std_logic;
SIGNAL \REGCOM:s[3]~q\ : std_logic;
SIGNAL \Equal1~3_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \REGCOM:s[5]~1_combout\ : std_logic;
SIGNAL \REGCOM:s[5]~2_combout\ : std_logic;
SIGNAL \Selector9~0_combout\ : std_logic;
SIGNAL \REGCOM:s[0]~q\ : std_logic;
SIGNAL \Selector4~0_combout\ : std_logic;
SIGNAL \REGCOM:s[5]~q\ : std_logic;
SIGNAL \Equal1~2_combout\ : std_logic;
SIGNAL \Equal1~4_combout\ : std_logic;
SIGNAL \Selector3~0_combout\ : std_logic;
SIGNAL \reset~inputclkctrl_outclk\ : std_logic;
SIGNAL \state.S3~q\ : std_logic;
SIGNAL \Selector0~0_combout\ : std_logic;
SIGNAL \state.S0~q\ : std_logic;
SIGNAL \REGCOM:s[5]~0_combout\ : std_logic;
SIGNAL \Selector7~0_combout\ : std_logic;
SIGNAL \REGCOM:s[2]~q\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \Equal0~0_combout\ : std_logic;
SIGNAL \Equal0~1_combout\ : std_logic;
SIGNAL \Selector2~0_combout\ : std_logic;
SIGNAL \state.S2~q\ : std_logic;
SIGNAL \Selector1~0_combout\ : std_logic;
SIGNAL \state.S1~q\ : std_logic;
SIGNAL \q~0_combout\ : std_logic;
SIGNAL \ALT_INV_q~0_combout\ : std_logic;
SIGNAL \ALT_INV_state.S0~q\ : std_logic;

BEGIN

ww_clk <= clk;
ww_reset <= reset;
q <= ww_q;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\clk~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \clk~input_o\);

\reset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \reset~input_o\);
\ALT_INV_q~0_combout\ <= NOT \q~0_combout\;
\ALT_INV_state.S0~q\ <= NOT \state.S0~q\;

-- Location: LCCOMB_X1_Y9_N14
\Add0~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~3_combout\ = \REGCOM:s[0]~q\ $ (\REGCOM:s[1]~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGCOM:s[0]~q\,
	datac => \REGCOM:s[1]~q\,
	combout => \Add0~3_combout\);

-- Location: LCCOMB_X2_Y9_N24
\Add0~5\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~5_combout\ = \REGCOM:s[5]~q\ $ (((\REGCOM:s[4]~q\ & \Add0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \REGCOM:s[5]~q\,
	datac => \REGCOM:s[4]~q\,
	datad => \Add0~1_combout\,
	combout => \Add0~5_combout\);

-- Location: IOOBUF_X0_Y8_N23
\q[0]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \state.S2~q\,
	devoe => ww_devoe,
	o => \q[0]~output_o\);

-- Location: IOOBUF_X0_Y10_N16
\q[1]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \state.S3~q\,
	devoe => ww_devoe,
	o => \q[1]~output_o\);

-- Location: IOOBUF_X0_Y11_N9
\q[2]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \q~0_combout\,
	devoe => ww_devoe,
	o => \q[2]~output_o\);

-- Location: IOOBUF_X0_Y7_N2
\q[3]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_state.S0~q\,
	devoe => ww_devoe,
	o => \q[3]~output_o\);

-- Location: IOOBUF_X0_Y9_N16
\q[4]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \state.S1~q\,
	devoe => ww_devoe,
	o => \q[4]~output_o\);

-- Location: IOOBUF_X0_Y11_N2
\q[5]~output\ : cycloneiii_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_q~0_combout\,
	devoe => ww_devoe,
	o => \q[5]~output_o\);

-- Location: IOIBUF_X0_Y26_N1
\clk~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_clk,
	o => \clk~input_o\);

-- Location: CLKCTRL_G4
\clk~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \clk~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \clk~inputclkctrl_outclk\);

-- Location: LCCOMB_X2_Y9_N12
\Selector8~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector8~0_combout\ = (\Add0~3_combout\ & (!\REGCOM:s[5]~2_combout\ & ((!\Equal0~1_combout\) # (!\REGCOM:s[5]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~3_combout\,
	datab => \REGCOM:s[5]~0_combout\,
	datac => \Equal0~1_combout\,
	datad => \REGCOM:s[5]~2_combout\,
	combout => \Selector8~0_combout\);

-- Location: IOIBUF_X0_Y26_N8
\reset~input\ : cycloneiii_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_reset,
	o => \reset~input_o\);

-- Location: FF_X2_Y9_N13
\REGCOM:s[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector8~0_combout\,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGCOM:s[1]~q\);

-- Location: LCCOMB_X2_Y9_N28
\Add0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~1_combout\ = (\REGCOM:s[3]~q\ & (\REGCOM:s[2]~q\ & (\REGCOM:s[0]~q\ & \REGCOM:s[1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGCOM:s[3]~q\,
	datab => \REGCOM:s[2]~q\,
	datac => \REGCOM:s[0]~q\,
	datad => \REGCOM:s[1]~q\,
	combout => \Add0~1_combout\);

-- Location: LCCOMB_X1_Y9_N4
\Add0~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = \REGCOM:s[4]~q\ $ (\Add0~1_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \REGCOM:s[4]~q\,
	datad => \Add0~1_combout\,
	combout => \Add0~4_combout\);

-- Location: LCCOMB_X1_Y9_N16
\Selector5~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector5~0_combout\ = (\Add0~4_combout\ & (!\REGCOM:s[5]~2_combout\ & ((!\Equal0~1_combout\) # (!\REGCOM:s[5]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGCOM:s[5]~0_combout\,
	datab => \Add0~4_combout\,
	datac => \REGCOM:s[5]~2_combout\,
	datad => \Equal0~1_combout\,
	combout => \Selector5~0_combout\);

-- Location: FF_X1_Y9_N17
\REGCOM:s[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector5~0_combout\,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGCOM:s[4]~q\);

-- Location: LCCOMB_X2_Y9_N26
\Selector6~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector6~0_combout\ = (\Add0~2_combout\ & (!\REGCOM:s[5]~2_combout\ & ((!\Equal0~1_combout\) # (!\REGCOM:s[5]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~2_combout\,
	datab => \REGCOM:s[5]~0_combout\,
	datac => \Equal0~1_combout\,
	datad => \REGCOM:s[5]~2_combout\,
	combout => \Selector6~0_combout\);

-- Location: FF_X2_Y9_N27
\REGCOM:s[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector6~0_combout\,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGCOM:s[3]~q\);

-- Location: LCCOMB_X1_Y9_N22
\Equal1~3\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~3_combout\ = (!\REGCOM:s[1]~q\ & (!\REGCOM:s[0]~q\ & !\REGCOM:s[3]~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \REGCOM:s[1]~q\,
	datac => \REGCOM:s[0]~q\,
	datad => \REGCOM:s[3]~q\,
	combout => \Equal1~3_combout\);

-- Location: LCCOMB_X2_Y9_N4
\Add0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = \REGCOM:s[2]~q\ $ (((\REGCOM:s[0]~q\ & \REGCOM:s[1]~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGCOM:s[2]~q\,
	datac => \REGCOM:s[0]~q\,
	datad => \REGCOM:s[1]~q\,
	combout => \Add0~0_combout\);

-- Location: LCCOMB_X1_Y9_N10
\REGCOM:s[5]~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \REGCOM:s[5]~1_combout\ = (\Equal1~3_combout\ & (\Add0~0_combout\ & ((\state.S1~q\) # (\state.S3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.S1~q\,
	datab => \state.S3~q\,
	datac => \Equal1~3_combout\,
	datad => \Add0~0_combout\,
	combout => \REGCOM:s[5]~1_combout\);

-- Location: LCCOMB_X1_Y9_N8
\REGCOM:s[5]~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \REGCOM:s[5]~2_combout\ = (\REGCOM:s[5]~1_combout\ & ((\REGCOM:s[5]~q\ & (\REGCOM:s[4]~q\ & \Add0~1_combout\)) # (!\REGCOM:s[5]~q\ & (!\REGCOM:s[4]~q\ & !\Add0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGCOM:s[5]~q\,
	datab => \REGCOM:s[4]~q\,
	datac => \Add0~1_combout\,
	datad => \REGCOM:s[5]~1_combout\,
	combout => \REGCOM:s[5]~2_combout\);

-- Location: LCCOMB_X2_Y9_N30
\Selector9~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector9~0_combout\ = (!\REGCOM:s[0]~q\ & (!\REGCOM:s[5]~2_combout\ & ((!\Equal0~1_combout\) # (!\REGCOM:s[5]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGCOM:s[5]~0_combout\,
	datab => \Equal0~1_combout\,
	datac => \REGCOM:s[0]~q\,
	datad => \REGCOM:s[5]~2_combout\,
	combout => \Selector9~0_combout\);

-- Location: FF_X2_Y9_N31
\REGCOM:s[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector9~0_combout\,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGCOM:s[0]~q\);

-- Location: LCCOMB_X2_Y9_N14
\Selector4~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector4~0_combout\ = (\Add0~5_combout\ & (!\REGCOM:s[5]~2_combout\ & ((!\Equal0~1_combout\) # (!\REGCOM:s[5]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~5_combout\,
	datab => \REGCOM:s[5]~0_combout\,
	datac => \Equal0~1_combout\,
	datad => \REGCOM:s[5]~2_combout\,
	combout => \Selector4~0_combout\);

-- Location: FF_X2_Y9_N15
\REGCOM:s[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector4~0_combout\,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGCOM:s[5]~q\);

-- Location: LCCOMB_X2_Y9_N16
\Equal1~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~2_combout\ = (\Add0~0_combout\ & ((\REGCOM:s[4]~q\ & (\REGCOM:s[5]~q\ & \Add0~1_combout\)) # (!\REGCOM:s[4]~q\ & (!\REGCOM:s[5]~q\ & !\Add0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGCOM:s[4]~q\,
	datab => \REGCOM:s[5]~q\,
	datac => \Add0~0_combout\,
	datad => \Add0~1_combout\,
	combout => \Equal1~2_combout\);

-- Location: LCCOMB_X2_Y9_N10
\Equal1~4\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal1~4_combout\ = (!\REGCOM:s[1]~q\ & (!\REGCOM:s[0]~q\ & (!\REGCOM:s[3]~q\ & \Equal1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGCOM:s[1]~q\,
	datab => \REGCOM:s[0]~q\,
	datac => \REGCOM:s[3]~q\,
	datad => \Equal1~2_combout\,
	combout => \Equal1~4_combout\);

-- Location: LCCOMB_X2_Y9_N18
\Selector3~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector3~0_combout\ = (\state.S2~q\ & ((\Equal0~1_combout\) # ((\state.S3~q\ & !\Equal1~4_combout\)))) # (!\state.S2~q\ & (((\state.S3~q\ & !\Equal1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.S2~q\,
	datab => \Equal0~1_combout\,
	datac => \state.S3~q\,
	datad => \Equal1~4_combout\,
	combout => \Selector3~0_combout\);

-- Location: CLKCTRL_G2
\reset~inputclkctrl\ : cycloneiii_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \reset~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \reset~inputclkctrl_outclk\);

-- Location: FF_X2_Y9_N19
\state.S3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector3~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.S3~q\);

-- Location: LCCOMB_X1_Y9_N12
\Selector0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector0~0_combout\ = (\Equal0~1_combout\ & (((!\Equal1~4_combout\)) # (!\state.S3~q\))) # (!\Equal0~1_combout\ & (\state.S0~q\ & ((!\Equal1~4_combout\) # (!\state.S3~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Equal0~1_combout\,
	datab => \state.S3~q\,
	datac => \state.S0~q\,
	datad => \Equal1~4_combout\,
	combout => \Selector0~0_combout\);

-- Location: FF_X1_Y9_N13
\state.S0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector0~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.S0~q\);

-- Location: LCCOMB_X1_Y9_N20
\REGCOM:s[5]~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \REGCOM:s[5]~0_combout\ = (\state.S2~q\) # (!\state.S0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.S2~q\,
	datad => \state.S0~q\,
	combout => \REGCOM:s[5]~0_combout\);

-- Location: LCCOMB_X2_Y9_N22
\Selector7~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector7~0_combout\ = (\Add0~0_combout\ & (!\REGCOM:s[5]~2_combout\ & ((!\Equal0~1_combout\) # (!\REGCOM:s[5]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~0_combout\,
	datab => \REGCOM:s[5]~0_combout\,
	datac => \Equal0~1_combout\,
	datad => \REGCOM:s[5]~2_combout\,
	combout => \Selector7~0_combout\);

-- Location: FF_X2_Y9_N23
\REGCOM:s[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector7~0_combout\,
	ena => \reset~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \REGCOM:s[2]~q\);

-- Location: LCCOMB_X2_Y9_N8
\Add0~2\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = \REGCOM:s[3]~q\ $ (((\REGCOM:s[2]~q\ & (\REGCOM:s[0]~q\ & \REGCOM:s[1]~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGCOM:s[3]~q\,
	datab => \REGCOM:s[2]~q\,
	datac => \REGCOM:s[0]~q\,
	datad => \REGCOM:s[1]~q\,
	combout => \Add0~2_combout\);

-- Location: LCCOMB_X2_Y9_N6
\Equal0~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~0_combout\ = (!\REGCOM:s[5]~q\ & (\Add0~0_combout\ & (\REGCOM:s[4]~q\ $ (\Add0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGCOM:s[4]~q\,
	datab => \REGCOM:s[5]~q\,
	datac => \Add0~0_combout\,
	datad => \Add0~1_combout\,
	combout => \Equal0~0_combout\);

-- Location: LCCOMB_X2_Y9_N2
\Equal0~1\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Equal0~1_combout\ = (!\REGCOM:s[1]~q\ & (\Add0~2_combout\ & (\REGCOM:s[0]~q\ & \Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \REGCOM:s[1]~q\,
	datab => \Add0~2_combout\,
	datac => \REGCOM:s[0]~q\,
	datad => \Equal0~0_combout\,
	combout => \Equal0~1_combout\);

-- Location: LCCOMB_X2_Y9_N0
\Selector2~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector2~0_combout\ = (\state.S1~q\ & ((\Equal1~4_combout\) # ((!\Equal0~1_combout\ & \state.S2~q\)))) # (!\state.S1~q\ & (!\Equal0~1_combout\ & (\state.S2~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.S1~q\,
	datab => \Equal0~1_combout\,
	datac => \state.S2~q\,
	datad => \Equal1~4_combout\,
	combout => \Selector2~0_combout\);

-- Location: FF_X2_Y9_N1
\state.S2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector2~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.S2~q\);

-- Location: LCCOMB_X2_Y9_N20
\Selector1~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \Selector1~0_combout\ = (\state.S0~q\ & (((\state.S1~q\ & !\Equal1~4_combout\)))) # (!\state.S0~q\ & ((\Equal0~1_combout\) # ((\state.S1~q\ & !\Equal1~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \state.S0~q\,
	datab => \Equal0~1_combout\,
	datac => \state.S1~q\,
	datad => \Equal1~4_combout\,
	combout => \Selector1~0_combout\);

-- Location: FF_X2_Y9_N21
\state.S1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \clk~inputclkctrl_outclk\,
	d => \Selector1~0_combout\,
	clrn => \reset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \state.S1~q\);

-- Location: LCCOMB_X1_Y9_N2
\q~0\ : cycloneiii_lcell_comb
-- Equation(s):
-- \q~0_combout\ = (\state.S1~q\) # (!\state.S0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \state.S1~q\,
	datad => \state.S0~q\,
	combout => \q~0_combout\);

ww_q(0) <= \q[0]~output_o\;

ww_q(1) <= \q[1]~output_o\;

ww_q(2) <= \q[2]~output_o\;

ww_q(3) <= \q[3]~output_o\;

ww_q(4) <= \q[4]~output_o\;

ww_q(5) <= \q[5]~output_o\;
END structure;


