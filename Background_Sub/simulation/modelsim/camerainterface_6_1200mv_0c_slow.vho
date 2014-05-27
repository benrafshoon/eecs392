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
-- VERSION "Version 13.1.0 Build 162 10/23/2013 SJ Web Edition"

-- DATE "05/26/2014 21:36:38"

-- 
-- Device: Altera EP4CE15F23C6 Package FBGA484
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

ENTITY 	camerainterface IS
    PORT (
	CLOCK_50 : IN std_logic;
	GPIO : INOUT std_logic_vector(35 DOWNTO 0);
	HEX0 : OUT std_logic_vector(6 DOWNTO 0);
	HEX1 : OUT std_logic_vector(6 DOWNTO 0);
	HEX2 : OUT std_logic_vector(6 DOWNTO 0);
	HEX3 : OUT std_logic_vector(6 DOWNTO 0);
	HEX4 : OUT std_logic_vector(6 DOWNTO 0);
	HEX5 : OUT std_logic_vector(6 DOWNTO 0);
	HEX6 : OUT std_logic_vector(6 DOWNTO 0);
	HEX7 : OUT std_logic_vector(6 DOWNTO 0);
	VGA_R : OUT std_logic_vector(7 DOWNTO 0);
	VGA_G : OUT std_logic_vector(7 DOWNTO 0);
	VGA_B : OUT std_logic_vector(7 DOWNTO 0);
	VGA_CLK : OUT std_logic;
	VGA_BLANK_N : OUT std_logic;
	VGA_HS : OUT std_logic;
	VGA_VS : OUT std_logic;
	VGA_SYNC_N : OUT std_logic;
	SRAM_ADDR : OUT std_logic_vector(19 DOWNTO 0);
	SRAM_CE_N : OUT std_logic;
	SRAM_DQ : INOUT std_logic_vector(15 DOWNTO 0);
	SRAM_LB_N : OUT std_logic;
	SRAM_UB_N : OUT std_logic;
	SRAM_OE_N : OUT std_logic;
	SRAM_WE_N : OUT std_logic;
	KEY : IN std_logic_vector(3 DOWNTO 0);
	SW : IN std_logic_vector(17 DOWNTO 0)
	);
END camerainterface;

-- Design Ports Information
-- HEX0[0]	=>  Location: PIN_A5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_C1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_B4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_B5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_C8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_H10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_C6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_C3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_F7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_A3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_F8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_B3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_C4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_G8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[0]	=>  Location: PIN_A4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[1]	=>  Location: PIN_H9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[2]	=>  Location: PIN_C7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[3]	=>  Location: PIN_E3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[4]	=>  Location: PIN_F9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[5]	=>  Location: PIN_A6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[6]	=>  Location: PIN_F10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[0]	=>  Location: PIN_H6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[1]	=>  Location: PIN_C2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[2]	=>  Location: PIN_E7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[3]	=>  Location: PIN_B1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[4]	=>  Location: PIN_E4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[5]	=>  Location: PIN_H5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[6]	=>  Location: PIN_D6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[0]	=>  Location: PIN_M6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[1]	=>  Location: PIN_AA4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[2]	=>  Location: PIN_L6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[3]	=>  Location: PIN_V7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[4]	=>  Location: PIN_AB4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[5]	=>  Location: PIN_W6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX4[6]	=>  Location: PIN_M1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[0]	=>  Location: PIN_Y6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[1]	=>  Location: PIN_N7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[2]	=>  Location: PIN_M4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[3]	=>  Location: PIN_Y2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[4]	=>  Location: PIN_P7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[5]	=>  Location: PIN_V4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX5[6]	=>  Location: PIN_T3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[0]	=>  Location: PIN_J7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[1]	=>  Location: PIN_AB3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[2]	=>  Location: PIN_U1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[3]	=>  Location: PIN_N6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[4]	=>  Location: PIN_M2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[5]	=>  Location: PIN_N2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX6[6]	=>  Location: PIN_R1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[0]	=>  Location: PIN_Y4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[1]	=>  Location: PIN_T4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[2]	=>  Location: PIN_U7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[3]	=>  Location: PIN_V1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[4]	=>  Location: PIN_M7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[5]	=>  Location: PIN_V2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX7[6]	=>  Location: PIN_P5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[0]	=>  Location: PIN_V8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[1]	=>  Location: PIN_K8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[2]	=>  Location: PIN_M20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[3]	=>  Location: PIN_T8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[4]	=>  Location: PIN_AA5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[5]	=>  Location: PIN_N8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[6]	=>  Location: PIN_M8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_R[7]	=>  Location: PIN_R8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[0]	=>  Location: PIN_AA7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[1]	=>  Location: PIN_W2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[2]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[3]	=>  Location: PIN_R9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[4]	=>  Location: PIN_U9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[5]	=>  Location: PIN_W1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[6]	=>  Location: PIN_Y1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_G[7]	=>  Location: PIN_T7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[0]	=>  Location: PIN_W8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[1]	=>  Location: PIN_L8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[2]	=>  Location: PIN_M16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[3]	=>  Location: PIN_Y3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[4]	=>  Location: PIN_Y7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[5]	=>  Location: PIN_U2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[6]	=>  Location: PIN_AA1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_B[7]	=>  Location: PIN_R7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_CLK	=>  Location: PIN_L21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_BLANK_N	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_HS	=>  Location: PIN_B13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_VS	=>  Location: PIN_A13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- VGA_SYNC_N	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SRAM_ADDR[0]	=>  Location: PIN_B8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SRAM_ADDR[1]	=>  Location: PIN_R2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SRAM_ADDR[2]	=>  Location: PIN_A8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SRAM_ADDR[3]	=>  Location: PIN_AB9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SRAM_ADDR[4]	=>  Location: PIN_T11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SRAM_ADDR[5]	=>  Location: PIN_B6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SRAM_ADDR[6]	=>  Location: PIN_Y10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SRAM_ADDR[7]	=>  Location: PIN_E11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SRAM_ADDR[8]	=>  Location: PIN_E12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SRAM_ADDR[9]	=>  Location: PIN_A7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SRAM_ADDR[10]	=>  Location: PIN_L15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SRAM_ADDR[11]	=>  Location: PIN_T10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SRAM_ADDR[12]	=>  Location: PIN_AB10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SRAM_ADDR[13]	=>  Location: PIN_C10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SRAM_ADDR[14]	=>  Location: PIN_G11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SRAM_ADDR[15]	=>  Location: PIN_A10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SRAM_ADDR[16]	=>  Location: PIN_B9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SRAM_ADDR[17]	=>  Location: PIN_AB8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SRAM_ADDR[18]	=>  Location: PIN_B10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SRAM_ADDR[19]	=>  Location: PIN_M19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SRAM_CE_N	=>  Location: PIN_B7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SRAM_LB_N	=>  Location: PIN_C15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SRAM_UB_N	=>  Location: PIN_W15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SRAM_OE_N	=>  Location: PIN_F13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SRAM_WE_N	=>  Location: PIN_P3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_AA12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_AB12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[3]	=>  Location: PIN_K17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_V5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_C17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_E16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_F16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_R15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_A17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_AB16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AA17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[10]	=>  Location: PIN_E14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[11]	=>  Location: PIN_V16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[12]	=>  Location: PIN_W20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[13]	=>  Location: PIN_B18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[14]	=>  Location: PIN_P21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[15]	=>  Location: PIN_R16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[16]	=>  Location: PIN_T17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[17]	=>  Location: PIN_G7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO[13]	=>  Location: PIN_G5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO[14]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO[15]	=>  Location: PIN_E1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO[16]	=>  Location: PIN_R14,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO[17]	=>  Location: PIN_AB7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO[18]	=>  Location: PIN_U13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO[19]	=>  Location: PIN_D22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO[20]	=>  Location: PIN_V3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO[21]	=>  Location: PIN_A20,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO[22]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO[23]	=>  Location: PIN_E9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO[24]	=>  Location: PIN_N15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO[25]	=>  Location: PIN_Y17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO[26]	=>  Location: PIN_AA19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO[27]	=>  Location: PIN_P6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO[28]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO[29]	=>  Location: PIN_C13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO[30]	=>  Location: PIN_D17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO[31]	=>  Location: PIN_V9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO[32]	=>  Location: PIN_N16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO[33]	=>  Location: PIN_D19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO[34]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO[0]	=>  Location: PIN_H1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO[1]	=>  Location: PIN_J1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO[2]	=>  Location: PIN_H2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO[3]	=>  Location: PIN_F1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO[4]	=>  Location: PIN_J3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO[5]	=>  Location: PIN_K7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO[6]	=>  Location: PIN_G3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO[7]	=>  Location: PIN_G4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO[8]	=>  Location: PIN_J4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO[9]	=>  Location: PIN_V10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO[10]	=>  Location: PIN_K19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO[11]	=>  Location: PIN_P4,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO[12]	=>  Location: PIN_N5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO[35]	=>  Location: PIN_AA16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SRAM_DQ[0]	=>  Location: PIN_Y8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SRAM_DQ[1]	=>  Location: PIN_A9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SRAM_DQ[2]	=>  Location: PIN_G9,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SRAM_DQ[3]	=>  Location: PIN_AB5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SRAM_DQ[4]	=>  Location: PIN_T5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SRAM_DQ[5]	=>  Location: PIN_V6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SRAM_DQ[6]	=>  Location: PIN_R11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SRAM_DQ[7]	=>  Location: PIN_AA3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SRAM_DQ[8]	=>  Location: PIN_N1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SRAM_DQ[9]	=>  Location: PIN_L7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SRAM_DQ[10]	=>  Location: PIN_M5,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SRAM_DQ[11]	=>  Location: PIN_J2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SRAM_DQ[12]	=>  Location: PIN_P1,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SRAM_DQ[13]	=>  Location: PIN_P2,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SRAM_DQ[14]	=>  Location: PIN_W7,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SRAM_DQ[15]	=>  Location: PIN_M3,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[0]	=>  Location: PIN_V11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_F11,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_D10,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_H11,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF camerainterface IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_CLOCK_50 : std_logic;
SIGNAL ww_HEX0 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX1 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX2 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX3 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX4 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX5 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX6 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_HEX7 : std_logic_vector(6 DOWNTO 0);
SIGNAL ww_VGA_R : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_VGA_G : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_VGA_B : std_logic_vector(7 DOWNTO 0);
SIGNAL ww_VGA_CLK : std_logic;
SIGNAL ww_VGA_BLANK_N : std_logic;
SIGNAL ww_VGA_HS : std_logic;
SIGNAL ww_VGA_VS : std_logic;
SIGNAL ww_VGA_SYNC_N : std_logic;
SIGNAL ww_SRAM_ADDR : std_logic_vector(19 DOWNTO 0);
SIGNAL ww_SRAM_CE_N : std_logic;
SIGNAL ww_SRAM_LB_N : std_logic;
SIGNAL ww_SRAM_UB_N : std_logic;
SIGNAL ww_SRAM_OE_N : std_logic;
SIGNAL ww_SRAM_WE_N : std_logic;
SIGNAL ww_KEY : std_logic_vector(3 DOWNTO 0);
SIGNAL ww_SW : std_logic_vector(17 DOWNTO 0);
SIGNAL \backgroundsubtraction_eof~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \camera_clock~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \GPIO[11]~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \GPIO[8]~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \bpixel[0]~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \fpixel[0]~1clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \diff[0]~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \camstatemachine_instance|WideOr2~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SRAM_ADDR[19]~18clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \GPIO[9]~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \KEY[3]~input_o\ : std_logic;
SIGNAL \SW[2]~input_o\ : std_logic;
SIGNAL \SW[3]~input_o\ : std_logic;
SIGNAL \SW[4]~input_o\ : std_logic;
SIGNAL \SW[5]~input_o\ : std_logic;
SIGNAL \SW[6]~input_o\ : std_logic;
SIGNAL \SW[7]~input_o\ : std_logic;
SIGNAL \SW[8]~input_o\ : std_logic;
SIGNAL \SW[9]~input_o\ : std_logic;
SIGNAL \SW[10]~input_o\ : std_logic;
SIGNAL \SW[11]~input_o\ : std_logic;
SIGNAL \SW[12]~input_o\ : std_logic;
SIGNAL \SW[13]~input_o\ : std_logic;
SIGNAL \SW[14]~input_o\ : std_logic;
SIGNAL \SW[15]~input_o\ : std_logic;
SIGNAL \SW[16]~input_o\ : std_logic;
SIGNAL \SW[17]~input_o\ : std_logic;
SIGNAL \GPIO[13]~input_o\ : std_logic;
SIGNAL \GPIO[14]~input_o\ : std_logic;
SIGNAL \GPIO[15]~input_o\ : std_logic;
SIGNAL \GPIO[16]~input_o\ : std_logic;
SIGNAL \GPIO[17]~input_o\ : std_logic;
SIGNAL \GPIO[18]~input_o\ : std_logic;
SIGNAL \GPIO[19]~input_o\ : std_logic;
SIGNAL \GPIO[20]~input_o\ : std_logic;
SIGNAL \GPIO[21]~input_o\ : std_logic;
SIGNAL \GPIO[22]~input_o\ : std_logic;
SIGNAL \GPIO[23]~input_o\ : std_logic;
SIGNAL \GPIO[24]~input_o\ : std_logic;
SIGNAL \GPIO[25]~input_o\ : std_logic;
SIGNAL \GPIO[26]~input_o\ : std_logic;
SIGNAL \GPIO[27]~input_o\ : std_logic;
SIGNAL \GPIO[28]~input_o\ : std_logic;
SIGNAL \GPIO[29]~input_o\ : std_logic;
SIGNAL \GPIO[30]~input_o\ : std_logic;
SIGNAL \GPIO[31]~input_o\ : std_logic;
SIGNAL \GPIO[32]~input_o\ : std_logic;
SIGNAL \GPIO[33]~input_o\ : std_logic;
SIGNAL \GPIO[34]~input_o\ : std_logic;
SIGNAL \GPIO[10]~input_o\ : std_logic;
SIGNAL \GPIO[12]~input_o\ : std_logic;
SIGNAL \GPIO[35]~input_o\ : std_logic;
SIGNAL \SRAM_DQ[0]~input_o\ : std_logic;
SIGNAL \SRAM_DQ[1]~input_o\ : std_logic;
SIGNAL \SRAM_DQ[2]~input_o\ : std_logic;
SIGNAL \SRAM_DQ[3]~input_o\ : std_logic;
SIGNAL \SRAM_DQ[4]~input_o\ : std_logic;
SIGNAL \SRAM_DQ[5]~input_o\ : std_logic;
SIGNAL \SRAM_DQ[6]~input_o\ : std_logic;
SIGNAL \SRAM_DQ[7]~input_o\ : std_logic;
SIGNAL \GPIO[13]~output_o\ : std_logic;
SIGNAL \GPIO[14]~output_o\ : std_logic;
SIGNAL \GPIO[15]~output_o\ : std_logic;
SIGNAL \GPIO[16]~output_o\ : std_logic;
SIGNAL \GPIO[17]~output_o\ : std_logic;
SIGNAL \GPIO[18]~output_o\ : std_logic;
SIGNAL \GPIO[19]~output_o\ : std_logic;
SIGNAL \GPIO[20]~output_o\ : std_logic;
SIGNAL \GPIO[21]~output_o\ : std_logic;
SIGNAL \GPIO[22]~output_o\ : std_logic;
SIGNAL \GPIO[23]~output_o\ : std_logic;
SIGNAL \GPIO[24]~output_o\ : std_logic;
SIGNAL \GPIO[25]~output_o\ : std_logic;
SIGNAL \GPIO[26]~output_o\ : std_logic;
SIGNAL \GPIO[27]~output_o\ : std_logic;
SIGNAL \GPIO[28]~output_o\ : std_logic;
SIGNAL \GPIO[29]~output_o\ : std_logic;
SIGNAL \GPIO[30]~output_o\ : std_logic;
SIGNAL \GPIO[31]~output_o\ : std_logic;
SIGNAL \GPIO[32]~output_o\ : std_logic;
SIGNAL \GPIO[33]~output_o\ : std_logic;
SIGNAL \GPIO[34]~output_o\ : std_logic;
SIGNAL \GPIO[0]~output_o\ : std_logic;
SIGNAL \GPIO[1]~output_o\ : std_logic;
SIGNAL \GPIO[2]~output_o\ : std_logic;
SIGNAL \GPIO[3]~output_o\ : std_logic;
SIGNAL \GPIO[4]~output_o\ : std_logic;
SIGNAL \GPIO[5]~output_o\ : std_logic;
SIGNAL \GPIO[6]~output_o\ : std_logic;
SIGNAL \GPIO[7]~output_o\ : std_logic;
SIGNAL \GPIO[8]~output_o\ : std_logic;
SIGNAL \GPIO[9]~output_o\ : std_logic;
SIGNAL \GPIO[10]~output_o\ : std_logic;
SIGNAL \GPIO[11]~output_o\ : std_logic;
SIGNAL \GPIO[12]~output_o\ : std_logic;
SIGNAL \GPIO[35]~output_o\ : std_logic;
SIGNAL \SRAM_DQ[0]~output_o\ : std_logic;
SIGNAL \SRAM_DQ[1]~output_o\ : std_logic;
SIGNAL \SRAM_DQ[2]~output_o\ : std_logic;
SIGNAL \SRAM_DQ[3]~output_o\ : std_logic;
SIGNAL \SRAM_DQ[4]~output_o\ : std_logic;
SIGNAL \SRAM_DQ[5]~output_o\ : std_logic;
SIGNAL \SRAM_DQ[6]~output_o\ : std_logic;
SIGNAL \SRAM_DQ[7]~output_o\ : std_logic;
SIGNAL \SRAM_DQ[8]~output_o\ : std_logic;
SIGNAL \SRAM_DQ[9]~output_o\ : std_logic;
SIGNAL \SRAM_DQ[10]~output_o\ : std_logic;
SIGNAL \SRAM_DQ[11]~output_o\ : std_logic;
SIGNAL \SRAM_DQ[12]~output_o\ : std_logic;
SIGNAL \SRAM_DQ[13]~output_o\ : std_logic;
SIGNAL \SRAM_DQ[14]~output_o\ : std_logic;
SIGNAL \SRAM_DQ[15]~output_o\ : std_logic;
SIGNAL \HEX0[0]~output_o\ : std_logic;
SIGNAL \HEX0[1]~output_o\ : std_logic;
SIGNAL \HEX0[2]~output_o\ : std_logic;
SIGNAL \HEX0[3]~output_o\ : std_logic;
SIGNAL \HEX0[4]~output_o\ : std_logic;
SIGNAL \HEX0[5]~output_o\ : std_logic;
SIGNAL \HEX0[6]~output_o\ : std_logic;
SIGNAL \HEX1[0]~output_o\ : std_logic;
SIGNAL \HEX1[1]~output_o\ : std_logic;
SIGNAL \HEX1[2]~output_o\ : std_logic;
SIGNAL \HEX1[3]~output_o\ : std_logic;
SIGNAL \HEX1[4]~output_o\ : std_logic;
SIGNAL \HEX1[5]~output_o\ : std_logic;
SIGNAL \HEX1[6]~output_o\ : std_logic;
SIGNAL \HEX2[0]~output_o\ : std_logic;
SIGNAL \HEX2[1]~output_o\ : std_logic;
SIGNAL \HEX2[2]~output_o\ : std_logic;
SIGNAL \HEX2[3]~output_o\ : std_logic;
SIGNAL \HEX2[4]~output_o\ : std_logic;
SIGNAL \HEX2[5]~output_o\ : std_logic;
SIGNAL \HEX2[6]~output_o\ : std_logic;
SIGNAL \HEX3[0]~output_o\ : std_logic;
SIGNAL \HEX3[1]~output_o\ : std_logic;
SIGNAL \HEX3[2]~output_o\ : std_logic;
SIGNAL \HEX3[3]~output_o\ : std_logic;
SIGNAL \HEX3[4]~output_o\ : std_logic;
SIGNAL \HEX3[5]~output_o\ : std_logic;
SIGNAL \HEX3[6]~output_o\ : std_logic;
SIGNAL \HEX4[0]~output_o\ : std_logic;
SIGNAL \HEX4[1]~output_o\ : std_logic;
SIGNAL \HEX4[2]~output_o\ : std_logic;
SIGNAL \HEX4[3]~output_o\ : std_logic;
SIGNAL \HEX4[4]~output_o\ : std_logic;
SIGNAL \HEX4[5]~output_o\ : std_logic;
SIGNAL \HEX4[6]~output_o\ : std_logic;
SIGNAL \HEX5[0]~output_o\ : std_logic;
SIGNAL \HEX5[1]~output_o\ : std_logic;
SIGNAL \HEX5[2]~output_o\ : std_logic;
SIGNAL \HEX5[3]~output_o\ : std_logic;
SIGNAL \HEX5[4]~output_o\ : std_logic;
SIGNAL \HEX5[5]~output_o\ : std_logic;
SIGNAL \HEX5[6]~output_o\ : std_logic;
SIGNAL \HEX6[0]~output_o\ : std_logic;
SIGNAL \HEX6[1]~output_o\ : std_logic;
SIGNAL \HEX6[2]~output_o\ : std_logic;
SIGNAL \HEX6[3]~output_o\ : std_logic;
SIGNAL \HEX6[4]~output_o\ : std_logic;
SIGNAL \HEX6[5]~output_o\ : std_logic;
SIGNAL \HEX6[6]~output_o\ : std_logic;
SIGNAL \HEX7[0]~output_o\ : std_logic;
SIGNAL \HEX7[1]~output_o\ : std_logic;
SIGNAL \HEX7[2]~output_o\ : std_logic;
SIGNAL \HEX7[3]~output_o\ : std_logic;
SIGNAL \HEX7[4]~output_o\ : std_logic;
SIGNAL \HEX7[5]~output_o\ : std_logic;
SIGNAL \HEX7[6]~output_o\ : std_logic;
SIGNAL \VGA_R[0]~output_o\ : std_logic;
SIGNAL \VGA_R[1]~output_o\ : std_logic;
SIGNAL \VGA_R[2]~output_o\ : std_logic;
SIGNAL \VGA_R[3]~output_o\ : std_logic;
SIGNAL \VGA_R[4]~output_o\ : std_logic;
SIGNAL \VGA_R[5]~output_o\ : std_logic;
SIGNAL \VGA_R[6]~output_o\ : std_logic;
SIGNAL \VGA_R[7]~output_o\ : std_logic;
SIGNAL \VGA_G[0]~output_o\ : std_logic;
SIGNAL \VGA_G[1]~output_o\ : std_logic;
SIGNAL \VGA_G[2]~output_o\ : std_logic;
SIGNAL \VGA_G[3]~output_o\ : std_logic;
SIGNAL \VGA_G[4]~output_o\ : std_logic;
SIGNAL \VGA_G[5]~output_o\ : std_logic;
SIGNAL \VGA_G[6]~output_o\ : std_logic;
SIGNAL \VGA_G[7]~output_o\ : std_logic;
SIGNAL \VGA_B[0]~output_o\ : std_logic;
SIGNAL \VGA_B[1]~output_o\ : std_logic;
SIGNAL \VGA_B[2]~output_o\ : std_logic;
SIGNAL \VGA_B[3]~output_o\ : std_logic;
SIGNAL \VGA_B[4]~output_o\ : std_logic;
SIGNAL \VGA_B[5]~output_o\ : std_logic;
SIGNAL \VGA_B[6]~output_o\ : std_logic;
SIGNAL \VGA_B[7]~output_o\ : std_logic;
SIGNAL \VGA_CLK~output_o\ : std_logic;
SIGNAL \VGA_BLANK_N~output_o\ : std_logic;
SIGNAL \VGA_HS~output_o\ : std_logic;
SIGNAL \VGA_VS~output_o\ : std_logic;
SIGNAL \VGA_SYNC_N~output_o\ : std_logic;
SIGNAL \SRAM_ADDR[0]~output_o\ : std_logic;
SIGNAL \SRAM_ADDR[1]~output_o\ : std_logic;
SIGNAL \SRAM_ADDR[2]~output_o\ : std_logic;
SIGNAL \SRAM_ADDR[3]~output_o\ : std_logic;
SIGNAL \SRAM_ADDR[4]~output_o\ : std_logic;
SIGNAL \SRAM_ADDR[5]~output_o\ : std_logic;
SIGNAL \SRAM_ADDR[6]~output_o\ : std_logic;
SIGNAL \SRAM_ADDR[7]~output_o\ : std_logic;
SIGNAL \SRAM_ADDR[8]~output_o\ : std_logic;
SIGNAL \SRAM_ADDR[9]~output_o\ : std_logic;
SIGNAL \SRAM_ADDR[10]~output_o\ : std_logic;
SIGNAL \SRAM_ADDR[11]~output_o\ : std_logic;
SIGNAL \SRAM_ADDR[12]~output_o\ : std_logic;
SIGNAL \SRAM_ADDR[13]~output_o\ : std_logic;
SIGNAL \SRAM_ADDR[14]~output_o\ : std_logic;
SIGNAL \SRAM_ADDR[15]~output_o\ : std_logic;
SIGNAL \SRAM_ADDR[16]~output_o\ : std_logic;
SIGNAL \SRAM_ADDR[17]~output_o\ : std_logic;
SIGNAL \SRAM_ADDR[18]~output_o\ : std_logic;
SIGNAL \SRAM_ADDR[19]~output_o\ : std_logic;
SIGNAL \SRAM_CE_N~output_o\ : std_logic;
SIGNAL \SRAM_LB_N~output_o\ : std_logic;
SIGNAL \SRAM_UB_N~output_o\ : std_logic;
SIGNAL \SRAM_OE_N~output_o\ : std_logic;
SIGNAL \SRAM_WE_N~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \camera_clock~0_combout\ : std_logic;
SIGNAL \camera_clock~feeder_combout\ : std_logic;
SIGNAL \camera_clock~q\ : std_logic;
SIGNAL \GPIO[11]~input_o\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \camstatemachine_instance|current_state.wait_for_display_end_pre_copy~6_combout\ : std_logic;
SIGNAL \camstatemachine_instance|current_state.wait_for_display_end_pre_copy~1_combout\ : std_logic;
SIGNAL \camera_clock~clkctrl_outclk\ : std_logic;
SIGNAL \vga_sync_instance|Add0~15\ : std_logic;
SIGNAL \vga_sync_instance|Add0~16_combout\ : std_logic;
SIGNAL \vga_sync_instance|h_count~0_combout\ : std_logic;
SIGNAL \vga_sync_instance|Add0~17\ : std_logic;
SIGNAL \vga_sync_instance|Add0~18_combout\ : std_logic;
SIGNAL \vga_sync_instance|h_count~1_combout\ : std_logic;
SIGNAL \vga_sync_instance|Add0~0_combout\ : std_logic;
SIGNAL \vga_sync_instance|h_count~2_combout\ : std_logic;
SIGNAL \vga_sync_instance|Add0~1\ : std_logic;
SIGNAL \vga_sync_instance|Add0~2_combout\ : std_logic;
SIGNAL \vga_sync_instance|Add0~3\ : std_logic;
SIGNAL \vga_sync_instance|Add0~4_combout\ : std_logic;
SIGNAL \vga_sync_instance|Equal0~0_combout\ : std_logic;
SIGNAL \vga_sync_instance|Add0~5\ : std_logic;
SIGNAL \vga_sync_instance|Add0~6_combout\ : std_logic;
SIGNAL \vga_sync_instance|Add0~7\ : std_logic;
SIGNAL \vga_sync_instance|Add0~8_combout\ : std_logic;
SIGNAL \vga_sync_instance|Equal0~1_combout\ : std_logic;
SIGNAL \vga_sync_instance|Equal0~2_combout\ : std_logic;
SIGNAL \vga_sync_instance|Add0~9\ : std_logic;
SIGNAL \vga_sync_instance|Add0~10_combout\ : std_logic;
SIGNAL \vga_sync_instance|h_count~3_combout\ : std_logic;
SIGNAL \vga_sync_instance|Add0~11\ : std_logic;
SIGNAL \vga_sync_instance|Add0~12_combout\ : std_logic;
SIGNAL \vga_sync_instance|Add0~13\ : std_logic;
SIGNAL \vga_sync_instance|Add0~14_combout\ : std_logic;
SIGNAL \vga_sync_instance|process_0~0_combout\ : std_logic;
SIGNAL \vga_sync_instance|process_0~1_combout\ : std_logic;
SIGNAL \vga_sync_instance|process_0~2_combout\ : std_logic;
SIGNAL \vga_sync_instance|Equal0~3_combout\ : std_logic;
SIGNAL \vga_sync_instance|process_0~3_combout\ : std_logic;
SIGNAL \vga_sync_instance|Equal1~0_combout\ : std_logic;
SIGNAL \vga_sync_instance|v_count[4]~0_combout\ : std_logic;
SIGNAL \vga_sync_instance|Add1~0_combout\ : std_logic;
SIGNAL \vga_sync_instance|v_count~8_combout\ : std_logic;
SIGNAL \vga_sync_instance|Add1~1\ : std_logic;
SIGNAL \vga_sync_instance|Add1~2_combout\ : std_logic;
SIGNAL \vga_sync_instance|process_0~4_combout\ : std_logic;
SIGNAL \vga_sync_instance|v_count~9_combout\ : std_logic;
SIGNAL \vga_sync_instance|Add1~3\ : std_logic;
SIGNAL \vga_sync_instance|Add1~4_combout\ : std_logic;
SIGNAL \vga_sync_instance|v_count[2]~10_combout\ : std_logic;
SIGNAL \vga_sync_instance|Add1~5\ : std_logic;
SIGNAL \vga_sync_instance|Add1~6_combout\ : std_logic;
SIGNAL \vga_sync_instance|v_count[3]~11_combout\ : std_logic;
SIGNAL \vga_sync_instance|Add1~7\ : std_logic;
SIGNAL \vga_sync_instance|Add1~8_combout\ : std_logic;
SIGNAL \vga_sync_instance|v_count[4]~7_combout\ : std_logic;
SIGNAL \vga_sync_instance|Add1~9\ : std_logic;
SIGNAL \vga_sync_instance|Add1~10_combout\ : std_logic;
SIGNAL \vga_sync_instance|v_count[5]~3_combout\ : std_logic;
SIGNAL \vga_sync_instance|Add1~11\ : std_logic;
SIGNAL \vga_sync_instance|Add1~12_combout\ : std_logic;
SIGNAL \vga_sync_instance|v_count[6]~4_combout\ : std_logic;
SIGNAL \vga_sync_instance|Add1~13\ : std_logic;
SIGNAL \vga_sync_instance|Add1~14_combout\ : std_logic;
SIGNAL \vga_sync_instance|v_count[7]~5_combout\ : std_logic;
SIGNAL \vga_sync_instance|Add1~15\ : std_logic;
SIGNAL \vga_sync_instance|Add1~16_combout\ : std_logic;
SIGNAL \vga_sync_instance|v_count[8]~6_combout\ : std_logic;
SIGNAL \vga_sync_instance|LessThan1~1_combout\ : std_logic;
SIGNAL \vga_sync_instance|LessThan1~0_combout\ : std_logic;
SIGNAL \vga_sync_instance|LessThan1~2_combout\ : std_logic;
SIGNAL \vga_sync_instance|v_count[2]~1_combout\ : std_logic;
SIGNAL \vga_sync_instance|Add1~17\ : std_logic;
SIGNAL \vga_sync_instance|Add1~18_combout\ : std_logic;
SIGNAL \vga_sync_instance|v_count[9]~2_combout\ : std_logic;
SIGNAL \vga_sync_instance|LessThan6~1_combout\ : std_logic;
SIGNAL \vga_sync_instance|LessThan6~0_combout\ : std_logic;
SIGNAL \vga_sync_instance|LessThan6~2_combout\ : std_logic;
SIGNAL \vga_sync_instance|eof~q\ : std_logic;
SIGNAL \camstatemachine_instance|current_state.wait_for_display_end_pre_copy~3_combout\ : std_logic;
SIGNAL \camstatemachine_instance|current_state.wait_for_display_end_pre_copy~0_combout\ : std_logic;
SIGNAL \camstatemachine_instance|current_state.wait_for_display_end_pre_copy~_emulated_q\ : std_logic;
SIGNAL \camstatemachine_instance|current_state.wait_for_display_end_pre_copy~2_combout\ : std_logic;
SIGNAL \GPIO[9]~input_o\ : std_logic;
SIGNAL \camstatemachine_instance|Selector3~0_combout\ : std_logic;
SIGNAL \camstatemachine_instance|current_state.display~0_combout\ : std_logic;
SIGNAL \camstatemachine_instance|current_state.wait_for_cam_start~q\ : std_logic;
SIGNAL \camstatemachine_instance|next_state~0_combout\ : std_logic;
SIGNAL \camstatemachine_instance|current_state.copy1~q\ : std_logic;
SIGNAL \camstatemachine_instance|current_state.read_background_pixel~1_combout\ : std_logic;
SIGNAL \Add3~60_combout\ : std_logic;
SIGNAL \Add3~123_combout\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \camstatemachine_instance|WideOr2~combout\ : std_logic;
SIGNAL \camstatemachine_instance|Selector5~0_combout\ : std_logic;
SIGNAL \camstatemachine_instance|Selector5~1_combout\ : std_logic;
SIGNAL \camstatemachine_instance|current_state.wait_for_display_end_post_copy~q\ : std_logic;
SIGNAL \camstatemachine_instance|current_state.display~1_combout\ : std_logic;
SIGNAL \camstatemachine_instance|current_state.display~q\ : std_logic;
SIGNAL \camstatemachine_instance|WideOr0~combout\ : std_logic;
SIGNAL \backgroundsubtraction_eof~0_combout\ : std_logic;
SIGNAL \backgroundsubtraction_eof~0clkctrl_outclk\ : std_logic;
SIGNAL \Add3~61\ : std_logic;
SIGNAL \Add3~62_combout\ : std_logic;
SIGNAL \Add3~124_combout\ : std_logic;
SIGNAL \Add3~63\ : std_logic;
SIGNAL \Add3~64_combout\ : std_logic;
SIGNAL \Add3~125_combout\ : std_logic;
SIGNAL \Add3~65\ : std_logic;
SIGNAL \Add3~66_combout\ : std_logic;
SIGNAL \Add3~126_combout\ : std_logic;
SIGNAL \Add3~67\ : std_logic;
SIGNAL \Add3~68_combout\ : std_logic;
SIGNAL \Add3~127_combout\ : std_logic;
SIGNAL \Add3~69\ : std_logic;
SIGNAL \Add3~70_combout\ : std_logic;
SIGNAL \Add3~128_combout\ : std_logic;
SIGNAL \Add3~71\ : std_logic;
SIGNAL \Add3~72_combout\ : std_logic;
SIGNAL \Add3~129_combout\ : std_logic;
SIGNAL \Add3~73\ : std_logic;
SIGNAL \Add3~74_combout\ : std_logic;
SIGNAL \Add3~130_combout\ : std_logic;
SIGNAL \Add3~75\ : std_logic;
SIGNAL \Add3~76_combout\ : std_logic;
SIGNAL \Add3~131_combout\ : std_logic;
SIGNAL \Add3~77\ : std_logic;
SIGNAL \Add3~78_combout\ : std_logic;
SIGNAL \Add3~132_combout\ : std_logic;
SIGNAL \Add3~79\ : std_logic;
SIGNAL \Add3~80_combout\ : std_logic;
SIGNAL \Add3~133_combout\ : std_logic;
SIGNAL \Add3~81\ : std_logic;
SIGNAL \Add3~82_combout\ : std_logic;
SIGNAL \Add3~134_combout\ : std_logic;
SIGNAL \Add3~83\ : std_logic;
SIGNAL \Add3~84_combout\ : std_logic;
SIGNAL \Add3~135_combout\ : std_logic;
SIGNAL \Add3~85\ : std_logic;
SIGNAL \Add3~86_combout\ : std_logic;
SIGNAL \Add3~136_combout\ : std_logic;
SIGNAL \Add3~87\ : std_logic;
SIGNAL \Add3~88_combout\ : std_logic;
SIGNAL \Add3~137_combout\ : std_logic;
SIGNAL \Add3~89\ : std_logic;
SIGNAL \Add3~90_combout\ : std_logic;
SIGNAL \Add3~138_combout\ : std_logic;
SIGNAL \Add3~91\ : std_logic;
SIGNAL \Add3~92_combout\ : std_logic;
SIGNAL \Add3~139_combout\ : std_logic;
SIGNAL \Add3~93\ : std_logic;
SIGNAL \Add3~94_combout\ : std_logic;
SIGNAL \Add3~140_combout\ : std_logic;
SIGNAL \Add3~95\ : std_logic;
SIGNAL \Add3~96_combout\ : std_logic;
SIGNAL \Add3~141_combout\ : std_logic;
SIGNAL \LessThan1~4_combout\ : std_logic;
SIGNAL \LessThan1~5_combout\ : std_logic;
SIGNAL \Add3~97\ : std_logic;
SIGNAL \Add3~98_combout\ : std_logic;
SIGNAL \Add3~142_combout\ : std_logic;
SIGNAL \Add3~99\ : std_logic;
SIGNAL \Add3~100_combout\ : std_logic;
SIGNAL \Add3~143_combout\ : std_logic;
SIGNAL \Add3~101\ : std_logic;
SIGNAL \Add3~102_combout\ : std_logic;
SIGNAL \Add3~144_combout\ : std_logic;
SIGNAL \Add3~103\ : std_logic;
SIGNAL \Add3~104_combout\ : std_logic;
SIGNAL \Add3~145_combout\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \Add3~105\ : std_logic;
SIGNAL \Add3~106_combout\ : std_logic;
SIGNAL \Add3~146_combout\ : std_logic;
SIGNAL \Add3~107\ : std_logic;
SIGNAL \Add3~108_combout\ : std_logic;
SIGNAL \Add3~147_combout\ : std_logic;
SIGNAL \Add3~109\ : std_logic;
SIGNAL \Add3~110_combout\ : std_logic;
SIGNAL \Add3~148_combout\ : std_logic;
SIGNAL \Add3~111\ : std_logic;
SIGNAL \Add3~112_combout\ : std_logic;
SIGNAL \Add3~149_combout\ : std_logic;
SIGNAL \LessThan1~1_combout\ : std_logic;
SIGNAL \Add3~113\ : std_logic;
SIGNAL \Add3~114_combout\ : std_logic;
SIGNAL \Add3~150_combout\ : std_logic;
SIGNAL \Add3~115\ : std_logic;
SIGNAL \Add3~116_combout\ : std_logic;
SIGNAL \Add3~151_combout\ : std_logic;
SIGNAL \Add3~117\ : std_logic;
SIGNAL \Add3~118_combout\ : std_logic;
SIGNAL \Add3~120_combout\ : std_logic;
SIGNAL \Add3~119\ : std_logic;
SIGNAL \Add3~121_combout\ : std_logic;
SIGNAL \Add3~152_combout\ : std_logic;
SIGNAL \LessThan1~2_combout\ : std_logic;
SIGNAL \LessThan1~3_combout\ : std_logic;
SIGNAL \backgroundsubtraction_eof~1_combout\ : std_logic;
SIGNAL \backgroundsubtraction_eof~combout\ : std_logic;
SIGNAL \camstatemachine_instance|current_state.read_background_pixel~3_combout\ : std_logic;
SIGNAL \camstatemachine_instance|current_state.read_background_pixel~0_combout\ : std_logic;
SIGNAL \camstatemachine_instance|current_state.read_background_pixel~_emulated_q\ : std_logic;
SIGNAL \camstatemachine_instance|current_state.read_background_pixel~2_combout\ : std_logic;
SIGNAL \camstatemachine_instance|current_state.read_foreground_pixel~q\ : std_logic;
SIGNAL \camstatemachine_instance|current_state.write_processed_pixel~q\ : std_logic;
SIGNAL \camstatemachine_instance|WideOr7~0_combout\ : std_logic;
SIGNAL \camstatemachine_instance|Selector4~0_combout\ : std_logic;
SIGNAL \camstatemachine_instance|Selector4~1_combout\ : std_logic;
SIGNAL \camstatemachine_instance|current_state.copy2~q\ : std_logic;
SIGNAL \camstatemachine_instance|WideOr1~combout\ : std_logic;
SIGNAL \SRAM_ADDR[19]~18_combout\ : std_logic;
SIGNAL \SRAM_ADDR[19]~18clkctrl_outclk\ : std_logic;
SIGNAL \GPIO[11]~inputclkctrl_outclk\ : std_logic;
SIGNAL \GPIO[0]~input_o\ : std_logic;
SIGNAL \cam_instance|y_data[0]~feeder_combout\ : std_logic;
SIGNAL \GPIO[8]~input_o\ : std_logic;
SIGNAL \cam_instance|second_byte~0_combout\ : std_logic;
SIGNAL \GPIO[8]~inputclkctrl_outclk\ : std_logic;
SIGNAL \cam_instance|second_byte~q\ : std_logic;
SIGNAL \cam_instance|y_data[0]~0_combout\ : std_logic;
SIGNAL \camstatemachine_instance|WideOr7~1_combout\ : std_logic;
SIGNAL \camstatemachine_instance|WideOr7~combout\ : std_logic;
SIGNAL \camstatemachine_instance|image_select~combout\ : std_logic;
SIGNAL \bpixel[0]~0_combout\ : std_logic;
SIGNAL \bpixel[0]~0clkctrl_outclk\ : std_logic;
SIGNAL \sram_data_out[15]~0_combout\ : std_logic;
SIGNAL \SRAM_DQ[15]~input_o\ : std_logic;
SIGNAL \sram_data_out[15]~1_combout\ : std_logic;
SIGNAL \fpixel[0]~1_combout\ : std_logic;
SIGNAL \fpixel[0]~1clkctrl_outclk\ : std_logic;
SIGNAL \SRAM_DQ[14]~input_o\ : std_logic;
SIGNAL \sram_data_out[14]~2_combout\ : std_logic;
SIGNAL \SRAM_DQ[13]~input_o\ : std_logic;
SIGNAL \sram_data_out[13]~3_combout\ : std_logic;
SIGNAL \SRAM_DQ[12]~input_o\ : std_logic;
SIGNAL \sram_data_out[12]~4_combout\ : std_logic;
SIGNAL \SRAM_DQ[11]~input_o\ : std_logic;
SIGNAL \sram_data_out[11]~5_combout\ : std_logic;
SIGNAL \SRAM_DQ[10]~input_o\ : std_logic;
SIGNAL \sram_data_out[10]~6_combout\ : std_logic;
SIGNAL \SRAM_DQ[9]~input_o\ : std_logic;
SIGNAL \sram_data_out[9]~7_combout\ : std_logic;
SIGNAL \SRAM_DQ[8]~input_o\ : std_logic;
SIGNAL \sram_data_out[8]~8_combout\ : std_logic;
SIGNAL \Add1~1_cout\ : std_logic;
SIGNAL \Add1~3_cout\ : std_logic;
SIGNAL \Add1~5_cout\ : std_logic;
SIGNAL \Add1~7_cout\ : std_logic;
SIGNAL \Add1~9\ : std_logic;
SIGNAL \Add1~11\ : std_logic;
SIGNAL \Add1~13\ : std_logic;
SIGNAL \Add1~15\ : std_logic;
SIGNAL \Add1~16_combout\ : std_logic;
SIGNAL \diff[0]~0_combout\ : std_logic;
SIGNAL \diff[0]~0clkctrl_outclk\ : std_logic;
SIGNAL \Add1~17\ : std_logic;
SIGNAL \Add1~18_combout\ : std_logic;
SIGNAL \sram_data_in[8]~1_combout\ : std_logic;
SIGNAL \Add1~12_combout\ : std_logic;
SIGNAL \Add1~8_combout\ : std_logic;
SIGNAL \Add1~10_combout\ : std_logic;
SIGNAL \Add1~14_combout\ : std_logic;
SIGNAL \sram_data_in[8]~0_combout\ : std_logic;
SIGNAL \sram_data_in[8]~2_combout\ : std_logic;
SIGNAL \GPIO[1]~input_o\ : std_logic;
SIGNAL \sram_data_in[9]~3_combout\ : std_logic;
SIGNAL \GPIO[2]~input_o\ : std_logic;
SIGNAL \cam_instance|y_data[2]~feeder_combout\ : std_logic;
SIGNAL \sram_data_in[10]~4_combout\ : std_logic;
SIGNAL \GPIO[3]~input_o\ : std_logic;
SIGNAL \cam_instance|y_data[3]~feeder_combout\ : std_logic;
SIGNAL \sram_data_in[11]~5_combout\ : std_logic;
SIGNAL \GPIO[4]~input_o\ : std_logic;
SIGNAL \cam_instance|y_data[4]~feeder_combout\ : std_logic;
SIGNAL \sram_data_in[12]~6_combout\ : std_logic;
SIGNAL \GPIO[5]~input_o\ : std_logic;
SIGNAL \cam_instance|y_data[5]~feeder_combout\ : std_logic;
SIGNAL \sram_data_in[13]~7_combout\ : std_logic;
SIGNAL \GPIO[6]~input_o\ : std_logic;
SIGNAL \cam_instance|y_data[6]~feeder_combout\ : std_logic;
SIGNAL \sram_data_in[14]~8_combout\ : std_logic;
SIGNAL \sram_data_in[14]~9_combout\ : std_logic;
SIGNAL \GPIO[7]~input_o\ : std_logic;
SIGNAL \cam_instance|y_data[7]~feeder_combout\ : std_logic;
SIGNAL \sram_data_in[15]~10_combout\ : std_logic;
SIGNAL \GPIO[9]~inputclkctrl_outclk\ : std_logic;
SIGNAL \cam_instance|current_row[0]~45_combout\ : std_logic;
SIGNAL \cam_instance|current_row[1]~15_combout\ : std_logic;
SIGNAL \cam_instance|current_row[1]~16\ : std_logic;
SIGNAL \cam_instance|current_row[2]~17_combout\ : std_logic;
SIGNAL \cam_instance|current_row[2]~18\ : std_logic;
SIGNAL \cam_instance|current_row[3]~19_combout\ : std_logic;
SIGNAL \cam_instance|vertical_size[1]~feeder_combout\ : std_logic;
SIGNAL \cam_instance|vertical_size[0]~feeder_combout\ : std_logic;
SIGNAL \hex0decoder|segments_out[0]~0_combout\ : std_logic;
SIGNAL \hex0decoder|segments_out[1]~1_combout\ : std_logic;
SIGNAL \hex0decoder|segments_out[2]~2_combout\ : std_logic;
SIGNAL \hex0decoder|segments_out[3]~3_combout\ : std_logic;
SIGNAL \hex0decoder|segments_out[4]~4_combout\ : std_logic;
SIGNAL \hex0decoder|segments_out[5]~5_combout\ : std_logic;
SIGNAL \hex0decoder|segments_out[6]~6_combout\ : std_logic;
SIGNAL \cam_instance|current_row[3]~20\ : std_logic;
SIGNAL \cam_instance|current_row[4]~21_combout\ : std_logic;
SIGNAL \cam_instance|current_row[4]~22\ : std_logic;
SIGNAL \cam_instance|current_row[5]~23_combout\ : std_logic;
SIGNAL \cam_instance|vertical_size[5]~feeder_combout\ : std_logic;
SIGNAL \cam_instance|vertical_size[4]~feeder_combout\ : std_logic;
SIGNAL \cam_instance|current_row[5]~24\ : std_logic;
SIGNAL \cam_instance|current_row[6]~25_combout\ : std_logic;
SIGNAL \cam_instance|current_row[6]~26\ : std_logic;
SIGNAL \cam_instance|current_row[7]~27_combout\ : std_logic;
SIGNAL \cam_instance|vertical_size[7]~feeder_combout\ : std_logic;
SIGNAL \cam_instance|vertical_size[6]~feeder_combout\ : std_logic;
SIGNAL \hex1decoder|segments_out[0]~0_combout\ : std_logic;
SIGNAL \hex1decoder|segments_out[1]~1_combout\ : std_logic;
SIGNAL \hex1decoder|segments_out[2]~2_combout\ : std_logic;
SIGNAL \hex1decoder|segments_out[3]~3_combout\ : std_logic;
SIGNAL \hex1decoder|segments_out[4]~4_combout\ : std_logic;
SIGNAL \hex1decoder|segments_out[5]~5_combout\ : std_logic;
SIGNAL \hex1decoder|segments_out[6]~6_combout\ : std_logic;
SIGNAL \cam_instance|current_row[7]~28\ : std_logic;
SIGNAL \cam_instance|current_row[8]~29_combout\ : std_logic;
SIGNAL \cam_instance|current_row[8]~30\ : std_logic;
SIGNAL \cam_instance|current_row[9]~31_combout\ : std_logic;
SIGNAL \cam_instance|current_row[9]~32\ : std_logic;
SIGNAL \cam_instance|current_row[10]~33_combout\ : std_logic;
SIGNAL \cam_instance|current_row[10]~34\ : std_logic;
SIGNAL \cam_instance|current_row[11]~35_combout\ : std_logic;
SIGNAL \cam_instance|vertical_size[11]~feeder_combout\ : std_logic;
SIGNAL \cam_instance|vertical_size[9]~feeder_combout\ : std_logic;
SIGNAL \cam_instance|vertical_size[10]~feeder_combout\ : std_logic;
SIGNAL \cam_instance|vertical_size[8]~feeder_combout\ : std_logic;
SIGNAL \hex2decoder|segments_out[0]~0_combout\ : std_logic;
SIGNAL \hex2decoder|segments_out[1]~1_combout\ : std_logic;
SIGNAL \hex2decoder|segments_out[2]~2_combout\ : std_logic;
SIGNAL \hex2decoder|segments_out[3]~3_combout\ : std_logic;
SIGNAL \hex2decoder|segments_out[4]~4_combout\ : std_logic;
SIGNAL \hex2decoder|segments_out[5]~5_combout\ : std_logic;
SIGNAL \hex2decoder|segments_out[6]~6_combout\ : std_logic;
SIGNAL \cam_instance|current_row[11]~36\ : std_logic;
SIGNAL \cam_instance|current_row[12]~37_combout\ : std_logic;
SIGNAL \cam_instance|vertical_size[12]~feeder_combout\ : std_logic;
SIGNAL \cam_instance|current_row[12]~38\ : std_logic;
SIGNAL \cam_instance|current_row[13]~39_combout\ : std_logic;
SIGNAL \cam_instance|vertical_size[13]~feeder_combout\ : std_logic;
SIGNAL \cam_instance|current_row[13]~40\ : std_logic;
SIGNAL \cam_instance|current_row[14]~41_combout\ : std_logic;
SIGNAL \cam_instance|vertical_size[14]~feeder_combout\ : std_logic;
SIGNAL \cam_instance|current_row[14]~42\ : std_logic;
SIGNAL \cam_instance|current_row[15]~43_combout\ : std_logic;
SIGNAL \cam_instance|vertical_size[15]~feeder_combout\ : std_logic;
SIGNAL \hex3decoder|segments_out[0]~0_combout\ : std_logic;
SIGNAL \hex3decoder|segments_out[1]~1_combout\ : std_logic;
SIGNAL \hex3decoder|segments_out[2]~2_combout\ : std_logic;
SIGNAL \hex3decoder|segments_out[3]~3_combout\ : std_logic;
SIGNAL \hex3decoder|segments_out[4]~4_combout\ : std_logic;
SIGNAL \hex3decoder|segments_out[5]~5_combout\ : std_logic;
SIGNAL \hex3decoder|segments_out[6]~6_combout\ : std_logic;
SIGNAL \cam_instance|current_column[0]~19_combout\ : std_logic;
SIGNAL \cam_instance|horizontal_size[0]~feeder_combout\ : std_logic;
SIGNAL \cam_instance|current_column[1]~20_combout\ : std_logic;
SIGNAL \cam_instance|current_column[1]~21\ : std_logic;
SIGNAL \cam_instance|current_column[2]~22_combout\ : std_logic;
SIGNAL \cam_instance|current_column[2]~23\ : std_logic;
SIGNAL \cam_instance|current_column[3]~24_combout\ : std_logic;
SIGNAL \hex4decoder|segments_out[0]~0_combout\ : std_logic;
SIGNAL \hex4decoder|segments_out[1]~1_combout\ : std_logic;
SIGNAL \hex4decoder|segments_out[2]~2_combout\ : std_logic;
SIGNAL \hex4decoder|segments_out[3]~3_combout\ : std_logic;
SIGNAL \hex4decoder|segments_out[4]~4_combout\ : std_logic;
SIGNAL \hex4decoder|segments_out[5]~5_combout\ : std_logic;
SIGNAL \hex4decoder|segments_out[6]~6_combout\ : std_logic;
SIGNAL \cam_instance|current_column[3]~25\ : std_logic;
SIGNAL \cam_instance|current_column[4]~26_combout\ : std_logic;
SIGNAL \cam_instance|horizontal_size[4]~feeder_combout\ : std_logic;
SIGNAL \cam_instance|current_column[4]~27\ : std_logic;
SIGNAL \cam_instance|current_column[5]~28_combout\ : std_logic;
SIGNAL \cam_instance|current_column[5]~29\ : std_logic;
SIGNAL \cam_instance|current_column[6]~30_combout\ : std_logic;
SIGNAL \cam_instance|horizontal_size[6]~feeder_combout\ : std_logic;
SIGNAL \cam_instance|current_column[6]~31\ : std_logic;
SIGNAL \cam_instance|current_column[7]~32_combout\ : std_logic;
SIGNAL \cam_instance|horizontal_size[7]~feeder_combout\ : std_logic;
SIGNAL \hex5decoder|segments_out[0]~0_combout\ : std_logic;
SIGNAL \hex5decoder|segments_out[1]~1_combout\ : std_logic;
SIGNAL \hex5decoder|segments_out[2]~2_combout\ : std_logic;
SIGNAL \hex5decoder|segments_out[3]~3_combout\ : std_logic;
SIGNAL \hex5decoder|segments_out[4]~4_combout\ : std_logic;
SIGNAL \hex5decoder|segments_out[5]~5_combout\ : std_logic;
SIGNAL \hex5decoder|segments_out[6]~6_combout\ : std_logic;
SIGNAL \cam_instance|current_column[7]~33\ : std_logic;
SIGNAL \cam_instance|current_column[8]~34_combout\ : std_logic;
SIGNAL \cam_instance|current_column[8]~35\ : std_logic;
SIGNAL \cam_instance|current_column[9]~36_combout\ : std_logic;
SIGNAL \cam_instance|horizontal_size[9]~feeder_combout\ : std_logic;
SIGNAL \cam_instance|horizontal_size[8]~feeder_combout\ : std_logic;
SIGNAL \cam_instance|current_column[9]~37\ : std_logic;
SIGNAL \cam_instance|current_column[10]~38_combout\ : std_logic;
SIGNAL \cam_instance|horizontal_size[10]~feeder_combout\ : std_logic;
SIGNAL \cam_instance|current_column[10]~39\ : std_logic;
SIGNAL \cam_instance|current_column[11]~40_combout\ : std_logic;
SIGNAL \cam_instance|horizontal_size[11]~feeder_combout\ : std_logic;
SIGNAL \hex6decoder|segments_out[0]~0_combout\ : std_logic;
SIGNAL \hex6decoder|segments_out[1]~1_combout\ : std_logic;
SIGNAL \hex6decoder|segments_out[2]~2_combout\ : std_logic;
SIGNAL \hex6decoder|segments_out[3]~3_combout\ : std_logic;
SIGNAL \hex6decoder|segments_out[4]~4_combout\ : std_logic;
SIGNAL \hex6decoder|segments_out[5]~5_combout\ : std_logic;
SIGNAL \hex6decoder|segments_out[6]~6_combout\ : std_logic;
SIGNAL \cam_instance|current_column[11]~41\ : std_logic;
SIGNAL \cam_instance|current_column[12]~42_combout\ : std_logic;
SIGNAL \cam_instance|current_column[12]~43\ : std_logic;
SIGNAL \cam_instance|current_column[13]~44_combout\ : std_logic;
SIGNAL \cam_instance|current_column[13]~45\ : std_logic;
SIGNAL \cam_instance|current_column[14]~46_combout\ : std_logic;
SIGNAL \cam_instance|current_column[14]~47\ : std_logic;
SIGNAL \cam_instance|current_column[15]~48_combout\ : std_logic;
SIGNAL \cam_instance|horizontal_size[15]~feeder_combout\ : std_logic;
SIGNAL \cam_instance|horizontal_size[13]~feeder_combout\ : std_logic;
SIGNAL \hex7decoder|segments_out[0]~0_combout\ : std_logic;
SIGNAL \hex7decoder|segments_out[1]~1_combout\ : std_logic;
SIGNAL \hex7decoder|segments_out[2]~2_combout\ : std_logic;
SIGNAL \hex7decoder|segments_out[3]~3_combout\ : std_logic;
SIGNAL \hex7decoder|segments_out[4]~4_combout\ : std_logic;
SIGNAL \hex7decoder|segments_out[5]~5_combout\ : std_logic;
SIGNAL \hex7decoder|segments_out[6]~6_combout\ : std_logic;
SIGNAL \VGA_R[0]~0_combout\ : std_logic;
SIGNAL \VGA_R[0]~1_combout\ : std_logic;
SIGNAL \camstatemachine_instance|WideOr2~clkctrl_outclk\ : std_logic;
SIGNAL \VGA_R[0]$latch~combout\ : std_logic;
SIGNAL \VGA_R[1]~2_combout\ : std_logic;
SIGNAL \VGA_R[1]$latch~combout\ : std_logic;
SIGNAL \VGA_R[2]~3_combout\ : std_logic;
SIGNAL \VGA_R[2]$latch~combout\ : std_logic;
SIGNAL \VGA_R[3]~4_combout\ : std_logic;
SIGNAL \VGA_R[3]$latch~combout\ : std_logic;
SIGNAL \VGA_R[4]~5_combout\ : std_logic;
SIGNAL \VGA_R[4]$latch~combout\ : std_logic;
SIGNAL \VGA_R[5]~6_combout\ : std_logic;
SIGNAL \VGA_R[5]$latch~combout\ : std_logic;
SIGNAL \VGA_R[6]~7_combout\ : std_logic;
SIGNAL \VGA_R[6]$latch~combout\ : std_logic;
SIGNAL \VGA_R[7]~8_combout\ : std_logic;
SIGNAL \VGA_R[7]$latch~combout\ : std_logic;
SIGNAL \vga_sync_instance|LessThan5~0_combout\ : std_logic;
SIGNAL \vga_sync_instance|video_on_h~q\ : std_logic;
SIGNAL \vga_sync_instance|video_on~combout\ : std_logic;
SIGNAL \vga_sync_instance|process_0~6_combout\ : std_logic;
SIGNAL \vga_sync_instance|process_0~5_combout\ : std_logic;
SIGNAL \vga_sync_instance|process_0~7_combout\ : std_logic;
SIGNAL \vga_sync_instance|horiz_sync~q\ : std_logic;
SIGNAL \vga_sync_instance|horiz_sync_out~q\ : std_logic;
SIGNAL \vga_sync_instance|process_0~8_combout\ : std_logic;
SIGNAL \vga_sync_instance|process_0~9_combout\ : std_logic;
SIGNAL \vga_sync_instance|vert_sync~q\ : std_logic;
SIGNAL \vga_sync_instance|vert_sync_out~q\ : std_logic;
SIGNAL \SRAM_ADDR[0]~0_combout\ : std_logic;
SIGNAL \SRAM_ADDR[0]~1_combout\ : std_logic;
SIGNAL \SRAM_ADDR[1]~2_combout\ : std_logic;
SIGNAL \SRAM_ADDR[1]~3_combout\ : std_logic;
SIGNAL \SRAM_ADDR[2]~4_combout\ : std_logic;
SIGNAL \SRAM_ADDR[2]~5_combout\ : std_logic;
SIGNAL \SRAM_ADDR[3]~6_combout\ : std_logic;
SIGNAL \SRAM_ADDR[3]~7_combout\ : std_logic;
SIGNAL \SRAM_ADDR[4]~8_combout\ : std_logic;
SIGNAL \SRAM_ADDR[4]~9_combout\ : std_logic;
SIGNAL \SRAM_ADDR[5]~10_combout\ : std_logic;
SIGNAL \SRAM_ADDR[5]~11_combout\ : std_logic;
SIGNAL \SRAM_ADDR[6]~12_combout\ : std_logic;
SIGNAL \SRAM_ADDR[6]~13_combout\ : std_logic;
SIGNAL \Add9~0_combout\ : std_logic;
SIGNAL \Add6~0_combout\ : std_logic;
SIGNAL \SRAM_ADDR[7]~14_combout\ : std_logic;
SIGNAL \SRAM_ADDR[7]~15_combout\ : std_logic;
SIGNAL \Add6~1\ : std_logic;
SIGNAL \Add6~2_combout\ : std_logic;
SIGNAL \Add9~1\ : std_logic;
SIGNAL \Add9~2_combout\ : std_logic;
SIGNAL \SRAM_ADDR[8]~16_combout\ : std_logic;
SIGNAL \SRAM_ADDR[8]~17_combout\ : std_logic;
SIGNAL \Add8~0_combout\ : std_logic;
SIGNAL \Add9~3\ : std_logic;
SIGNAL \Add9~4_combout\ : std_logic;
SIGNAL \vga_sync_instance|pixel_row[2]~feeder_combout\ : std_logic;
SIGNAL \Add5~0_combout\ : std_logic;
SIGNAL \Add6~3\ : std_logic;
SIGNAL \Add6~4_combout\ : std_logic;
SIGNAL \SRAM_ADDR[9]~19_combout\ : std_logic;
SIGNAL \SRAM_ADDR[9]~20_combout\ : std_logic;
SIGNAL \Add8~1\ : std_logic;
SIGNAL \Add8~2_combout\ : std_logic;
SIGNAL \Add9~5\ : std_logic;
SIGNAL \Add9~6_combout\ : std_logic;
SIGNAL \vga_sync_instance|pixel_row[3]~feeder_combout\ : std_logic;
SIGNAL \Add5~1\ : std_logic;
SIGNAL \Add5~2_combout\ : std_logic;
SIGNAL \Add6~5\ : std_logic;
SIGNAL \Add6~6_combout\ : std_logic;
SIGNAL \SRAM_ADDR[10]~21_combout\ : std_logic;
SIGNAL \SRAM_ADDR[10]~22_combout\ : std_logic;
SIGNAL \Add8~3\ : std_logic;
SIGNAL \Add8~4_combout\ : std_logic;
SIGNAL \Add9~7\ : std_logic;
SIGNAL \Add9~8_combout\ : std_logic;
SIGNAL \Add5~3\ : std_logic;
SIGNAL \Add5~4_combout\ : std_logic;
SIGNAL \Add6~7\ : std_logic;
SIGNAL \Add6~8_combout\ : std_logic;
SIGNAL \SRAM_ADDR[11]~23_combout\ : std_logic;
SIGNAL \SRAM_ADDR[11]~24_combout\ : std_logic;
SIGNAL \Add8~5\ : std_logic;
SIGNAL \Add8~6_combout\ : std_logic;
SIGNAL \Add9~9\ : std_logic;
SIGNAL \Add9~10_combout\ : std_logic;
SIGNAL \Add10~0_combout\ : std_logic;
SIGNAL \SRAM_ADDR~26_combout\ : std_logic;
SIGNAL \SRAM_ADDR[12]~27_combout\ : std_logic;
SIGNAL \Add5~5\ : std_logic;
SIGNAL \Add5~6_combout\ : std_logic;
SIGNAL \Add6~9\ : std_logic;
SIGNAL \Add6~10_combout\ : std_logic;
SIGNAL \Add4~0_combout\ : std_logic;
SIGNAL \SRAM_ADDR[12]~25_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \SRAM_ADDR~28_combout\ : std_logic;
SIGNAL \SRAM_ADDR[12]~29_combout\ : std_logic;
SIGNAL \SRAM_ADDR[19]~38_combout\ : std_logic;
SIGNAL \Add8~7\ : std_logic;
SIGNAL \Add8~8_combout\ : std_logic;
SIGNAL \Add9~11\ : std_logic;
SIGNAL \Add9~12_combout\ : std_logic;
SIGNAL \SRAM_ADDR[19]~30_combout\ : std_logic;
SIGNAL \vga_sync_instance|pixel_row[6]~feeder_combout\ : std_logic;
SIGNAL \Add5~7\ : std_logic;
SIGNAL \Add5~8_combout\ : std_logic;
SIGNAL \Add6~11\ : std_logic;
SIGNAL \Add6~12_combout\ : std_logic;
SIGNAL \Add4~1\ : std_logic;
SIGNAL \Add4~2_combout\ : std_logic;
SIGNAL \Add7~0_combout\ : std_logic;
SIGNAL \SRAM_ADDR[19]~31_combout\ : std_logic;
SIGNAL \Add10~1\ : std_logic;
SIGNAL \Add10~2_combout\ : std_logic;
SIGNAL \SRAM_ADDR[19]~32_combout\ : std_logic;
SIGNAL \SRAM_ADDR[19]~33_combout\ : std_logic;
SIGNAL \SRAM_ADDR[13]~34_combout\ : std_logic;
SIGNAL \SRAM_ADDR[13]~35_combout\ : std_logic;
SIGNAL \fpixel[0]~0_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \SRAM_ADDR[13]~36_combout\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \SRAM_ADDR[13]~37_combout\ : std_logic;
SIGNAL \SRAM_ADDR[13]~39_combout\ : std_logic;
SIGNAL \Add8~9\ : std_logic;
SIGNAL \Add8~10_combout\ : std_logic;
SIGNAL \Add9~13\ : std_logic;
SIGNAL \Add9~14_combout\ : std_logic;
SIGNAL \Add2~1\ : std_logic;
SIGNAL \Add2~2_combout\ : std_logic;
SIGNAL \Add5~9\ : std_logic;
SIGNAL \Add5~10_combout\ : std_logic;
SIGNAL \Add6~13\ : std_logic;
SIGNAL \Add6~14_combout\ : std_logic;
SIGNAL \Add4~3\ : std_logic;
SIGNAL \Add4~4_combout\ : std_logic;
SIGNAL \Add7~1\ : std_logic;
SIGNAL \Add7~2_combout\ : std_logic;
SIGNAL \Add10~3\ : std_logic;
SIGNAL \Add10~4_combout\ : std_logic;
SIGNAL \SRAM_ADDR[14]~40_combout\ : std_logic;
SIGNAL \SRAM_ADDR[14]~41_combout\ : std_logic;
SIGNAL \SRAM_ADDR[14]~42_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \SRAM_ADDR[14]~43_combout\ : std_logic;
SIGNAL \SRAM_ADDR[14]~44_combout\ : std_logic;
SIGNAL \Add2~3\ : std_logic;
SIGNAL \Add2~4_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \Add8~11\ : std_logic;
SIGNAL \Add8~12_combout\ : std_logic;
SIGNAL \Add9~15\ : std_logic;
SIGNAL \Add9~16_combout\ : std_logic;
SIGNAL \Add10~5\ : std_logic;
SIGNAL \Add10~6_combout\ : std_logic;
SIGNAL \Add5~11\ : std_logic;
SIGNAL \Add5~12_combout\ : std_logic;
SIGNAL \Add6~15\ : std_logic;
SIGNAL \Add6~16_combout\ : std_logic;
SIGNAL \SRAM_ADDR[15]~45_combout\ : std_logic;
SIGNAL \Add4~5\ : std_logic;
SIGNAL \Add4~6_combout\ : std_logic;
SIGNAL \Add7~3\ : std_logic;
SIGNAL \Add7~4_combout\ : std_logic;
SIGNAL \SRAM_ADDR[15]~46_combout\ : std_logic;
SIGNAL \SRAM_ADDR[15]~47_combout\ : std_logic;
SIGNAL \SRAM_ADDR[15]~48_combout\ : std_logic;
SIGNAL \SRAM_ADDR[15]~49_combout\ : std_logic;
SIGNAL \Add2~5\ : std_logic;
SIGNAL \Add2~6_combout\ : std_logic;
SIGNAL \Add8~13\ : std_logic;
SIGNAL \Add8~14_combout\ : std_logic;
SIGNAL \cam_instance|current_column[15]~49\ : std_logic;
SIGNAL \cam_instance|current_column[16]~50_combout\ : std_logic;
SIGNAL \Add9~17\ : std_logic;
SIGNAL \Add9~18_combout\ : std_logic;
SIGNAL \Add10~7\ : std_logic;
SIGNAL \Add10~8_combout\ : std_logic;
SIGNAL \Add5~13\ : std_logic;
SIGNAL \Add5~14_combout\ : std_logic;
SIGNAL \Add6~17\ : std_logic;
SIGNAL \Add6~18_combout\ : std_logic;
SIGNAL \SRAM_ADDR[16]~50_combout\ : std_logic;
SIGNAL \Add7~5\ : std_logic;
SIGNAL \Add7~6_combout\ : std_logic;
SIGNAL \Add4~7\ : std_logic;
SIGNAL \Add4~8_combout\ : std_logic;
SIGNAL \SRAM_ADDR[16]~51_combout\ : std_logic;
SIGNAL \SRAM_ADDR[16]~52_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \SRAM_ADDR[16]~53_combout\ : std_logic;
SIGNAL \SRAM_ADDR[16]~54_combout\ : std_logic;
SIGNAL \Add8~15\ : std_logic;
SIGNAL \Add8~16_combout\ : std_logic;
SIGNAL \cam_instance|current_column[16]~51\ : std_logic;
SIGNAL \cam_instance|current_column[17]~52_combout\ : std_logic;
SIGNAL \Add9~19\ : std_logic;
SIGNAL \Add9~20_combout\ : std_logic;
SIGNAL \Add2~7\ : std_logic;
SIGNAL \Add2~8_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add5~15\ : std_logic;
SIGNAL \Add5~16_combout\ : std_logic;
SIGNAL \Add6~19\ : std_logic;
SIGNAL \Add6~20_combout\ : std_logic;
SIGNAL \Add7~7\ : std_logic;
SIGNAL \Add7~8_combout\ : std_logic;
SIGNAL \Add4~9\ : std_logic;
SIGNAL \Add4~10_combout\ : std_logic;
SIGNAL \Add10~9\ : std_logic;
SIGNAL \Add10~10_combout\ : std_logic;
SIGNAL \SRAM_ADDR[17]~55_combout\ : std_logic;
SIGNAL \SRAM_ADDR[17]~56_combout\ : std_logic;
SIGNAL \SRAM_ADDR[17]~57_combout\ : std_logic;
SIGNAL \SRAM_ADDR[17]~58_combout\ : std_logic;
SIGNAL \SRAM_ADDR[17]~59_combout\ : std_logic;
SIGNAL \Add8~17\ : std_logic;
SIGNAL \Add8~18_combout\ : std_logic;
SIGNAL \cam_instance|current_column[17]~53\ : std_logic;
SIGNAL \cam_instance|current_column[18]~54_combout\ : std_logic;
SIGNAL \Add9~21\ : std_logic;
SIGNAL \Add9~22_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \Add2~9\ : std_logic;
SIGNAL \Add2~10_combout\ : std_logic;
SIGNAL \Add5~17\ : std_logic;
SIGNAL \Add5~18_combout\ : std_logic;
SIGNAL \Add6~21\ : std_logic;
SIGNAL \Add6~22_combout\ : std_logic;
SIGNAL \Add4~11\ : std_logic;
SIGNAL \Add4~12_combout\ : std_logic;
SIGNAL \Add10~11\ : std_logic;
SIGNAL \Add10~12_combout\ : std_logic;
SIGNAL \SRAM_ADDR[18]~60_combout\ : std_logic;
SIGNAL \Add7~9\ : std_logic;
SIGNAL \Add7~10_combout\ : std_logic;
SIGNAL \SRAM_ADDR[18]~61_combout\ : std_logic;
SIGNAL \SRAM_ADDR[18]~62_combout\ : std_logic;
SIGNAL \SRAM_ADDR[18]~63_combout\ : std_logic;
SIGNAL \SRAM_ADDR[18]~64_combout\ : std_logic;
SIGNAL \Add2~11\ : std_logic;
SIGNAL \Add2~12_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \Add8~19\ : std_logic;
SIGNAL \Add8~20_combout\ : std_logic;
SIGNAL \cam_instance|current_column[18]~55\ : std_logic;
SIGNAL \cam_instance|current_column[19]~56_combout\ : std_logic;
SIGNAL \Add9~23\ : std_logic;
SIGNAL \Add9~24_combout\ : std_logic;
SIGNAL \Add10~13\ : std_logic;
SIGNAL \Add10~14_combout\ : std_logic;
SIGNAL \SRAM_ADDR[19]~65_combout\ : std_logic;
SIGNAL \Add4~13\ : std_logic;
SIGNAL \Add4~14_combout\ : std_logic;
SIGNAL \Add7~11\ : std_logic;
SIGNAL \Add7~12_combout\ : std_logic;
SIGNAL \SRAM_ADDR[19]~66_combout\ : std_logic;
SIGNAL \SRAM_ADDR[19]~67_combout\ : std_logic;
SIGNAL \SRAM_ADDR[19]~68_combout\ : std_logic;
SIGNAL \SRAM_ADDR[19]~69_combout\ : std_logic;
SIGNAL \SRAM_WE_N~0_combout\ : std_logic;
SIGNAL fpixel : std_logic_vector(30 DOWNTO 0);
SIGNAL diff : std_logic_vector(30 DOWNTO 0);
SIGNAL \cam_instance|current_column\ : std_logic_vector(30 DOWNTO 0);
SIGNAL pixel_counter : std_logic_vector(30 DOWNTO 0);
SIGNAL \cam_instance|y_data\ : std_logic_vector(7 DOWNTO 0);
SIGNAL sram_data_in : std_logic_vector(15 DOWNTO 0);
SIGNAL \cam_instance|vertical_size\ : std_logic_vector(30 DOWNTO 0);
SIGNAL \vga_sync_instance|pixel_column\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \vga_sync_instance|pixel_row\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \vga_sync_instance|v_count\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \cam_instance|horizontal_size\ : std_logic_vector(30 DOWNTO 0);
SIGNAL \vga_sync_instance|h_count\ : std_logic_vector(9 DOWNTO 0);
SIGNAL bpixel : std_logic_vector(30 DOWNTO 0);
SIGNAL \cam_instance|current_row\ : std_logic_vector(30 DOWNTO 0);
SIGNAL \ALT_INV_GPIO[9]~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_GPIO[8]~inputclkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_camera_clock~clkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_GPIO[9]~input_o\ : std_logic;
SIGNAL \camstatemachine_instance|ALT_INV_current_state.wait_for_display_end_pre_copy~0_combout\ : std_logic;
SIGNAL \camstatemachine_instance|ALT_INV_current_state.read_background_pixel~0_combout\ : std_logic;
SIGNAL \vga_sync_instance|ALT_INV_v_count[2]~1_combout\ : std_logic;
SIGNAL \camstatemachine_instance|ALT_INV_current_state.display~0_combout\ : std_logic;
SIGNAL \vga_sync_instance|ALT_INV_LessThan6~2_combout\ : std_logic;
SIGNAL \ALT_INV_SRAM_WE_N~0_combout\ : std_logic;
SIGNAL \cam_instance|ALT_INV_second_byte~q\ : std_logic;
SIGNAL \camstatemachine_instance|ALT_INV_WideOr1~combout\ : std_logic;
SIGNAL \ALT_INV_camera_clock~q\ : std_logic;

BEGIN

ww_CLOCK_50 <= CLOCK_50;
HEX0 <= ww_HEX0;
HEX1 <= ww_HEX1;
HEX2 <= ww_HEX2;
HEX3 <= ww_HEX3;
HEX4 <= ww_HEX4;
HEX5 <= ww_HEX5;
HEX6 <= ww_HEX6;
HEX7 <= ww_HEX7;
VGA_R <= ww_VGA_R;
VGA_G <= ww_VGA_G;
VGA_B <= ww_VGA_B;
VGA_CLK <= ww_VGA_CLK;
VGA_BLANK_N <= ww_VGA_BLANK_N;
VGA_HS <= ww_VGA_HS;
VGA_VS <= ww_VGA_VS;
VGA_SYNC_N <= ww_VGA_SYNC_N;
SRAM_ADDR <= ww_SRAM_ADDR;
SRAM_CE_N <= ww_SRAM_CE_N;
SRAM_LB_N <= ww_SRAM_LB_N;
SRAM_UB_N <= ww_SRAM_UB_N;
SRAM_OE_N <= ww_SRAM_OE_N;
SRAM_WE_N <= ww_SRAM_WE_N;
ww_KEY <= KEY;
ww_SW <= SW;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\backgroundsubtraction_eof~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \backgroundsubtraction_eof~0_combout\);

\camera_clock~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \camera_clock~q\);

\GPIO[11]~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \GPIO[11]~input_o\);

\GPIO[8]~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \GPIO[8]~input_o\);

\bpixel[0]~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \bpixel[0]~0_combout\);

\fpixel[0]~1clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \fpixel[0]~1_combout\);

\diff[0]~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \diff[0]~0_combout\);

\camstatemachine_instance|WideOr2~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \camstatemachine_instance|WideOr2~combout\);

\SRAM_ADDR[19]~18clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \SRAM_ADDR[19]~18_combout\);

\GPIO[9]~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \GPIO[9]~input_o\);
\ALT_INV_GPIO[9]~inputclkctrl_outclk\ <= NOT \GPIO[9]~inputclkctrl_outclk\;
\ALT_INV_GPIO[8]~inputclkctrl_outclk\ <= NOT \GPIO[8]~inputclkctrl_outclk\;
\ALT_INV_camera_clock~clkctrl_outclk\ <= NOT \camera_clock~clkctrl_outclk\;
\ALT_INV_GPIO[9]~input_o\ <= NOT \GPIO[9]~input_o\;
\camstatemachine_instance|ALT_INV_current_state.wait_for_display_end_pre_copy~0_combout\ <= NOT \camstatemachine_instance|current_state.wait_for_display_end_pre_copy~0_combout\;
\camstatemachine_instance|ALT_INV_current_state.read_background_pixel~0_combout\ <= NOT \camstatemachine_instance|current_state.read_background_pixel~0_combout\;
\vga_sync_instance|ALT_INV_v_count[2]~1_combout\ <= NOT \vga_sync_instance|v_count[2]~1_combout\;
\camstatemachine_instance|ALT_INV_current_state.display~0_combout\ <= NOT \camstatemachine_instance|current_state.display~0_combout\;
\vga_sync_instance|ALT_INV_LessThan6~2_combout\ <= NOT \vga_sync_instance|LessThan6~2_combout\;
\ALT_INV_SRAM_WE_N~0_combout\ <= NOT \SRAM_WE_N~0_combout\;
\cam_instance|ALT_INV_second_byte~q\ <= NOT \cam_instance|second_byte~q\;
\camstatemachine_instance|ALT_INV_WideOr1~combout\ <= NOT \camstatemachine_instance|WideOr1~combout\;
\ALT_INV_camera_clock~q\ <= NOT \camera_clock~q\;

-- Location: IOOBUF_X0_Y27_N23
\GPIO[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO[13]~output_o\);

-- Location: IOOBUF_X39_Y29_N30
\GPIO[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO[14]~output_o\);

-- Location: IOOBUF_X0_Y24_N16
\GPIO[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO[15]~output_o\);

-- Location: IOOBUF_X39_Y0_N16
\GPIO[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO[16]~output_o\);

-- Location: IOOBUF_X11_Y0_N9
\GPIO[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO[17]~output_o\);

-- Location: IOOBUF_X30_Y0_N9
\GPIO[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO[18]~output_o\);

-- Location: IOOBUF_X41_Y24_N9
\GPIO[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO[19]~output_o\);

-- Location: IOOBUF_X0_Y4_N2
\GPIO[20]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO[20]~output_o\);

-- Location: IOOBUF_X35_Y29_N2
\GPIO[21]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO[21]~output_o\);

-- Location: IOOBUF_X41_Y25_N9
\GPIO[22]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO[22]~output_o\);

-- Location: IOOBUF_X11_Y29_N30
\GPIO[23]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO[23]~output_o\);

-- Location: IOOBUF_X41_Y7_N16
\GPIO[24]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO[24]~output_o\);

-- Location: IOOBUF_X35_Y0_N2
\GPIO[25]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO[25]~output_o\);

-- Location: IOOBUF_X35_Y0_N23
\GPIO[26]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO[26]~output_o\);

-- Location: IOOBUF_X0_Y4_N9
\GPIO[27]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO[27]~output_o\);

-- Location: IOOBUF_X39_Y29_N16
\GPIO[28]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO[28]~output_o\);

-- Location: IOOBUF_X23_Y29_N2
\GPIO[29]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO[29]~output_o\);

-- Location: IOOBUF_X37_Y29_N16
\GPIO[30]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO[30]~output_o\);

-- Location: IOOBUF_X14_Y0_N23
\GPIO[31]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO[31]~output_o\);

-- Location: IOOBUF_X41_Y10_N23
\GPIO[32]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO[32]~output_o\);

-- Location: IOOBUF_X37_Y29_N30
\GPIO[33]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO[33]~output_o\);

-- Location: IOOBUF_X41_Y25_N16
\GPIO[34]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO[34]~output_o\);

-- Location: IOOBUF_X0_Y21_N16
\GPIO[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO[0]~output_o\);

-- Location: IOOBUF_X0_Y20_N9
\GPIO[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO[1]~output_o\);

-- Location: IOOBUF_X0_Y21_N9
\GPIO[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO[2]~output_o\);

-- Location: IOOBUF_X0_Y23_N2
\GPIO[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO[3]~output_o\);

-- Location: IOOBUF_X0_Y21_N23
\GPIO[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO[4]~output_o\);

-- Location: IOOBUF_X0_Y22_N23
\GPIO[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO[5]~output_o\);

-- Location: IOOBUF_X0_Y23_N16
\GPIO[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO[6]~output_o\);

-- Location: IOOBUF_X0_Y23_N9
\GPIO[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO[7]~output_o\);

-- Location: IOOBUF_X0_Y21_N2
\GPIO[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO[8]~output_o\);

-- Location: IOOBUF_X14_Y0_N16
\GPIO[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO[9]~output_o\);

-- Location: IOOBUF_X41_Y18_N2
\GPIO[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \camera_clock~q\,
	oe => VCC,
	devoe => ww_devoe,
	o => \GPIO[10]~output_o\);

-- Location: IOOBUF_X0_Y10_N23
\GPIO[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => VCC,
	devoe => ww_devoe,
	o => \GPIO[11]~output_o\);

-- Location: IOOBUF_X0_Y10_N16
\GPIO[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \GPIO[11]~input_o\,
	oe => VCC,
	devoe => ww_devoe,
	o => \GPIO[12]~output_o\);

-- Location: IOOBUF_X28_Y0_N23
\GPIO[35]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \GPIO[35]~output_o\);

-- Location: IOOBUF_X11_Y0_N2
\SRAM_DQ[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \camstatemachine_instance|ALT_INV_WideOr1~combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \SRAM_DQ[0]~output_o\);

-- Location: IOOBUF_X16_Y29_N30
\SRAM_DQ[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \camstatemachine_instance|ALT_INV_WideOr1~combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \SRAM_DQ[1]~output_o\);

-- Location: IOOBUF_X9_Y29_N23
\SRAM_DQ[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \camstatemachine_instance|ALT_INV_WideOr1~combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \SRAM_DQ[2]~output_o\);

-- Location: IOOBUF_X9_Y0_N23
\SRAM_DQ[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \camstatemachine_instance|ALT_INV_WideOr1~combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \SRAM_DQ[3]~output_o\);

-- Location: IOOBUF_X0_Y3_N2
\SRAM_DQ[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \camstatemachine_instance|ALT_INV_WideOr1~combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \SRAM_DQ[4]~output_o\);

-- Location: IOOBUF_X1_Y0_N2
\SRAM_DQ[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \camstatemachine_instance|ALT_INV_WideOr1~combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \SRAM_DQ[5]~output_o\);

-- Location: IOOBUF_X3_Y0_N2
\SRAM_DQ[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \camstatemachine_instance|ALT_INV_WideOr1~combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \SRAM_DQ[6]~output_o\);

-- Location: IOOBUF_X5_Y0_N2
\SRAM_DQ[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "true")
-- pragma translate_on
PORT MAP (
	i => \camstatemachine_instance|ALT_INV_WideOr1~combout\,
	oe => VCC,
	devoe => ww_devoe,
	o => \SRAM_DQ[7]~output_o\);

-- Location: IOOBUF_X0_Y12_N23
\SRAM_DQ[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => sram_data_in(8),
	oe => \camstatemachine_instance|WideOr1~combout\,
	devoe => ww_devoe,
	o => \SRAM_DQ[8]~output_o\);

-- Location: IOOBUF_X0_Y11_N2
\SRAM_DQ[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => sram_data_in(9),
	oe => \camstatemachine_instance|WideOr1~combout\,
	devoe => ww_devoe,
	o => \SRAM_DQ[9]~output_o\);

-- Location: IOOBUF_X0_Y11_N9
\SRAM_DQ[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => sram_data_in(10),
	oe => \camstatemachine_instance|WideOr1~combout\,
	devoe => ww_devoe,
	o => \SRAM_DQ[10]~output_o\);

-- Location: IOOBUF_X0_Y20_N2
\SRAM_DQ[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => sram_data_in(11),
	oe => \camstatemachine_instance|WideOr1~combout\,
	devoe => ww_devoe,
	o => \SRAM_DQ[11]~output_o\);

-- Location: IOOBUF_X0_Y11_N23
\SRAM_DQ[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => sram_data_in(12),
	oe => \camstatemachine_instance|WideOr1~combout\,
	devoe => ww_devoe,
	o => \SRAM_DQ[12]~output_o\);

-- Location: IOOBUF_X0_Y11_N16
\SRAM_DQ[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => sram_data_in(13),
	oe => \camstatemachine_instance|WideOr1~combout\,
	devoe => ww_devoe,
	o => \SRAM_DQ[13]~output_o\);

-- Location: IOOBUF_X9_Y0_N16
\SRAM_DQ[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => sram_data_in(14),
	oe => \camstatemachine_instance|WideOr1~combout\,
	devoe => ww_devoe,
	o => \SRAM_DQ[14]~output_o\);

-- Location: IOOBUF_X0_Y12_N9
\SRAM_DQ[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => sram_data_in(15),
	oe => \camstatemachine_instance|WideOr1~combout\,
	devoe => ww_devoe,
	o => \SRAM_DQ[15]~output_o\);

-- Location: IOOBUF_X7_Y29_N9
\HEX0[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex0decoder|segments_out[0]~0_combout\,
	devoe => ww_devoe,
	o => \HEX0[0]~output_o\);

-- Location: IOOBUF_X0_Y26_N23
\HEX0[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex0decoder|segments_out[1]~1_combout\,
	devoe => ww_devoe,
	o => \HEX0[1]~output_o\);

-- Location: IOOBUF_X5_Y29_N16
\HEX0[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex0decoder|segments_out[2]~2_combout\,
	devoe => ww_devoe,
	o => \HEX0[2]~output_o\);

-- Location: IOOBUF_X7_Y29_N16
\HEX0[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex0decoder|segments_out[3]~3_combout\,
	devoe => ww_devoe,
	o => \HEX0[3]~output_o\);

-- Location: IOOBUF_X9_Y29_N2
\HEX0[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex0decoder|segments_out[4]~4_combout\,
	devoe => ww_devoe,
	o => \HEX0[4]~output_o\);

-- Location: IOOBUF_X9_Y29_N30
\HEX0[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex0decoder|segments_out[5]~5_combout\,
	devoe => ww_devoe,
	o => \HEX0[5]~output_o\);

-- Location: IOOBUF_X5_Y29_N2
\HEX0[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex0decoder|segments_out[6]~6_combout\,
	devoe => ww_devoe,
	o => \HEX0[6]~output_o\);

-- Location: IOOBUF_X3_Y29_N30
\HEX1[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex1decoder|segments_out[0]~0_combout\,
	devoe => ww_devoe,
	o => \HEX1[0]~output_o\);

-- Location: IOOBUF_X1_Y29_N9
\HEX1[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex1decoder|segments_out[1]~1_combout\,
	devoe => ww_devoe,
	o => \HEX1[1]~output_o\);

-- Location: IOOBUF_X3_Y29_N2
\HEX1[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex1decoder|segments_out[2]~2_combout\,
	devoe => ww_devoe,
	o => \HEX1[2]~output_o\);

-- Location: IOOBUF_X5_Y29_N23
\HEX1[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex1decoder|segments_out[3]~3_combout\,
	devoe => ww_devoe,
	o => \HEX1[3]~output_o\);

-- Location: IOOBUF_X3_Y29_N9
\HEX1[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex1decoder|segments_out[4]~4_combout\,
	devoe => ww_devoe,
	o => \HEX1[4]~output_o\);

-- Location: IOOBUF_X1_Y29_N2
\HEX1[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex1decoder|segments_out[5]~5_combout\,
	devoe => ww_devoe,
	o => \HEX1[5]~output_o\);

-- Location: IOOBUF_X5_Y29_N30
\HEX1[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex1decoder|segments_out[6]~6_combout\,
	devoe => ww_devoe,
	o => \HEX1[6]~output_o\);

-- Location: IOOBUF_X5_Y29_N9
\HEX2[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex2decoder|segments_out[0]~0_combout\,
	devoe => ww_devoe,
	o => \HEX2[0]~output_o\);

-- Location: IOOBUF_X7_Y29_N2
\HEX2[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex2decoder|segments_out[1]~1_combout\,
	devoe => ww_devoe,
	o => \HEX2[1]~output_o\);

-- Location: IOOBUF_X9_Y29_N9
\HEX2[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex2decoder|segments_out[2]~2_combout\,
	devoe => ww_devoe,
	o => \HEX2[2]~output_o\);

-- Location: IOOBUF_X0_Y26_N9
\HEX2[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex2decoder|segments_out[3]~3_combout\,
	devoe => ww_devoe,
	o => \HEX2[3]~output_o\);

-- Location: IOOBUF_X7_Y29_N23
\HEX2[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex2decoder|segments_out[4]~4_combout\,
	devoe => ww_devoe,
	o => \HEX2[4]~output_o\);

-- Location: IOOBUF_X11_Y29_N16
\HEX2[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex2decoder|segments_out[5]~5_combout\,
	devoe => ww_devoe,
	o => \HEX2[5]~output_o\);

-- Location: IOOBUF_X7_Y29_N30
\HEX2[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex2decoder|segments_out[6]~6_combout\,
	devoe => ww_devoe,
	o => \HEX2[6]~output_o\);

-- Location: IOOBUF_X0_Y25_N23
\HEX3[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex3decoder|segments_out[0]~0_combout\,
	devoe => ww_devoe,
	o => \HEX3[0]~output_o\);

-- Location: IOOBUF_X0_Y26_N16
\HEX3[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex3decoder|segments_out[1]~1_combout\,
	devoe => ww_devoe,
	o => \HEX3[1]~output_o\);

-- Location: IOOBUF_X3_Y29_N23
\HEX3[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex3decoder|segments_out[2]~2_combout\,
	devoe => ww_devoe,
	o => \HEX3[2]~output_o\);

-- Location: IOOBUF_X0_Y27_N16
\HEX3[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex3decoder|segments_out[3]~3_combout\,
	devoe => ww_devoe,
	o => \HEX3[3]~output_o\);

-- Location: IOOBUF_X0_Y26_N2
\HEX3[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex3decoder|segments_out[4]~4_combout\,
	devoe => ww_devoe,
	o => \HEX3[4]~output_o\);

-- Location: IOOBUF_X0_Y27_N2
\HEX3[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex3decoder|segments_out[5]~5_combout\,
	devoe => ww_devoe,
	o => \HEX3[5]~output_o\);

-- Location: IOOBUF_X3_Y29_N16
\HEX3[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex3decoder|segments_out[6]~6_combout\,
	devoe => ww_devoe,
	o => \HEX3[6]~output_o\);

-- Location: IOOBUF_X0_Y13_N9
\HEX4[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex4decoder|segments_out[0]~0_combout\,
	devoe => ww_devoe,
	o => \HEX4[0]~output_o\);

-- Location: IOOBUF_X7_Y0_N9
\HEX4[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex4decoder|segments_out[1]~1_combout\,
	devoe => ww_devoe,
	o => \HEX4[1]~output_o\);

-- Location: IOOBUF_X0_Y13_N2
\HEX4[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex4decoder|segments_out[2]~2_combout\,
	devoe => ww_devoe,
	o => \HEX4[2]~output_o\);

-- Location: IOOBUF_X7_Y0_N16
\HEX4[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex4decoder|segments_out[3]~3_combout\,
	devoe => ww_devoe,
	o => \HEX4[3]~output_o\);

-- Location: IOOBUF_X7_Y0_N2
\HEX4[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex4decoder|segments_out[4]~4_combout\,
	devoe => ww_devoe,
	o => \HEX4[4]~output_o\);

-- Location: IOOBUF_X7_Y0_N23
\HEX4[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex4decoder|segments_out[5]~5_combout\,
	devoe => ww_devoe,
	o => \HEX4[5]~output_o\);

-- Location: IOOBUF_X0_Y13_N23
\HEX4[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex4decoder|segments_out[6]~6_combout\,
	devoe => ww_devoe,
	o => \HEX4[6]~output_o\);

-- Location: IOOBUF_X5_Y0_N9
\HEX5[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex5decoder|segments_out[0]~0_combout\,
	devoe => ww_devoe,
	o => \HEX5[0]~output_o\);

-- Location: IOOBUF_X0_Y6_N23
\HEX5[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex5decoder|segments_out[1]~1_combout\,
	devoe => ww_devoe,
	o => \HEX5[1]~output_o\);

-- Location: IOOBUF_X0_Y12_N2
\HEX5[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex5decoder|segments_out[2]~2_combout\,
	devoe => ww_devoe,
	o => \HEX5[2]~output_o\);

-- Location: IOOBUF_X0_Y6_N2
\HEX5[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex5decoder|segments_out[3]~3_combout\,
	devoe => ww_devoe,
	o => \HEX5[3]~output_o\);

-- Location: IOOBUF_X0_Y5_N2
\HEX5[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex5decoder|segments_out[4]~4_combout\,
	devoe => ww_devoe,
	o => \HEX5[4]~output_o\);

-- Location: IOOBUF_X0_Y5_N23
\HEX5[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex5decoder|segments_out[5]~5_combout\,
	devoe => ww_devoe,
	o => \HEX5[5]~output_o\);

-- Location: IOOBUF_X0_Y6_N16
\HEX5[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex5decoder|segments_out[6]~6_combout\,
	devoe => ww_devoe,
	o => \HEX5[6]~output_o\);

-- Location: IOOBUF_X0_Y22_N16
\HEX6[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex6decoder|segments_out[0]~0_combout\,
	devoe => ww_devoe,
	o => \HEX6[0]~output_o\);

-- Location: IOOBUF_X7_Y0_N30
\HEX6[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex6decoder|segments_out[1]~1_combout\,
	devoe => ww_devoe,
	o => \HEX6[1]~output_o\);

-- Location: IOOBUF_X0_Y9_N16
\HEX6[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex6decoder|segments_out[2]~2_combout\,
	devoe => ww_devoe,
	o => \HEX6[2]~output_o\);

-- Location: IOOBUF_X0_Y8_N16
\HEX6[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex6decoder|segments_out[3]~3_combout\,
	devoe => ww_devoe,
	o => \HEX6[3]~output_o\);

-- Location: IOOBUF_X0_Y13_N16
\HEX6[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex6decoder|segments_out[4]~4_combout\,
	devoe => ww_devoe,
	o => \HEX6[4]~output_o\);

-- Location: IOOBUF_X0_Y12_N16
\HEX6[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex6decoder|segments_out[5]~5_combout\,
	devoe => ww_devoe,
	o => \HEX6[5]~output_o\);

-- Location: IOOBUF_X0_Y10_N9
\HEX6[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex6decoder|segments_out[6]~6_combout\,
	devoe => ww_devoe,
	o => \HEX6[6]~output_o\);

-- Location: IOOBUF_X3_Y0_N9
\HEX7[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex7decoder|segments_out[0]~0_combout\,
	devoe => ww_devoe,
	o => \HEX7[0]~output_o\);

-- Location: IOOBUF_X0_Y4_N23
\HEX7[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex7decoder|segments_out[1]~1_combout\,
	devoe => ww_devoe,
	o => \HEX7[1]~output_o\);

-- Location: IOOBUF_X3_Y0_N23
\HEX7[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex7decoder|segments_out[2]~2_combout\,
	devoe => ww_devoe,
	o => \HEX7[2]~output_o\);

-- Location: IOOBUF_X0_Y8_N2
\HEX7[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex7decoder|segments_out[3]~3_combout\,
	devoe => ww_devoe,
	o => \HEX7[3]~output_o\);

-- Location: IOOBUF_X0_Y8_N23
\HEX7[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex7decoder|segments_out[4]~4_combout\,
	devoe => ww_devoe,
	o => \HEX7[4]~output_o\);

-- Location: IOOBUF_X0_Y9_N23
\HEX7[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex7decoder|segments_out[5]~5_combout\,
	devoe => ww_devoe,
	o => \HEX7[5]~output_o\);

-- Location: IOOBUF_X0_Y8_N9
\HEX7[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \hex7decoder|segments_out[6]~6_combout\,
	devoe => ww_devoe,
	o => \HEX7[6]~output_o\);

-- Location: IOOBUF_X11_Y0_N30
\VGA_R[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_R[0]$latch~combout\,
	devoe => ww_devoe,
	o => \VGA_R[0]~output_o\);

-- Location: IOOBUF_X0_Y22_N9
\VGA_R[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_R[1]$latch~combout\,
	devoe => ww_devoe,
	o => \VGA_R[1]~output_o\);

-- Location: IOOBUF_X41_Y14_N16
\VGA_R[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_R[2]$latch~combout\,
	devoe => ww_devoe,
	o => \VGA_R[2]~output_o\);

-- Location: IOOBUF_X1_Y0_N23
\VGA_R[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_R[3]$latch~combout\,
	devoe => ww_devoe,
	o => \VGA_R[3]~output_o\);

-- Location: IOOBUF_X9_Y0_N30
\VGA_R[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_R[4]$latch~combout\,
	devoe => ww_devoe,
	o => \VGA_R[4]~output_o\);

-- Location: IOOBUF_X0_Y7_N9
\VGA_R[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_R[5]$latch~combout\,
	devoe => ww_devoe,
	o => \VGA_R[5]~output_o\);

-- Location: IOOBUF_X0_Y7_N2
\VGA_R[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_R[6]$latch~combout\,
	devoe => ww_devoe,
	o => \VGA_R[6]~output_o\);

-- Location: IOOBUF_X0_Y2_N23
\VGA_R[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_R[7]$latch~combout\,
	devoe => ww_devoe,
	o => \VGA_R[7]~output_o\);

-- Location: IOOBUF_X11_Y0_N16
\VGA_G[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_R[0]$latch~combout\,
	devoe => ww_devoe,
	o => \VGA_G[0]~output_o\);

-- Location: IOOBUF_X0_Y7_N16
\VGA_G[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_R[1]$latch~combout\,
	devoe => ww_devoe,
	o => \VGA_G[1]~output_o\);

-- Location: IOOBUF_X41_Y14_N23
\VGA_G[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_R[2]$latch~combout\,
	devoe => ww_devoe,
	o => \VGA_G[2]~output_o\);

-- Location: IOOBUF_X1_Y0_N30
\VGA_G[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_R[3]$latch~combout\,
	devoe => ww_devoe,
	o => \VGA_G[3]~output_o\);

-- Location: IOOBUF_X9_Y0_N2
\VGA_G[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_R[4]$latch~combout\,
	devoe => ww_devoe,
	o => \VGA_G[4]~output_o\);

-- Location: IOOBUF_X0_Y7_N23
\VGA_G[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_R[5]$latch~combout\,
	devoe => ww_devoe,
	o => \VGA_G[5]~output_o\);

-- Location: IOOBUF_X0_Y6_N9
\VGA_G[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_R[6]$latch~combout\,
	devoe => ww_devoe,
	o => \VGA_G[6]~output_o\);

-- Location: IOOBUF_X0_Y2_N9
\VGA_G[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_R[7]$latch~combout\,
	devoe => ww_devoe,
	o => \VGA_G[7]~output_o\);

-- Location: IOOBUF_X11_Y0_N23
\VGA_B[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_R[0]$latch~combout\,
	devoe => ww_devoe,
	o => \VGA_B[0]~output_o\);

-- Location: IOOBUF_X0_Y22_N2
\VGA_B[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_R[1]$latch~combout\,
	devoe => ww_devoe,
	o => \VGA_B[1]~output_o\);

-- Location: IOOBUF_X41_Y14_N2
\VGA_B[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_R[2]$latch~combout\,
	devoe => ww_devoe,
	o => \VGA_B[2]~output_o\);

-- Location: IOOBUF_X5_Y0_N23
\VGA_B[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_R[3]$latch~combout\,
	devoe => ww_devoe,
	o => \VGA_B[3]~output_o\);

-- Location: IOOBUF_X9_Y0_N9
\VGA_B[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_R[4]$latch~combout\,
	devoe => ww_devoe,
	o => \VGA_B[4]~output_o\);

-- Location: IOOBUF_X0_Y9_N9
\VGA_B[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_R[5]$latch~combout\,
	devoe => ww_devoe,
	o => \VGA_B[5]~output_o\);

-- Location: IOOBUF_X0_Y5_N16
\VGA_B[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_R[6]$latch~combout\,
	devoe => ww_devoe,
	o => \VGA_B[6]~output_o\);

-- Location: IOOBUF_X0_Y2_N2
\VGA_B[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \VGA_R[7]$latch~combout\,
	devoe => ww_devoe,
	o => \VGA_B[7]~output_o\);

-- Location: IOOBUF_X41_Y18_N16
\VGA_CLK~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_camera_clock~q\,
	devoe => ww_devoe,
	o => \VGA_CLK~output_o\);

-- Location: IOOBUF_X41_Y13_N9
\VGA_BLANK_N~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vga_sync_instance|video_on~combout\,
	devoe => ww_devoe,
	o => \VGA_BLANK_N~output_o\);

-- Location: IOOBUF_X21_Y29_N9
\VGA_HS~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vga_sync_instance|horiz_sync_out~q\,
	devoe => ww_devoe,
	o => \VGA_HS~output_o\);

-- Location: IOOBUF_X21_Y29_N2
\VGA_VS~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \vga_sync_instance|vert_sync_out~q\,
	devoe => ww_devoe,
	o => \VGA_VS~output_o\);

-- Location: IOOBUF_X39_Y29_N23
\VGA_SYNC_N~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \VGA_SYNC_N~output_o\);

-- Location: IOOBUF_X14_Y29_N30
\SRAM_ADDR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SRAM_ADDR[0]~1_combout\,
	devoe => ww_devoe,
	o => \SRAM_ADDR[0]~output_o\);

-- Location: IOOBUF_X0_Y10_N2
\SRAM_ADDR[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SRAM_ADDR[1]~3_combout\,
	devoe => ww_devoe,
	o => \SRAM_ADDR[1]~output_o\);

-- Location: IOOBUF_X14_Y29_N23
\SRAM_ADDR[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SRAM_ADDR[2]~5_combout\,
	devoe => ww_devoe,
	o => \SRAM_ADDR[2]~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\SRAM_ADDR[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SRAM_ADDR[3]~7_combout\,
	devoe => ww_devoe,
	o => \SRAM_ADDR[3]~output_o\);

-- Location: IOOBUF_X16_Y0_N16
\SRAM_ADDR[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SRAM_ADDR[4]~9_combout\,
	devoe => ww_devoe,
	o => \SRAM_ADDR[4]~output_o\);

-- Location: IOOBUF_X11_Y29_N23
\SRAM_ADDR[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SRAM_ADDR[5]~11_combout\,
	devoe => ww_devoe,
	o => \SRAM_ADDR[5]~output_o\);

-- Location: IOOBUF_X19_Y0_N9
\SRAM_ADDR[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SRAM_ADDR[6]~13_combout\,
	devoe => ww_devoe,
	o => \SRAM_ADDR[6]~output_o\);

-- Location: IOOBUF_X21_Y29_N23
\SRAM_ADDR[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SRAM_ADDR[7]~15_combout\,
	devoe => ww_devoe,
	o => \SRAM_ADDR[7]~output_o\);

-- Location: IOOBUF_X21_Y29_N16
\SRAM_ADDR[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SRAM_ADDR[8]~17_combout\,
	devoe => ww_devoe,
	o => \SRAM_ADDR[8]~output_o\);

-- Location: IOOBUF_X11_Y29_N2
\SRAM_ADDR[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SRAM_ADDR[9]~20_combout\,
	devoe => ww_devoe,
	o => \SRAM_ADDR[9]~output_o\);

-- Location: IOOBUF_X41_Y17_N2
\SRAM_ADDR[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SRAM_ADDR[10]~22_combout\,
	devoe => ww_devoe,
	o => \SRAM_ADDR[10]~output_o\);

-- Location: IOOBUF_X14_Y0_N9
\SRAM_ADDR[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SRAM_ADDR[11]~24_combout\,
	devoe => ww_devoe,
	o => \SRAM_ADDR[11]~output_o\);

-- Location: IOOBUF_X21_Y0_N30
\SRAM_ADDR[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SRAM_ADDR[12]~29_combout\,
	devoe => ww_devoe,
	o => \SRAM_ADDR[12]~output_o\);

-- Location: IOOBUF_X14_Y29_N9
\SRAM_ADDR[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SRAM_ADDR[13]~39_combout\,
	devoe => ww_devoe,
	o => \SRAM_ADDR[13]~output_o\);

-- Location: IOOBUF_X14_Y29_N16
\SRAM_ADDR[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SRAM_ADDR[14]~44_combout\,
	devoe => ww_devoe,
	o => \SRAM_ADDR[14]~output_o\);

-- Location: IOOBUF_X16_Y29_N16
\SRAM_ADDR[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SRAM_ADDR[15]~49_combout\,
	devoe => ww_devoe,
	o => \SRAM_ADDR[15]~output_o\);

-- Location: IOOBUF_X14_Y29_N2
\SRAM_ADDR[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SRAM_ADDR[16]~54_combout\,
	devoe => ww_devoe,
	o => \SRAM_ADDR[16]~output_o\);

-- Location: IOOBUF_X16_Y0_N23
\SRAM_ADDR[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SRAM_ADDR[17]~59_combout\,
	devoe => ww_devoe,
	o => \SRAM_ADDR[17]~output_o\);

-- Location: IOOBUF_X16_Y29_N23
\SRAM_ADDR[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SRAM_ADDR[18]~64_combout\,
	devoe => ww_devoe,
	o => \SRAM_ADDR[18]~output_o\);

-- Location: IOOBUF_X41_Y14_N9
\SRAM_ADDR[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SRAM_ADDR[19]~69_combout\,
	devoe => ww_devoe,
	o => \SRAM_ADDR[19]~output_o\);

-- Location: IOOBUF_X11_Y29_N9
\SRAM_CE_N~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SRAM_CE_N~output_o\);

-- Location: IOOBUF_X28_Y29_N9
\SRAM_LB_N~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SRAM_LB_N~output_o\);

-- Location: IOOBUF_X32_Y0_N23
\SRAM_UB_N~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SRAM_UB_N~output_o\);

-- Location: IOOBUF_X26_Y29_N16
\SRAM_OE_N~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \SRAM_OE_N~output_o\);

-- Location: IOOBUF_X0_Y9_N2
\SRAM_WE_N~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \ALT_INV_SRAM_WE_N~0_combout\,
	devoe => ww_devoe,
	o => \SRAM_WE_N~output_o\);

-- Location: IOIBUF_X16_Y29_N1
\CLOCK_50~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: LCCOMB_X40_Y15_N0
\camera_clock~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \camera_clock~0_combout\ = !\camera_clock~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \camera_clock~q\,
	combout => \camera_clock~0_combout\);

-- Location: LCCOMB_X40_Y15_N18
\camera_clock~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \camera_clock~feeder_combout\ = \camera_clock~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \camera_clock~0_combout\,
	combout => \camera_clock~feeder_combout\);

-- Location: FF_X40_Y15_N19
camera_clock : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \camera_clock~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \camera_clock~q\);

-- Location: IOIBUF_X0_Y10_N22
\GPIO[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(11),
	o => \GPIO[11]~input_o\);

-- Location: IOIBUF_X19_Y29_N29
\KEY[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: IOIBUF_X21_Y29_N29
\SW[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(1),
	o => \SW[1]~input_o\);

-- Location: LCCOMB_X15_Y15_N2
\camstatemachine_instance|current_state.wait_for_display_end_pre_copy~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \camstatemachine_instance|current_state.wait_for_display_end_pre_copy~6_combout\ = (\SW[1]~input_o\ & \KEY[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[1]~input_o\,
	datad => \KEY[0]~input_o\,
	combout => \camstatemachine_instance|current_state.wait_for_display_end_pre_copy~6_combout\);

-- Location: LCCOMB_X14_Y15_N8
\camstatemachine_instance|current_state.wait_for_display_end_pre_copy~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \camstatemachine_instance|current_state.wait_for_display_end_pre_copy~1_combout\ = (!\camstatemachine_instance|current_state.wait_for_display_end_pre_copy~6_combout\ & ((\camstatemachine_instance|current_state.wait_for_display_end_pre_copy~1_combout\) # 
-- (!\KEY[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camstatemachine_instance|current_state.wait_for_display_end_pre_copy~6_combout\,
	datac => \KEY[0]~input_o\,
	datad => \camstatemachine_instance|current_state.wait_for_display_end_pre_copy~1_combout\,
	combout => \camstatemachine_instance|current_state.wait_for_display_end_pre_copy~1_combout\);

-- Location: CLKCTRL_G7
\camera_clock~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \camera_clock~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \camera_clock~clkctrl_outclk\);

-- Location: LCCOMB_X21_Y15_N14
\vga_sync_instance|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_sync_instance|Add0~14_combout\ = (\vga_sync_instance|h_count\(7) & (!\vga_sync_instance|Add0~13\)) # (!\vga_sync_instance|h_count\(7) & ((\vga_sync_instance|Add0~13\) # (GND)))
-- \vga_sync_instance|Add0~15\ = CARRY((!\vga_sync_instance|Add0~13\) # (!\vga_sync_instance|h_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga_sync_instance|h_count\(7),
	datad => VCC,
	cin => \vga_sync_instance|Add0~13\,
	combout => \vga_sync_instance|Add0~14_combout\,
	cout => \vga_sync_instance|Add0~15\);

-- Location: LCCOMB_X21_Y15_N16
\vga_sync_instance|Add0~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_sync_instance|Add0~16_combout\ = (\vga_sync_instance|h_count\(8) & (\vga_sync_instance|Add0~15\ $ (GND))) # (!\vga_sync_instance|h_count\(8) & (!\vga_sync_instance|Add0~15\ & VCC))
-- \vga_sync_instance|Add0~17\ = CARRY((\vga_sync_instance|h_count\(8) & !\vga_sync_instance|Add0~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga_sync_instance|h_count\(8),
	datad => VCC,
	cin => \vga_sync_instance|Add0~15\,
	combout => \vga_sync_instance|Add0~16_combout\,
	cout => \vga_sync_instance|Add0~17\);

-- Location: LCCOMB_X21_Y15_N28
\vga_sync_instance|h_count~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_sync_instance|h_count~0_combout\ = (!\vga_sync_instance|Equal0~2_combout\ & \vga_sync_instance|Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vga_sync_instance|Equal0~2_combout\,
	datad => \vga_sync_instance|Add0~16_combout\,
	combout => \vga_sync_instance|h_count~0_combout\);

-- Location: FF_X21_Y15_N29
\vga_sync_instance|h_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_camera_clock~clkctrl_outclk\,
	d => \vga_sync_instance|h_count~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_sync_instance|h_count\(8));

-- Location: LCCOMB_X21_Y15_N18
\vga_sync_instance|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_sync_instance|Add0~18_combout\ = \vga_sync_instance|h_count\(9) $ (\vga_sync_instance|Add0~17\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_sync_instance|h_count\(9),
	cin => \vga_sync_instance|Add0~17\,
	combout => \vga_sync_instance|Add0~18_combout\);

-- Location: LCCOMB_X21_Y15_N22
\vga_sync_instance|h_count~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_sync_instance|h_count~1_combout\ = (!\vga_sync_instance|Equal0~2_combout\ & \vga_sync_instance|Add0~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vga_sync_instance|Equal0~2_combout\,
	datad => \vga_sync_instance|Add0~18_combout\,
	combout => \vga_sync_instance|h_count~1_combout\);

-- Location: FF_X21_Y15_N23
\vga_sync_instance|h_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_camera_clock~clkctrl_outclk\,
	d => \vga_sync_instance|h_count~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_sync_instance|h_count\(9));

-- Location: LCCOMB_X21_Y15_N0
\vga_sync_instance|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_sync_instance|Add0~0_combout\ = \vga_sync_instance|h_count\(0) $ (VCC)
-- \vga_sync_instance|Add0~1\ = CARRY(\vga_sync_instance|h_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga_sync_instance|h_count\(0),
	datad => VCC,
	combout => \vga_sync_instance|Add0~0_combout\,
	cout => \vga_sync_instance|Add0~1\);

-- Location: LCCOMB_X21_Y15_N24
\vga_sync_instance|h_count~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_sync_instance|h_count~2_combout\ = (!\vga_sync_instance|Equal0~2_combout\ & \vga_sync_instance|Add0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vga_sync_instance|Equal0~2_combout\,
	datad => \vga_sync_instance|Add0~0_combout\,
	combout => \vga_sync_instance|h_count~2_combout\);

-- Location: FF_X21_Y15_N25
\vga_sync_instance|h_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_camera_clock~clkctrl_outclk\,
	d => \vga_sync_instance|h_count~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_sync_instance|h_count\(0));

-- Location: LCCOMB_X21_Y15_N2
\vga_sync_instance|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_sync_instance|Add0~2_combout\ = (\vga_sync_instance|h_count\(1) & (!\vga_sync_instance|Add0~1\)) # (!\vga_sync_instance|h_count\(1) & ((\vga_sync_instance|Add0~1\) # (GND)))
-- \vga_sync_instance|Add0~3\ = CARRY((!\vga_sync_instance|Add0~1\) # (!\vga_sync_instance|h_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga_sync_instance|h_count\(1),
	datad => VCC,
	cin => \vga_sync_instance|Add0~1\,
	combout => \vga_sync_instance|Add0~2_combout\,
	cout => \vga_sync_instance|Add0~3\);

-- Location: FF_X21_Y15_N3
\vga_sync_instance|h_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_camera_clock~clkctrl_outclk\,
	d => \vga_sync_instance|Add0~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_sync_instance|h_count\(1));

-- Location: LCCOMB_X21_Y15_N4
\vga_sync_instance|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_sync_instance|Add0~4_combout\ = (\vga_sync_instance|h_count\(2) & (\vga_sync_instance|Add0~3\ $ (GND))) # (!\vga_sync_instance|h_count\(2) & (!\vga_sync_instance|Add0~3\ & VCC))
-- \vga_sync_instance|Add0~5\ = CARRY((\vga_sync_instance|h_count\(2) & !\vga_sync_instance|Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga_sync_instance|h_count\(2),
	datad => VCC,
	cin => \vga_sync_instance|Add0~3\,
	combout => \vga_sync_instance|Add0~4_combout\,
	cout => \vga_sync_instance|Add0~5\);

-- Location: FF_X21_Y15_N5
\vga_sync_instance|h_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_camera_clock~clkctrl_outclk\,
	d => \vga_sync_instance|Add0~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_sync_instance|h_count\(2));

-- Location: LCCOMB_X21_Y15_N20
\vga_sync_instance|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_sync_instance|Equal0~0_combout\ = (!\vga_sync_instance|h_count\(6) & (!\vga_sync_instance|h_count\(0) & (!\vga_sync_instance|h_count\(2) & !\vga_sync_instance|h_count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_sync_instance|h_count\(6),
	datab => \vga_sync_instance|h_count\(0),
	datac => \vga_sync_instance|h_count\(2),
	datad => \vga_sync_instance|h_count\(1),
	combout => \vga_sync_instance|Equal0~0_combout\);

-- Location: LCCOMB_X21_Y15_N6
\vga_sync_instance|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_sync_instance|Add0~6_combout\ = (\vga_sync_instance|h_count\(3) & (!\vga_sync_instance|Add0~5\)) # (!\vga_sync_instance|h_count\(3) & ((\vga_sync_instance|Add0~5\) # (GND)))
-- \vga_sync_instance|Add0~7\ = CARRY((!\vga_sync_instance|Add0~5\) # (!\vga_sync_instance|h_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_sync_instance|h_count\(3),
	datad => VCC,
	cin => \vga_sync_instance|Add0~5\,
	combout => \vga_sync_instance|Add0~6_combout\,
	cout => \vga_sync_instance|Add0~7\);

-- Location: FF_X21_Y15_N7
\vga_sync_instance|h_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_camera_clock~clkctrl_outclk\,
	d => \vga_sync_instance|Add0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_sync_instance|h_count\(3));

-- Location: LCCOMB_X21_Y15_N8
\vga_sync_instance|Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_sync_instance|Add0~8_combout\ = (\vga_sync_instance|h_count\(4) & (\vga_sync_instance|Add0~7\ $ (GND))) # (!\vga_sync_instance|h_count\(4) & (!\vga_sync_instance|Add0~7\ & VCC))
-- \vga_sync_instance|Add0~9\ = CARRY((\vga_sync_instance|h_count\(4) & !\vga_sync_instance|Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga_sync_instance|h_count\(4),
	datad => VCC,
	cin => \vga_sync_instance|Add0~7\,
	combout => \vga_sync_instance|Add0~8_combout\,
	cout => \vga_sync_instance|Add0~9\);

-- Location: FF_X21_Y15_N9
\vga_sync_instance|h_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_camera_clock~clkctrl_outclk\,
	d => \vga_sync_instance|Add0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_sync_instance|h_count\(4));

-- Location: LCCOMB_X23_Y15_N28
\vga_sync_instance|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_sync_instance|Equal0~1_combout\ = (!\vga_sync_instance|h_count\(3) & (\vga_sync_instance|h_count\(5) & (!\vga_sync_instance|h_count\(4) & !\vga_sync_instance|h_count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_sync_instance|h_count\(3),
	datab => \vga_sync_instance|h_count\(5),
	datac => \vga_sync_instance|h_count\(4),
	datad => \vga_sync_instance|h_count\(7),
	combout => \vga_sync_instance|Equal0~1_combout\);

-- Location: LCCOMB_X23_Y15_N26
\vga_sync_instance|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_sync_instance|Equal0~2_combout\ = (\vga_sync_instance|h_count\(9) & (\vga_sync_instance|h_count\(8) & (\vga_sync_instance|Equal0~0_combout\ & \vga_sync_instance|Equal0~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_sync_instance|h_count\(9),
	datab => \vga_sync_instance|h_count\(8),
	datac => \vga_sync_instance|Equal0~0_combout\,
	datad => \vga_sync_instance|Equal0~1_combout\,
	combout => \vga_sync_instance|Equal0~2_combout\);

-- Location: LCCOMB_X21_Y15_N10
\vga_sync_instance|Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_sync_instance|Add0~10_combout\ = (\vga_sync_instance|h_count\(5) & (!\vga_sync_instance|Add0~9\)) # (!\vga_sync_instance|h_count\(5) & ((\vga_sync_instance|Add0~9\) # (GND)))
-- \vga_sync_instance|Add0~11\ = CARRY((!\vga_sync_instance|Add0~9\) # (!\vga_sync_instance|h_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_sync_instance|h_count\(5),
	datad => VCC,
	cin => \vga_sync_instance|Add0~9\,
	combout => \vga_sync_instance|Add0~10_combout\,
	cout => \vga_sync_instance|Add0~11\);

-- Location: LCCOMB_X21_Y15_N30
\vga_sync_instance|h_count~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_sync_instance|h_count~3_combout\ = (!\vga_sync_instance|Equal0~2_combout\ & \vga_sync_instance|Add0~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vga_sync_instance|Equal0~2_combout\,
	datad => \vga_sync_instance|Add0~10_combout\,
	combout => \vga_sync_instance|h_count~3_combout\);

-- Location: FF_X21_Y15_N31
\vga_sync_instance|h_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_camera_clock~clkctrl_outclk\,
	d => \vga_sync_instance|h_count~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_sync_instance|h_count\(5));

-- Location: LCCOMB_X21_Y15_N12
\vga_sync_instance|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_sync_instance|Add0~12_combout\ = (\vga_sync_instance|h_count\(6) & (\vga_sync_instance|Add0~11\ $ (GND))) # (!\vga_sync_instance|h_count\(6) & (!\vga_sync_instance|Add0~11\ & VCC))
-- \vga_sync_instance|Add0~13\ = CARRY((\vga_sync_instance|h_count\(6) & !\vga_sync_instance|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_sync_instance|h_count\(6),
	datad => VCC,
	cin => \vga_sync_instance|Add0~11\,
	combout => \vga_sync_instance|Add0~12_combout\,
	cout => \vga_sync_instance|Add0~13\);

-- Location: FF_X21_Y15_N13
\vga_sync_instance|h_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_camera_clock~clkctrl_outclk\,
	d => \vga_sync_instance|Add0~12_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_sync_instance|h_count\(6));

-- Location: FF_X21_Y15_N15
\vga_sync_instance|h_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_camera_clock~clkctrl_outclk\,
	d => \vga_sync_instance|Add0~14_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_sync_instance|h_count\(7));

-- Location: LCCOMB_X22_Y15_N30
\vga_sync_instance|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_sync_instance|process_0~0_combout\ = (!\vga_sync_instance|h_count\(9)) # (!\vga_sync_instance|v_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga_sync_instance|v_count\(9),
	datad => \vga_sync_instance|h_count\(9),
	combout => \vga_sync_instance|process_0~0_combout\);

-- Location: LCCOMB_X22_Y15_N20
\vga_sync_instance|process_0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_sync_instance|process_0~1_combout\ = (!\vga_sync_instance|h_count\(6) & (!\vga_sync_instance|h_count\(5) & ((!\vga_sync_instance|h_count\(4)) # (!\vga_sync_instance|h_count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_sync_instance|h_count\(6),
	datab => \vga_sync_instance|h_count\(3),
	datac => \vga_sync_instance|h_count\(5),
	datad => \vga_sync_instance|h_count\(4),
	combout => \vga_sync_instance|process_0~1_combout\);

-- Location: LCCOMB_X22_Y15_N6
\vga_sync_instance|process_0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_sync_instance|process_0~2_combout\ = (\vga_sync_instance|process_0~0_combout\) # ((!\vga_sync_instance|h_count\(8) & ((\vga_sync_instance|process_0~1_combout\) # (!\vga_sync_instance|h_count\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111110001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_sync_instance|h_count\(7),
	datab => \vga_sync_instance|h_count\(8),
	datac => \vga_sync_instance|process_0~0_combout\,
	datad => \vga_sync_instance|process_0~1_combout\,
	combout => \vga_sync_instance|process_0~2_combout\);

-- Location: LCCOMB_X21_Y15_N26
\vga_sync_instance|Equal0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_sync_instance|Equal0~3_combout\ = (\vga_sync_instance|h_count\(9) & \vga_sync_instance|Equal0~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vga_sync_instance|h_count\(9),
	datad => \vga_sync_instance|Equal0~0_combout\,
	combout => \vga_sync_instance|Equal0~3_combout\);

-- Location: LCCOMB_X20_Y15_N6
\vga_sync_instance|process_0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_sync_instance|process_0~3_combout\ = (\vga_sync_instance|h_count\(4) & \vga_sync_instance|h_count\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vga_sync_instance|h_count\(4),
	datad => \vga_sync_instance|h_count\(3),
	combout => \vga_sync_instance|process_0~3_combout\);

-- Location: LCCOMB_X20_Y15_N24
\vga_sync_instance|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_sync_instance|Equal1~0_combout\ = (\vga_sync_instance|h_count\(5)) # ((\vga_sync_instance|h_count\(8)) # ((!\vga_sync_instance|process_0~3_combout\) # (!\vga_sync_instance|h_count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_sync_instance|h_count\(5),
	datab => \vga_sync_instance|h_count\(8),
	datac => \vga_sync_instance|h_count\(7),
	datad => \vga_sync_instance|process_0~3_combout\,
	combout => \vga_sync_instance|Equal1~0_combout\);

-- Location: LCCOMB_X22_Y15_N12
\vga_sync_instance|v_count[4]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_sync_instance|v_count[4]~0_combout\ = (\vga_sync_instance|Equal0~3_combout\ & (!\vga_sync_instance|Equal1~0_combout\ & ((\vga_sync_instance|process_0~2_combout\) # (\vga_sync_instance|LessThan1~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_sync_instance|process_0~2_combout\,
	datab => \vga_sync_instance|LessThan1~2_combout\,
	datac => \vga_sync_instance|Equal0~3_combout\,
	datad => \vga_sync_instance|Equal1~0_combout\,
	combout => \vga_sync_instance|v_count[4]~0_combout\);

-- Location: LCCOMB_X23_Y15_N6
\vga_sync_instance|Add1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_sync_instance|Add1~0_combout\ = \vga_sync_instance|v_count\(0) $ (VCC)
-- \vga_sync_instance|Add1~1\ = CARRY(\vga_sync_instance|v_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga_sync_instance|v_count\(0),
	datad => VCC,
	combout => \vga_sync_instance|Add1~0_combout\,
	cout => \vga_sync_instance|Add1~1\);

-- Location: LCCOMB_X22_Y15_N4
\vga_sync_instance|v_count~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_sync_instance|v_count~8_combout\ = (\vga_sync_instance|Add1~0_combout\ & ((\vga_sync_instance|LessThan1~2_combout\) # (\vga_sync_instance|process_0~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_sync_instance|Add1~0_combout\,
	datab => \vga_sync_instance|LessThan1~2_combout\,
	datad => \vga_sync_instance|process_0~2_combout\,
	combout => \vga_sync_instance|v_count~8_combout\);

-- Location: FF_X22_Y15_N5
\vga_sync_instance|v_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_camera_clock~clkctrl_outclk\,
	d => \vga_sync_instance|v_count~8_combout\,
	ena => \vga_sync_instance|ALT_INV_v_count[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_sync_instance|v_count\(0));

-- Location: LCCOMB_X23_Y15_N8
\vga_sync_instance|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_sync_instance|Add1~2_combout\ = (\vga_sync_instance|v_count\(1) & (!\vga_sync_instance|Add1~1\)) # (!\vga_sync_instance|v_count\(1) & ((\vga_sync_instance|Add1~1\) # (GND)))
-- \vga_sync_instance|Add1~3\ = CARRY((!\vga_sync_instance|Add1~1\) # (!\vga_sync_instance|v_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_sync_instance|v_count\(1),
	datad => VCC,
	cin => \vga_sync_instance|Add1~1\,
	combout => \vga_sync_instance|Add1~2_combout\,
	cout => \vga_sync_instance|Add1~3\);

-- Location: LCCOMB_X23_Y15_N4
\vga_sync_instance|process_0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_sync_instance|process_0~4_combout\ = (!\vga_sync_instance|h_count\(8) & ((\vga_sync_instance|process_0~1_combout\) # (!\vga_sync_instance|h_count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_sync_instance|h_count\(7),
	datab => \vga_sync_instance|h_count\(8),
	datad => \vga_sync_instance|process_0~1_combout\,
	combout => \vga_sync_instance|process_0~4_combout\);

-- Location: LCCOMB_X22_Y15_N26
\vga_sync_instance|v_count~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_sync_instance|v_count~9_combout\ = (\vga_sync_instance|Add1~2_combout\ & ((\vga_sync_instance|process_0~0_combout\) # ((\vga_sync_instance|LessThan1~2_combout\) # (\vga_sync_instance|process_0~4_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_sync_instance|process_0~0_combout\,
	datab => \vga_sync_instance|LessThan1~2_combout\,
	datac => \vga_sync_instance|Add1~2_combout\,
	datad => \vga_sync_instance|process_0~4_combout\,
	combout => \vga_sync_instance|v_count~9_combout\);

-- Location: FF_X22_Y15_N27
\vga_sync_instance|v_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_camera_clock~clkctrl_outclk\,
	d => \vga_sync_instance|v_count~9_combout\,
	ena => \vga_sync_instance|ALT_INV_v_count[2]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_sync_instance|v_count\(1));

-- Location: LCCOMB_X23_Y15_N10
\vga_sync_instance|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_sync_instance|Add1~4_combout\ = (\vga_sync_instance|v_count\(2) & (\vga_sync_instance|Add1~3\ $ (GND))) # (!\vga_sync_instance|v_count\(2) & (!\vga_sync_instance|Add1~3\ & VCC))
-- \vga_sync_instance|Add1~5\ = CARRY((\vga_sync_instance|v_count\(2) & !\vga_sync_instance|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_sync_instance|v_count\(2),
	datad => VCC,
	cin => \vga_sync_instance|Add1~3\,
	combout => \vga_sync_instance|Add1~4_combout\,
	cout => \vga_sync_instance|Add1~5\);

-- Location: LCCOMB_X22_Y15_N8
\vga_sync_instance|v_count[2]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_sync_instance|v_count[2]~10_combout\ = (\vga_sync_instance|Add1~4_combout\ & ((\vga_sync_instance|v_count[4]~0_combout\) # ((\vga_sync_instance|v_count[2]~1_combout\ & \vga_sync_instance|v_count\(2))))) # (!\vga_sync_instance|Add1~4_combout\ & 
-- (\vga_sync_instance|v_count[2]~1_combout\ & (\vga_sync_instance|v_count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_sync_instance|Add1~4_combout\,
	datab => \vga_sync_instance|v_count[2]~1_combout\,
	datac => \vga_sync_instance|v_count\(2),
	datad => \vga_sync_instance|v_count[4]~0_combout\,
	combout => \vga_sync_instance|v_count[2]~10_combout\);

-- Location: FF_X22_Y15_N9
\vga_sync_instance|v_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_camera_clock~clkctrl_outclk\,
	d => \vga_sync_instance|v_count[2]~10_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_sync_instance|v_count\(2));

-- Location: LCCOMB_X23_Y15_N12
\vga_sync_instance|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_sync_instance|Add1~6_combout\ = (\vga_sync_instance|v_count\(3) & (!\vga_sync_instance|Add1~5\)) # (!\vga_sync_instance|v_count\(3) & ((\vga_sync_instance|Add1~5\) # (GND)))
-- \vga_sync_instance|Add1~7\ = CARRY((!\vga_sync_instance|Add1~5\) # (!\vga_sync_instance|v_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga_sync_instance|v_count\(3),
	datad => VCC,
	cin => \vga_sync_instance|Add1~5\,
	combout => \vga_sync_instance|Add1~6_combout\,
	cout => \vga_sync_instance|Add1~7\);

-- Location: LCCOMB_X22_Y15_N18
\vga_sync_instance|v_count[3]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_sync_instance|v_count[3]~11_combout\ = (\vga_sync_instance|v_count[4]~0_combout\ & ((\vga_sync_instance|Add1~6_combout\) # ((\vga_sync_instance|v_count\(3) & \vga_sync_instance|v_count[2]~1_combout\)))) # (!\vga_sync_instance|v_count[4]~0_combout\ & 
-- (((\vga_sync_instance|v_count\(3) & \vga_sync_instance|v_count[2]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_sync_instance|v_count[4]~0_combout\,
	datab => \vga_sync_instance|Add1~6_combout\,
	datac => \vga_sync_instance|v_count\(3),
	datad => \vga_sync_instance|v_count[2]~1_combout\,
	combout => \vga_sync_instance|v_count[3]~11_combout\);

-- Location: FF_X22_Y15_N19
\vga_sync_instance|v_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_camera_clock~clkctrl_outclk\,
	d => \vga_sync_instance|v_count[3]~11_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_sync_instance|v_count\(3));

-- Location: LCCOMB_X23_Y15_N14
\vga_sync_instance|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_sync_instance|Add1~8_combout\ = (\vga_sync_instance|v_count\(4) & (\vga_sync_instance|Add1~7\ $ (GND))) # (!\vga_sync_instance|v_count\(4) & (!\vga_sync_instance|Add1~7\ & VCC))
-- \vga_sync_instance|Add1~9\ = CARRY((\vga_sync_instance|v_count\(4) & !\vga_sync_instance|Add1~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_sync_instance|v_count\(4),
	datad => VCC,
	cin => \vga_sync_instance|Add1~7\,
	combout => \vga_sync_instance|Add1~8_combout\,
	cout => \vga_sync_instance|Add1~9\);

-- Location: LCCOMB_X23_Y15_N30
\vga_sync_instance|v_count[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_sync_instance|v_count[4]~7_combout\ = (\vga_sync_instance|v_count[2]~1_combout\ & ((\vga_sync_instance|v_count\(4)) # ((\vga_sync_instance|Add1~8_combout\ & \vga_sync_instance|v_count[4]~0_combout\)))) # (!\vga_sync_instance|v_count[2]~1_combout\ & 
-- (\vga_sync_instance|Add1~8_combout\ & ((\vga_sync_instance|v_count[4]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_sync_instance|v_count[2]~1_combout\,
	datab => \vga_sync_instance|Add1~8_combout\,
	datac => \vga_sync_instance|v_count\(4),
	datad => \vga_sync_instance|v_count[4]~0_combout\,
	combout => \vga_sync_instance|v_count[4]~7_combout\);

-- Location: FF_X23_Y15_N31
\vga_sync_instance|v_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_camera_clock~clkctrl_outclk\,
	d => \vga_sync_instance|v_count[4]~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_sync_instance|v_count\(4));

-- Location: LCCOMB_X23_Y15_N16
\vga_sync_instance|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_sync_instance|Add1~10_combout\ = (\vga_sync_instance|v_count\(5) & (!\vga_sync_instance|Add1~9\)) # (!\vga_sync_instance|v_count\(5) & ((\vga_sync_instance|Add1~9\) # (GND)))
-- \vga_sync_instance|Add1~11\ = CARRY((!\vga_sync_instance|Add1~9\) # (!\vga_sync_instance|v_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_sync_instance|v_count\(5),
	datad => VCC,
	cin => \vga_sync_instance|Add1~9\,
	combout => \vga_sync_instance|Add1~10_combout\,
	cout => \vga_sync_instance|Add1~11\);

-- Location: LCCOMB_X22_Y15_N14
\vga_sync_instance|v_count[5]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_sync_instance|v_count[5]~3_combout\ = (\vga_sync_instance|Add1~10_combout\ & ((\vga_sync_instance|v_count[4]~0_combout\) # ((\vga_sync_instance|v_count[2]~1_combout\ & \vga_sync_instance|v_count\(5))))) # (!\vga_sync_instance|Add1~10_combout\ & 
-- (\vga_sync_instance|v_count[2]~1_combout\ & (\vga_sync_instance|v_count\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_sync_instance|Add1~10_combout\,
	datab => \vga_sync_instance|v_count[2]~1_combout\,
	datac => \vga_sync_instance|v_count\(5),
	datad => \vga_sync_instance|v_count[4]~0_combout\,
	combout => \vga_sync_instance|v_count[5]~3_combout\);

-- Location: FF_X22_Y15_N15
\vga_sync_instance|v_count[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_camera_clock~clkctrl_outclk\,
	d => \vga_sync_instance|v_count[5]~3_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_sync_instance|v_count\(5));

-- Location: LCCOMB_X23_Y15_N18
\vga_sync_instance|Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_sync_instance|Add1~12_combout\ = (\vga_sync_instance|v_count\(6) & (\vga_sync_instance|Add1~11\ $ (GND))) # (!\vga_sync_instance|v_count\(6) & (!\vga_sync_instance|Add1~11\ & VCC))
-- \vga_sync_instance|Add1~13\ = CARRY((\vga_sync_instance|v_count\(6) & !\vga_sync_instance|Add1~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_sync_instance|v_count\(6),
	datad => VCC,
	cin => \vga_sync_instance|Add1~11\,
	combout => \vga_sync_instance|Add1~12_combout\,
	cout => \vga_sync_instance|Add1~13\);

-- Location: LCCOMB_X22_Y15_N16
\vga_sync_instance|v_count[6]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_sync_instance|v_count[6]~4_combout\ = (\vga_sync_instance|Add1~12_combout\ & ((\vga_sync_instance|v_count[4]~0_combout\) # ((\vga_sync_instance|v_count[2]~1_combout\ & \vga_sync_instance|v_count\(6))))) # (!\vga_sync_instance|Add1~12_combout\ & 
-- (\vga_sync_instance|v_count[2]~1_combout\ & (\vga_sync_instance|v_count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_sync_instance|Add1~12_combout\,
	datab => \vga_sync_instance|v_count[2]~1_combout\,
	datac => \vga_sync_instance|v_count\(6),
	datad => \vga_sync_instance|v_count[4]~0_combout\,
	combout => \vga_sync_instance|v_count[6]~4_combout\);

-- Location: FF_X22_Y15_N17
\vga_sync_instance|v_count[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_camera_clock~clkctrl_outclk\,
	d => \vga_sync_instance|v_count[6]~4_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_sync_instance|v_count\(6));

-- Location: LCCOMB_X23_Y15_N20
\vga_sync_instance|Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_sync_instance|Add1~14_combout\ = (\vga_sync_instance|v_count\(7) & (!\vga_sync_instance|Add1~13\)) # (!\vga_sync_instance|v_count\(7) & ((\vga_sync_instance|Add1~13\) # (GND)))
-- \vga_sync_instance|Add1~15\ = CARRY((!\vga_sync_instance|Add1~13\) # (!\vga_sync_instance|v_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_sync_instance|v_count\(7),
	datad => VCC,
	cin => \vga_sync_instance|Add1~13\,
	combout => \vga_sync_instance|Add1~14_combout\,
	cout => \vga_sync_instance|Add1~15\);

-- Location: LCCOMB_X22_Y15_N10
\vga_sync_instance|v_count[7]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_sync_instance|v_count[7]~5_combout\ = (\vga_sync_instance|Add1~14_combout\ & ((\vga_sync_instance|v_count[4]~0_combout\) # ((\vga_sync_instance|v_count[2]~1_combout\ & \vga_sync_instance|v_count\(7))))) # (!\vga_sync_instance|Add1~14_combout\ & 
-- (\vga_sync_instance|v_count[2]~1_combout\ & (\vga_sync_instance|v_count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_sync_instance|Add1~14_combout\,
	datab => \vga_sync_instance|v_count[2]~1_combout\,
	datac => \vga_sync_instance|v_count\(7),
	datad => \vga_sync_instance|v_count[4]~0_combout\,
	combout => \vga_sync_instance|v_count[7]~5_combout\);

-- Location: FF_X22_Y15_N11
\vga_sync_instance|v_count[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_camera_clock~clkctrl_outclk\,
	d => \vga_sync_instance|v_count[7]~5_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_sync_instance|v_count\(7));

-- Location: LCCOMB_X23_Y15_N22
\vga_sync_instance|Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_sync_instance|Add1~16_combout\ = (\vga_sync_instance|v_count\(8) & (\vga_sync_instance|Add1~15\ $ (GND))) # (!\vga_sync_instance|v_count\(8) & (!\vga_sync_instance|Add1~15\ & VCC))
-- \vga_sync_instance|Add1~17\ = CARRY((\vga_sync_instance|v_count\(8) & !\vga_sync_instance|Add1~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga_sync_instance|v_count\(8),
	datad => VCC,
	cin => \vga_sync_instance|Add1~15\,
	combout => \vga_sync_instance|Add1~16_combout\,
	cout => \vga_sync_instance|Add1~17\);

-- Location: LCCOMB_X23_Y15_N0
\vga_sync_instance|v_count[8]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_sync_instance|v_count[8]~6_combout\ = (\vga_sync_instance|v_count[2]~1_combout\ & ((\vga_sync_instance|v_count\(8)) # ((\vga_sync_instance|Add1~16_combout\ & \vga_sync_instance|v_count[4]~0_combout\)))) # (!\vga_sync_instance|v_count[2]~1_combout\ & 
-- (\vga_sync_instance|Add1~16_combout\ & ((\vga_sync_instance|v_count[4]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_sync_instance|v_count[2]~1_combout\,
	datab => \vga_sync_instance|Add1~16_combout\,
	datac => \vga_sync_instance|v_count\(8),
	datad => \vga_sync_instance|v_count[4]~0_combout\,
	combout => \vga_sync_instance|v_count[8]~6_combout\);

-- Location: FF_X23_Y15_N1
\vga_sync_instance|v_count[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_camera_clock~clkctrl_outclk\,
	d => \vga_sync_instance|v_count[8]~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_sync_instance|v_count\(8));

-- Location: LCCOMB_X22_Y15_N22
\vga_sync_instance|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_sync_instance|LessThan1~1_combout\ = (!\vga_sync_instance|v_count\(7) & (!\vga_sync_instance|v_count\(5) & (!\vga_sync_instance|v_count\(4) & !\vga_sync_instance|v_count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_sync_instance|v_count\(7),
	datab => \vga_sync_instance|v_count\(5),
	datac => \vga_sync_instance|v_count\(4),
	datad => \vga_sync_instance|v_count\(6),
	combout => \vga_sync_instance|LessThan1~1_combout\);

-- Location: LCCOMB_X22_Y15_N24
\vga_sync_instance|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_sync_instance|LessThan1~0_combout\ = (((!\vga_sync_instance|v_count\(1) & !\vga_sync_instance|v_count\(0))) # (!\vga_sync_instance|v_count\(3))) # (!\vga_sync_instance|v_count\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_sync_instance|v_count\(1),
	datab => \vga_sync_instance|v_count\(2),
	datac => \vga_sync_instance|v_count\(0),
	datad => \vga_sync_instance|v_count\(3),
	combout => \vga_sync_instance|LessThan1~0_combout\);

-- Location: LCCOMB_X22_Y15_N0
\vga_sync_instance|LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_sync_instance|LessThan1~2_combout\ = (!\vga_sync_instance|v_count\(8) & (\vga_sync_instance|LessThan1~1_combout\ & \vga_sync_instance|LessThan1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga_sync_instance|v_count\(8),
	datac => \vga_sync_instance|LessThan1~1_combout\,
	datad => \vga_sync_instance|LessThan1~0_combout\,
	combout => \vga_sync_instance|LessThan1~2_combout\);

-- Location: LCCOMB_X22_Y15_N2
\vga_sync_instance|v_count[2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_sync_instance|v_count[2]~1_combout\ = (\vga_sync_instance|process_0~2_combout\ & (((\vga_sync_instance|Equal1~0_combout\) # (!\vga_sync_instance|Equal0~3_combout\)))) # (!\vga_sync_instance|process_0~2_combout\ & 
-- (\vga_sync_instance|LessThan1~2_combout\ & ((\vga_sync_instance|Equal1~0_combout\) # (!\vga_sync_instance|Equal0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_sync_instance|process_0~2_combout\,
	datab => \vga_sync_instance|LessThan1~2_combout\,
	datac => \vga_sync_instance|Equal0~3_combout\,
	datad => \vga_sync_instance|Equal1~0_combout\,
	combout => \vga_sync_instance|v_count[2]~1_combout\);

-- Location: LCCOMB_X23_Y15_N24
\vga_sync_instance|Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_sync_instance|Add1~18_combout\ = \vga_sync_instance|Add1~17\ $ (\vga_sync_instance|v_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \vga_sync_instance|v_count\(9),
	cin => \vga_sync_instance|Add1~17\,
	combout => \vga_sync_instance|Add1~18_combout\);

-- Location: LCCOMB_X22_Y15_N28
\vga_sync_instance|v_count[9]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_sync_instance|v_count[9]~2_combout\ = (\vga_sync_instance|v_count[2]~1_combout\ & ((\vga_sync_instance|v_count\(9)) # ((\vga_sync_instance|Add1~18_combout\ & \vga_sync_instance|v_count[4]~0_combout\)))) # (!\vga_sync_instance|v_count[2]~1_combout\ & 
-- (\vga_sync_instance|Add1~18_combout\ & ((\vga_sync_instance|v_count[4]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_sync_instance|v_count[2]~1_combout\,
	datab => \vga_sync_instance|Add1~18_combout\,
	datac => \vga_sync_instance|v_count\(9),
	datad => \vga_sync_instance|v_count[4]~0_combout\,
	combout => \vga_sync_instance|v_count[9]~2_combout\);

-- Location: FF_X22_Y15_N29
\vga_sync_instance|v_count[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_camera_clock~clkctrl_outclk\,
	d => \vga_sync_instance|v_count[9]~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_sync_instance|v_count\(9));

-- Location: LCCOMB_X19_Y15_N28
\vga_sync_instance|LessThan6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_sync_instance|LessThan6~1_combout\ = (\vga_sync_instance|v_count\(3)) # ((\vga_sync_instance|v_count\(1)) # ((\vga_sync_instance|v_count\(0)) # (\vga_sync_instance|v_count\(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_sync_instance|v_count\(3),
	datab => \vga_sync_instance|v_count\(1),
	datac => \vga_sync_instance|v_count\(0),
	datad => \vga_sync_instance|v_count\(2),
	combout => \vga_sync_instance|LessThan6~1_combout\);

-- Location: LCCOMB_X19_Y15_N10
\vga_sync_instance|LessThan6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_sync_instance|LessThan6~0_combout\ = (\vga_sync_instance|v_count\(6) & (\vga_sync_instance|v_count\(7) & (\vga_sync_instance|v_count\(5) & \vga_sync_instance|v_count\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_sync_instance|v_count\(6),
	datab => \vga_sync_instance|v_count\(7),
	datac => \vga_sync_instance|v_count\(5),
	datad => \vga_sync_instance|v_count\(8),
	combout => \vga_sync_instance|LessThan6~0_combout\);

-- Location: LCCOMB_X19_Y15_N4
\vga_sync_instance|LessThan6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_sync_instance|LessThan6~2_combout\ = (\vga_sync_instance|v_count\(9)) # ((\vga_sync_instance|LessThan6~0_combout\ & ((\vga_sync_instance|LessThan6~1_combout\) # (\vga_sync_instance|v_count\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_sync_instance|v_count\(9),
	datab => \vga_sync_instance|LessThan6~1_combout\,
	datac => \vga_sync_instance|v_count\(4),
	datad => \vga_sync_instance|LessThan6~0_combout\,
	combout => \vga_sync_instance|LessThan6~2_combout\);

-- Location: FF_X16_Y15_N27
\vga_sync_instance|eof\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_camera_clock~clkctrl_outclk\,
	asdata => \vga_sync_instance|LessThan6~2_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_sync_instance|eof~q\);

-- Location: LCCOMB_X14_Y15_N6
\camstatemachine_instance|current_state.wait_for_display_end_pre_copy~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \camstatemachine_instance|current_state.wait_for_display_end_pre_copy~3_combout\ = \camstatemachine_instance|current_state.wait_for_display_end_pre_copy~1_combout\ $ (((!\vga_sync_instance|eof~q\ & 
-- \camstatemachine_instance|current_state.wait_for_display_end_pre_copy~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camstatemachine_instance|current_state.wait_for_display_end_pre_copy~1_combout\,
	datab => \vga_sync_instance|eof~q\,
	datad => \camstatemachine_instance|current_state.wait_for_display_end_pre_copy~2_combout\,
	combout => \camstatemachine_instance|current_state.wait_for_display_end_pre_copy~3_combout\);

-- Location: LCCOMB_X14_Y15_N28
\camstatemachine_instance|current_state.wait_for_display_end_pre_copy~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \camstatemachine_instance|current_state.wait_for_display_end_pre_copy~0_combout\ = (\camstatemachine_instance|current_state.wait_for_display_end_pre_copy~6_combout\) # (!\KEY[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY[0]~input_o\,
	datad => \camstatemachine_instance|current_state.wait_for_display_end_pre_copy~6_combout\,
	combout => \camstatemachine_instance|current_state.wait_for_display_end_pre_copy~0_combout\);

-- Location: FF_X14_Y15_N7
\camstatemachine_instance|current_state.wait_for_display_end_pre_copy~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \camstatemachine_instance|current_state.wait_for_display_end_pre_copy~3_combout\,
	clrn => \camstatemachine_instance|ALT_INV_current_state.wait_for_display_end_pre_copy~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \camstatemachine_instance|current_state.wait_for_display_end_pre_copy~_emulated_q\);

-- Location: LCCOMB_X15_Y15_N6
\camstatemachine_instance|current_state.wait_for_display_end_pre_copy~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \camstatemachine_instance|current_state.wait_for_display_end_pre_copy~2_combout\ = (!\camstatemachine_instance|current_state.wait_for_display_end_pre_copy~6_combout\ & ((\camstatemachine_instance|current_state.wait_for_display_end_pre_copy~1_combout\ $ 
-- (\camstatemachine_instance|current_state.wait_for_display_end_pre_copy~_emulated_q\)) # (!\KEY[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datab => \camstatemachine_instance|current_state.wait_for_display_end_pre_copy~1_combout\,
	datac => \camstatemachine_instance|current_state.wait_for_display_end_pre_copy~_emulated_q\,
	datad => \camstatemachine_instance|current_state.wait_for_display_end_pre_copy~6_combout\,
	combout => \camstatemachine_instance|current_state.wait_for_display_end_pre_copy~2_combout\);

-- Location: IOIBUF_X14_Y0_N15
\GPIO[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(9),
	o => \GPIO[9]~input_o\);

-- Location: LCCOMB_X15_Y15_N12
\camstatemachine_instance|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \camstatemachine_instance|Selector3~0_combout\ = (\camstatemachine_instance|current_state.wait_for_display_end_pre_copy~2_combout\ & ((\vga_sync_instance|eof~q\) # ((!\GPIO[9]~input_o\ & \camstatemachine_instance|current_state.wait_for_cam_start~q\)))) # 
-- (!\camstatemachine_instance|current_state.wait_for_display_end_pre_copy~2_combout\ & (!\GPIO[9]~input_o\ & (\camstatemachine_instance|current_state.wait_for_cam_start~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camstatemachine_instance|current_state.wait_for_display_end_pre_copy~2_combout\,
	datab => \GPIO[9]~input_o\,
	datac => \camstatemachine_instance|current_state.wait_for_cam_start~q\,
	datad => \vga_sync_instance|eof~q\,
	combout => \camstatemachine_instance|Selector3~0_combout\);

-- Location: LCCOMB_X15_Y15_N30
\camstatemachine_instance|current_state.display~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \camstatemachine_instance|current_state.display~0_combout\ = (\SW[1]~input_o\) # (!\KEY[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SW[1]~input_o\,
	datad => \KEY[0]~input_o\,
	combout => \camstatemachine_instance|current_state.display~0_combout\);

-- Location: FF_X15_Y15_N13
\camstatemachine_instance|current_state.wait_for_cam_start\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \camstatemachine_instance|Selector3~0_combout\,
	clrn => \camstatemachine_instance|ALT_INV_current_state.display~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \camstatemachine_instance|current_state.wait_for_cam_start~q\);

-- Location: LCCOMB_X14_Y15_N24
\camstatemachine_instance|next_state~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \camstatemachine_instance|next_state~0_combout\ = (\camstatemachine_instance|current_state.copy1~q\) # (\camstatemachine_instance|current_state.wait_for_cam_start~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \camstatemachine_instance|current_state.copy1~q\,
	datad => \camstatemachine_instance|current_state.wait_for_cam_start~q\,
	combout => \camstatemachine_instance|next_state~0_combout\);

-- Location: FF_X14_Y15_N25
\camstatemachine_instance|current_state.copy1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \camstatemachine_instance|next_state~0_combout\,
	clrn => \camstatemachine_instance|ALT_INV_current_state.display~0_combout\,
	sclr => \ALT_INV_GPIO[9]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \camstatemachine_instance|current_state.copy1~q\);

-- Location: LCCOMB_X14_Y15_N12
\camstatemachine_instance|current_state.read_background_pixel~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \camstatemachine_instance|current_state.read_background_pixel~1_combout\ = (\KEY[0]~input_o\ & ((\camstatemachine_instance|current_state.wait_for_display_end_pre_copy~6_combout\) # 
-- (\camstatemachine_instance|current_state.read_background_pixel~1_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camstatemachine_instance|current_state.wait_for_display_end_pre_copy~6_combout\,
	datac => \KEY[0]~input_o\,
	datad => \camstatemachine_instance|current_state.read_background_pixel~1_combout\,
	combout => \camstatemachine_instance|current_state.read_background_pixel~1_combout\);

-- Location: LCCOMB_X16_Y16_N2
\Add3~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~60_combout\ = pixel_counter(0) $ (VCC)
-- \Add3~61\ = CARRY(pixel_counter(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => pixel_counter(0),
	datad => VCC,
	combout => \Add3~60_combout\,
	cout => \Add3~61\);

-- Location: LCCOMB_X16_Y17_N28
\Add3~123\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~123_combout\ = (\Add3~60_combout\ & ((\camstatemachine_instance|current_state.read_background_pixel~2_combout\) # ((\camstatemachine_instance|current_state.read_foreground_pixel~q\) # 
-- (\camstatemachine_instance|current_state.write_processed_pixel~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camstatemachine_instance|current_state.read_background_pixel~2_combout\,
	datab => \camstatemachine_instance|current_state.read_foreground_pixel~q\,
	datac => \Add3~60_combout\,
	datad => \camstatemachine_instance|current_state.write_processed_pixel~q\,
	combout => \Add3~123_combout\);

-- Location: IOIBUF_X19_Y0_N22
\SW[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(0),
	o => \SW[0]~input_o\);

-- Location: LCCOMB_X15_Y15_N16
\camstatemachine_instance|WideOr2\ : cycloneive_lcell_comb
-- Equation(s):
-- \camstatemachine_instance|WideOr2~combout\ = (\camstatemachine_instance|current_state.read_foreground_pixel~q\) # ((\camstatemachine_instance|current_state.write_processed_pixel~q\) # 
-- (\camstatemachine_instance|current_state.read_background_pixel~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camstatemachine_instance|current_state.read_foreground_pixel~q\,
	datac => \camstatemachine_instance|current_state.write_processed_pixel~q\,
	datad => \camstatemachine_instance|current_state.read_background_pixel~2_combout\,
	combout => \camstatemachine_instance|WideOr2~combout\);

-- Location: LCCOMB_X15_Y15_N18
\camstatemachine_instance|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \camstatemachine_instance|Selector5~0_combout\ = (\backgroundsubtraction_eof~combout\ & ((\camstatemachine_instance|current_state.write_processed_pixel~q\) # ((\camstatemachine_instance|current_state.wait_for_display_end_post_copy~q\ & 
-- !\vga_sync_instance|eof~q\)))) # (!\backgroundsubtraction_eof~combout\ & (\camstatemachine_instance|current_state.wait_for_display_end_post_copy~q\ & ((!\vga_sync_instance|eof~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \backgroundsubtraction_eof~combout\,
	datab => \camstatemachine_instance|current_state.wait_for_display_end_post_copy~q\,
	datac => \camstatemachine_instance|current_state.write_processed_pixel~q\,
	datad => \vga_sync_instance|eof~q\,
	combout => \camstatemachine_instance|Selector5~0_combout\);

-- Location: LCCOMB_X15_Y15_N4
\camstatemachine_instance|Selector5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \camstatemachine_instance|Selector5~1_combout\ = (\camstatemachine_instance|Selector5~0_combout\) # ((\camstatemachine_instance|current_state.copy2~q\ & \GPIO[9]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \camstatemachine_instance|current_state.copy2~q\,
	datac => \GPIO[9]~input_o\,
	datad => \camstatemachine_instance|Selector5~0_combout\,
	combout => \camstatemachine_instance|Selector5~1_combout\);

-- Location: FF_X15_Y15_N5
\camstatemachine_instance|current_state.wait_for_display_end_post_copy\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \camstatemachine_instance|Selector5~1_combout\,
	clrn => \camstatemachine_instance|ALT_INV_current_state.display~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \camstatemachine_instance|current_state.wait_for_display_end_post_copy~q\);

-- Location: LCCOMB_X15_Y15_N10
\camstatemachine_instance|current_state.display~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \camstatemachine_instance|current_state.display~1_combout\ = (\camstatemachine_instance|current_state.display~q\) # ((\camstatemachine_instance|current_state.wait_for_display_end_post_copy~q\ & \vga_sync_instance|eof~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \camstatemachine_instance|current_state.wait_for_display_end_post_copy~q\,
	datac => \camstatemachine_instance|current_state.display~q\,
	datad => \vga_sync_instance|eof~q\,
	combout => \camstatemachine_instance|current_state.display~1_combout\);

-- Location: FF_X15_Y15_N11
\camstatemachine_instance|current_state.display\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \camstatemachine_instance|current_state.display~1_combout\,
	clrn => \camstatemachine_instance|ALT_INV_current_state.display~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \camstatemachine_instance|current_state.display~q\);

-- Location: LCCOMB_X15_Y15_N14
\camstatemachine_instance|WideOr0\ : cycloneive_lcell_comb
-- Equation(s):
-- \camstatemachine_instance|WideOr0~combout\ = (\camstatemachine_instance|current_state.read_foreground_pixel~q\) # ((\camstatemachine_instance|current_state.display~q\) # ((\camstatemachine_instance|current_state.read_background_pixel~2_combout\) # 
-- (\camstatemachine_instance|current_state.wait_for_display_end_pre_copy~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camstatemachine_instance|current_state.read_foreground_pixel~q\,
	datab => \camstatemachine_instance|current_state.display~q\,
	datac => \camstatemachine_instance|current_state.read_background_pixel~2_combout\,
	datad => \camstatemachine_instance|current_state.wait_for_display_end_pre_copy~2_combout\,
	combout => \camstatemachine_instance|WideOr0~combout\);

-- Location: LCCOMB_X15_Y14_N22
\backgroundsubtraction_eof~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \backgroundsubtraction_eof~0_combout\ = (\camstatemachine_instance|WideOr1~combout\ & (!\camstatemachine_instance|WideOr0~combout\ & ((\SW[0]~input_o\) # (\camstatemachine_instance|WideOr2~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \camstatemachine_instance|WideOr1~combout\,
	datac => \camstatemachine_instance|WideOr2~combout\,
	datad => \camstatemachine_instance|WideOr0~combout\,
	combout => \backgroundsubtraction_eof~0_combout\);

-- Location: CLKCTRL_G4
\backgroundsubtraction_eof~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \backgroundsubtraction_eof~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \backgroundsubtraction_eof~0clkctrl_outclk\);

-- Location: LCCOMB_X16_Y16_N0
\pixel_counter[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- pixel_counter(0) = (GLOBAL(\backgroundsubtraction_eof~0clkctrl_outclk\) & ((\Add3~123_combout\))) # (!GLOBAL(\backgroundsubtraction_eof~0clkctrl_outclk\) & (pixel_counter(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => pixel_counter(0),
	datac => \Add3~123_combout\,
	datad => \backgroundsubtraction_eof~0clkctrl_outclk\,
	combout => pixel_counter(0));

-- Location: LCCOMB_X16_Y16_N4
\Add3~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~62_combout\ = (pixel_counter(1) & (!\Add3~61\)) # (!pixel_counter(1) & ((\Add3~61\) # (GND)))
-- \Add3~63\ = CARRY((!\Add3~61\) # (!pixel_counter(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => pixel_counter(1),
	datad => VCC,
	cin => \Add3~61\,
	combout => \Add3~62_combout\,
	cout => \Add3~63\);

-- Location: LCCOMB_X16_Y17_N22
\Add3~124\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~124_combout\ = (\Add3~62_combout\ & ((\camstatemachine_instance|current_state.read_background_pixel~2_combout\) # ((\camstatemachine_instance|current_state.read_foreground_pixel~q\) # 
-- (\camstatemachine_instance|current_state.write_processed_pixel~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camstatemachine_instance|current_state.read_background_pixel~2_combout\,
	datab => \camstatemachine_instance|current_state.read_foreground_pixel~q\,
	datac => \camstatemachine_instance|current_state.write_processed_pixel~q\,
	datad => \Add3~62_combout\,
	combout => \Add3~124_combout\);

-- Location: LCCOMB_X15_Y16_N6
\pixel_counter[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- pixel_counter(1) = (GLOBAL(\backgroundsubtraction_eof~0clkctrl_outclk\) & ((\Add3~124_combout\))) # (!GLOBAL(\backgroundsubtraction_eof~0clkctrl_outclk\) & (pixel_counter(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pixel_counter(1),
	datac => \Add3~124_combout\,
	datad => \backgroundsubtraction_eof~0clkctrl_outclk\,
	combout => pixel_counter(1));

-- Location: LCCOMB_X16_Y16_N6
\Add3~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~64_combout\ = (pixel_counter(2) & (\Add3~63\ $ (GND))) # (!pixel_counter(2) & (!\Add3~63\ & VCC))
-- \Add3~65\ = CARRY((pixel_counter(2) & !\Add3~63\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => pixel_counter(2),
	datad => VCC,
	cin => \Add3~63\,
	combout => \Add3~64_combout\,
	cout => \Add3~65\);

-- Location: LCCOMB_X15_Y16_N22
\Add3~125\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~125_combout\ = (\Add3~64_combout\ & ((\camstatemachine_instance|current_state.read_foreground_pixel~q\) # ((\camstatemachine_instance|current_state.read_background_pixel~2_combout\) # 
-- (\camstatemachine_instance|current_state.write_processed_pixel~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camstatemachine_instance|current_state.read_foreground_pixel~q\,
	datab => \camstatemachine_instance|current_state.read_background_pixel~2_combout\,
	datac => \camstatemachine_instance|current_state.write_processed_pixel~q\,
	datad => \Add3~64_combout\,
	combout => \Add3~125_combout\);

-- Location: LCCOMB_X15_Y16_N20
\pixel_counter[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- pixel_counter(2) = (GLOBAL(\backgroundsubtraction_eof~0clkctrl_outclk\) & ((\Add3~125_combout\))) # (!GLOBAL(\backgroundsubtraction_eof~0clkctrl_outclk\) & (pixel_counter(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => pixel_counter(2),
	datac => \Add3~125_combout\,
	datad => \backgroundsubtraction_eof~0clkctrl_outclk\,
	combout => pixel_counter(2));

-- Location: LCCOMB_X16_Y16_N8
\Add3~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~66_combout\ = (pixel_counter(3) & (!\Add3~65\)) # (!pixel_counter(3) & ((\Add3~65\) # (GND)))
-- \Add3~67\ = CARRY((!\Add3~65\) # (!pixel_counter(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => pixel_counter(3),
	datad => VCC,
	cin => \Add3~65\,
	combout => \Add3~66_combout\,
	cout => \Add3~67\);

-- Location: LCCOMB_X17_Y16_N16
\Add3~126\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~126_combout\ = (\Add3~66_combout\ & ((\camstatemachine_instance|current_state.read_foreground_pixel~q\) # ((\camstatemachine_instance|current_state.read_background_pixel~2_combout\) # 
-- (\camstatemachine_instance|current_state.write_processed_pixel~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camstatemachine_instance|current_state.read_foreground_pixel~q\,
	datab => \camstatemachine_instance|current_state.read_background_pixel~2_combout\,
	datac => \camstatemachine_instance|current_state.write_processed_pixel~q\,
	datad => \Add3~66_combout\,
	combout => \Add3~126_combout\);

-- Location: LCCOMB_X17_Y16_N20
\pixel_counter[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- pixel_counter(3) = (GLOBAL(\backgroundsubtraction_eof~0clkctrl_outclk\) & (\Add3~126_combout\)) # (!GLOBAL(\backgroundsubtraction_eof~0clkctrl_outclk\) & ((pixel_counter(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~126_combout\,
	datab => pixel_counter(3),
	datad => \backgroundsubtraction_eof~0clkctrl_outclk\,
	combout => pixel_counter(3));

-- Location: LCCOMB_X16_Y16_N10
\Add3~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~68_combout\ = (pixel_counter(4) & (\Add3~67\ $ (GND))) # (!pixel_counter(4) & (!\Add3~67\ & VCC))
-- \Add3~69\ = CARRY((pixel_counter(4) & !\Add3~67\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => pixel_counter(4),
	datad => VCC,
	cin => \Add3~67\,
	combout => \Add3~68_combout\,
	cout => \Add3~69\);

-- Location: LCCOMB_X17_Y16_N14
\Add3~127\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~127_combout\ = (\Add3~68_combout\ & ((\camstatemachine_instance|current_state.read_foreground_pixel~q\) # ((\camstatemachine_instance|current_state.read_background_pixel~2_combout\) # 
-- (\camstatemachine_instance|current_state.write_processed_pixel~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camstatemachine_instance|current_state.read_foreground_pixel~q\,
	datab => \camstatemachine_instance|current_state.read_background_pixel~2_combout\,
	datac => \camstatemachine_instance|current_state.write_processed_pixel~q\,
	datad => \Add3~68_combout\,
	combout => \Add3~127_combout\);

-- Location: LCCOMB_X17_Y16_N22
\pixel_counter[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- pixel_counter(4) = (GLOBAL(\backgroundsubtraction_eof~0clkctrl_outclk\) & (\Add3~127_combout\)) # (!GLOBAL(\backgroundsubtraction_eof~0clkctrl_outclk\) & ((pixel_counter(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add3~127_combout\,
	datac => pixel_counter(4),
	datad => \backgroundsubtraction_eof~0clkctrl_outclk\,
	combout => pixel_counter(4));

-- Location: LCCOMB_X16_Y16_N12
\Add3~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~70_combout\ = (pixel_counter(5) & (!\Add3~69\)) # (!pixel_counter(5) & ((\Add3~69\) # (GND)))
-- \Add3~71\ = CARRY((!\Add3~69\) # (!pixel_counter(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => pixel_counter(5),
	datad => VCC,
	cin => \Add3~69\,
	combout => \Add3~70_combout\,
	cout => \Add3~71\);

-- Location: LCCOMB_X17_Y16_N8
\Add3~128\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~128_combout\ = (\Add3~70_combout\ & ((\camstatemachine_instance|current_state.read_foreground_pixel~q\) # ((\camstatemachine_instance|current_state.read_background_pixel~2_combout\) # 
-- (\camstatemachine_instance|current_state.write_processed_pixel~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camstatemachine_instance|current_state.read_foreground_pixel~q\,
	datab => \camstatemachine_instance|current_state.read_background_pixel~2_combout\,
	datac => \camstatemachine_instance|current_state.write_processed_pixel~q\,
	datad => \Add3~70_combout\,
	combout => \Add3~128_combout\);

-- Location: LCCOMB_X17_Y16_N12
\pixel_counter[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- pixel_counter(5) = (GLOBAL(\backgroundsubtraction_eof~0clkctrl_outclk\) & ((\Add3~128_combout\))) # (!GLOBAL(\backgroundsubtraction_eof~0clkctrl_outclk\) & (pixel_counter(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pixel_counter(5),
	datab => \Add3~128_combout\,
	datad => \backgroundsubtraction_eof~0clkctrl_outclk\,
	combout => pixel_counter(5));

-- Location: LCCOMB_X16_Y16_N14
\Add3~72\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~72_combout\ = (pixel_counter(6) & (\Add3~71\ $ (GND))) # (!pixel_counter(6) & (!\Add3~71\ & VCC))
-- \Add3~73\ = CARRY((pixel_counter(6) & !\Add3~71\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => pixel_counter(6),
	datad => VCC,
	cin => \Add3~71\,
	combout => \Add3~72_combout\,
	cout => \Add3~73\);

-- Location: LCCOMB_X15_Y16_N12
\Add3~129\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~129_combout\ = (\Add3~72_combout\ & ((\camstatemachine_instance|current_state.read_foreground_pixel~q\) # ((\camstatemachine_instance|current_state.write_processed_pixel~q\) # 
-- (\camstatemachine_instance|current_state.read_background_pixel~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camstatemachine_instance|current_state.read_foreground_pixel~q\,
	datab => \camstatemachine_instance|current_state.write_processed_pixel~q\,
	datac => \camstatemachine_instance|current_state.read_background_pixel~2_combout\,
	datad => \Add3~72_combout\,
	combout => \Add3~129_combout\);

-- Location: LCCOMB_X15_Y16_N26
\pixel_counter[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- pixel_counter(6) = (GLOBAL(\backgroundsubtraction_eof~0clkctrl_outclk\) & (\Add3~129_combout\)) # (!GLOBAL(\backgroundsubtraction_eof~0clkctrl_outclk\) & ((pixel_counter(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add3~129_combout\,
	datac => pixel_counter(6),
	datad => \backgroundsubtraction_eof~0clkctrl_outclk\,
	combout => pixel_counter(6));

-- Location: LCCOMB_X16_Y16_N16
\Add3~74\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~74_combout\ = (pixel_counter(7) & (!\Add3~73\)) # (!pixel_counter(7) & ((\Add3~73\) # (GND)))
-- \Add3~75\ = CARRY((!\Add3~73\) # (!pixel_counter(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => pixel_counter(7),
	datad => VCC,
	cin => \Add3~73\,
	combout => \Add3~74_combout\,
	cout => \Add3~75\);

-- Location: LCCOMB_X15_Y16_N18
\Add3~130\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~130_combout\ = (\Add3~74_combout\ & ((\camstatemachine_instance|current_state.read_foreground_pixel~q\) # ((\camstatemachine_instance|current_state.read_background_pixel~2_combout\) # 
-- (\camstatemachine_instance|current_state.write_processed_pixel~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camstatemachine_instance|current_state.read_foreground_pixel~q\,
	datab => \camstatemachine_instance|current_state.read_background_pixel~2_combout\,
	datac => \camstatemachine_instance|current_state.write_processed_pixel~q\,
	datad => \Add3~74_combout\,
	combout => \Add3~130_combout\);

-- Location: LCCOMB_X15_Y16_N28
\pixel_counter[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- pixel_counter(7) = (GLOBAL(\backgroundsubtraction_eof~0clkctrl_outclk\) & (\Add3~130_combout\)) # (!GLOBAL(\backgroundsubtraction_eof~0clkctrl_outclk\) & ((pixel_counter(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~130_combout\,
	datab => pixel_counter(7),
	datad => \backgroundsubtraction_eof~0clkctrl_outclk\,
	combout => pixel_counter(7));

-- Location: LCCOMB_X16_Y16_N18
\Add3~76\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~76_combout\ = (pixel_counter(8) & (\Add3~75\ $ (GND))) # (!pixel_counter(8) & (!\Add3~75\ & VCC))
-- \Add3~77\ = CARRY((pixel_counter(8) & !\Add3~75\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => pixel_counter(8),
	datad => VCC,
	cin => \Add3~75\,
	combout => \Add3~76_combout\,
	cout => \Add3~77\);

-- Location: LCCOMB_X16_Y17_N4
\Add3~131\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~131_combout\ = (\Add3~76_combout\ & ((\camstatemachine_instance|current_state.read_background_pixel~2_combout\) # ((\camstatemachine_instance|current_state.read_foreground_pixel~q\) # 
-- (\camstatemachine_instance|current_state.write_processed_pixel~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camstatemachine_instance|current_state.read_background_pixel~2_combout\,
	datab => \camstatemachine_instance|current_state.read_foreground_pixel~q\,
	datac => \Add3~76_combout\,
	datad => \camstatemachine_instance|current_state.write_processed_pixel~q\,
	combout => \Add3~131_combout\);

-- Location: LCCOMB_X16_Y17_N30
\pixel_counter[8]\ : cycloneive_lcell_comb
-- Equation(s):
-- pixel_counter(8) = (GLOBAL(\backgroundsubtraction_eof~0clkctrl_outclk\) & ((\Add3~131_combout\))) # (!GLOBAL(\backgroundsubtraction_eof~0clkctrl_outclk\) & (pixel_counter(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pixel_counter(8),
	datac => \Add3~131_combout\,
	datad => \backgroundsubtraction_eof~0clkctrl_outclk\,
	combout => pixel_counter(8));

-- Location: LCCOMB_X16_Y16_N20
\Add3~78\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~78_combout\ = (pixel_counter(9) & (!\Add3~77\)) # (!pixel_counter(9) & ((\Add3~77\) # (GND)))
-- \Add3~79\ = CARRY((!\Add3~77\) # (!pixel_counter(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => pixel_counter(9),
	datad => VCC,
	cin => \Add3~77\,
	combout => \Add3~78_combout\,
	cout => \Add3~79\);

-- Location: LCCOMB_X14_Y16_N4
\Add3~132\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~132_combout\ = (\Add3~78_combout\ & ((\camstatemachine_instance|current_state.read_foreground_pixel~q\) # ((\camstatemachine_instance|current_state.read_background_pixel~2_combout\) # 
-- (\camstatemachine_instance|current_state.write_processed_pixel~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~78_combout\,
	datab => \camstatemachine_instance|current_state.read_foreground_pixel~q\,
	datac => \camstatemachine_instance|current_state.read_background_pixel~2_combout\,
	datad => \camstatemachine_instance|current_state.write_processed_pixel~q\,
	combout => \Add3~132_combout\);

-- Location: LCCOMB_X14_Y16_N28
\pixel_counter[9]\ : cycloneive_lcell_comb
-- Equation(s):
-- pixel_counter(9) = (GLOBAL(\backgroundsubtraction_eof~0clkctrl_outclk\) & ((\Add3~132_combout\))) # (!GLOBAL(\backgroundsubtraction_eof~0clkctrl_outclk\) & (pixel_counter(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => pixel_counter(9),
	datac => \Add3~132_combout\,
	datad => \backgroundsubtraction_eof~0clkctrl_outclk\,
	combout => pixel_counter(9));

-- Location: LCCOMB_X16_Y16_N22
\Add3~80\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~80_combout\ = (pixel_counter(10) & (\Add3~79\ $ (GND))) # (!pixel_counter(10) & (!\Add3~79\ & VCC))
-- \Add3~81\ = CARRY((pixel_counter(10) & !\Add3~79\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => pixel_counter(10),
	datad => VCC,
	cin => \Add3~79\,
	combout => \Add3~80_combout\,
	cout => \Add3~81\);

-- Location: LCCOMB_X17_Y16_N26
\Add3~133\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~133_combout\ = (\Add3~80_combout\ & ((\camstatemachine_instance|current_state.read_foreground_pixel~q\) # ((\camstatemachine_instance|current_state.read_background_pixel~2_combout\) # 
-- (\camstatemachine_instance|current_state.write_processed_pixel~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camstatemachine_instance|current_state.read_foreground_pixel~q\,
	datab => \camstatemachine_instance|current_state.read_background_pixel~2_combout\,
	datac => \camstatemachine_instance|current_state.write_processed_pixel~q\,
	datad => \Add3~80_combout\,
	combout => \Add3~133_combout\);

-- Location: LCCOMB_X17_Y16_N2
\pixel_counter[10]\ : cycloneive_lcell_comb
-- Equation(s):
-- pixel_counter(10) = (GLOBAL(\backgroundsubtraction_eof~0clkctrl_outclk\) & (\Add3~133_combout\)) # (!GLOBAL(\backgroundsubtraction_eof~0clkctrl_outclk\) & ((pixel_counter(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~133_combout\,
	datab => pixel_counter(10),
	datad => \backgroundsubtraction_eof~0clkctrl_outclk\,
	combout => pixel_counter(10));

-- Location: LCCOMB_X16_Y16_N24
\Add3~82\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~82_combout\ = (pixel_counter(11) & (!\Add3~81\)) # (!pixel_counter(11) & ((\Add3~81\) # (GND)))
-- \Add3~83\ = CARRY((!\Add3~81\) # (!pixel_counter(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => pixel_counter(11),
	datad => VCC,
	cin => \Add3~81\,
	combout => \Add3~82_combout\,
	cout => \Add3~83\);

-- Location: LCCOMB_X17_Y16_N4
\Add3~134\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~134_combout\ = (\Add3~82_combout\ & ((\camstatemachine_instance|current_state.read_foreground_pixel~q\) # ((\camstatemachine_instance|current_state.read_background_pixel~2_combout\) # 
-- (\camstatemachine_instance|current_state.write_processed_pixel~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camstatemachine_instance|current_state.read_foreground_pixel~q\,
	datab => \camstatemachine_instance|current_state.read_background_pixel~2_combout\,
	datac => \camstatemachine_instance|current_state.write_processed_pixel~q\,
	datad => \Add3~82_combout\,
	combout => \Add3~134_combout\);

-- Location: LCCOMB_X17_Y16_N24
\pixel_counter[11]\ : cycloneive_lcell_comb
-- Equation(s):
-- pixel_counter(11) = (GLOBAL(\backgroundsubtraction_eof~0clkctrl_outclk\) & (\Add3~134_combout\)) # (!GLOBAL(\backgroundsubtraction_eof~0clkctrl_outclk\) & ((pixel_counter(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add3~134_combout\,
	datac => pixel_counter(11),
	datad => \backgroundsubtraction_eof~0clkctrl_outclk\,
	combout => pixel_counter(11));

-- Location: LCCOMB_X16_Y16_N26
\Add3~84\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~84_combout\ = (pixel_counter(12) & (\Add3~83\ $ (GND))) # (!pixel_counter(12) & (!\Add3~83\ & VCC))
-- \Add3~85\ = CARRY((pixel_counter(12) & !\Add3~83\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => pixel_counter(12),
	datad => VCC,
	cin => \Add3~83\,
	combout => \Add3~84_combout\,
	cout => \Add3~85\);

-- Location: LCCOMB_X14_Y16_N6
\Add3~135\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~135_combout\ = (\Add3~84_combout\ & ((\camstatemachine_instance|current_state.write_processed_pixel~q\) # ((\camstatemachine_instance|current_state.read_foreground_pixel~q\) # 
-- (\camstatemachine_instance|current_state.read_background_pixel~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camstatemachine_instance|current_state.write_processed_pixel~q\,
	datab => \camstatemachine_instance|current_state.read_foreground_pixel~q\,
	datac => \camstatemachine_instance|current_state.read_background_pixel~2_combout\,
	datad => \Add3~84_combout\,
	combout => \Add3~135_combout\);

-- Location: LCCOMB_X15_Y16_N2
\pixel_counter[12]\ : cycloneive_lcell_comb
-- Equation(s):
-- pixel_counter(12) = (GLOBAL(\backgroundsubtraction_eof~0clkctrl_outclk\) & (\Add3~135_combout\)) # (!GLOBAL(\backgroundsubtraction_eof~0clkctrl_outclk\) & ((pixel_counter(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~135_combout\,
	datac => pixel_counter(12),
	datad => \backgroundsubtraction_eof~0clkctrl_outclk\,
	combout => pixel_counter(12));

-- Location: LCCOMB_X16_Y16_N28
\Add3~86\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~86_combout\ = (pixel_counter(13) & (!\Add3~85\)) # (!pixel_counter(13) & ((\Add3~85\) # (GND)))
-- \Add3~87\ = CARRY((!\Add3~85\) # (!pixel_counter(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => pixel_counter(13),
	datad => VCC,
	cin => \Add3~85\,
	combout => \Add3~86_combout\,
	cout => \Add3~87\);

-- Location: LCCOMB_X16_Y17_N18
\Add3~136\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~136_combout\ = (\Add3~86_combout\ & ((\camstatemachine_instance|current_state.read_background_pixel~2_combout\) # ((\camstatemachine_instance|current_state.write_processed_pixel~q\) # 
-- (\camstatemachine_instance|current_state.read_foreground_pixel~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camstatemachine_instance|current_state.read_background_pixel~2_combout\,
	datab => \camstatemachine_instance|current_state.write_processed_pixel~q\,
	datac => \camstatemachine_instance|current_state.read_foreground_pixel~q\,
	datad => \Add3~86_combout\,
	combout => \Add3~136_combout\);

-- Location: LCCOMB_X16_Y17_N0
\pixel_counter[13]\ : cycloneive_lcell_comb
-- Equation(s):
-- pixel_counter(13) = (GLOBAL(\backgroundsubtraction_eof~0clkctrl_outclk\) & ((\Add3~136_combout\))) # (!GLOBAL(\backgroundsubtraction_eof~0clkctrl_outclk\) & (pixel_counter(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => pixel_counter(13),
	datac => \Add3~136_combout\,
	datad => \backgroundsubtraction_eof~0clkctrl_outclk\,
	combout => pixel_counter(13));

-- Location: LCCOMB_X16_Y16_N30
\Add3~88\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~88_combout\ = (pixel_counter(14) & (\Add3~87\ $ (GND))) # (!pixel_counter(14) & (!\Add3~87\ & VCC))
-- \Add3~89\ = CARRY((pixel_counter(14) & !\Add3~87\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => pixel_counter(14),
	datad => VCC,
	cin => \Add3~87\,
	combout => \Add3~88_combout\,
	cout => \Add3~89\);

-- Location: LCCOMB_X17_Y16_N6
\Add3~137\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~137_combout\ = (\Add3~88_combout\ & ((\camstatemachine_instance|current_state.read_background_pixel~2_combout\) # ((\camstatemachine_instance|current_state.read_foreground_pixel~q\) # 
-- (\camstatemachine_instance|current_state.write_processed_pixel~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camstatemachine_instance|current_state.read_background_pixel~2_combout\,
	datab => \Add3~88_combout\,
	datac => \camstatemachine_instance|current_state.read_foreground_pixel~q\,
	datad => \camstatemachine_instance|current_state.write_processed_pixel~q\,
	combout => \Add3~137_combout\);

-- Location: LCCOMB_X17_Y16_N10
\pixel_counter[14]\ : cycloneive_lcell_comb
-- Equation(s):
-- pixel_counter(14) = (GLOBAL(\backgroundsubtraction_eof~0clkctrl_outclk\) & ((\Add3~137_combout\))) # (!GLOBAL(\backgroundsubtraction_eof~0clkctrl_outclk\) & (pixel_counter(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pixel_counter(14),
	datac => \Add3~137_combout\,
	datad => \backgroundsubtraction_eof~0clkctrl_outclk\,
	combout => pixel_counter(14));

-- Location: LCCOMB_X16_Y15_N0
\Add3~90\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~90_combout\ = (pixel_counter(15) & (!\Add3~89\)) # (!pixel_counter(15) & ((\Add3~89\) # (GND)))
-- \Add3~91\ = CARRY((!\Add3~89\) # (!pixel_counter(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => pixel_counter(15),
	datad => VCC,
	cin => \Add3~89\,
	combout => \Add3~90_combout\,
	cout => \Add3~91\);

-- Location: LCCOMB_X16_Y17_N20
\Add3~138\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~138_combout\ = (\Add3~90_combout\ & ((\camstatemachine_instance|current_state.read_background_pixel~2_combout\) # ((\camstatemachine_instance|current_state.write_processed_pixel~q\) # 
-- (\camstatemachine_instance|current_state.read_foreground_pixel~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camstatemachine_instance|current_state.read_background_pixel~2_combout\,
	datab => \camstatemachine_instance|current_state.write_processed_pixel~q\,
	datac => \camstatemachine_instance|current_state.read_foreground_pixel~q\,
	datad => \Add3~90_combout\,
	combout => \Add3~138_combout\);

-- Location: LCCOMB_X16_Y17_N6
\pixel_counter[15]\ : cycloneive_lcell_comb
-- Equation(s):
-- pixel_counter(15) = (GLOBAL(\backgroundsubtraction_eof~0clkctrl_outclk\) & ((\Add3~138_combout\))) # (!GLOBAL(\backgroundsubtraction_eof~0clkctrl_outclk\) & (pixel_counter(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pixel_counter(15),
	datac => \Add3~138_combout\,
	datad => \backgroundsubtraction_eof~0clkctrl_outclk\,
	combout => pixel_counter(15));

-- Location: LCCOMB_X16_Y15_N2
\Add3~92\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~92_combout\ = (pixel_counter(16) & (\Add3~91\ $ (GND))) # (!pixel_counter(16) & (!\Add3~91\ & VCC))
-- \Add3~93\ = CARRY((pixel_counter(16) & !\Add3~91\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => pixel_counter(16),
	datad => VCC,
	cin => \Add3~91\,
	combout => \Add3~92_combout\,
	cout => \Add3~93\);

-- Location: LCCOMB_X16_Y17_N14
\Add3~139\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~139_combout\ = (\Add3~92_combout\ & ((\camstatemachine_instance|current_state.read_background_pixel~2_combout\) # ((\camstatemachine_instance|current_state.write_processed_pixel~q\) # 
-- (\camstatemachine_instance|current_state.read_foreground_pixel~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camstatemachine_instance|current_state.read_background_pixel~2_combout\,
	datab => \camstatemachine_instance|current_state.write_processed_pixel~q\,
	datac => \Add3~92_combout\,
	datad => \camstatemachine_instance|current_state.read_foreground_pixel~q\,
	combout => \Add3~139_combout\);

-- Location: LCCOMB_X16_Y17_N8
\pixel_counter[16]\ : cycloneive_lcell_comb
-- Equation(s):
-- pixel_counter(16) = (GLOBAL(\backgroundsubtraction_eof~0clkctrl_outclk\) & ((\Add3~139_combout\))) # (!GLOBAL(\backgroundsubtraction_eof~0clkctrl_outclk\) & (pixel_counter(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => pixel_counter(16),
	datac => \Add3~139_combout\,
	datad => \backgroundsubtraction_eof~0clkctrl_outclk\,
	combout => pixel_counter(16));

-- Location: LCCOMB_X16_Y15_N4
\Add3~94\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~94_combout\ = (pixel_counter(17) & (!\Add3~93\)) # (!pixel_counter(17) & ((\Add3~93\) # (GND)))
-- \Add3~95\ = CARRY((!\Add3~93\) # (!pixel_counter(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => pixel_counter(17),
	datad => VCC,
	cin => \Add3~93\,
	combout => \Add3~94_combout\,
	cout => \Add3~95\);

-- Location: LCCOMB_X16_Y17_N24
\Add3~140\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~140_combout\ = (\Add3~94_combout\ & ((\camstatemachine_instance|current_state.read_background_pixel~2_combout\) # ((\camstatemachine_instance|current_state.write_processed_pixel~q\) # 
-- (\camstatemachine_instance|current_state.read_foreground_pixel~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camstatemachine_instance|current_state.read_background_pixel~2_combout\,
	datab => \camstatemachine_instance|current_state.write_processed_pixel~q\,
	datac => \camstatemachine_instance|current_state.read_foreground_pixel~q\,
	datad => \Add3~94_combout\,
	combout => \Add3~140_combout\);

-- Location: LCCOMB_X16_Y17_N10
\pixel_counter[17]\ : cycloneive_lcell_comb
-- Equation(s):
-- pixel_counter(17) = (GLOBAL(\backgroundsubtraction_eof~0clkctrl_outclk\) & ((\Add3~140_combout\))) # (!GLOBAL(\backgroundsubtraction_eof~0clkctrl_outclk\) & (pixel_counter(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pixel_counter(17),
	datac => \Add3~140_combout\,
	datad => \backgroundsubtraction_eof~0clkctrl_outclk\,
	combout => pixel_counter(17));

-- Location: LCCOMB_X16_Y15_N6
\Add3~96\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~96_combout\ = (pixel_counter(18) & (\Add3~95\ $ (GND))) # (!pixel_counter(18) & (!\Add3~95\ & VCC))
-- \Add3~97\ = CARRY((pixel_counter(18) & !\Add3~95\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => pixel_counter(18),
	datad => VCC,
	cin => \Add3~95\,
	combout => \Add3~96_combout\,
	cout => \Add3~97\);

-- Location: LCCOMB_X17_Y15_N6
\Add3~141\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~141_combout\ = (\Add3~96_combout\ & ((\camstatemachine_instance|current_state.write_processed_pixel~q\) # ((\camstatemachine_instance|current_state.read_background_pixel~2_combout\) # 
-- (\camstatemachine_instance|current_state.read_foreground_pixel~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camstatemachine_instance|current_state.write_processed_pixel~q\,
	datab => \camstatemachine_instance|current_state.read_background_pixel~2_combout\,
	datac => \Add3~96_combout\,
	datad => \camstatemachine_instance|current_state.read_foreground_pixel~q\,
	combout => \Add3~141_combout\);

-- Location: LCCOMB_X17_Y15_N8
\pixel_counter[18]\ : cycloneive_lcell_comb
-- Equation(s):
-- pixel_counter(18) = (GLOBAL(\backgroundsubtraction_eof~0clkctrl_outclk\) & (\Add3~141_combout\)) # (!GLOBAL(\backgroundsubtraction_eof~0clkctrl_outclk\) & ((pixel_counter(18))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add3~141_combout\,
	datac => pixel_counter(18),
	datad => \backgroundsubtraction_eof~0clkctrl_outclk\,
	combout => pixel_counter(18));

-- Location: LCCOMB_X17_Y15_N20
\LessThan1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~4_combout\ = ((!pixel_counter(14) & ((!pixel_counter(13)) # (!pixel_counter(12))))) # (!pixel_counter(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011101110111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pixel_counter(14),
	datab => pixel_counter(15),
	datac => pixel_counter(12),
	datad => pixel_counter(13),
	combout => \LessThan1~4_combout\);

-- Location: LCCOMB_X17_Y15_N2
\LessThan1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~5_combout\ = ((!pixel_counter(16) & (!pixel_counter(17) & \LessThan1~4_combout\))) # (!pixel_counter(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pixel_counter(16),
	datab => pixel_counter(18),
	datac => pixel_counter(17),
	datad => \LessThan1~4_combout\,
	combout => \LessThan1~5_combout\);

-- Location: LCCOMB_X16_Y15_N8
\Add3~98\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~98_combout\ = (pixel_counter(19) & (!\Add3~97\)) # (!pixel_counter(19) & ((\Add3~97\) # (GND)))
-- \Add3~99\ = CARRY((!\Add3~97\) # (!pixel_counter(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => pixel_counter(19),
	datad => VCC,
	cin => \Add3~97\,
	combout => \Add3~98_combout\,
	cout => \Add3~99\);

-- Location: LCCOMB_X17_Y15_N24
\Add3~142\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~142_combout\ = (\Add3~98_combout\ & ((\camstatemachine_instance|current_state.read_foreground_pixel~q\) # ((\camstatemachine_instance|current_state.read_background_pixel~2_combout\) # 
-- (\camstatemachine_instance|current_state.write_processed_pixel~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camstatemachine_instance|current_state.read_foreground_pixel~q\,
	datab => \camstatemachine_instance|current_state.read_background_pixel~2_combout\,
	datac => \camstatemachine_instance|current_state.write_processed_pixel~q\,
	datad => \Add3~98_combout\,
	combout => \Add3~142_combout\);

-- Location: LCCOMB_X17_Y15_N26
\pixel_counter[19]\ : cycloneive_lcell_comb
-- Equation(s):
-- pixel_counter(19) = (GLOBAL(\backgroundsubtraction_eof~0clkctrl_outclk\) & (\Add3~142_combout\)) # (!GLOBAL(\backgroundsubtraction_eof~0clkctrl_outclk\) & ((pixel_counter(19))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~142_combout\,
	datac => pixel_counter(19),
	datad => \backgroundsubtraction_eof~0clkctrl_outclk\,
	combout => pixel_counter(19));

-- Location: LCCOMB_X16_Y15_N10
\Add3~100\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~100_combout\ = (pixel_counter(20) & (\Add3~99\ $ (GND))) # (!pixel_counter(20) & (!\Add3~99\ & VCC))
-- \Add3~101\ = CARRY((pixel_counter(20) & !\Add3~99\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => pixel_counter(20),
	datad => VCC,
	cin => \Add3~99\,
	combout => \Add3~100_combout\,
	cout => \Add3~101\);

-- Location: LCCOMB_X17_Y15_N22
\Add3~143\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~143_combout\ = (\Add3~100_combout\ & ((\camstatemachine_instance|current_state.read_foreground_pixel~q\) # ((\camstatemachine_instance|current_state.read_background_pixel~2_combout\) # 
-- (\camstatemachine_instance|current_state.write_processed_pixel~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camstatemachine_instance|current_state.read_foreground_pixel~q\,
	datab => \camstatemachine_instance|current_state.read_background_pixel~2_combout\,
	datac => \camstatemachine_instance|current_state.write_processed_pixel~q\,
	datad => \Add3~100_combout\,
	combout => \Add3~143_combout\);

-- Location: LCCOMB_X17_Y15_N30
\pixel_counter[20]\ : cycloneive_lcell_comb
-- Equation(s):
-- pixel_counter(20) = (GLOBAL(\backgroundsubtraction_eof~0clkctrl_outclk\) & (\Add3~143_combout\)) # (!GLOBAL(\backgroundsubtraction_eof~0clkctrl_outclk\) & ((pixel_counter(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~143_combout\,
	datac => pixel_counter(20),
	datad => \backgroundsubtraction_eof~0clkctrl_outclk\,
	combout => pixel_counter(20));

-- Location: LCCOMB_X16_Y15_N12
\Add3~102\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~102_combout\ = (pixel_counter(21) & (!\Add3~101\)) # (!pixel_counter(21) & ((\Add3~101\) # (GND)))
-- \Add3~103\ = CARRY((!\Add3~101\) # (!pixel_counter(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => pixel_counter(21),
	datad => VCC,
	cin => \Add3~101\,
	combout => \Add3~102_combout\,
	cout => \Add3~103\);

-- Location: LCCOMB_X17_Y15_N12
\Add3~144\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~144_combout\ = (\Add3~102_combout\ & ((\camstatemachine_instance|current_state.read_foreground_pixel~q\) # ((\camstatemachine_instance|current_state.read_background_pixel~2_combout\) # 
-- (\camstatemachine_instance|current_state.write_processed_pixel~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camstatemachine_instance|current_state.read_foreground_pixel~q\,
	datab => \camstatemachine_instance|current_state.read_background_pixel~2_combout\,
	datac => \camstatemachine_instance|current_state.write_processed_pixel~q\,
	datad => \Add3~102_combout\,
	combout => \Add3~144_combout\);

-- Location: LCCOMB_X17_Y15_N4
\pixel_counter[21]\ : cycloneive_lcell_comb
-- Equation(s):
-- pixel_counter(21) = (GLOBAL(\backgroundsubtraction_eof~0clkctrl_outclk\) & (\Add3~144_combout\)) # (!GLOBAL(\backgroundsubtraction_eof~0clkctrl_outclk\) & ((pixel_counter(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~144_combout\,
	datac => pixel_counter(21),
	datad => \backgroundsubtraction_eof~0clkctrl_outclk\,
	combout => pixel_counter(21));

-- Location: LCCOMB_X16_Y15_N14
\Add3~104\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~104_combout\ = (pixel_counter(22) & (\Add3~103\ $ (GND))) # (!pixel_counter(22) & (!\Add3~103\ & VCC))
-- \Add3~105\ = CARRY((pixel_counter(22) & !\Add3~103\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => pixel_counter(22),
	datad => VCC,
	cin => \Add3~103\,
	combout => \Add3~104_combout\,
	cout => \Add3~105\);

-- Location: LCCOMB_X17_Y15_N14
\Add3~145\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~145_combout\ = (\Add3~104_combout\ & ((\camstatemachine_instance|current_state.read_foreground_pixel~q\) # ((\camstatemachine_instance|current_state.read_background_pixel~2_combout\) # 
-- (\camstatemachine_instance|current_state.write_processed_pixel~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camstatemachine_instance|current_state.read_foreground_pixel~q\,
	datab => \camstatemachine_instance|current_state.read_background_pixel~2_combout\,
	datac => \camstatemachine_instance|current_state.write_processed_pixel~q\,
	datad => \Add3~104_combout\,
	combout => \Add3~145_combout\);

-- Location: LCCOMB_X17_Y15_N10
\pixel_counter[22]\ : cycloneive_lcell_comb
-- Equation(s):
-- pixel_counter(22) = (GLOBAL(\backgroundsubtraction_eof~0clkctrl_outclk\) & ((\Add3~145_combout\))) # (!GLOBAL(\backgroundsubtraction_eof~0clkctrl_outclk\) & (pixel_counter(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pixel_counter(22),
	datab => \Add3~145_combout\,
	datad => \backgroundsubtraction_eof~0clkctrl_outclk\,
	combout => pixel_counter(22));

-- Location: LCCOMB_X17_Y15_N18
\LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = (pixel_counter(19)) # ((pixel_counter(21)) # ((pixel_counter(20)) # (pixel_counter(22))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pixel_counter(19),
	datab => pixel_counter(21),
	datac => pixel_counter(20),
	datad => pixel_counter(22),
	combout => \LessThan1~0_combout\);

-- Location: LCCOMB_X16_Y15_N16
\Add3~106\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~106_combout\ = (pixel_counter(23) & (!\Add3~105\)) # (!pixel_counter(23) & ((\Add3~105\) # (GND)))
-- \Add3~107\ = CARRY((!\Add3~105\) # (!pixel_counter(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => pixel_counter(23),
	datad => VCC,
	cin => \Add3~105\,
	combout => \Add3~106_combout\,
	cout => \Add3~107\);

-- Location: LCCOMB_X12_Y15_N20
\Add3~146\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~146_combout\ = (\Add3~106_combout\ & ((\camstatemachine_instance|current_state.read_foreground_pixel~q\) # ((\camstatemachine_instance|current_state.write_processed_pixel~q\) # 
-- (\camstatemachine_instance|current_state.read_background_pixel~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camstatemachine_instance|current_state.read_foreground_pixel~q\,
	datab => \camstatemachine_instance|current_state.write_processed_pixel~q\,
	datac => \camstatemachine_instance|current_state.read_background_pixel~2_combout\,
	datad => \Add3~106_combout\,
	combout => \Add3~146_combout\);

-- Location: LCCOMB_X12_Y15_N28
\pixel_counter[23]\ : cycloneive_lcell_comb
-- Equation(s):
-- pixel_counter(23) = (GLOBAL(\backgroundsubtraction_eof~0clkctrl_outclk\) & ((\Add3~146_combout\))) # (!GLOBAL(\backgroundsubtraction_eof~0clkctrl_outclk\) & (pixel_counter(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => pixel_counter(23),
	datac => \Add3~146_combout\,
	datad => \backgroundsubtraction_eof~0clkctrl_outclk\,
	combout => pixel_counter(23));

-- Location: LCCOMB_X16_Y15_N18
\Add3~108\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~108_combout\ = (pixel_counter(24) & (\Add3~107\ $ (GND))) # (!pixel_counter(24) & (!\Add3~107\ & VCC))
-- \Add3~109\ = CARRY((pixel_counter(24) & !\Add3~107\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => pixel_counter(24),
	datad => VCC,
	cin => \Add3~107\,
	combout => \Add3~108_combout\,
	cout => \Add3~109\);

-- Location: LCCOMB_X12_Y15_N30
\Add3~147\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~147_combout\ = (\Add3~108_combout\ & ((\camstatemachine_instance|current_state.read_foreground_pixel~q\) # ((\camstatemachine_instance|current_state.read_background_pixel~2_combout\) # 
-- (\camstatemachine_instance|current_state.write_processed_pixel~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camstatemachine_instance|current_state.read_foreground_pixel~q\,
	datab => \camstatemachine_instance|current_state.read_background_pixel~2_combout\,
	datac => \camstatemachine_instance|current_state.write_processed_pixel~q\,
	datad => \Add3~108_combout\,
	combout => \Add3~147_combout\);

-- Location: LCCOMB_X12_Y15_N22
\pixel_counter[24]\ : cycloneive_lcell_comb
-- Equation(s):
-- pixel_counter(24) = (GLOBAL(\backgroundsubtraction_eof~0clkctrl_outclk\) & (\Add3~147_combout\)) # (!GLOBAL(\backgroundsubtraction_eof~0clkctrl_outclk\) & ((pixel_counter(24))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add3~147_combout\,
	datac => pixel_counter(24),
	datad => \backgroundsubtraction_eof~0clkctrl_outclk\,
	combout => pixel_counter(24));

-- Location: LCCOMB_X16_Y15_N20
\Add3~110\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~110_combout\ = (pixel_counter(25) & (!\Add3~109\)) # (!pixel_counter(25) & ((\Add3~109\) # (GND)))
-- \Add3~111\ = CARRY((!\Add3~109\) # (!pixel_counter(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => pixel_counter(25),
	datad => VCC,
	cin => \Add3~109\,
	combout => \Add3~110_combout\,
	cout => \Add3~111\);

-- Location: LCCOMB_X12_Y15_N16
\Add3~148\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~148_combout\ = (\Add3~110_combout\ & ((\camstatemachine_instance|current_state.read_foreground_pixel~q\) # ((\camstatemachine_instance|current_state.read_background_pixel~2_combout\) # 
-- (\camstatemachine_instance|current_state.write_processed_pixel~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camstatemachine_instance|current_state.read_foreground_pixel~q\,
	datab => \camstatemachine_instance|current_state.read_background_pixel~2_combout\,
	datac => \camstatemachine_instance|current_state.write_processed_pixel~q\,
	datad => \Add3~110_combout\,
	combout => \Add3~148_combout\);

-- Location: LCCOMB_X12_Y15_N8
\pixel_counter[25]\ : cycloneive_lcell_comb
-- Equation(s):
-- pixel_counter(25) = (GLOBAL(\backgroundsubtraction_eof~0clkctrl_outclk\) & (\Add3~148_combout\)) # (!GLOBAL(\backgroundsubtraction_eof~0clkctrl_outclk\) & ((pixel_counter(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~148_combout\,
	datac => pixel_counter(25),
	datad => \backgroundsubtraction_eof~0clkctrl_outclk\,
	combout => pixel_counter(25));

-- Location: LCCOMB_X16_Y15_N22
\Add3~112\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~112_combout\ = (pixel_counter(26) & (\Add3~111\ $ (GND))) # (!pixel_counter(26) & (!\Add3~111\ & VCC))
-- \Add3~113\ = CARRY((pixel_counter(26) & !\Add3~111\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => pixel_counter(26),
	datad => VCC,
	cin => \Add3~111\,
	combout => \Add3~112_combout\,
	cout => \Add3~113\);

-- Location: LCCOMB_X12_Y15_N2
\Add3~149\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~149_combout\ = (\Add3~112_combout\ & ((\camstatemachine_instance|current_state.read_background_pixel~2_combout\) # ((\camstatemachine_instance|current_state.write_processed_pixel~q\) # 
-- (\camstatemachine_instance|current_state.read_foreground_pixel~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camstatemachine_instance|current_state.read_background_pixel~2_combout\,
	datab => \camstatemachine_instance|current_state.write_processed_pixel~q\,
	datac => \camstatemachine_instance|current_state.read_foreground_pixel~q\,
	datad => \Add3~112_combout\,
	combout => \Add3~149_combout\);

-- Location: LCCOMB_X12_Y15_N26
\pixel_counter[26]\ : cycloneive_lcell_comb
-- Equation(s):
-- pixel_counter(26) = (GLOBAL(\backgroundsubtraction_eof~0clkctrl_outclk\) & ((\Add3~149_combout\))) # (!GLOBAL(\backgroundsubtraction_eof~0clkctrl_outclk\) & (pixel_counter(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pixel_counter(26),
	datac => \Add3~149_combout\,
	datad => \backgroundsubtraction_eof~0clkctrl_outclk\,
	combout => pixel_counter(26));

-- Location: LCCOMB_X12_Y15_N24
\LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~1_combout\ = (pixel_counter(25)) # (pixel_counter(26))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => pixel_counter(25),
	datac => pixel_counter(26),
	combout => \LessThan1~1_combout\);

-- Location: LCCOMB_X16_Y15_N24
\Add3~114\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~114_combout\ = (pixel_counter(27) & (!\Add3~113\)) # (!pixel_counter(27) & ((\Add3~113\) # (GND)))
-- \Add3~115\ = CARRY((!\Add3~113\) # (!pixel_counter(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => pixel_counter(27),
	datad => VCC,
	cin => \Add3~113\,
	combout => \Add3~114_combout\,
	cout => \Add3~115\);

-- Location: LCCOMB_X15_Y16_N16
\Add3~150\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~150_combout\ = (\Add3~114_combout\ & ((\camstatemachine_instance|current_state.write_processed_pixel~q\) # ((\camstatemachine_instance|current_state.read_background_pixel~2_combout\) # 
-- (\camstatemachine_instance|current_state.read_foreground_pixel~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camstatemachine_instance|current_state.write_processed_pixel~q\,
	datab => \camstatemachine_instance|current_state.read_background_pixel~2_combout\,
	datac => \camstatemachine_instance|current_state.read_foreground_pixel~q\,
	datad => \Add3~114_combout\,
	combout => \Add3~150_combout\);

-- Location: LCCOMB_X15_Y16_N24
\pixel_counter[27]\ : cycloneive_lcell_comb
-- Equation(s):
-- pixel_counter(27) = (GLOBAL(\backgroundsubtraction_eof~0clkctrl_outclk\) & ((\Add3~150_combout\))) # (!GLOBAL(\backgroundsubtraction_eof~0clkctrl_outclk\) & (pixel_counter(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => pixel_counter(27),
	datac => \Add3~150_combout\,
	datad => \backgroundsubtraction_eof~0clkctrl_outclk\,
	combout => pixel_counter(27));

-- Location: LCCOMB_X16_Y15_N26
\Add3~116\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~116_combout\ = (pixel_counter(28) & (\Add3~115\ $ (GND))) # (!pixel_counter(28) & (!\Add3~115\ & VCC))
-- \Add3~117\ = CARRY((pixel_counter(28) & !\Add3~115\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => pixel_counter(28),
	datad => VCC,
	cin => \Add3~115\,
	combout => \Add3~116_combout\,
	cout => \Add3~117\);

-- Location: LCCOMB_X15_Y16_N30
\Add3~151\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~151_combout\ = (\Add3~116_combout\ & ((\camstatemachine_instance|current_state.write_processed_pixel~q\) # ((\camstatemachine_instance|current_state.read_foreground_pixel~q\) # 
-- (\camstatemachine_instance|current_state.read_background_pixel~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camstatemachine_instance|current_state.write_processed_pixel~q\,
	datab => \camstatemachine_instance|current_state.read_foreground_pixel~q\,
	datac => \camstatemachine_instance|current_state.read_background_pixel~2_combout\,
	datad => \Add3~116_combout\,
	combout => \Add3~151_combout\);

-- Location: LCCOMB_X15_Y16_N10
\pixel_counter[28]\ : cycloneive_lcell_comb
-- Equation(s):
-- pixel_counter(28) = (GLOBAL(\backgroundsubtraction_eof~0clkctrl_outclk\) & ((\Add3~151_combout\))) # (!GLOBAL(\backgroundsubtraction_eof~0clkctrl_outclk\) & (pixel_counter(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pixel_counter(28),
	datac => \Add3~151_combout\,
	datad => \backgroundsubtraction_eof~0clkctrl_outclk\,
	combout => pixel_counter(28));

-- Location: LCCOMB_X16_Y15_N28
\Add3~118\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~118_combout\ = (pixel_counter(29) & (!\Add3~117\)) # (!pixel_counter(29) & ((\Add3~117\) # (GND)))
-- \Add3~119\ = CARRY((!\Add3~117\) # (!pixel_counter(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => pixel_counter(29),
	datad => VCC,
	cin => \Add3~117\,
	combout => \Add3~118_combout\,
	cout => \Add3~119\);

-- Location: LCCOMB_X15_Y16_N4
\Add3~120\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~120_combout\ = (\Add3~118_combout\ & ((\camstatemachine_instance|current_state.write_processed_pixel~q\) # ((\camstatemachine_instance|current_state.read_background_pixel~2_combout\) # 
-- (\camstatemachine_instance|current_state.read_foreground_pixel~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camstatemachine_instance|current_state.write_processed_pixel~q\,
	datab => \camstatemachine_instance|current_state.read_background_pixel~2_combout\,
	datac => \Add3~118_combout\,
	datad => \camstatemachine_instance|current_state.read_foreground_pixel~q\,
	combout => \Add3~120_combout\);

-- Location: LCCOMB_X15_Y16_N8
\pixel_counter[29]\ : cycloneive_lcell_comb
-- Equation(s):
-- pixel_counter(29) = (GLOBAL(\backgroundsubtraction_eof~0clkctrl_outclk\) & ((\Add3~120_combout\))) # (!GLOBAL(\backgroundsubtraction_eof~0clkctrl_outclk\) & (pixel_counter(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => pixel_counter(29),
	datac => \Add3~120_combout\,
	datad => \backgroundsubtraction_eof~0clkctrl_outclk\,
	combout => pixel_counter(29));

-- Location: LCCOMB_X16_Y15_N30
\Add3~121\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~121_combout\ = \Add3~119\ $ (!pixel_counter(30))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => pixel_counter(30),
	cin => \Add3~119\,
	combout => \Add3~121_combout\);

-- Location: LCCOMB_X15_Y16_N0
\Add3~152\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~152_combout\ = (\Add3~121_combout\ & ((\camstatemachine_instance|current_state.write_processed_pixel~q\) # ((\camstatemachine_instance|current_state.read_foreground_pixel~q\) # 
-- (\camstatemachine_instance|current_state.read_background_pixel~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camstatemachine_instance|current_state.write_processed_pixel~q\,
	datab => \camstatemachine_instance|current_state.read_foreground_pixel~q\,
	datac => \Add3~121_combout\,
	datad => \camstatemachine_instance|current_state.read_background_pixel~2_combout\,
	combout => \Add3~152_combout\);

-- Location: LCCOMB_X15_Y16_N14
\pixel_counter[30]\ : cycloneive_lcell_comb
-- Equation(s):
-- pixel_counter(30) = (GLOBAL(\backgroundsubtraction_eof~0clkctrl_outclk\) & ((\Add3~152_combout\))) # (!GLOBAL(\backgroundsubtraction_eof~0clkctrl_outclk\) & (pixel_counter(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => pixel_counter(30),
	datac => \backgroundsubtraction_eof~0clkctrl_outclk\,
	datad => \Add3~152_combout\,
	combout => pixel_counter(30));

-- Location: LCCOMB_X12_Y16_N20
\LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~2_combout\ = (pixel_counter(27)) # ((pixel_counter(29)) # ((pixel_counter(28)) # (pixel_counter(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pixel_counter(27),
	datab => pixel_counter(29),
	datac => pixel_counter(28),
	datad => pixel_counter(30),
	combout => \LessThan1~2_combout\);

-- Location: LCCOMB_X12_Y15_N14
\LessThan1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~3_combout\ = (pixel_counter(24)) # ((\LessThan1~1_combout\) # ((\LessThan1~2_combout\) # (pixel_counter(23))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pixel_counter(24),
	datab => \LessThan1~1_combout\,
	datac => \LessThan1~2_combout\,
	datad => pixel_counter(23),
	combout => \LessThan1~3_combout\);

-- Location: LCCOMB_X17_Y15_N16
\backgroundsubtraction_eof~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \backgroundsubtraction_eof~1_combout\ = (\camstatemachine_instance|WideOr2~combout\ & (((\LessThan1~0_combout\) # (\LessThan1~3_combout\)) # (!\LessThan1~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~5_combout\,
	datab => \LessThan1~0_combout\,
	datac => \LessThan1~3_combout\,
	datad => \camstatemachine_instance|WideOr2~combout\,
	combout => \backgroundsubtraction_eof~1_combout\);

-- Location: LCCOMB_X17_Y15_N28
backgroundsubtraction_eof : cycloneive_lcell_comb
-- Equation(s):
-- \backgroundsubtraction_eof~combout\ = (GLOBAL(\backgroundsubtraction_eof~0clkctrl_outclk\) & (\backgroundsubtraction_eof~1_combout\)) # (!GLOBAL(\backgroundsubtraction_eof~0clkctrl_outclk\) & ((\backgroundsubtraction_eof~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \backgroundsubtraction_eof~1_combout\,
	datab => \backgroundsubtraction_eof~combout\,
	datad => \backgroundsubtraction_eof~0clkctrl_outclk\,
	combout => \backgroundsubtraction_eof~combout\);

-- Location: LCCOMB_X15_Y15_N28
\camstatemachine_instance|current_state.read_background_pixel~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \camstatemachine_instance|current_state.read_background_pixel~3_combout\ = \camstatemachine_instance|current_state.read_background_pixel~1_combout\ $ (((\camstatemachine_instance|current_state.write_processed_pixel~q\ & 
-- !\backgroundsubtraction_eof~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101001011010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camstatemachine_instance|current_state.read_background_pixel~1_combout\,
	datac => \camstatemachine_instance|current_state.write_processed_pixel~q\,
	datad => \backgroundsubtraction_eof~combout\,
	combout => \camstatemachine_instance|current_state.read_background_pixel~3_combout\);

-- Location: LCCOMB_X15_Y15_N24
\camstatemachine_instance|current_state.read_background_pixel~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \camstatemachine_instance|current_state.read_background_pixel~0_combout\ = (\camstatemachine_instance|current_state.wait_for_display_end_pre_copy~6_combout\) # (!\KEY[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datad => \camstatemachine_instance|current_state.wait_for_display_end_pre_copy~6_combout\,
	combout => \camstatemachine_instance|current_state.read_background_pixel~0_combout\);

-- Location: FF_X15_Y15_N29
\camstatemachine_instance|current_state.read_background_pixel~_emulated\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \camstatemachine_instance|current_state.read_background_pixel~3_combout\,
	clrn => \camstatemachine_instance|ALT_INV_current_state.read_background_pixel~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \camstatemachine_instance|current_state.read_background_pixel~_emulated_q\);

-- Location: LCCOMB_X15_Y15_N22
\camstatemachine_instance|current_state.read_background_pixel~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \camstatemachine_instance|current_state.read_background_pixel~2_combout\ = (\KEY[0]~input_o\ & ((\camstatemachine_instance|current_state.wait_for_display_end_pre_copy~6_combout\) # (\camstatemachine_instance|current_state.read_background_pixel~1_combout\ 
-- $ (\camstatemachine_instance|current_state.read_background_pixel~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camstatemachine_instance|current_state.read_background_pixel~1_combout\,
	datab => \camstatemachine_instance|current_state.read_background_pixel~_emulated_q\,
	datac => \KEY[0]~input_o\,
	datad => \camstatemachine_instance|current_state.wait_for_display_end_pre_copy~6_combout\,
	combout => \camstatemachine_instance|current_state.read_background_pixel~2_combout\);

-- Location: FF_X15_Y15_N27
\camstatemachine_instance|current_state.read_foreground_pixel\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	asdata => \camstatemachine_instance|current_state.read_background_pixel~2_combout\,
	clrn => \camstatemachine_instance|ALT_INV_current_state.display~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \camstatemachine_instance|current_state.read_foreground_pixel~q\);

-- Location: FF_X15_Y15_N19
\camstatemachine_instance|current_state.write_processed_pixel\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	asdata => \camstatemachine_instance|current_state.read_foreground_pixel~q\,
	clrn => \camstatemachine_instance|ALT_INV_current_state.display~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \camstatemachine_instance|current_state.write_processed_pixel~q\);

-- Location: LCCOMB_X15_Y15_N26
\camstatemachine_instance|WideOr7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \camstatemachine_instance|WideOr7~0_combout\ = (!\camstatemachine_instance|current_state.write_processed_pixel~q\ & !\camstatemachine_instance|current_state.wait_for_cam_start~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camstatemachine_instance|current_state.write_processed_pixel~q\,
	datad => \camstatemachine_instance|current_state.wait_for_cam_start~q\,
	combout => \camstatemachine_instance|WideOr7~0_combout\);

-- Location: LCCOMB_X15_Y15_N8
\camstatemachine_instance|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \camstatemachine_instance|Selector4~0_combout\ = (\camstatemachine_instance|current_state.display~q\) # ((\camstatemachine_instance|current_state.wait_for_display_end_post_copy~q\) # ((\camstatemachine_instance|current_state.read_foreground_pixel~q\) # 
-- (\GPIO[9]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camstatemachine_instance|current_state.display~q\,
	datab => \camstatemachine_instance|current_state.wait_for_display_end_post_copy~q\,
	datac => \camstatemachine_instance|current_state.read_foreground_pixel~q\,
	datad => \GPIO[9]~input_o\,
	combout => \camstatemachine_instance|Selector4~0_combout\);

-- Location: LCCOMB_X15_Y15_N20
\camstatemachine_instance|Selector4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \camstatemachine_instance|Selector4~1_combout\ = (!\camstatemachine_instance|current_state.wait_for_display_end_pre_copy~2_combout\ & (\camstatemachine_instance|WideOr7~0_combout\ & (!\camstatemachine_instance|Selector4~0_combout\ & 
-- !\camstatemachine_instance|current_state.read_background_pixel~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camstatemachine_instance|current_state.wait_for_display_end_pre_copy~2_combout\,
	datab => \camstatemachine_instance|WideOr7~0_combout\,
	datac => \camstatemachine_instance|Selector4~0_combout\,
	datad => \camstatemachine_instance|current_state.read_background_pixel~2_combout\,
	combout => \camstatemachine_instance|Selector4~1_combout\);

-- Location: FF_X15_Y15_N21
\camstatemachine_instance|current_state.copy2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \camstatemachine_instance|Selector4~1_combout\,
	clrn => \camstatemachine_instance|ALT_INV_current_state.display~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \camstatemachine_instance|current_state.copy2~q\);

-- Location: LCCOMB_X14_Y15_N30
\camstatemachine_instance|WideOr1\ : cycloneive_lcell_comb
-- Equation(s):
-- \camstatemachine_instance|WideOr1~combout\ = (\camstatemachine_instance|current_state.copy1~q\) # ((\camstatemachine_instance|current_state.copy2~q\) # (\camstatemachine_instance|current_state.write_processed_pixel~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \camstatemachine_instance|current_state.copy1~q\,
	datac => \camstatemachine_instance|current_state.copy2~q\,
	datad => \camstatemachine_instance|current_state.write_processed_pixel~q\,
	combout => \camstatemachine_instance|WideOr1~combout\);

-- Location: LCCOMB_X14_Y15_N20
\SRAM_ADDR[19]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAM_ADDR[19]~18_combout\ = (!\camstatemachine_instance|WideOr0~combout\ & ((\camstatemachine_instance|current_state.copy1~q\) # ((\camstatemachine_instance|current_state.copy2~q\) # (\camstatemachine_instance|current_state.write_processed_pixel~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010101010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camstatemachine_instance|WideOr0~combout\,
	datab => \camstatemachine_instance|current_state.copy1~q\,
	datac => \camstatemachine_instance|current_state.copy2~q\,
	datad => \camstatemachine_instance|current_state.write_processed_pixel~q\,
	combout => \SRAM_ADDR[19]~18_combout\);

-- Location: CLKCTRL_G10
\SRAM_ADDR[19]~18clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \SRAM_ADDR[19]~18clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \SRAM_ADDR[19]~18clkctrl_outclk\);

-- Location: CLKCTRL_G1
\GPIO[11]~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \GPIO[11]~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \GPIO[11]~inputclkctrl_outclk\);

-- Location: IOIBUF_X0_Y21_N15
\GPIO[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(0),
	o => \GPIO[0]~input_o\);

-- Location: LCCOMB_X1_Y21_N6
\cam_instance|y_data[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \cam_instance|y_data[0]~feeder_combout\ = \GPIO[0]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GPIO[0]~input_o\,
	combout => \cam_instance|y_data[0]~feeder_combout\);

-- Location: IOIBUF_X0_Y21_N1
\GPIO[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(8),
	o => \GPIO[8]~input_o\);

-- Location: LCCOMB_X2_Y13_N4
\cam_instance|second_byte~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cam_instance|second_byte~0_combout\ = !\cam_instance|second_byte~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cam_instance|second_byte~q\,
	combout => \cam_instance|second_byte~0_combout\);

-- Location: CLKCTRL_G0
\GPIO[8]~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \GPIO[8]~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \GPIO[8]~inputclkctrl_outclk\);

-- Location: FF_X2_Y13_N5
\cam_instance|second_byte\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GPIO[11]~inputclkctrl_outclk\,
	d => \cam_instance|second_byte~0_combout\,
	clrn => \GPIO[8]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cam_instance|second_byte~q\);

-- Location: LCCOMB_X1_Y21_N14
\cam_instance|y_data[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cam_instance|y_data[0]~0_combout\ = (\GPIO[8]~input_o\ & \cam_instance|second_byte~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \GPIO[8]~input_o\,
	datad => \cam_instance|second_byte~q\,
	combout => \cam_instance|y_data[0]~0_combout\);

-- Location: FF_X1_Y21_N7
\cam_instance|y_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GPIO[11]~inputclkctrl_outclk\,
	d => \cam_instance|y_data[0]~feeder_combout\,
	ena => \cam_instance|y_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cam_instance|y_data\(0));

-- Location: LCCOMB_X14_Y15_N10
\camstatemachine_instance|WideOr7~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \camstatemachine_instance|WideOr7~1_combout\ = (!\camstatemachine_instance|current_state.wait_for_display_end_post_copy~q\ & (\camstatemachine_instance|WideOr7~0_combout\ & (!\camstatemachine_instance|current_state.display~q\ & 
-- !\camstatemachine_instance|current_state.wait_for_display_end_pre_copy~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camstatemachine_instance|current_state.wait_for_display_end_post_copy~q\,
	datab => \camstatemachine_instance|WideOr7~0_combout\,
	datac => \camstatemachine_instance|current_state.display~q\,
	datad => \camstatemachine_instance|current_state.wait_for_display_end_pre_copy~2_combout\,
	combout => \camstatemachine_instance|WideOr7~1_combout\);

-- Location: LCCOMB_X14_Y15_N18
\camstatemachine_instance|WideOr7\ : cycloneive_lcell_comb
-- Equation(s):
-- \camstatemachine_instance|WideOr7~combout\ = (\camstatemachine_instance|current_state.copy1~q\) # ((\camstatemachine_instance|current_state.copy2~q\) # (!\camstatemachine_instance|WideOr7~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \camstatemachine_instance|current_state.copy1~q\,
	datac => \camstatemachine_instance|current_state.copy2~q\,
	datad => \camstatemachine_instance|WideOr7~1_combout\,
	combout => \camstatemachine_instance|WideOr7~combout\);

-- Location: LCCOMB_X15_Y15_N0
\camstatemachine_instance|image_select\ : cycloneive_lcell_comb
-- Equation(s):
-- \camstatemachine_instance|image_select~combout\ = (\camstatemachine_instance|WideOr7~combout\ & ((\camstatemachine_instance|image_select~combout\))) # (!\camstatemachine_instance|WideOr7~combout\ & 
-- (\camstatemachine_instance|current_state.read_foreground_pixel~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camstatemachine_instance|current_state.read_foreground_pixel~q\,
	datab => \camstatemachine_instance|image_select~combout\,
	datad => \camstatemachine_instance|WideOr7~combout\,
	combout => \camstatemachine_instance|image_select~combout\);

-- Location: LCCOMB_X15_Y14_N10
\bpixel[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bpixel[0]~0_combout\ = (\camstatemachine_instance|WideOr2~combout\ & (!\camstatemachine_instance|image_select~combout\ & \camstatemachine_instance|WideOr0~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \camstatemachine_instance|WideOr2~combout\,
	datac => \camstatemachine_instance|image_select~combout\,
	datad => \camstatemachine_instance|WideOr0~combout\,
	combout => \bpixel[0]~0_combout\);

-- Location: CLKCTRL_G11
\bpixel[0]~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \bpixel[0]~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \bpixel[0]~0clkctrl_outclk\);

-- Location: LCCOMB_X14_Y15_N14
\sram_data_out[15]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram_data_out[15]~0_combout\ = (!\camstatemachine_instance|current_state.display~q\ & !\camstatemachine_instance|current_state.read_foreground_pixel~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \camstatemachine_instance|current_state.display~q\,
	datad => \camstatemachine_instance|current_state.read_foreground_pixel~q\,
	combout => \sram_data_out[15]~0_combout\);

-- Location: IOIBUF_X0_Y12_N8
\SRAM_DQ[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SRAM_DQ(15),
	o => \SRAM_DQ[15]~input_o\);

-- Location: LCCOMB_X14_Y15_N4
\sram_data_out[15]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram_data_out[15]~1_combout\ = (\SRAM_DQ[15]~input_o\) # ((\sram_data_out[15]~0_combout\ & (!\camstatemachine_instance|current_state.read_background_pixel~2_combout\ & !\camstatemachine_instance|current_state.wait_for_display_end_pre_copy~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sram_data_out[15]~0_combout\,
	datab => \SRAM_DQ[15]~input_o\,
	datac => \camstatemachine_instance|current_state.read_background_pixel~2_combout\,
	datad => \camstatemachine_instance|current_state.wait_for_display_end_pre_copy~2_combout\,
	combout => \sram_data_out[15]~1_combout\);

-- Location: LCCOMB_X14_Y15_N0
\bpixel[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- bpixel(7) = (GLOBAL(\bpixel[0]~0clkctrl_outclk\) & ((\sram_data_out[15]~1_combout\))) # (!GLOBAL(\bpixel[0]~0clkctrl_outclk\) & (bpixel(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bpixel[0]~0clkctrl_outclk\,
	datab => bpixel(7),
	datac => \sram_data_out[15]~1_combout\,
	combout => bpixel(7));

-- Location: LCCOMB_X14_Y15_N26
\fpixel[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \fpixel[0]~1_combout\ = (\camstatemachine_instance|WideOr2~combout\ & (\camstatemachine_instance|image_select~combout\ & \camstatemachine_instance|WideOr0~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \camstatemachine_instance|WideOr2~combout\,
	datac => \camstatemachine_instance|image_select~combout\,
	datad => \camstatemachine_instance|WideOr0~combout\,
	combout => \fpixel[0]~1_combout\);

-- Location: CLKCTRL_G14
\fpixel[0]~1clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \fpixel[0]~1clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \fpixel[0]~1clkctrl_outclk\);

-- Location: LCCOMB_X14_Y15_N22
\fpixel[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- fpixel(7) = (GLOBAL(\fpixel[0]~1clkctrl_outclk\) & (\sram_data_out[15]~1_combout\)) # (!GLOBAL(\fpixel[0]~1clkctrl_outclk\) & ((fpixel(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sram_data_out[15]~1_combout\,
	datac => fpixel(7),
	datad => \fpixel[0]~1clkctrl_outclk\,
	combout => fpixel(7));

-- Location: IOIBUF_X9_Y0_N15
\SRAM_DQ[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SRAM_DQ(14),
	o => \SRAM_DQ[14]~input_o\);

-- Location: LCCOMB_X10_Y15_N0
\sram_data_out[14]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram_data_out[14]~2_combout\ = (\SRAM_DQ[14]~input_o\) # (!\camstatemachine_instance|WideOr0~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \camstatemachine_instance|WideOr0~combout\,
	datad => \SRAM_DQ[14]~input_o\,
	combout => \sram_data_out[14]~2_combout\);

-- Location: LCCOMB_X10_Y15_N24
\fpixel[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- fpixel(6) = (GLOBAL(\fpixel[0]~1clkctrl_outclk\) & (\sram_data_out[14]~2_combout\)) # (!GLOBAL(\fpixel[0]~1clkctrl_outclk\) & ((fpixel(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sram_data_out[14]~2_combout\,
	datab => fpixel(6),
	datac => \fpixel[0]~1clkctrl_outclk\,
	combout => fpixel(6));

-- Location: LCCOMB_X10_Y15_N6
\bpixel[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- bpixel(6) = (GLOBAL(\bpixel[0]~0clkctrl_outclk\) & (\sram_data_out[14]~2_combout\)) # (!GLOBAL(\bpixel[0]~0clkctrl_outclk\) & ((bpixel(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bpixel[0]~0clkctrl_outclk\,
	datab => \sram_data_out[14]~2_combout\,
	datad => bpixel(6),
	combout => bpixel(6));

-- Location: IOIBUF_X0_Y11_N15
\SRAM_DQ[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SRAM_DQ(13),
	o => \SRAM_DQ[13]~input_o\);

-- Location: LCCOMB_X11_Y15_N12
\sram_data_out[13]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram_data_out[13]~3_combout\ = (\SRAM_DQ[13]~input_o\) # (!\camstatemachine_instance|WideOr0~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRAM_DQ[13]~input_o\,
	datac => \camstatemachine_instance|WideOr0~combout\,
	combout => \sram_data_out[13]~3_combout\);

-- Location: LCCOMB_X11_Y15_N4
\bpixel[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- bpixel(5) = (GLOBAL(\bpixel[0]~0clkctrl_outclk\) & (\sram_data_out[13]~3_combout\)) # (!GLOBAL(\bpixel[0]~0clkctrl_outclk\) & ((bpixel(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sram_data_out[13]~3_combout\,
	datac => bpixel(5),
	datad => \bpixel[0]~0clkctrl_outclk\,
	combout => bpixel(5));

-- Location: LCCOMB_X11_Y15_N22
\fpixel[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- fpixel(5) = (GLOBAL(\fpixel[0]~1clkctrl_outclk\) & ((\sram_data_out[13]~3_combout\))) # (!GLOBAL(\fpixel[0]~1clkctrl_outclk\) & (fpixel(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => fpixel(5),
	datac => \sram_data_out[13]~3_combout\,
	datad => \fpixel[0]~1clkctrl_outclk\,
	combout => fpixel(5));

-- Location: IOIBUF_X0_Y11_N22
\SRAM_DQ[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SRAM_DQ(12),
	o => \SRAM_DQ[12]~input_o\);

-- Location: LCCOMB_X10_Y15_N22
\sram_data_out[12]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram_data_out[12]~4_combout\ = (\SRAM_DQ[12]~input_o\) # (!\camstatemachine_instance|WideOr0~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \camstatemachine_instance|WideOr0~combout\,
	datad => \SRAM_DQ[12]~input_o\,
	combout => \sram_data_out[12]~4_combout\);

-- Location: LCCOMB_X10_Y15_N10
\bpixel[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- bpixel(4) = (GLOBAL(\bpixel[0]~0clkctrl_outclk\) & ((\sram_data_out[12]~4_combout\))) # (!GLOBAL(\bpixel[0]~0clkctrl_outclk\) & (bpixel(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bpixel(4),
	datac => \sram_data_out[12]~4_combout\,
	datad => \bpixel[0]~0clkctrl_outclk\,
	combout => bpixel(4));

-- Location: LCCOMB_X10_Y15_N8
\fpixel[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- fpixel(4) = (GLOBAL(\fpixel[0]~1clkctrl_outclk\) & (\sram_data_out[12]~4_combout\)) # (!GLOBAL(\fpixel[0]~1clkctrl_outclk\) & ((fpixel(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sram_data_out[12]~4_combout\,
	datac => \fpixel[0]~1clkctrl_outclk\,
	datad => fpixel(4),
	combout => fpixel(4));

-- Location: IOIBUF_X0_Y20_N1
\SRAM_DQ[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SRAM_DQ(11),
	o => \SRAM_DQ[11]~input_o\);

-- Location: LCCOMB_X14_Y16_N14
\sram_data_out[11]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram_data_out[11]~5_combout\ = (\SRAM_DQ[11]~input_o\) # (!\camstatemachine_instance|WideOr0~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \camstatemachine_instance|WideOr0~combout\,
	datad => \SRAM_DQ[11]~input_o\,
	combout => \sram_data_out[11]~5_combout\);

-- Location: LCCOMB_X14_Y16_N2
\bpixel[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- bpixel(3) = (GLOBAL(\bpixel[0]~0clkctrl_outclk\) & (\sram_data_out[11]~5_combout\)) # (!GLOBAL(\bpixel[0]~0clkctrl_outclk\) & ((bpixel(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \bpixel[0]~0clkctrl_outclk\,
	datac => \sram_data_out[11]~5_combout\,
	datad => bpixel(3),
	combout => bpixel(3));

-- Location: LCCOMB_X14_Y16_N24
\fpixel[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- fpixel(3) = (GLOBAL(\fpixel[0]~1clkctrl_outclk\) & ((\sram_data_out[11]~5_combout\))) # (!GLOBAL(\fpixel[0]~1clkctrl_outclk\) & (fpixel(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => fpixel(3),
	datac => \fpixel[0]~1clkctrl_outclk\,
	datad => \sram_data_out[11]~5_combout\,
	combout => fpixel(3));

-- Location: IOIBUF_X0_Y11_N8
\SRAM_DQ[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SRAM_DQ(10),
	o => \SRAM_DQ[10]~input_o\);

-- Location: LCCOMB_X10_Y15_N16
\sram_data_out[10]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram_data_out[10]~6_combout\ = (\SRAM_DQ[10]~input_o\) # (!\camstatemachine_instance|WideOr0~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \camstatemachine_instance|WideOr0~combout\,
	datad => \SRAM_DQ[10]~input_o\,
	combout => \sram_data_out[10]~6_combout\);

-- Location: LCCOMB_X10_Y15_N4
\fpixel[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- fpixel(2) = (GLOBAL(\fpixel[0]~1clkctrl_outclk\) & (\sram_data_out[10]~6_combout\)) # (!GLOBAL(\fpixel[0]~1clkctrl_outclk\) & ((fpixel(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sram_data_out[10]~6_combout\,
	datab => fpixel(2),
	datac => \fpixel[0]~1clkctrl_outclk\,
	combout => fpixel(2));

-- Location: LCCOMB_X10_Y15_N18
\bpixel[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- bpixel(2) = (GLOBAL(\bpixel[0]~0clkctrl_outclk\) & (\sram_data_out[10]~6_combout\)) # (!GLOBAL(\bpixel[0]~0clkctrl_outclk\) & ((bpixel(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sram_data_out[10]~6_combout\,
	datab => bpixel(2),
	datad => \bpixel[0]~0clkctrl_outclk\,
	combout => bpixel(2));

-- Location: IOIBUF_X0_Y11_N1
\SRAM_DQ[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SRAM_DQ(9),
	o => \SRAM_DQ[9]~input_o\);

-- Location: LCCOMB_X11_Y15_N10
\sram_data_out[9]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram_data_out[9]~7_combout\ = (\SRAM_DQ[9]~input_o\) # ((\sram_data_out[15]~0_combout\ & (!\camstatemachine_instance|current_state.wait_for_display_end_pre_copy~2_combout\ & !\camstatemachine_instance|current_state.read_background_pixel~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_DQ[9]~input_o\,
	datab => \sram_data_out[15]~0_combout\,
	datac => \camstatemachine_instance|current_state.wait_for_display_end_pre_copy~2_combout\,
	datad => \camstatemachine_instance|current_state.read_background_pixel~2_combout\,
	combout => \sram_data_out[9]~7_combout\);

-- Location: LCCOMB_X10_Y16_N26
\fpixel[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- fpixel(1) = (GLOBAL(\fpixel[0]~1clkctrl_outclk\) & (\sram_data_out[9]~7_combout\)) # (!GLOBAL(\fpixel[0]~1clkctrl_outclk\) & ((fpixel(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sram_data_out[9]~7_combout\,
	datac => fpixel(1),
	datad => \fpixel[0]~1clkctrl_outclk\,
	combout => fpixel(1));

-- Location: LCCOMB_X11_Y15_N0
\bpixel[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- bpixel(1) = (GLOBAL(\bpixel[0]~0clkctrl_outclk\) & ((\sram_data_out[9]~7_combout\))) # (!GLOBAL(\bpixel[0]~0clkctrl_outclk\) & (bpixel(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => bpixel(1),
	datac => \sram_data_out[9]~7_combout\,
	datad => \bpixel[0]~0clkctrl_outclk\,
	combout => bpixel(1));

-- Location: IOIBUF_X0_Y12_N22
\SRAM_DQ[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SRAM_DQ(8),
	o => \SRAM_DQ[8]~input_o\);

-- Location: LCCOMB_X11_Y16_N16
\sram_data_out[8]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram_data_out[8]~8_combout\ = (\SRAM_DQ[8]~input_o\) # (!\camstatemachine_instance|WideOr0~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SRAM_DQ[8]~input_o\,
	datad => \camstatemachine_instance|WideOr0~combout\,
	combout => \sram_data_out[8]~8_combout\);

-- Location: LCCOMB_X11_Y16_N30
\bpixel[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- bpixel(0) = (GLOBAL(\bpixel[0]~0clkctrl_outclk\) & (\sram_data_out[8]~8_combout\)) # (!GLOBAL(\bpixel[0]~0clkctrl_outclk\) & ((bpixel(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sram_data_out[8]~8_combout\,
	datac => bpixel(0),
	datad => \bpixel[0]~0clkctrl_outclk\,
	combout => bpixel(0));

-- Location: LCCOMB_X11_Y16_N24
\fpixel[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- fpixel(0) = (GLOBAL(\fpixel[0]~1clkctrl_outclk\) & ((\sram_data_out[8]~8_combout\))) # (!GLOBAL(\fpixel[0]~1clkctrl_outclk\) & (fpixel(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => fpixel(0),
	datac => \sram_data_out[8]~8_combout\,
	datad => \fpixel[0]~1clkctrl_outclk\,
	combout => fpixel(0));

-- Location: LCCOMB_X10_Y16_N0
\Add1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~1_cout\ = CARRY((bpixel(0)) # (!fpixel(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bpixel(0),
	datab => fpixel(0),
	datad => VCC,
	cout => \Add1~1_cout\);

-- Location: LCCOMB_X10_Y16_N2
\Add1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~3_cout\ = CARRY((fpixel(1) & ((!\Add1~1_cout\) # (!bpixel(1)))) # (!fpixel(1) & (!bpixel(1) & !\Add1~1_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => fpixel(1),
	datab => bpixel(1),
	datad => VCC,
	cin => \Add1~1_cout\,
	cout => \Add1~3_cout\);

-- Location: LCCOMB_X10_Y16_N4
\Add1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~5_cout\ = CARRY((fpixel(2) & (bpixel(2) & !\Add1~3_cout\)) # (!fpixel(2) & ((bpixel(2)) # (!\Add1~3_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => fpixel(2),
	datab => bpixel(2),
	datad => VCC,
	cin => \Add1~3_cout\,
	cout => \Add1~5_cout\);

-- Location: LCCOMB_X10_Y16_N6
\Add1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~7_cout\ = CARRY((bpixel(3) & (fpixel(3) & !\Add1~5_cout\)) # (!bpixel(3) & ((fpixel(3)) # (!\Add1~5_cout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => bpixel(3),
	datab => fpixel(3),
	datad => VCC,
	cin => \Add1~5_cout\,
	cout => \Add1~7_cout\);

-- Location: LCCOMB_X10_Y16_N8
\Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~8_combout\ = ((bpixel(4) $ (fpixel(4) $ (\Add1~7_cout\)))) # (GND)
-- \Add1~9\ = CARRY((bpixel(4) & ((!\Add1~7_cout\) # (!fpixel(4)))) # (!bpixel(4) & (!fpixel(4) & !\Add1~7_cout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => bpixel(4),
	datab => fpixel(4),
	datad => VCC,
	cin => \Add1~7_cout\,
	combout => \Add1~8_combout\,
	cout => \Add1~9\);

-- Location: LCCOMB_X10_Y16_N10
\Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~10_combout\ = (bpixel(5) & ((fpixel(5) & (!\Add1~9\)) # (!fpixel(5) & (\Add1~9\ & VCC)))) # (!bpixel(5) & ((fpixel(5) & ((\Add1~9\) # (GND))) # (!fpixel(5) & (!\Add1~9\))))
-- \Add1~11\ = CARRY((bpixel(5) & (fpixel(5) & !\Add1~9\)) # (!bpixel(5) & ((fpixel(5)) # (!\Add1~9\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => bpixel(5),
	datab => fpixel(5),
	datad => VCC,
	cin => \Add1~9\,
	combout => \Add1~10_combout\,
	cout => \Add1~11\);

-- Location: LCCOMB_X10_Y16_N12
\Add1~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~12_combout\ = ((fpixel(6) $ (bpixel(6) $ (\Add1~11\)))) # (GND)
-- \Add1~13\ = CARRY((fpixel(6) & (bpixel(6) & !\Add1~11\)) # (!fpixel(6) & ((bpixel(6)) # (!\Add1~11\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011001001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => fpixel(6),
	datab => bpixel(6),
	datad => VCC,
	cin => \Add1~11\,
	combout => \Add1~12_combout\,
	cout => \Add1~13\);

-- Location: LCCOMB_X10_Y16_N14
\Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~14_combout\ = (bpixel(7) & ((fpixel(7) & (!\Add1~13\)) # (!fpixel(7) & (\Add1~13\ & VCC)))) # (!bpixel(7) & ((fpixel(7) & ((\Add1~13\) # (GND))) # (!fpixel(7) & (!\Add1~13\))))
-- \Add1~15\ = CARRY((bpixel(7) & (fpixel(7) & !\Add1~13\)) # (!bpixel(7) & ((fpixel(7)) # (!\Add1~13\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => bpixel(7),
	datab => fpixel(7),
	datad => VCC,
	cin => \Add1~13\,
	combout => \Add1~14_combout\,
	cout => \Add1~15\);

-- Location: LCCOMB_X10_Y16_N16
\Add1~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~16_combout\ = \Add1~15\ $ (GND)
-- \Add1~17\ = CARRY(!\Add1~15\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \Add1~15\,
	combout => \Add1~16_combout\,
	cout => \Add1~17\);

-- Location: LCCOMB_X15_Y14_N20
\diff[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \diff[0]~0_combout\ = (\camstatemachine_instance|WideOr2~combout\ & (\camstatemachine_instance|WideOr1~combout\ & !\camstatemachine_instance|WideOr0~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \camstatemachine_instance|WideOr2~combout\,
	datac => \camstatemachine_instance|WideOr1~combout\,
	datad => \camstatemachine_instance|WideOr0~combout\,
	combout => \diff[0]~0_combout\);

-- Location: CLKCTRL_G3
\diff[0]~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \diff[0]~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \diff[0]~0clkctrl_outclk\);

-- Location: LCCOMB_X9_Y14_N0
\diff[8]\ : cycloneive_lcell_comb
-- Equation(s):
-- diff(8) = (GLOBAL(\diff[0]~0clkctrl_outclk\) & ((\Add1~16_combout\))) # (!GLOBAL(\diff[0]~0clkctrl_outclk\) & (diff(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => diff(8),
	datac => \Add1~16_combout\,
	datad => \diff[0]~0clkctrl_outclk\,
	combout => diff(8));

-- Location: LCCOMB_X10_Y16_N18
\Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add1~18_combout\ = !\Add1~17\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Add1~17\,
	combout => \Add1~18_combout\);

-- Location: LCCOMB_X10_Y16_N28
\diff[9]\ : cycloneive_lcell_comb
-- Equation(s):
-- diff(9) = (GLOBAL(\diff[0]~0clkctrl_outclk\) & (\Add1~18_combout\)) # (!GLOBAL(\diff[0]~0clkctrl_outclk\) & ((diff(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add1~18_combout\,
	datac => \diff[0]~0clkctrl_outclk\,
	datad => diff(9),
	combout => diff(9));

-- Location: LCCOMB_X9_Y14_N6
\sram_data_in[8]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram_data_in[8]~1_combout\ = (diff(8)) # (diff(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => diff(8),
	datad => diff(9),
	combout => \sram_data_in[8]~1_combout\);

-- Location: LCCOMB_X10_Y16_N22
\diff[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- diff(6) = (GLOBAL(\diff[0]~0clkctrl_outclk\) & (\Add1~12_combout\)) # (!GLOBAL(\diff[0]~0clkctrl_outclk\) & ((diff(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~12_combout\,
	datac => diff(6),
	datad => \diff[0]~0clkctrl_outclk\,
	combout => diff(6));

-- Location: LCCOMB_X10_Y16_N24
\diff[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- diff(4) = (GLOBAL(\diff[0]~0clkctrl_outclk\) & (\Add1~8_combout\)) # (!GLOBAL(\diff[0]~0clkctrl_outclk\) & ((diff(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add1~8_combout\,
	datac => \diff[0]~0clkctrl_outclk\,
	datad => diff(4),
	combout => diff(4));

-- Location: LCCOMB_X10_Y16_N30
\diff[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- diff(5) = (GLOBAL(\diff[0]~0clkctrl_outclk\) & (\Add1~10_combout\)) # (!GLOBAL(\diff[0]~0clkctrl_outclk\) & ((diff(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add1~10_combout\,
	datac => diff(5),
	datad => \diff[0]~0clkctrl_outclk\,
	combout => diff(5));

-- Location: LCCOMB_X10_Y16_N20
\diff[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- diff(7) = (GLOBAL(\diff[0]~0clkctrl_outclk\) & ((\Add1~14_combout\))) # (!GLOBAL(\diff[0]~0clkctrl_outclk\) & (diff(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => diff(7),
	datac => \Add1~14_combout\,
	datad => \diff[0]~0clkctrl_outclk\,
	combout => diff(7));

-- Location: LCCOMB_X9_Y14_N24
\sram_data_in[8]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram_data_in[8]~0_combout\ = (diff(7)) # ((diff(6) & ((diff(4)) # (diff(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => diff(6),
	datab => diff(4),
	datac => diff(5),
	datad => diff(7),
	combout => \sram_data_in[8]~0_combout\);

-- Location: LCCOMB_X4_Y14_N24
\sram_data_in[8]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram_data_in[8]~2_combout\ = (\camstatemachine_instance|WideOr2~combout\ & (((\sram_data_in[8]~1_combout\) # (\sram_data_in[8]~0_combout\)))) # (!\camstatemachine_instance|WideOr2~combout\ & (\cam_instance|y_data\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camstatemachine_instance|WideOr2~combout\,
	datab => \cam_instance|y_data\(0),
	datac => \sram_data_in[8]~1_combout\,
	datad => \sram_data_in[8]~0_combout\,
	combout => \sram_data_in[8]~2_combout\);

-- Location: LCCOMB_X4_Y14_N26
\sram_data_in[8]\ : cycloneive_lcell_comb
-- Equation(s):
-- sram_data_in(8) = (GLOBAL(\SRAM_ADDR[19]~18clkctrl_outclk\) & ((\sram_data_in[8]~2_combout\))) # (!GLOBAL(\SRAM_ADDR[19]~18clkctrl_outclk\) & (sram_data_in(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sram_data_in(8),
	datac => \SRAM_ADDR[19]~18clkctrl_outclk\,
	datad => \sram_data_in[8]~2_combout\,
	combout => sram_data_in(8));

-- Location: IOIBUF_X0_Y20_N8
\GPIO[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(1),
	o => \GPIO[1]~input_o\);

-- Location: FF_X1_Y21_N25
\cam_instance|y_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GPIO[11]~inputclkctrl_outclk\,
	asdata => \GPIO[1]~input_o\,
	sload => VCC,
	ena => \cam_instance|y_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cam_instance|y_data\(1));

-- Location: LCCOMB_X9_Y14_N28
\sram_data_in[9]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram_data_in[9]~3_combout\ = (\camstatemachine_instance|WideOr2~combout\ & ((\sram_data_in[8]~1_combout\) # ((\sram_data_in[8]~0_combout\)))) # (!\camstatemachine_instance|WideOr2~combout\ & (((\cam_instance|y_data\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sram_data_in[8]~1_combout\,
	datab => \camstatemachine_instance|WideOr2~combout\,
	datac => \cam_instance|y_data\(1),
	datad => \sram_data_in[8]~0_combout\,
	combout => \sram_data_in[9]~3_combout\);

-- Location: LCCOMB_X9_Y14_N4
\sram_data_in[9]\ : cycloneive_lcell_comb
-- Equation(s):
-- sram_data_in(9) = (GLOBAL(\SRAM_ADDR[19]~18clkctrl_outclk\) & ((\sram_data_in[9]~3_combout\))) # (!GLOBAL(\SRAM_ADDR[19]~18clkctrl_outclk\) & (sram_data_in(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => sram_data_in(9),
	datac => \SRAM_ADDR[19]~18clkctrl_outclk\,
	datad => \sram_data_in[9]~3_combout\,
	combout => sram_data_in(9));

-- Location: IOIBUF_X0_Y21_N8
\GPIO[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(2),
	o => \GPIO[2]~input_o\);

-- Location: LCCOMB_X1_Y21_N30
\cam_instance|y_data[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \cam_instance|y_data[2]~feeder_combout\ = \GPIO[2]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GPIO[2]~input_o\,
	combout => \cam_instance|y_data[2]~feeder_combout\);

-- Location: FF_X1_Y21_N31
\cam_instance|y_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GPIO[11]~inputclkctrl_outclk\,
	d => \cam_instance|y_data[2]~feeder_combout\,
	ena => \cam_instance|y_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cam_instance|y_data\(2));

-- Location: LCCOMB_X7_Y14_N12
\sram_data_in[10]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram_data_in[10]~4_combout\ = (\camstatemachine_instance|WideOr2~combout\ & (((\sram_data_in[8]~0_combout\) # (\sram_data_in[8]~1_combout\)))) # (!\camstatemachine_instance|WideOr2~combout\ & (\cam_instance|y_data\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cam_instance|y_data\(2),
	datab => \camstatemachine_instance|WideOr2~combout\,
	datac => \sram_data_in[8]~0_combout\,
	datad => \sram_data_in[8]~1_combout\,
	combout => \sram_data_in[10]~4_combout\);

-- Location: LCCOMB_X7_Y14_N14
\sram_data_in[10]\ : cycloneive_lcell_comb
-- Equation(s):
-- sram_data_in(10) = (GLOBAL(\SRAM_ADDR[19]~18clkctrl_outclk\) & ((\sram_data_in[10]~4_combout\))) # (!GLOBAL(\SRAM_ADDR[19]~18clkctrl_outclk\) & (sram_data_in(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => sram_data_in(10),
	datac => \SRAM_ADDR[19]~18clkctrl_outclk\,
	datad => \sram_data_in[10]~4_combout\,
	combout => sram_data_in(10));

-- Location: IOIBUF_X0_Y23_N1
\GPIO[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(3),
	o => \GPIO[3]~input_o\);

-- Location: LCCOMB_X1_Y21_N8
\cam_instance|y_data[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \cam_instance|y_data[3]~feeder_combout\ = \GPIO[3]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GPIO[3]~input_o\,
	combout => \cam_instance|y_data[3]~feeder_combout\);

-- Location: FF_X1_Y21_N9
\cam_instance|y_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GPIO[11]~inputclkctrl_outclk\,
	d => \cam_instance|y_data[3]~feeder_combout\,
	ena => \cam_instance|y_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cam_instance|y_data\(3));

-- Location: LCCOMB_X9_Y14_N22
\sram_data_in[11]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram_data_in[11]~5_combout\ = (\camstatemachine_instance|WideOr2~combout\ & (((\sram_data_in[8]~1_combout\) # (\sram_data_in[8]~0_combout\)))) # (!\camstatemachine_instance|WideOr2~combout\ & (\cam_instance|y_data\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cam_instance|y_data\(3),
	datab => \camstatemachine_instance|WideOr2~combout\,
	datac => \sram_data_in[8]~1_combout\,
	datad => \sram_data_in[8]~0_combout\,
	combout => \sram_data_in[11]~5_combout\);

-- Location: LCCOMB_X9_Y14_N30
\sram_data_in[11]\ : cycloneive_lcell_comb
-- Equation(s):
-- sram_data_in(11) = (GLOBAL(\SRAM_ADDR[19]~18clkctrl_outclk\) & ((\sram_data_in[11]~5_combout\))) # (!GLOBAL(\SRAM_ADDR[19]~18clkctrl_outclk\) & (sram_data_in(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sram_data_in(11),
	datac => \SRAM_ADDR[19]~18clkctrl_outclk\,
	datad => \sram_data_in[11]~5_combout\,
	combout => sram_data_in(11));

-- Location: IOIBUF_X0_Y21_N22
\GPIO[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(4),
	o => \GPIO[4]~input_o\);

-- Location: LCCOMB_X1_Y21_N22
\cam_instance|y_data[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \cam_instance|y_data[4]~feeder_combout\ = \GPIO[4]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GPIO[4]~input_o\,
	combout => \cam_instance|y_data[4]~feeder_combout\);

-- Location: FF_X1_Y21_N23
\cam_instance|y_data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GPIO[11]~inputclkctrl_outclk\,
	d => \cam_instance|y_data[4]~feeder_combout\,
	ena => \cam_instance|y_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cam_instance|y_data\(4));

-- Location: LCCOMB_X9_Y14_N8
\sram_data_in[12]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram_data_in[12]~6_combout\ = (\camstatemachine_instance|WideOr2~combout\ & ((\sram_data_in[8]~1_combout\) # ((\sram_data_in[8]~0_combout\)))) # (!\camstatemachine_instance|WideOr2~combout\ & (((\cam_instance|y_data\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sram_data_in[8]~1_combout\,
	datab => \camstatemachine_instance|WideOr2~combout\,
	datac => \cam_instance|y_data\(4),
	datad => \sram_data_in[8]~0_combout\,
	combout => \sram_data_in[12]~6_combout\);

-- Location: LCCOMB_X9_Y14_N16
\sram_data_in[12]\ : cycloneive_lcell_comb
-- Equation(s):
-- sram_data_in(12) = (GLOBAL(\SRAM_ADDR[19]~18clkctrl_outclk\) & ((\sram_data_in[12]~6_combout\))) # (!GLOBAL(\SRAM_ADDR[19]~18clkctrl_outclk\) & (sram_data_in(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => sram_data_in(12),
	datac => \SRAM_ADDR[19]~18clkctrl_outclk\,
	datad => \sram_data_in[12]~6_combout\,
	combout => sram_data_in(12));

-- Location: IOIBUF_X0_Y22_N22
\GPIO[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(5),
	o => \GPIO[5]~input_o\);

-- Location: LCCOMB_X1_Y21_N20
\cam_instance|y_data[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \cam_instance|y_data[5]~feeder_combout\ = \GPIO[5]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GPIO[5]~input_o\,
	combout => \cam_instance|y_data[5]~feeder_combout\);

-- Location: FF_X1_Y21_N21
\cam_instance|y_data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GPIO[11]~inputclkctrl_outclk\,
	d => \cam_instance|y_data[5]~feeder_combout\,
	ena => \cam_instance|y_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cam_instance|y_data\(5));

-- Location: LCCOMB_X9_Y14_N26
\sram_data_in[13]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram_data_in[13]~7_combout\ = (\camstatemachine_instance|WideOr2~combout\ & ((\sram_data_in[8]~1_combout\) # ((\sram_data_in[8]~0_combout\)))) # (!\camstatemachine_instance|WideOr2~combout\ & (((\cam_instance|y_data\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sram_data_in[8]~1_combout\,
	datab => \camstatemachine_instance|WideOr2~combout\,
	datac => \cam_instance|y_data\(5),
	datad => \sram_data_in[8]~0_combout\,
	combout => \sram_data_in[13]~7_combout\);

-- Location: LCCOMB_X9_Y14_N10
\sram_data_in[13]\ : cycloneive_lcell_comb
-- Equation(s):
-- sram_data_in(13) = (GLOBAL(\SRAM_ADDR[19]~18clkctrl_outclk\) & ((\sram_data_in[13]~7_combout\))) # (!GLOBAL(\SRAM_ADDR[19]~18clkctrl_outclk\) & (sram_data_in(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sram_data_in(13),
	datac => \SRAM_ADDR[19]~18clkctrl_outclk\,
	datad => \sram_data_in[13]~7_combout\,
	combout => sram_data_in(13));

-- Location: IOIBUF_X0_Y23_N15
\GPIO[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(6),
	o => \GPIO[6]~input_o\);

-- Location: LCCOMB_X1_Y21_N26
\cam_instance|y_data[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \cam_instance|y_data[6]~feeder_combout\ = \GPIO[6]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GPIO[6]~input_o\,
	combout => \cam_instance|y_data[6]~feeder_combout\);

-- Location: FF_X1_Y21_N27
\cam_instance|y_data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GPIO[11]~inputclkctrl_outclk\,
	d => \cam_instance|y_data[6]~feeder_combout\,
	ena => \cam_instance|y_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cam_instance|y_data\(6));

-- Location: LCCOMB_X11_Y15_N30
\sram_data_in[14]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram_data_in[14]~8_combout\ = (!\camstatemachine_instance|current_state.write_processed_pixel~q\ & (!\camstatemachine_instance|current_state.read_foreground_pixel~q\ & (!\camstatemachine_instance|current_state.read_background_pixel~2_combout\ & 
-- \cam_instance|y_data\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camstatemachine_instance|current_state.write_processed_pixel~q\,
	datab => \camstatemachine_instance|current_state.read_foreground_pixel~q\,
	datac => \camstatemachine_instance|current_state.read_background_pixel~2_combout\,
	datad => \cam_instance|y_data\(6),
	combout => \sram_data_in[14]~8_combout\);

-- Location: LCCOMB_X9_Y14_N12
\sram_data_in[14]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram_data_in[14]~9_combout\ = (\sram_data_in[14]~8_combout\) # ((\camstatemachine_instance|WideOr2~combout\ & ((\sram_data_in[8]~1_combout\) # (\sram_data_in[8]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sram_data_in[8]~1_combout\,
	datab => \sram_data_in[8]~0_combout\,
	datac => \camstatemachine_instance|WideOr2~combout\,
	datad => \sram_data_in[14]~8_combout\,
	combout => \sram_data_in[14]~9_combout\);

-- Location: LCCOMB_X9_Y14_N20
\sram_data_in[14]\ : cycloneive_lcell_comb
-- Equation(s):
-- sram_data_in(14) = (GLOBAL(\SRAM_ADDR[19]~18clkctrl_outclk\) & ((\sram_data_in[14]~9_combout\))) # (!GLOBAL(\SRAM_ADDR[19]~18clkctrl_outclk\) & (sram_data_in(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => sram_data_in(14),
	datac => \SRAM_ADDR[19]~18clkctrl_outclk\,
	datad => \sram_data_in[14]~9_combout\,
	combout => sram_data_in(14));

-- Location: IOIBUF_X0_Y23_N8
\GPIO[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(7),
	o => \GPIO[7]~input_o\);

-- Location: LCCOMB_X1_Y21_N28
\cam_instance|y_data[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \cam_instance|y_data[7]~feeder_combout\ = \GPIO[7]~input_o\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \GPIO[7]~input_o\,
	combout => \cam_instance|y_data[7]~feeder_combout\);

-- Location: FF_X1_Y21_N29
\cam_instance|y_data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GPIO[11]~inputclkctrl_outclk\,
	d => \cam_instance|y_data[7]~feeder_combout\,
	ena => \cam_instance|y_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cam_instance|y_data\(7));

-- Location: LCCOMB_X9_Y14_N14
\sram_data_in[15]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram_data_in[15]~10_combout\ = (\camstatemachine_instance|WideOr2~combout\ & ((\sram_data_in[8]~1_combout\) # ((\sram_data_in[8]~0_combout\)))) # (!\camstatemachine_instance|WideOr2~combout\ & (((\cam_instance|y_data\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sram_data_in[8]~1_combout\,
	datab => \camstatemachine_instance|WideOr2~combout\,
	datac => \cam_instance|y_data\(7),
	datad => \sram_data_in[8]~0_combout\,
	combout => \sram_data_in[15]~10_combout\);

-- Location: LCCOMB_X9_Y14_N18
\sram_data_in[15]\ : cycloneive_lcell_comb
-- Equation(s):
-- sram_data_in(15) = (GLOBAL(\SRAM_ADDR[19]~18clkctrl_outclk\) & ((\sram_data_in[15]~10_combout\))) # (!GLOBAL(\SRAM_ADDR[19]~18clkctrl_outclk\) & (sram_data_in(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => sram_data_in(15),
	datac => \SRAM_ADDR[19]~18clkctrl_outclk\,
	datad => \sram_data_in[15]~10_combout\,
	combout => sram_data_in(15));

-- Location: CLKCTRL_G16
\GPIO[9]~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \GPIO[9]~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \GPIO[9]~inputclkctrl_outclk\);

-- Location: LCCOMB_X8_Y26_N2
\cam_instance|current_row[0]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \cam_instance|current_row[0]~45_combout\ = !\cam_instance|current_row\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cam_instance|current_row\(0),
	combout => \cam_instance|current_row[0]~45_combout\);

-- Location: FF_X8_Y26_N3
\cam_instance|current_row[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GPIO[8]~inputclkctrl_outclk\,
	d => \cam_instance|current_row[0]~45_combout\,
	clrn => \ALT_INV_GPIO[9]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cam_instance|current_row\(0));

-- Location: LCCOMB_X6_Y26_N0
\cam_instance|current_row[1]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \cam_instance|current_row[1]~15_combout\ = (\cam_instance|current_row\(0) & (\cam_instance|current_row\(1) $ (VCC))) # (!\cam_instance|current_row\(0) & (\cam_instance|current_row\(1) & VCC))
-- \cam_instance|current_row[1]~16\ = CARRY((\cam_instance|current_row\(0) & \cam_instance|current_row\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cam_instance|current_row\(0),
	datab => \cam_instance|current_row\(1),
	datad => VCC,
	combout => \cam_instance|current_row[1]~15_combout\,
	cout => \cam_instance|current_row[1]~16\);

-- Location: FF_X6_Y26_N1
\cam_instance|current_row[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GPIO[8]~inputclkctrl_outclk\,
	d => \cam_instance|current_row[1]~15_combout\,
	clrn => \ALT_INV_GPIO[9]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cam_instance|current_row\(1));

-- Location: LCCOMB_X6_Y26_N2
\cam_instance|current_row[2]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \cam_instance|current_row[2]~17_combout\ = (\cam_instance|current_row\(2) & (!\cam_instance|current_row[1]~16\)) # (!\cam_instance|current_row\(2) & ((\cam_instance|current_row[1]~16\) # (GND)))
-- \cam_instance|current_row[2]~18\ = CARRY((!\cam_instance|current_row[1]~16\) # (!\cam_instance|current_row\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cam_instance|current_row\(2),
	datad => VCC,
	cin => \cam_instance|current_row[1]~16\,
	combout => \cam_instance|current_row[2]~17_combout\,
	cout => \cam_instance|current_row[2]~18\);

-- Location: FF_X6_Y26_N3
\cam_instance|current_row[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GPIO[8]~inputclkctrl_outclk\,
	d => \cam_instance|current_row[2]~17_combout\,
	clrn => \ALT_INV_GPIO[9]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cam_instance|current_row\(2));

-- Location: LCCOMB_X6_Y26_N4
\cam_instance|current_row[3]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \cam_instance|current_row[3]~19_combout\ = (\cam_instance|current_row\(3) & (\cam_instance|current_row[2]~18\ $ (GND))) # (!\cam_instance|current_row\(3) & (!\cam_instance|current_row[2]~18\ & VCC))
-- \cam_instance|current_row[3]~20\ = CARRY((\cam_instance|current_row\(3) & !\cam_instance|current_row[2]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cam_instance|current_row\(3),
	datad => VCC,
	cin => \cam_instance|current_row[2]~18\,
	combout => \cam_instance|current_row[3]~19_combout\,
	cout => \cam_instance|current_row[3]~20\);

-- Location: FF_X6_Y26_N5
\cam_instance|current_row[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GPIO[8]~inputclkctrl_outclk\,
	d => \cam_instance|current_row[3]~19_combout\,
	clrn => \ALT_INV_GPIO[9]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cam_instance|current_row\(3));

-- Location: FF_X7_Y26_N9
\cam_instance|vertical_size[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GPIO[9]~inputclkctrl_outclk\,
	asdata => \cam_instance|current_row\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cam_instance|vertical_size\(3));

-- Location: LCCOMB_X7_Y26_N24
\cam_instance|vertical_size[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \cam_instance|vertical_size[1]~feeder_combout\ = \cam_instance|current_row\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cam_instance|current_row\(1),
	combout => \cam_instance|vertical_size[1]~feeder_combout\);

-- Location: FF_X7_Y26_N25
\cam_instance|vertical_size[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GPIO[9]~inputclkctrl_outclk\,
	d => \cam_instance|vertical_size[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cam_instance|vertical_size\(1));

-- Location: FF_X7_Y26_N7
\cam_instance|vertical_size[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GPIO[9]~inputclkctrl_outclk\,
	asdata => \cam_instance|current_row\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cam_instance|vertical_size\(2));

-- Location: LCCOMB_X8_Y26_N28
\cam_instance|vertical_size[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \cam_instance|vertical_size[0]~feeder_combout\ = \cam_instance|current_row\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cam_instance|current_row\(0),
	combout => \cam_instance|vertical_size[0]~feeder_combout\);

-- Location: FF_X8_Y26_N29
\cam_instance|vertical_size[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GPIO[9]~inputclkctrl_outclk\,
	d => \cam_instance|vertical_size[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cam_instance|vertical_size\(0));

-- Location: LCCOMB_X8_Y26_N30
\hex0decoder|segments_out[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex0decoder|segments_out[0]~0_combout\ = (\cam_instance|vertical_size\(3) & (\cam_instance|vertical_size\(0) & (\cam_instance|vertical_size\(1) $ (\cam_instance|vertical_size\(2))))) # (!\cam_instance|vertical_size\(3) & (!\cam_instance|vertical_size\(1) 
-- & (\cam_instance|vertical_size\(2) $ (\cam_instance|vertical_size\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cam_instance|vertical_size\(3),
	datab => \cam_instance|vertical_size\(1),
	datac => \cam_instance|vertical_size\(2),
	datad => \cam_instance|vertical_size\(0),
	combout => \hex0decoder|segments_out[0]~0_combout\);

-- Location: LCCOMB_X7_Y26_N8
\hex0decoder|segments_out[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex0decoder|segments_out[1]~1_combout\ = (\cam_instance|vertical_size\(1) & ((\cam_instance|vertical_size\(0) & ((\cam_instance|vertical_size\(3)))) # (!\cam_instance|vertical_size\(0) & (\cam_instance|vertical_size\(2))))) # 
-- (!\cam_instance|vertical_size\(1) & (\cam_instance|vertical_size\(2) & (\cam_instance|vertical_size\(3) $ (\cam_instance|vertical_size\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cam_instance|vertical_size\(2),
	datab => \cam_instance|vertical_size\(1),
	datac => \cam_instance|vertical_size\(3),
	datad => \cam_instance|vertical_size\(0),
	combout => \hex0decoder|segments_out[1]~1_combout\);

-- Location: LCCOMB_X7_Y26_N6
\hex0decoder|segments_out[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex0decoder|segments_out[2]~2_combout\ = (\cam_instance|vertical_size\(3) & (\cam_instance|vertical_size\(2) & ((\cam_instance|vertical_size\(1)) # (!\cam_instance|vertical_size\(0))))) # (!\cam_instance|vertical_size\(3) & 
-- (\cam_instance|vertical_size\(1) & (!\cam_instance|vertical_size\(2) & !\cam_instance|vertical_size\(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cam_instance|vertical_size\(3),
	datab => \cam_instance|vertical_size\(1),
	datac => \cam_instance|vertical_size\(2),
	datad => \cam_instance|vertical_size\(0),
	combout => \hex0decoder|segments_out[2]~2_combout\);

-- Location: LCCOMB_X8_Y26_N24
\hex0decoder|segments_out[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex0decoder|segments_out[3]~3_combout\ = (\cam_instance|vertical_size\(1) & ((\cam_instance|vertical_size\(2) & ((\cam_instance|vertical_size\(0)))) # (!\cam_instance|vertical_size\(2) & (\cam_instance|vertical_size\(3) & 
-- !\cam_instance|vertical_size\(0))))) # (!\cam_instance|vertical_size\(1) & (!\cam_instance|vertical_size\(3) & (\cam_instance|vertical_size\(2) $ (\cam_instance|vertical_size\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cam_instance|vertical_size\(3),
	datab => \cam_instance|vertical_size\(1),
	datac => \cam_instance|vertical_size\(2),
	datad => \cam_instance|vertical_size\(0),
	combout => \hex0decoder|segments_out[3]~3_combout\);

-- Location: LCCOMB_X8_Y26_N26
\hex0decoder|segments_out[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex0decoder|segments_out[4]~4_combout\ = (\cam_instance|vertical_size\(1) & (!\cam_instance|vertical_size\(3) & ((\cam_instance|vertical_size\(0))))) # (!\cam_instance|vertical_size\(1) & ((\cam_instance|vertical_size\(2) & 
-- (!\cam_instance|vertical_size\(3))) # (!\cam_instance|vertical_size\(2) & ((\cam_instance|vertical_size\(0))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cam_instance|vertical_size\(3),
	datab => \cam_instance|vertical_size\(1),
	datac => \cam_instance|vertical_size\(2),
	datad => \cam_instance|vertical_size\(0),
	combout => \hex0decoder|segments_out[4]~4_combout\);

-- Location: LCCOMB_X8_Y26_N12
\hex0decoder|segments_out[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex0decoder|segments_out[5]~5_combout\ = (\cam_instance|vertical_size\(1) & (!\cam_instance|vertical_size\(3) & ((\cam_instance|vertical_size\(0)) # (!\cam_instance|vertical_size\(2))))) # (!\cam_instance|vertical_size\(1) & 
-- (\cam_instance|vertical_size\(0) & (\cam_instance|vertical_size\(3) $ (!\cam_instance|vertical_size\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cam_instance|vertical_size\(3),
	datab => \cam_instance|vertical_size\(1),
	datac => \cam_instance|vertical_size\(2),
	datad => \cam_instance|vertical_size\(0),
	combout => \hex0decoder|segments_out[5]~5_combout\);

-- Location: LCCOMB_X7_Y26_N22
\hex0decoder|segments_out[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex0decoder|segments_out[6]~6_combout\ = (\cam_instance|vertical_size\(0) & (!\cam_instance|vertical_size\(3) & (\cam_instance|vertical_size\(2) $ (!\cam_instance|vertical_size\(1))))) # (!\cam_instance|vertical_size\(0) & 
-- (!\cam_instance|vertical_size\(1) & (\cam_instance|vertical_size\(2) $ (!\cam_instance|vertical_size\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100100100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cam_instance|vertical_size\(2),
	datab => \cam_instance|vertical_size\(1),
	datac => \cam_instance|vertical_size\(3),
	datad => \cam_instance|vertical_size\(0),
	combout => \hex0decoder|segments_out[6]~6_combout\);

-- Location: LCCOMB_X6_Y26_N6
\cam_instance|current_row[4]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \cam_instance|current_row[4]~21_combout\ = (\cam_instance|current_row\(4) & (!\cam_instance|current_row[3]~20\)) # (!\cam_instance|current_row\(4) & ((\cam_instance|current_row[3]~20\) # (GND)))
-- \cam_instance|current_row[4]~22\ = CARRY((!\cam_instance|current_row[3]~20\) # (!\cam_instance|current_row\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cam_instance|current_row\(4),
	datad => VCC,
	cin => \cam_instance|current_row[3]~20\,
	combout => \cam_instance|current_row[4]~21_combout\,
	cout => \cam_instance|current_row[4]~22\);

-- Location: FF_X6_Y26_N7
\cam_instance|current_row[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GPIO[8]~inputclkctrl_outclk\,
	d => \cam_instance|current_row[4]~21_combout\,
	clrn => \ALT_INV_GPIO[9]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cam_instance|current_row\(4));

-- Location: LCCOMB_X6_Y26_N8
\cam_instance|current_row[5]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \cam_instance|current_row[5]~23_combout\ = (\cam_instance|current_row\(5) & (\cam_instance|current_row[4]~22\ $ (GND))) # (!\cam_instance|current_row\(5) & (!\cam_instance|current_row[4]~22\ & VCC))
-- \cam_instance|current_row[5]~24\ = CARRY((\cam_instance|current_row\(5) & !\cam_instance|current_row[4]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cam_instance|current_row\(5),
	datad => VCC,
	cin => \cam_instance|current_row[4]~22\,
	combout => \cam_instance|current_row[5]~23_combout\,
	cout => \cam_instance|current_row[5]~24\);

-- Location: FF_X6_Y26_N9
\cam_instance|current_row[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GPIO[8]~inputclkctrl_outclk\,
	d => \cam_instance|current_row[5]~23_combout\,
	clrn => \ALT_INV_GPIO[9]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cam_instance|current_row\(5));

-- Location: LCCOMB_X5_Y26_N26
\cam_instance|vertical_size[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \cam_instance|vertical_size[5]~feeder_combout\ = \cam_instance|current_row\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cam_instance|current_row\(5),
	combout => \cam_instance|vertical_size[5]~feeder_combout\);

-- Location: FF_X5_Y26_N27
\cam_instance|vertical_size[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GPIO[9]~inputclkctrl_outclk\,
	d => \cam_instance|vertical_size[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cam_instance|vertical_size\(5));

-- Location: LCCOMB_X5_Y26_N24
\cam_instance|vertical_size[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \cam_instance|vertical_size[4]~feeder_combout\ = \cam_instance|current_row\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cam_instance|current_row\(4),
	combout => \cam_instance|vertical_size[4]~feeder_combout\);

-- Location: FF_X5_Y26_N25
\cam_instance|vertical_size[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GPIO[9]~inputclkctrl_outclk\,
	d => \cam_instance|vertical_size[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cam_instance|vertical_size\(4));

-- Location: LCCOMB_X6_Y26_N10
\cam_instance|current_row[6]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \cam_instance|current_row[6]~25_combout\ = (\cam_instance|current_row\(6) & (!\cam_instance|current_row[5]~24\)) # (!\cam_instance|current_row\(6) & ((\cam_instance|current_row[5]~24\) # (GND)))
-- \cam_instance|current_row[6]~26\ = CARRY((!\cam_instance|current_row[5]~24\) # (!\cam_instance|current_row\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cam_instance|current_row\(6),
	datad => VCC,
	cin => \cam_instance|current_row[5]~24\,
	combout => \cam_instance|current_row[6]~25_combout\,
	cout => \cam_instance|current_row[6]~26\);

-- Location: FF_X6_Y26_N11
\cam_instance|current_row[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GPIO[8]~inputclkctrl_outclk\,
	d => \cam_instance|current_row[6]~25_combout\,
	clrn => \ALT_INV_GPIO[9]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cam_instance|current_row\(6));

-- Location: LCCOMB_X6_Y26_N12
\cam_instance|current_row[7]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \cam_instance|current_row[7]~27_combout\ = (\cam_instance|current_row\(7) & (\cam_instance|current_row[6]~26\ $ (GND))) # (!\cam_instance|current_row\(7) & (!\cam_instance|current_row[6]~26\ & VCC))
-- \cam_instance|current_row[7]~28\ = CARRY((\cam_instance|current_row\(7) & !\cam_instance|current_row[6]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cam_instance|current_row\(7),
	datad => VCC,
	cin => \cam_instance|current_row[6]~26\,
	combout => \cam_instance|current_row[7]~27_combout\,
	cout => \cam_instance|current_row[7]~28\);

-- Location: FF_X6_Y26_N13
\cam_instance|current_row[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GPIO[8]~inputclkctrl_outclk\,
	d => \cam_instance|current_row[7]~27_combout\,
	clrn => \ALT_INV_GPIO[9]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cam_instance|current_row\(7));

-- Location: LCCOMB_X5_Y26_N22
\cam_instance|vertical_size[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \cam_instance|vertical_size[7]~feeder_combout\ = \cam_instance|current_row\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cam_instance|current_row\(7),
	combout => \cam_instance|vertical_size[7]~feeder_combout\);

-- Location: FF_X5_Y26_N23
\cam_instance|vertical_size[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GPIO[9]~inputclkctrl_outclk\,
	d => \cam_instance|vertical_size[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cam_instance|vertical_size\(7));

-- Location: LCCOMB_X5_Y26_N20
\cam_instance|vertical_size[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \cam_instance|vertical_size[6]~feeder_combout\ = \cam_instance|current_row\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cam_instance|current_row\(6),
	combout => \cam_instance|vertical_size[6]~feeder_combout\);

-- Location: FF_X5_Y26_N21
\cam_instance|vertical_size[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GPIO[9]~inputclkctrl_outclk\,
	d => \cam_instance|vertical_size[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cam_instance|vertical_size\(6));

-- Location: LCCOMB_X5_Y26_N8
\hex1decoder|segments_out[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex1decoder|segments_out[0]~0_combout\ = (\cam_instance|vertical_size\(7) & (\cam_instance|vertical_size\(4) & (\cam_instance|vertical_size\(5) $ (\cam_instance|vertical_size\(6))))) # (!\cam_instance|vertical_size\(7) & (!\cam_instance|vertical_size\(5) 
-- & (\cam_instance|vertical_size\(4) $ (\cam_instance|vertical_size\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cam_instance|vertical_size\(5),
	datab => \cam_instance|vertical_size\(4),
	datac => \cam_instance|vertical_size\(7),
	datad => \cam_instance|vertical_size\(6),
	combout => \hex1decoder|segments_out[0]~0_combout\);

-- Location: LCCOMB_X5_Y26_N10
\hex1decoder|segments_out[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex1decoder|segments_out[1]~1_combout\ = (\cam_instance|vertical_size\(5) & ((\cam_instance|vertical_size\(4) & (\cam_instance|vertical_size\(7))) # (!\cam_instance|vertical_size\(4) & ((\cam_instance|vertical_size\(6)))))) # 
-- (!\cam_instance|vertical_size\(5) & (\cam_instance|vertical_size\(6) & (\cam_instance|vertical_size\(4) $ (\cam_instance|vertical_size\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cam_instance|vertical_size\(5),
	datab => \cam_instance|vertical_size\(4),
	datac => \cam_instance|vertical_size\(7),
	datad => \cam_instance|vertical_size\(6),
	combout => \hex1decoder|segments_out[1]~1_combout\);

-- Location: LCCOMB_X5_Y26_N28
\hex1decoder|segments_out[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex1decoder|segments_out[2]~2_combout\ = (\cam_instance|vertical_size\(7) & (\cam_instance|vertical_size\(6) & ((\cam_instance|vertical_size\(5)) # (!\cam_instance|vertical_size\(4))))) # (!\cam_instance|vertical_size\(7) & 
-- (\cam_instance|vertical_size\(5) & (!\cam_instance|vertical_size\(4) & !\cam_instance|vertical_size\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cam_instance|vertical_size\(5),
	datab => \cam_instance|vertical_size\(4),
	datac => \cam_instance|vertical_size\(7),
	datad => \cam_instance|vertical_size\(6),
	combout => \hex1decoder|segments_out[2]~2_combout\);

-- Location: LCCOMB_X5_Y26_N2
\hex1decoder|segments_out[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex1decoder|segments_out[3]~3_combout\ = (\cam_instance|vertical_size\(5) & ((\cam_instance|vertical_size\(4) & ((\cam_instance|vertical_size\(6)))) # (!\cam_instance|vertical_size\(4) & (\cam_instance|vertical_size\(7) & 
-- !\cam_instance|vertical_size\(6))))) # (!\cam_instance|vertical_size\(5) & (!\cam_instance|vertical_size\(7) & (\cam_instance|vertical_size\(4) $ (\cam_instance|vertical_size\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cam_instance|vertical_size\(5),
	datab => \cam_instance|vertical_size\(4),
	datac => \cam_instance|vertical_size\(7),
	datad => \cam_instance|vertical_size\(6),
	combout => \hex1decoder|segments_out[3]~3_combout\);

-- Location: LCCOMB_X5_Y26_N0
\hex1decoder|segments_out[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex1decoder|segments_out[4]~4_combout\ = (\cam_instance|vertical_size\(5) & (\cam_instance|vertical_size\(4) & (!\cam_instance|vertical_size\(7)))) # (!\cam_instance|vertical_size\(5) & ((\cam_instance|vertical_size\(6) & 
-- ((!\cam_instance|vertical_size\(7)))) # (!\cam_instance|vertical_size\(6) & (\cam_instance|vertical_size\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110101001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cam_instance|vertical_size\(5),
	datab => \cam_instance|vertical_size\(4),
	datac => \cam_instance|vertical_size\(7),
	datad => \cam_instance|vertical_size\(6),
	combout => \hex1decoder|segments_out[4]~4_combout\);

-- Location: LCCOMB_X5_Y26_N18
\hex1decoder|segments_out[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex1decoder|segments_out[5]~5_combout\ = (\cam_instance|vertical_size\(5) & (!\cam_instance|vertical_size\(7) & ((\cam_instance|vertical_size\(4)) # (!\cam_instance|vertical_size\(6))))) # (!\cam_instance|vertical_size\(5) & 
-- (\cam_instance|vertical_size\(4) & (\cam_instance|vertical_size\(7) $ (!\cam_instance|vertical_size\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cam_instance|vertical_size\(5),
	datab => \cam_instance|vertical_size\(4),
	datac => \cam_instance|vertical_size\(7),
	datad => \cam_instance|vertical_size\(6),
	combout => \hex1decoder|segments_out[5]~5_combout\);

-- Location: LCCOMB_X5_Y26_N16
\hex1decoder|segments_out[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex1decoder|segments_out[6]~6_combout\ = (\cam_instance|vertical_size\(4) & (!\cam_instance|vertical_size\(7) & (\cam_instance|vertical_size\(5) $ (!\cam_instance|vertical_size\(6))))) # (!\cam_instance|vertical_size\(4) & 
-- (!\cam_instance|vertical_size\(5) & (\cam_instance|vertical_size\(7) $ (!\cam_instance|vertical_size\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001100000000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cam_instance|vertical_size\(5),
	datab => \cam_instance|vertical_size\(4),
	datac => \cam_instance|vertical_size\(7),
	datad => \cam_instance|vertical_size\(6),
	combout => \hex1decoder|segments_out[6]~6_combout\);

-- Location: LCCOMB_X6_Y26_N14
\cam_instance|current_row[8]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \cam_instance|current_row[8]~29_combout\ = (\cam_instance|current_row\(8) & (!\cam_instance|current_row[7]~28\)) # (!\cam_instance|current_row\(8) & ((\cam_instance|current_row[7]~28\) # (GND)))
-- \cam_instance|current_row[8]~30\ = CARRY((!\cam_instance|current_row[7]~28\) # (!\cam_instance|current_row\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cam_instance|current_row\(8),
	datad => VCC,
	cin => \cam_instance|current_row[7]~28\,
	combout => \cam_instance|current_row[8]~29_combout\,
	cout => \cam_instance|current_row[8]~30\);

-- Location: FF_X6_Y26_N15
\cam_instance|current_row[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GPIO[8]~inputclkctrl_outclk\,
	d => \cam_instance|current_row[8]~29_combout\,
	clrn => \ALT_INV_GPIO[9]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cam_instance|current_row\(8));

-- Location: LCCOMB_X6_Y26_N16
\cam_instance|current_row[9]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \cam_instance|current_row[9]~31_combout\ = (\cam_instance|current_row\(9) & (\cam_instance|current_row[8]~30\ $ (GND))) # (!\cam_instance|current_row\(9) & (!\cam_instance|current_row[8]~30\ & VCC))
-- \cam_instance|current_row[9]~32\ = CARRY((\cam_instance|current_row\(9) & !\cam_instance|current_row[8]~30\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cam_instance|current_row\(9),
	datad => VCC,
	cin => \cam_instance|current_row[8]~30\,
	combout => \cam_instance|current_row[9]~31_combout\,
	cout => \cam_instance|current_row[9]~32\);

-- Location: FF_X6_Y26_N17
\cam_instance|current_row[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GPIO[8]~inputclkctrl_outclk\,
	d => \cam_instance|current_row[9]~31_combout\,
	clrn => \ALT_INV_GPIO[9]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cam_instance|current_row\(9));

-- Location: LCCOMB_X6_Y26_N18
\cam_instance|current_row[10]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \cam_instance|current_row[10]~33_combout\ = (\cam_instance|current_row\(10) & (!\cam_instance|current_row[9]~32\)) # (!\cam_instance|current_row\(10) & ((\cam_instance|current_row[9]~32\) # (GND)))
-- \cam_instance|current_row[10]~34\ = CARRY((!\cam_instance|current_row[9]~32\) # (!\cam_instance|current_row\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cam_instance|current_row\(10),
	datad => VCC,
	cin => \cam_instance|current_row[9]~32\,
	combout => \cam_instance|current_row[10]~33_combout\,
	cout => \cam_instance|current_row[10]~34\);

-- Location: FF_X6_Y26_N19
\cam_instance|current_row[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GPIO[8]~inputclkctrl_outclk\,
	d => \cam_instance|current_row[10]~33_combout\,
	clrn => \ALT_INV_GPIO[9]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cam_instance|current_row\(10));

-- Location: LCCOMB_X6_Y26_N20
\cam_instance|current_row[11]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \cam_instance|current_row[11]~35_combout\ = (\cam_instance|current_row\(11) & (\cam_instance|current_row[10]~34\ $ (GND))) # (!\cam_instance|current_row\(11) & (!\cam_instance|current_row[10]~34\ & VCC))
-- \cam_instance|current_row[11]~36\ = CARRY((\cam_instance|current_row\(11) & !\cam_instance|current_row[10]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cam_instance|current_row\(11),
	datad => VCC,
	cin => \cam_instance|current_row[10]~34\,
	combout => \cam_instance|current_row[11]~35_combout\,
	cout => \cam_instance|current_row[11]~36\);

-- Location: FF_X6_Y26_N21
\cam_instance|current_row[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GPIO[8]~inputclkctrl_outclk\,
	d => \cam_instance|current_row[11]~35_combout\,
	clrn => \ALT_INV_GPIO[9]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cam_instance|current_row\(11));

-- Location: LCCOMB_X7_Y26_N10
\cam_instance|vertical_size[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \cam_instance|vertical_size[11]~feeder_combout\ = \cam_instance|current_row\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cam_instance|current_row\(11),
	combout => \cam_instance|vertical_size[11]~feeder_combout\);

-- Location: FF_X7_Y26_N11
\cam_instance|vertical_size[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GPIO[9]~inputclkctrl_outclk\,
	d => \cam_instance|vertical_size[11]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cam_instance|vertical_size\(11));

-- Location: LCCOMB_X7_Y26_N18
\cam_instance|vertical_size[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \cam_instance|vertical_size[9]~feeder_combout\ = \cam_instance|current_row\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cam_instance|current_row\(9),
	combout => \cam_instance|vertical_size[9]~feeder_combout\);

-- Location: FF_X7_Y26_N19
\cam_instance|vertical_size[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GPIO[9]~inputclkctrl_outclk\,
	d => \cam_instance|vertical_size[9]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cam_instance|vertical_size\(9));

-- Location: LCCOMB_X7_Y26_N4
\cam_instance|vertical_size[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \cam_instance|vertical_size[10]~feeder_combout\ = \cam_instance|current_row\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cam_instance|current_row\(10),
	combout => \cam_instance|vertical_size[10]~feeder_combout\);

-- Location: FF_X7_Y26_N5
\cam_instance|vertical_size[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GPIO[9]~inputclkctrl_outclk\,
	d => \cam_instance|vertical_size[10]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cam_instance|vertical_size\(10));

-- Location: LCCOMB_X7_Y26_N20
\cam_instance|vertical_size[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \cam_instance|vertical_size[8]~feeder_combout\ = \cam_instance|current_row\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cam_instance|current_row\(8),
	combout => \cam_instance|vertical_size[8]~feeder_combout\);

-- Location: FF_X7_Y26_N21
\cam_instance|vertical_size[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GPIO[9]~inputclkctrl_outclk\,
	d => \cam_instance|vertical_size[8]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cam_instance|vertical_size\(8));

-- Location: LCCOMB_X7_Y26_N0
\hex2decoder|segments_out[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex2decoder|segments_out[0]~0_combout\ = (\cam_instance|vertical_size\(11) & (\cam_instance|vertical_size\(8) & (\cam_instance|vertical_size\(9) $ (\cam_instance|vertical_size\(10))))) # (!\cam_instance|vertical_size\(11) & 
-- (!\cam_instance|vertical_size\(9) & (\cam_instance|vertical_size\(10) $ (\cam_instance|vertical_size\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cam_instance|vertical_size\(11),
	datab => \cam_instance|vertical_size\(9),
	datac => \cam_instance|vertical_size\(10),
	datad => \cam_instance|vertical_size\(8),
	combout => \hex2decoder|segments_out[0]~0_combout\);

-- Location: LCCOMB_X7_Y26_N2
\hex2decoder|segments_out[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex2decoder|segments_out[1]~1_combout\ = (\cam_instance|vertical_size\(11) & ((\cam_instance|vertical_size\(8) & (\cam_instance|vertical_size\(9))) # (!\cam_instance|vertical_size\(8) & ((\cam_instance|vertical_size\(10)))))) # 
-- (!\cam_instance|vertical_size\(11) & (\cam_instance|vertical_size\(10) & (\cam_instance|vertical_size\(9) $ (\cam_instance|vertical_size\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cam_instance|vertical_size\(11),
	datab => \cam_instance|vertical_size\(9),
	datac => \cam_instance|vertical_size\(10),
	datad => \cam_instance|vertical_size\(8),
	combout => \hex2decoder|segments_out[1]~1_combout\);

-- Location: LCCOMB_X7_Y26_N28
\hex2decoder|segments_out[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex2decoder|segments_out[2]~2_combout\ = (\cam_instance|vertical_size\(11) & (\cam_instance|vertical_size\(10) & ((\cam_instance|vertical_size\(9)) # (!\cam_instance|vertical_size\(8))))) # (!\cam_instance|vertical_size\(11) & 
-- (\cam_instance|vertical_size\(9) & (!\cam_instance|vertical_size\(10) & !\cam_instance|vertical_size\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cam_instance|vertical_size\(11),
	datab => \cam_instance|vertical_size\(9),
	datac => \cam_instance|vertical_size\(10),
	datad => \cam_instance|vertical_size\(8),
	combout => \hex2decoder|segments_out[2]~2_combout\);

-- Location: LCCOMB_X7_Y26_N30
\hex2decoder|segments_out[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex2decoder|segments_out[3]~3_combout\ = (\cam_instance|vertical_size\(9) & ((\cam_instance|vertical_size\(10) & ((\cam_instance|vertical_size\(8)))) # (!\cam_instance|vertical_size\(10) & (\cam_instance|vertical_size\(11) & 
-- !\cam_instance|vertical_size\(8))))) # (!\cam_instance|vertical_size\(9) & (!\cam_instance|vertical_size\(11) & (\cam_instance|vertical_size\(10) $ (\cam_instance|vertical_size\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cam_instance|vertical_size\(11),
	datab => \cam_instance|vertical_size\(9),
	datac => \cam_instance|vertical_size\(10),
	datad => \cam_instance|vertical_size\(8),
	combout => \hex2decoder|segments_out[3]~3_combout\);

-- Location: LCCOMB_X7_Y26_N16
\hex2decoder|segments_out[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex2decoder|segments_out[4]~4_combout\ = (\cam_instance|vertical_size\(9) & (!\cam_instance|vertical_size\(11) & ((\cam_instance|vertical_size\(8))))) # (!\cam_instance|vertical_size\(9) & ((\cam_instance|vertical_size\(10) & 
-- (!\cam_instance|vertical_size\(11))) # (!\cam_instance|vertical_size\(10) & ((\cam_instance|vertical_size\(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101011100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cam_instance|vertical_size\(11),
	datab => \cam_instance|vertical_size\(9),
	datac => \cam_instance|vertical_size\(10),
	datad => \cam_instance|vertical_size\(8),
	combout => \hex2decoder|segments_out[4]~4_combout\);

-- Location: LCCOMB_X7_Y26_N26
\hex2decoder|segments_out[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex2decoder|segments_out[5]~5_combout\ = (\cam_instance|vertical_size\(9) & (!\cam_instance|vertical_size\(11) & ((\cam_instance|vertical_size\(8)) # (!\cam_instance|vertical_size\(10))))) # (!\cam_instance|vertical_size\(9) & 
-- (\cam_instance|vertical_size\(8) & (\cam_instance|vertical_size\(11) $ (!\cam_instance|vertical_size\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110010100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cam_instance|vertical_size\(11),
	datab => \cam_instance|vertical_size\(9),
	datac => \cam_instance|vertical_size\(10),
	datad => \cam_instance|vertical_size\(8),
	combout => \hex2decoder|segments_out[5]~5_combout\);

-- Location: LCCOMB_X7_Y26_N12
\hex2decoder|segments_out[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex2decoder|segments_out[6]~6_combout\ = (\cam_instance|vertical_size\(8) & (!\cam_instance|vertical_size\(11) & (\cam_instance|vertical_size\(9) $ (!\cam_instance|vertical_size\(10))))) # (!\cam_instance|vertical_size\(8) & 
-- (!\cam_instance|vertical_size\(9) & (\cam_instance|vertical_size\(11) $ (!\cam_instance|vertical_size\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100100001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cam_instance|vertical_size\(11),
	datab => \cam_instance|vertical_size\(9),
	datac => \cam_instance|vertical_size\(10),
	datad => \cam_instance|vertical_size\(8),
	combout => \hex2decoder|segments_out[6]~6_combout\);

-- Location: LCCOMB_X6_Y26_N22
\cam_instance|current_row[12]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \cam_instance|current_row[12]~37_combout\ = (\cam_instance|current_row\(12) & (!\cam_instance|current_row[11]~36\)) # (!\cam_instance|current_row\(12) & ((\cam_instance|current_row[11]~36\) # (GND)))
-- \cam_instance|current_row[12]~38\ = CARRY((!\cam_instance|current_row[11]~36\) # (!\cam_instance|current_row\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cam_instance|current_row\(12),
	datad => VCC,
	cin => \cam_instance|current_row[11]~36\,
	combout => \cam_instance|current_row[12]~37_combout\,
	cout => \cam_instance|current_row[12]~38\);

-- Location: FF_X6_Y26_N23
\cam_instance|current_row[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GPIO[8]~inputclkctrl_outclk\,
	d => \cam_instance|current_row[12]~37_combout\,
	clrn => \ALT_INV_GPIO[9]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cam_instance|current_row\(12));

-- Location: LCCOMB_X5_Y26_N6
\cam_instance|vertical_size[12]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \cam_instance|vertical_size[12]~feeder_combout\ = \cam_instance|current_row\(12)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cam_instance|current_row\(12),
	combout => \cam_instance|vertical_size[12]~feeder_combout\);

-- Location: FF_X5_Y26_N7
\cam_instance|vertical_size[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GPIO[9]~inputclkctrl_outclk\,
	d => \cam_instance|vertical_size[12]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cam_instance|vertical_size\(12));

-- Location: LCCOMB_X6_Y26_N24
\cam_instance|current_row[13]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \cam_instance|current_row[13]~39_combout\ = (\cam_instance|current_row\(13) & (\cam_instance|current_row[12]~38\ $ (GND))) # (!\cam_instance|current_row\(13) & (!\cam_instance|current_row[12]~38\ & VCC))
-- \cam_instance|current_row[13]~40\ = CARRY((\cam_instance|current_row\(13) & !\cam_instance|current_row[12]~38\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cam_instance|current_row\(13),
	datad => VCC,
	cin => \cam_instance|current_row[12]~38\,
	combout => \cam_instance|current_row[13]~39_combout\,
	cout => \cam_instance|current_row[13]~40\);

-- Location: FF_X6_Y26_N25
\cam_instance|current_row[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GPIO[8]~inputclkctrl_outclk\,
	d => \cam_instance|current_row[13]~39_combout\,
	clrn => \ALT_INV_GPIO[9]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cam_instance|current_row\(13));

-- Location: LCCOMB_X6_Y26_N30
\cam_instance|vertical_size[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \cam_instance|vertical_size[13]~feeder_combout\ = \cam_instance|current_row\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cam_instance|current_row\(13),
	combout => \cam_instance|vertical_size[13]~feeder_combout\);

-- Location: FF_X6_Y26_N31
\cam_instance|vertical_size[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GPIO[9]~inputclkctrl_outclk\,
	d => \cam_instance|vertical_size[13]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cam_instance|vertical_size\(13));

-- Location: LCCOMB_X6_Y26_N26
\cam_instance|current_row[14]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \cam_instance|current_row[14]~41_combout\ = (\cam_instance|current_row\(14) & (!\cam_instance|current_row[13]~40\)) # (!\cam_instance|current_row\(14) & ((\cam_instance|current_row[13]~40\) # (GND)))
-- \cam_instance|current_row[14]~42\ = CARRY((!\cam_instance|current_row[13]~40\) # (!\cam_instance|current_row\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cam_instance|current_row\(14),
	datad => VCC,
	cin => \cam_instance|current_row[13]~40\,
	combout => \cam_instance|current_row[14]~41_combout\,
	cout => \cam_instance|current_row[14]~42\);

-- Location: FF_X6_Y26_N27
\cam_instance|current_row[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GPIO[8]~inputclkctrl_outclk\,
	d => \cam_instance|current_row[14]~41_combout\,
	clrn => \ALT_INV_GPIO[9]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cam_instance|current_row\(14));

-- Location: LCCOMB_X5_Y26_N30
\cam_instance|vertical_size[14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \cam_instance|vertical_size[14]~feeder_combout\ = \cam_instance|current_row\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cam_instance|current_row\(14),
	combout => \cam_instance|vertical_size[14]~feeder_combout\);

-- Location: FF_X5_Y26_N31
\cam_instance|vertical_size[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GPIO[9]~inputclkctrl_outclk\,
	d => \cam_instance|vertical_size[14]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cam_instance|vertical_size\(14));

-- Location: LCCOMB_X6_Y26_N28
\cam_instance|current_row[15]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \cam_instance|current_row[15]~43_combout\ = \cam_instance|current_row[14]~42\ $ (!\cam_instance|current_row\(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \cam_instance|current_row\(15),
	cin => \cam_instance|current_row[14]~42\,
	combout => \cam_instance|current_row[15]~43_combout\);

-- Location: FF_X6_Y26_N29
\cam_instance|current_row[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GPIO[8]~inputclkctrl_outclk\,
	d => \cam_instance|current_row[15]~43_combout\,
	clrn => \ALT_INV_GPIO[9]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cam_instance|current_row\(15));

-- Location: LCCOMB_X5_Y26_N4
\cam_instance|vertical_size[15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \cam_instance|vertical_size[15]~feeder_combout\ = \cam_instance|current_row\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cam_instance|current_row\(15),
	combout => \cam_instance|vertical_size[15]~feeder_combout\);

-- Location: FF_X5_Y26_N5
\cam_instance|vertical_size[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GPIO[9]~inputclkctrl_outclk\,
	d => \cam_instance|vertical_size[15]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cam_instance|vertical_size\(15));

-- Location: LCCOMB_X4_Y26_N20
\hex3decoder|segments_out[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex3decoder|segments_out[0]~0_combout\ = (\cam_instance|vertical_size\(14) & (!\cam_instance|vertical_size\(13) & (\cam_instance|vertical_size\(12) $ (!\cam_instance|vertical_size\(15))))) # (!\cam_instance|vertical_size\(14) & 
-- (\cam_instance|vertical_size\(12) & (\cam_instance|vertical_size\(13) $ (!\cam_instance|vertical_size\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cam_instance|vertical_size\(12),
	datab => \cam_instance|vertical_size\(13),
	datac => \cam_instance|vertical_size\(14),
	datad => \cam_instance|vertical_size\(15),
	combout => \hex3decoder|segments_out[0]~0_combout\);

-- Location: LCCOMB_X4_Y26_N2
\hex3decoder|segments_out[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex3decoder|segments_out[1]~1_combout\ = (\cam_instance|vertical_size\(13) & ((\cam_instance|vertical_size\(12) & ((\cam_instance|vertical_size\(15)))) # (!\cam_instance|vertical_size\(12) & (\cam_instance|vertical_size\(14))))) # 
-- (!\cam_instance|vertical_size\(13) & (\cam_instance|vertical_size\(14) & (\cam_instance|vertical_size\(12) $ (\cam_instance|vertical_size\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cam_instance|vertical_size\(12),
	datab => \cam_instance|vertical_size\(13),
	datac => \cam_instance|vertical_size\(14),
	datad => \cam_instance|vertical_size\(15),
	combout => \hex3decoder|segments_out[1]~1_combout\);

-- Location: LCCOMB_X4_Y26_N12
\hex3decoder|segments_out[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex3decoder|segments_out[2]~2_combout\ = (\cam_instance|vertical_size\(14) & (\cam_instance|vertical_size\(15) & ((\cam_instance|vertical_size\(13)) # (!\cam_instance|vertical_size\(12))))) # (!\cam_instance|vertical_size\(14) & 
-- (!\cam_instance|vertical_size\(12) & (\cam_instance|vertical_size\(13) & !\cam_instance|vertical_size\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cam_instance|vertical_size\(12),
	datab => \cam_instance|vertical_size\(13),
	datac => \cam_instance|vertical_size\(14),
	datad => \cam_instance|vertical_size\(15),
	combout => \hex3decoder|segments_out[2]~2_combout\);

-- Location: LCCOMB_X4_Y26_N6
\hex3decoder|segments_out[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex3decoder|segments_out[3]~3_combout\ = (\cam_instance|vertical_size\(13) & ((\cam_instance|vertical_size\(12) & (\cam_instance|vertical_size\(14))) # (!\cam_instance|vertical_size\(12) & (!\cam_instance|vertical_size\(14) & 
-- \cam_instance|vertical_size\(15))))) # (!\cam_instance|vertical_size\(13) & (!\cam_instance|vertical_size\(15) & (\cam_instance|vertical_size\(12) $ (\cam_instance|vertical_size\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000010010010010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cam_instance|vertical_size\(12),
	datab => \cam_instance|vertical_size\(13),
	datac => \cam_instance|vertical_size\(14),
	datad => \cam_instance|vertical_size\(15),
	combout => \hex3decoder|segments_out[3]~3_combout\);

-- Location: LCCOMB_X4_Y26_N4
\hex3decoder|segments_out[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex3decoder|segments_out[4]~4_combout\ = (\cam_instance|vertical_size\(13) & (\cam_instance|vertical_size\(12) & ((!\cam_instance|vertical_size\(15))))) # (!\cam_instance|vertical_size\(13) & ((\cam_instance|vertical_size\(14) & 
-- ((!\cam_instance|vertical_size\(15)))) # (!\cam_instance|vertical_size\(14) & (\cam_instance|vertical_size\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cam_instance|vertical_size\(12),
	datab => \cam_instance|vertical_size\(13),
	datac => \cam_instance|vertical_size\(14),
	datad => \cam_instance|vertical_size\(15),
	combout => \hex3decoder|segments_out[4]~4_combout\);

-- Location: LCCOMB_X4_Y26_N22
\hex3decoder|segments_out[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex3decoder|segments_out[5]~5_combout\ = (\cam_instance|vertical_size\(12) & (\cam_instance|vertical_size\(15) $ (((\cam_instance|vertical_size\(13)) # (!\cam_instance|vertical_size\(14)))))) # (!\cam_instance|vertical_size\(12) & 
-- (\cam_instance|vertical_size\(13) & (!\cam_instance|vertical_size\(14) & !\cam_instance|vertical_size\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cam_instance|vertical_size\(12),
	datab => \cam_instance|vertical_size\(13),
	datac => \cam_instance|vertical_size\(14),
	datad => \cam_instance|vertical_size\(15),
	combout => \hex3decoder|segments_out[5]~5_combout\);

-- Location: LCCOMB_X4_Y26_N0
\hex3decoder|segments_out[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex3decoder|segments_out[6]~6_combout\ = (\cam_instance|vertical_size\(12) & (!\cam_instance|vertical_size\(15) & (\cam_instance|vertical_size\(13) $ (!\cam_instance|vertical_size\(14))))) # (!\cam_instance|vertical_size\(12) & 
-- (!\cam_instance|vertical_size\(13) & (\cam_instance|vertical_size\(14) $ (!\cam_instance|vertical_size\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000010000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cam_instance|vertical_size\(12),
	datab => \cam_instance|vertical_size\(13),
	datac => \cam_instance|vertical_size\(14),
	datad => \cam_instance|vertical_size\(15),
	combout => \hex3decoder|segments_out[6]~6_combout\);

-- Location: LCCOMB_X9_Y13_N2
\cam_instance|current_column[0]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \cam_instance|current_column[0]~19_combout\ = \cam_instance|second_byte~q\ $ (!\cam_instance|current_column\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cam_instance|second_byte~q\,
	datac => \cam_instance|current_column\(0),
	combout => \cam_instance|current_column[0]~19_combout\);

-- Location: FF_X9_Y13_N3
\cam_instance|current_column[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GPIO[11]~inputclkctrl_outclk\,
	d => \cam_instance|current_column[0]~19_combout\,
	clrn => \GPIO[8]~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cam_instance|current_column\(0));

-- Location: LCCOMB_X9_Y13_N4
\cam_instance|horizontal_size[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \cam_instance|horizontal_size[0]~feeder_combout\ = \cam_instance|current_column\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cam_instance|current_column\(0),
	combout => \cam_instance|horizontal_size[0]~feeder_combout\);

-- Location: FF_X9_Y13_N5
\cam_instance|horizontal_size[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_GPIO[8]~inputclkctrl_outclk\,
	d => \cam_instance|horizontal_size[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cam_instance|horizontal_size\(0));

-- Location: LCCOMB_X8_Y13_N14
\cam_instance|current_column[1]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \cam_instance|current_column[1]~20_combout\ = (\cam_instance|current_column\(0) & (\cam_instance|current_column\(1) $ (VCC))) # (!\cam_instance|current_column\(0) & (\cam_instance|current_column\(1) & VCC))
-- \cam_instance|current_column[1]~21\ = CARRY((\cam_instance|current_column\(0) & \cam_instance|current_column\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cam_instance|current_column\(0),
	datab => \cam_instance|current_column\(1),
	datad => VCC,
	combout => \cam_instance|current_column[1]~20_combout\,
	cout => \cam_instance|current_column[1]~21\);

-- Location: FF_X8_Y13_N15
\cam_instance|current_column[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GPIO[11]~inputclkctrl_outclk\,
	d => \cam_instance|current_column[1]~20_combout\,
	clrn => \GPIO[8]~inputclkctrl_outclk\,
	ena => \cam_instance|ALT_INV_second_byte~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cam_instance|current_column\(1));

-- Location: FF_X8_Y13_N9
\cam_instance|horizontal_size[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_GPIO[8]~inputclkctrl_outclk\,
	asdata => \cam_instance|current_column\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cam_instance|horizontal_size\(1));

-- Location: LCCOMB_X8_Y13_N16
\cam_instance|current_column[2]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \cam_instance|current_column[2]~22_combout\ = (\cam_instance|current_column\(2) & (!\cam_instance|current_column[1]~21\)) # (!\cam_instance|current_column\(2) & ((\cam_instance|current_column[1]~21\) # (GND)))
-- \cam_instance|current_column[2]~23\ = CARRY((!\cam_instance|current_column[1]~21\) # (!\cam_instance|current_column\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cam_instance|current_column\(2),
	datad => VCC,
	cin => \cam_instance|current_column[1]~21\,
	combout => \cam_instance|current_column[2]~22_combout\,
	cout => \cam_instance|current_column[2]~23\);

-- Location: FF_X8_Y13_N17
\cam_instance|current_column[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GPIO[11]~inputclkctrl_outclk\,
	d => \cam_instance|current_column[2]~22_combout\,
	clrn => \GPIO[8]~inputclkctrl_outclk\,
	ena => \cam_instance|ALT_INV_second_byte~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cam_instance|current_column\(2));

-- Location: LCCOMB_X8_Y13_N18
\cam_instance|current_column[3]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \cam_instance|current_column[3]~24_combout\ = (\cam_instance|current_column\(3) & (\cam_instance|current_column[2]~23\ $ (GND))) # (!\cam_instance|current_column\(3) & (!\cam_instance|current_column[2]~23\ & VCC))
-- \cam_instance|current_column[3]~25\ = CARRY((\cam_instance|current_column\(3) & !\cam_instance|current_column[2]~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cam_instance|current_column\(3),
	datad => VCC,
	cin => \cam_instance|current_column[2]~23\,
	combout => \cam_instance|current_column[3]~24_combout\,
	cout => \cam_instance|current_column[3]~25\);

-- Location: FF_X8_Y13_N19
\cam_instance|current_column[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GPIO[11]~inputclkctrl_outclk\,
	d => \cam_instance|current_column[3]~24_combout\,
	clrn => \GPIO[8]~inputclkctrl_outclk\,
	ena => \cam_instance|ALT_INV_second_byte~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cam_instance|current_column\(3));

-- Location: FF_X8_Y13_N13
\cam_instance|horizontal_size[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_GPIO[8]~inputclkctrl_outclk\,
	asdata => \cam_instance|current_column\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cam_instance|horizontal_size\(3));

-- Location: FF_X8_Y13_N1
\cam_instance|horizontal_size[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_GPIO[8]~inputclkctrl_outclk\,
	asdata => \cam_instance|current_column\(2),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cam_instance|horizontal_size\(2));

-- Location: LCCOMB_X8_Y13_N12
\hex4decoder|segments_out[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex4decoder|segments_out[0]~0_combout\ = (\cam_instance|horizontal_size\(3) & (\cam_instance|horizontal_size\(0) & (\cam_instance|horizontal_size\(1) $ (\cam_instance|horizontal_size\(2))))) # (!\cam_instance|horizontal_size\(3) & 
-- (!\cam_instance|horizontal_size\(1) & (\cam_instance|horizontal_size\(0) $ (\cam_instance|horizontal_size\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cam_instance|horizontal_size\(0),
	datab => \cam_instance|horizontal_size\(1),
	datac => \cam_instance|horizontal_size\(3),
	datad => \cam_instance|horizontal_size\(2),
	combout => \hex4decoder|segments_out[0]~0_combout\);

-- Location: LCCOMB_X9_Y13_N26
\hex4decoder|segments_out[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex4decoder|segments_out[1]~1_combout\ = (\cam_instance|horizontal_size\(1) & ((\cam_instance|horizontal_size\(0) & ((\cam_instance|horizontal_size\(3)))) # (!\cam_instance|horizontal_size\(0) & (\cam_instance|horizontal_size\(2))))) # 
-- (!\cam_instance|horizontal_size\(1) & (\cam_instance|horizontal_size\(2) & (\cam_instance|horizontal_size\(0) $ (\cam_instance|horizontal_size\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cam_instance|horizontal_size\(1),
	datab => \cam_instance|horizontal_size\(0),
	datac => \cam_instance|horizontal_size\(2),
	datad => \cam_instance|horizontal_size\(3),
	combout => \hex4decoder|segments_out[1]~1_combout\);

-- Location: LCCOMB_X9_Y13_N24
\hex4decoder|segments_out[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex4decoder|segments_out[2]~2_combout\ = (\cam_instance|horizontal_size\(2) & (\cam_instance|horizontal_size\(3) & ((\cam_instance|horizontal_size\(1)) # (!\cam_instance|horizontal_size\(0))))) # (!\cam_instance|horizontal_size\(2) & 
-- (\cam_instance|horizontal_size\(1) & (!\cam_instance|horizontal_size\(0) & !\cam_instance|horizontal_size\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cam_instance|horizontal_size\(1),
	datab => \cam_instance|horizontal_size\(0),
	datac => \cam_instance|horizontal_size\(2),
	datad => \cam_instance|horizontal_size\(3),
	combout => \hex4decoder|segments_out[2]~2_combout\);

-- Location: LCCOMB_X9_Y13_N30
\hex4decoder|segments_out[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex4decoder|segments_out[3]~3_combout\ = (\cam_instance|horizontal_size\(1) & ((\cam_instance|horizontal_size\(0) & (\cam_instance|horizontal_size\(2))) # (!\cam_instance|horizontal_size\(0) & (!\cam_instance|horizontal_size\(2) & 
-- \cam_instance|horizontal_size\(3))))) # (!\cam_instance|horizontal_size\(1) & (!\cam_instance|horizontal_size\(3) & (\cam_instance|horizontal_size\(0) $ (\cam_instance|horizontal_size\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cam_instance|horizontal_size\(1),
	datab => \cam_instance|horizontal_size\(0),
	datac => \cam_instance|horizontal_size\(2),
	datad => \cam_instance|horizontal_size\(3),
	combout => \hex4decoder|segments_out[3]~3_combout\);

-- Location: LCCOMB_X9_Y13_N28
\hex4decoder|segments_out[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex4decoder|segments_out[4]~4_combout\ = (\cam_instance|horizontal_size\(1) & (\cam_instance|horizontal_size\(0) & ((!\cam_instance|horizontal_size\(3))))) # (!\cam_instance|horizontal_size\(1) & ((\cam_instance|horizontal_size\(2) & 
-- ((!\cam_instance|horizontal_size\(3)))) # (!\cam_instance|horizontal_size\(2) & (\cam_instance|horizontal_size\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cam_instance|horizontal_size\(1),
	datab => \cam_instance|horizontal_size\(0),
	datac => \cam_instance|horizontal_size\(2),
	datad => \cam_instance|horizontal_size\(3),
	combout => \hex4decoder|segments_out[4]~4_combout\);

-- Location: LCCOMB_X8_Y13_N0
\hex4decoder|segments_out[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex4decoder|segments_out[5]~5_combout\ = (\cam_instance|horizontal_size\(0) & (\cam_instance|horizontal_size\(3) $ (((\cam_instance|horizontal_size\(1)) # (!\cam_instance|horizontal_size\(2)))))) # (!\cam_instance|horizontal_size\(0) & 
-- (\cam_instance|horizontal_size\(1) & (!\cam_instance|horizontal_size\(2) & !\cam_instance|horizontal_size\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cam_instance|horizontal_size\(0),
	datab => \cam_instance|horizontal_size\(1),
	datac => \cam_instance|horizontal_size\(2),
	datad => \cam_instance|horizontal_size\(3),
	combout => \hex4decoder|segments_out[5]~5_combout\);

-- Location: LCCOMB_X8_Y13_N8
\hex4decoder|segments_out[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex4decoder|segments_out[6]~6_combout\ = (\cam_instance|horizontal_size\(0) & (!\cam_instance|horizontal_size\(3) & (\cam_instance|horizontal_size\(2) $ (!\cam_instance|horizontal_size\(1))))) # (!\cam_instance|horizontal_size\(0) & 
-- (!\cam_instance|horizontal_size\(1) & (\cam_instance|horizontal_size\(2) $ (!\cam_instance|horizontal_size\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010010000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cam_instance|horizontal_size\(0),
	datab => \cam_instance|horizontal_size\(2),
	datac => \cam_instance|horizontal_size\(1),
	datad => \cam_instance|horizontal_size\(3),
	combout => \hex4decoder|segments_out[6]~6_combout\);

-- Location: LCCOMB_X8_Y13_N20
\cam_instance|current_column[4]~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \cam_instance|current_column[4]~26_combout\ = (\cam_instance|current_column\(4) & (!\cam_instance|current_column[3]~25\)) # (!\cam_instance|current_column\(4) & ((\cam_instance|current_column[3]~25\) # (GND)))
-- \cam_instance|current_column[4]~27\ = CARRY((!\cam_instance|current_column[3]~25\) # (!\cam_instance|current_column\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cam_instance|current_column\(4),
	datad => VCC,
	cin => \cam_instance|current_column[3]~25\,
	combout => \cam_instance|current_column[4]~26_combout\,
	cout => \cam_instance|current_column[4]~27\);

-- Location: FF_X8_Y13_N21
\cam_instance|current_column[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GPIO[11]~inputclkctrl_outclk\,
	d => \cam_instance|current_column[4]~26_combout\,
	clrn => \GPIO[8]~inputclkctrl_outclk\,
	ena => \cam_instance|ALT_INV_second_byte~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cam_instance|current_column\(4));

-- Location: LCCOMB_X8_Y13_N6
\cam_instance|horizontal_size[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \cam_instance|horizontal_size[4]~feeder_combout\ = \cam_instance|current_column\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cam_instance|current_column\(4),
	combout => \cam_instance|horizontal_size[4]~feeder_combout\);

-- Location: FF_X8_Y13_N7
\cam_instance|horizontal_size[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_GPIO[8]~inputclkctrl_outclk\,
	d => \cam_instance|horizontal_size[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cam_instance|horizontal_size\(4));

-- Location: LCCOMB_X8_Y13_N22
\cam_instance|current_column[5]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \cam_instance|current_column[5]~28_combout\ = (\cam_instance|current_column\(5) & (\cam_instance|current_column[4]~27\ $ (GND))) # (!\cam_instance|current_column\(5) & (!\cam_instance|current_column[4]~27\ & VCC))
-- \cam_instance|current_column[5]~29\ = CARRY((\cam_instance|current_column\(5) & !\cam_instance|current_column[4]~27\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cam_instance|current_column\(5),
	datad => VCC,
	cin => \cam_instance|current_column[4]~27\,
	combout => \cam_instance|current_column[5]~28_combout\,
	cout => \cam_instance|current_column[5]~29\);

-- Location: FF_X8_Y13_N23
\cam_instance|current_column[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GPIO[11]~inputclkctrl_outclk\,
	d => \cam_instance|current_column[5]~28_combout\,
	clrn => \GPIO[8]~inputclkctrl_outclk\,
	ena => \cam_instance|ALT_INV_second_byte~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cam_instance|current_column\(5));

-- Location: LCCOMB_X8_Y13_N24
\cam_instance|current_column[6]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \cam_instance|current_column[6]~30_combout\ = (\cam_instance|current_column\(6) & (!\cam_instance|current_column[5]~29\)) # (!\cam_instance|current_column\(6) & ((\cam_instance|current_column[5]~29\) # (GND)))
-- \cam_instance|current_column[6]~31\ = CARRY((!\cam_instance|current_column[5]~29\) # (!\cam_instance|current_column\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cam_instance|current_column\(6),
	datad => VCC,
	cin => \cam_instance|current_column[5]~29\,
	combout => \cam_instance|current_column[6]~30_combout\,
	cout => \cam_instance|current_column[6]~31\);

-- Location: FF_X8_Y13_N25
\cam_instance|current_column[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GPIO[11]~inputclkctrl_outclk\,
	d => \cam_instance|current_column[6]~30_combout\,
	clrn => \GPIO[8]~inputclkctrl_outclk\,
	ena => \cam_instance|ALT_INV_second_byte~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cam_instance|current_column\(6));

-- Location: LCCOMB_X8_Y13_N4
\cam_instance|horizontal_size[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \cam_instance|horizontal_size[6]~feeder_combout\ = \cam_instance|current_column\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cam_instance|current_column\(6),
	combout => \cam_instance|horizontal_size[6]~feeder_combout\);

-- Location: FF_X8_Y13_N5
\cam_instance|horizontal_size[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_GPIO[8]~inputclkctrl_outclk\,
	d => \cam_instance|horizontal_size[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cam_instance|horizontal_size\(6));

-- Location: FF_X8_Y13_N3
\cam_instance|horizontal_size[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_GPIO[8]~inputclkctrl_outclk\,
	asdata => \cam_instance|current_column\(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cam_instance|horizontal_size\(5));

-- Location: LCCOMB_X8_Y13_N26
\cam_instance|current_column[7]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \cam_instance|current_column[7]~32_combout\ = (\cam_instance|current_column\(7) & (\cam_instance|current_column[6]~31\ $ (GND))) # (!\cam_instance|current_column\(7) & (!\cam_instance|current_column[6]~31\ & VCC))
-- \cam_instance|current_column[7]~33\ = CARRY((\cam_instance|current_column\(7) & !\cam_instance|current_column[6]~31\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cam_instance|current_column\(7),
	datad => VCC,
	cin => \cam_instance|current_column[6]~31\,
	combout => \cam_instance|current_column[7]~32_combout\,
	cout => \cam_instance|current_column[7]~33\);

-- Location: FF_X8_Y13_N27
\cam_instance|current_column[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GPIO[11]~inputclkctrl_outclk\,
	d => \cam_instance|current_column[7]~32_combout\,
	clrn => \GPIO[8]~inputclkctrl_outclk\,
	ena => \cam_instance|ALT_INV_second_byte~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cam_instance|current_column\(7));

-- Location: LCCOMB_X8_Y13_N10
\cam_instance|horizontal_size[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \cam_instance|horizontal_size[7]~feeder_combout\ = \cam_instance|current_column\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cam_instance|current_column\(7),
	combout => \cam_instance|horizontal_size[7]~feeder_combout\);

-- Location: FF_X8_Y13_N11
\cam_instance|horizontal_size[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_GPIO[8]~inputclkctrl_outclk\,
	d => \cam_instance|horizontal_size[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cam_instance|horizontal_size\(7));

-- Location: LCCOMB_X6_Y13_N4
\hex5decoder|segments_out[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex5decoder|segments_out[0]~0_combout\ = (\cam_instance|horizontal_size\(6) & (!\cam_instance|horizontal_size\(5) & (\cam_instance|horizontal_size\(4) $ (!\cam_instance|horizontal_size\(7))))) # (!\cam_instance|horizontal_size\(6) & 
-- (\cam_instance|horizontal_size\(4) & (\cam_instance|horizontal_size\(5) $ (!\cam_instance|horizontal_size\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cam_instance|horizontal_size\(4),
	datab => \cam_instance|horizontal_size\(6),
	datac => \cam_instance|horizontal_size\(5),
	datad => \cam_instance|horizontal_size\(7),
	combout => \hex5decoder|segments_out[0]~0_combout\);

-- Location: LCCOMB_X7_Y13_N4
\hex5decoder|segments_out[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex5decoder|segments_out[1]~1_combout\ = (\cam_instance|horizontal_size\(5) & ((\cam_instance|horizontal_size\(4) & (\cam_instance|horizontal_size\(7))) # (!\cam_instance|horizontal_size\(4) & ((\cam_instance|horizontal_size\(6)))))) # 
-- (!\cam_instance|horizontal_size\(5) & (\cam_instance|horizontal_size\(6) & (\cam_instance|horizontal_size\(4) $ (\cam_instance|horizontal_size\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cam_instance|horizontal_size\(5),
	datab => \cam_instance|horizontal_size\(4),
	datac => \cam_instance|horizontal_size\(7),
	datad => \cam_instance|horizontal_size\(6),
	combout => \hex5decoder|segments_out[1]~1_combout\);

-- Location: LCCOMB_X6_Y13_N30
\hex5decoder|segments_out[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex5decoder|segments_out[2]~2_combout\ = (\cam_instance|horizontal_size\(6) & (\cam_instance|horizontal_size\(7) & ((\cam_instance|horizontal_size\(5)) # (!\cam_instance|horizontal_size\(4))))) # (!\cam_instance|horizontal_size\(6) & 
-- (!\cam_instance|horizontal_size\(4) & (\cam_instance|horizontal_size\(5) & !\cam_instance|horizontal_size\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100010000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cam_instance|horizontal_size\(4),
	datab => \cam_instance|horizontal_size\(6),
	datac => \cam_instance|horizontal_size\(5),
	datad => \cam_instance|horizontal_size\(7),
	combout => \hex5decoder|segments_out[2]~2_combout\);

-- Location: LCCOMB_X6_Y13_N0
\hex5decoder|segments_out[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex5decoder|segments_out[3]~3_combout\ = (\cam_instance|horizontal_size\(5) & ((\cam_instance|horizontal_size\(4) & (\cam_instance|horizontal_size\(6))) # (!\cam_instance|horizontal_size\(4) & (!\cam_instance|horizontal_size\(6) & 
-- \cam_instance|horizontal_size\(7))))) # (!\cam_instance|horizontal_size\(5) & (!\cam_instance|horizontal_size\(7) & (\cam_instance|horizontal_size\(4) $ (\cam_instance|horizontal_size\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cam_instance|horizontal_size\(4),
	datab => \cam_instance|horizontal_size\(6),
	datac => \cam_instance|horizontal_size\(5),
	datad => \cam_instance|horizontal_size\(7),
	combout => \hex5decoder|segments_out[3]~3_combout\);

-- Location: LCCOMB_X6_Y13_N10
\hex5decoder|segments_out[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex5decoder|segments_out[4]~4_combout\ = (\cam_instance|horizontal_size\(5) & (\cam_instance|horizontal_size\(4) & ((!\cam_instance|horizontal_size\(7))))) # (!\cam_instance|horizontal_size\(5) & ((\cam_instance|horizontal_size\(6) & 
-- ((!\cam_instance|horizontal_size\(7)))) # (!\cam_instance|horizontal_size\(6) & (\cam_instance|horizontal_size\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cam_instance|horizontal_size\(4),
	datab => \cam_instance|horizontal_size\(6),
	datac => \cam_instance|horizontal_size\(5),
	datad => \cam_instance|horizontal_size\(7),
	combout => \hex5decoder|segments_out[4]~4_combout\);

-- Location: LCCOMB_X7_Y13_N2
\hex5decoder|segments_out[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex5decoder|segments_out[5]~5_combout\ = (\cam_instance|horizontal_size\(5) & (!\cam_instance|horizontal_size\(7) & ((\cam_instance|horizontal_size\(4)) # (!\cam_instance|horizontal_size\(6))))) # (!\cam_instance|horizontal_size\(5) & 
-- (\cam_instance|horizontal_size\(4) & (\cam_instance|horizontal_size\(7) $ (!\cam_instance|horizontal_size\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cam_instance|horizontal_size\(5),
	datab => \cam_instance|horizontal_size\(4),
	datac => \cam_instance|horizontal_size\(7),
	datad => \cam_instance|horizontal_size\(6),
	combout => \hex5decoder|segments_out[5]~5_combout\);

-- Location: LCCOMB_X8_Y13_N2
\hex5decoder|segments_out[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex5decoder|segments_out[6]~6_combout\ = (\cam_instance|horizontal_size\(4) & (!\cam_instance|horizontal_size\(7) & (\cam_instance|horizontal_size\(6) $ (!\cam_instance|horizontal_size\(5))))) # (!\cam_instance|horizontal_size\(4) & 
-- (!\cam_instance|horizontal_size\(5) & (\cam_instance|horizontal_size\(7) $ (!\cam_instance|horizontal_size\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000100001001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cam_instance|horizontal_size\(7),
	datab => \cam_instance|horizontal_size\(6),
	datac => \cam_instance|horizontal_size\(5),
	datad => \cam_instance|horizontal_size\(4),
	combout => \hex5decoder|segments_out[6]~6_combout\);

-- Location: LCCOMB_X8_Y13_N28
\cam_instance|current_column[8]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \cam_instance|current_column[8]~34_combout\ = (\cam_instance|current_column\(8) & (!\cam_instance|current_column[7]~33\)) # (!\cam_instance|current_column\(8) & ((\cam_instance|current_column[7]~33\) # (GND)))
-- \cam_instance|current_column[8]~35\ = CARRY((!\cam_instance|current_column[7]~33\) # (!\cam_instance|current_column\(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cam_instance|current_column\(8),
	datad => VCC,
	cin => \cam_instance|current_column[7]~33\,
	combout => \cam_instance|current_column[8]~34_combout\,
	cout => \cam_instance|current_column[8]~35\);

-- Location: FF_X8_Y13_N29
\cam_instance|current_column[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GPIO[11]~inputclkctrl_outclk\,
	d => \cam_instance|current_column[8]~34_combout\,
	clrn => \GPIO[8]~inputclkctrl_outclk\,
	ena => \cam_instance|ALT_INV_second_byte~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cam_instance|current_column\(8));

-- Location: LCCOMB_X8_Y13_N30
\cam_instance|current_column[9]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \cam_instance|current_column[9]~36_combout\ = (\cam_instance|current_column\(9) & (\cam_instance|current_column[8]~35\ $ (GND))) # (!\cam_instance|current_column\(9) & (!\cam_instance|current_column[8]~35\ & VCC))
-- \cam_instance|current_column[9]~37\ = CARRY((\cam_instance|current_column\(9) & !\cam_instance|current_column[8]~35\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cam_instance|current_column\(9),
	datad => VCC,
	cin => \cam_instance|current_column[8]~35\,
	combout => \cam_instance|current_column[9]~36_combout\,
	cout => \cam_instance|current_column[9]~37\);

-- Location: FF_X8_Y13_N31
\cam_instance|current_column[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GPIO[11]~inputclkctrl_outclk\,
	d => \cam_instance|current_column[9]~36_combout\,
	clrn => \GPIO[8]~inputclkctrl_outclk\,
	ena => \cam_instance|ALT_INV_second_byte~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cam_instance|current_column\(9));

-- Location: LCCOMB_X7_Y13_N26
\cam_instance|horizontal_size[9]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \cam_instance|horizontal_size[9]~feeder_combout\ = \cam_instance|current_column\(9)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cam_instance|current_column\(9),
	combout => \cam_instance|horizontal_size[9]~feeder_combout\);

-- Location: FF_X7_Y13_N27
\cam_instance|horizontal_size[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_GPIO[8]~inputclkctrl_outclk\,
	d => \cam_instance|horizontal_size[9]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cam_instance|horizontal_size\(9));

-- Location: LCCOMB_X7_Y13_N24
\cam_instance|horizontal_size[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \cam_instance|horizontal_size[8]~feeder_combout\ = \cam_instance|current_column\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cam_instance|current_column\(8),
	combout => \cam_instance|horizontal_size[8]~feeder_combout\);

-- Location: FF_X7_Y13_N25
\cam_instance|horizontal_size[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_GPIO[8]~inputclkctrl_outclk\,
	d => \cam_instance|horizontal_size[8]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cam_instance|horizontal_size\(8));

-- Location: LCCOMB_X8_Y12_N0
\cam_instance|current_column[10]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \cam_instance|current_column[10]~38_combout\ = (\cam_instance|current_column\(10) & (!\cam_instance|current_column[9]~37\)) # (!\cam_instance|current_column\(10) & ((\cam_instance|current_column[9]~37\) # (GND)))
-- \cam_instance|current_column[10]~39\ = CARRY((!\cam_instance|current_column[9]~37\) # (!\cam_instance|current_column\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cam_instance|current_column\(10),
	datad => VCC,
	cin => \cam_instance|current_column[9]~37\,
	combout => \cam_instance|current_column[10]~38_combout\,
	cout => \cam_instance|current_column[10]~39\);

-- Location: FF_X8_Y12_N1
\cam_instance|current_column[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GPIO[11]~inputclkctrl_outclk\,
	d => \cam_instance|current_column[10]~38_combout\,
	clrn => \GPIO[8]~inputclkctrl_outclk\,
	ena => \cam_instance|ALT_INV_second_byte~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cam_instance|current_column\(10));

-- Location: LCCOMB_X8_Y12_N22
\cam_instance|horizontal_size[10]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \cam_instance|horizontal_size[10]~feeder_combout\ = \cam_instance|current_column\(10)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cam_instance|current_column\(10),
	combout => \cam_instance|horizontal_size[10]~feeder_combout\);

-- Location: FF_X8_Y12_N23
\cam_instance|horizontal_size[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_GPIO[8]~inputclkctrl_outclk\,
	d => \cam_instance|horizontal_size[10]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cam_instance|horizontal_size\(10));

-- Location: LCCOMB_X8_Y12_N2
\cam_instance|current_column[11]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \cam_instance|current_column[11]~40_combout\ = (\cam_instance|current_column\(11) & (\cam_instance|current_column[10]~39\ $ (GND))) # (!\cam_instance|current_column\(11) & (!\cam_instance|current_column[10]~39\ & VCC))
-- \cam_instance|current_column[11]~41\ = CARRY((\cam_instance|current_column\(11) & !\cam_instance|current_column[10]~39\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cam_instance|current_column\(11),
	datad => VCC,
	cin => \cam_instance|current_column[10]~39\,
	combout => \cam_instance|current_column[11]~40_combout\,
	cout => \cam_instance|current_column[11]~41\);

-- Location: FF_X8_Y12_N3
\cam_instance|current_column[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GPIO[11]~inputclkctrl_outclk\,
	d => \cam_instance|current_column[11]~40_combout\,
	clrn => \GPIO[8]~inputclkctrl_outclk\,
	ena => \cam_instance|ALT_INV_second_byte~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cam_instance|current_column\(11));

-- Location: LCCOMB_X8_Y12_N30
\cam_instance|horizontal_size[11]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \cam_instance|horizontal_size[11]~feeder_combout\ = \cam_instance|current_column\(11)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cam_instance|current_column\(11),
	combout => \cam_instance|horizontal_size[11]~feeder_combout\);

-- Location: FF_X8_Y12_N31
\cam_instance|horizontal_size[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_GPIO[8]~inputclkctrl_outclk\,
	d => \cam_instance|horizontal_size[11]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cam_instance|horizontal_size\(11));

-- Location: LCCOMB_X7_Y13_N0
\hex6decoder|segments_out[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex6decoder|segments_out[0]~0_combout\ = (\cam_instance|horizontal_size\(10) & (!\cam_instance|horizontal_size\(9) & (\cam_instance|horizontal_size\(8) $ (!\cam_instance|horizontal_size\(11))))) # (!\cam_instance|horizontal_size\(10) & 
-- (\cam_instance|horizontal_size\(8) & (\cam_instance|horizontal_size\(9) $ (!\cam_instance|horizontal_size\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cam_instance|horizontal_size\(9),
	datab => \cam_instance|horizontal_size\(8),
	datac => \cam_instance|horizontal_size\(10),
	datad => \cam_instance|horizontal_size\(11),
	combout => \hex6decoder|segments_out[0]~0_combout\);

-- Location: LCCOMB_X7_Y13_N18
\hex6decoder|segments_out[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex6decoder|segments_out[1]~1_combout\ = (\cam_instance|horizontal_size\(9) & ((\cam_instance|horizontal_size\(8) & ((\cam_instance|horizontal_size\(11)))) # (!\cam_instance|horizontal_size\(8) & (\cam_instance|horizontal_size\(10))))) # 
-- (!\cam_instance|horizontal_size\(9) & (\cam_instance|horizontal_size\(10) & (\cam_instance|horizontal_size\(8) $ (\cam_instance|horizontal_size\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100001100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cam_instance|horizontal_size\(9),
	datab => \cam_instance|horizontal_size\(8),
	datac => \cam_instance|horizontal_size\(10),
	datad => \cam_instance|horizontal_size\(11),
	combout => \hex6decoder|segments_out[1]~1_combout\);

-- Location: LCCOMB_X7_Y13_N12
\hex6decoder|segments_out[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex6decoder|segments_out[2]~2_combout\ = (\cam_instance|horizontal_size\(10) & (\cam_instance|horizontal_size\(11) & ((\cam_instance|horizontal_size\(9)) # (!\cam_instance|horizontal_size\(8))))) # (!\cam_instance|horizontal_size\(10) & 
-- (\cam_instance|horizontal_size\(9) & (!\cam_instance|horizontal_size\(8) & !\cam_instance|horizontal_size\(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cam_instance|horizontal_size\(9),
	datab => \cam_instance|horizontal_size\(8),
	datac => \cam_instance|horizontal_size\(10),
	datad => \cam_instance|horizontal_size\(11),
	combout => \hex6decoder|segments_out[2]~2_combout\);

-- Location: LCCOMB_X7_Y13_N30
\hex6decoder|segments_out[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex6decoder|segments_out[3]~3_combout\ = (\cam_instance|horizontal_size\(9) & ((\cam_instance|horizontal_size\(8) & (\cam_instance|horizontal_size\(10))) # (!\cam_instance|horizontal_size\(8) & (!\cam_instance|horizontal_size\(10) & 
-- \cam_instance|horizontal_size\(11))))) # (!\cam_instance|horizontal_size\(9) & (!\cam_instance|horizontal_size\(11) & (\cam_instance|horizontal_size\(8) $ (\cam_instance|horizontal_size\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cam_instance|horizontal_size\(9),
	datab => \cam_instance|horizontal_size\(8),
	datac => \cam_instance|horizontal_size\(10),
	datad => \cam_instance|horizontal_size\(11),
	combout => \hex6decoder|segments_out[3]~3_combout\);

-- Location: LCCOMB_X7_Y13_N8
\hex6decoder|segments_out[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex6decoder|segments_out[4]~4_combout\ = (\cam_instance|horizontal_size\(9) & (\cam_instance|horizontal_size\(8) & ((!\cam_instance|horizontal_size\(11))))) # (!\cam_instance|horizontal_size\(9) & ((\cam_instance|horizontal_size\(10) & 
-- ((!\cam_instance|horizontal_size\(11)))) # (!\cam_instance|horizontal_size\(10) & (\cam_instance|horizontal_size\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011011100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cam_instance|horizontal_size\(9),
	datab => \cam_instance|horizontal_size\(8),
	datac => \cam_instance|horizontal_size\(10),
	datad => \cam_instance|horizontal_size\(11),
	combout => \hex6decoder|segments_out[4]~4_combout\);

-- Location: LCCOMB_X7_Y13_N10
\hex6decoder|segments_out[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex6decoder|segments_out[5]~5_combout\ = (\cam_instance|horizontal_size\(9) & (!\cam_instance|horizontal_size\(11) & ((\cam_instance|horizontal_size\(8)) # (!\cam_instance|horizontal_size\(10))))) # (!\cam_instance|horizontal_size\(9) & 
-- (\cam_instance|horizontal_size\(8) & (\cam_instance|horizontal_size\(10) $ (!\cam_instance|horizontal_size\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cam_instance|horizontal_size\(9),
	datab => \cam_instance|horizontal_size\(8),
	datac => \cam_instance|horizontal_size\(10),
	datad => \cam_instance|horizontal_size\(11),
	combout => \hex6decoder|segments_out[5]~5_combout\);

-- Location: LCCOMB_X7_Y13_N20
\hex6decoder|segments_out[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex6decoder|segments_out[6]~6_combout\ = (\cam_instance|horizontal_size\(8) & (!\cam_instance|horizontal_size\(11) & (\cam_instance|horizontal_size\(9) $ (!\cam_instance|horizontal_size\(10))))) # (!\cam_instance|horizontal_size\(8) & 
-- (!\cam_instance|horizontal_size\(9) & (\cam_instance|horizontal_size\(10) $ (!\cam_instance|horizontal_size\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000010000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cam_instance|horizontal_size\(9),
	datab => \cam_instance|horizontal_size\(8),
	datac => \cam_instance|horizontal_size\(10),
	datad => \cam_instance|horizontal_size\(11),
	combout => \hex6decoder|segments_out[6]~6_combout\);

-- Location: LCCOMB_X8_Y12_N4
\cam_instance|current_column[12]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \cam_instance|current_column[12]~42_combout\ = (\cam_instance|current_column\(12) & (!\cam_instance|current_column[11]~41\)) # (!\cam_instance|current_column\(12) & ((\cam_instance|current_column[11]~41\) # (GND)))
-- \cam_instance|current_column[12]~43\ = CARRY((!\cam_instance|current_column[11]~41\) # (!\cam_instance|current_column\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cam_instance|current_column\(12),
	datad => VCC,
	cin => \cam_instance|current_column[11]~41\,
	combout => \cam_instance|current_column[12]~42_combout\,
	cout => \cam_instance|current_column[12]~43\);

-- Location: FF_X8_Y12_N5
\cam_instance|current_column[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GPIO[11]~inputclkctrl_outclk\,
	d => \cam_instance|current_column[12]~42_combout\,
	clrn => \GPIO[8]~inputclkctrl_outclk\,
	ena => \cam_instance|ALT_INV_second_byte~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cam_instance|current_column\(12));

-- Location: FF_X8_Y12_N25
\cam_instance|horizontal_size[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_GPIO[8]~inputclkctrl_outclk\,
	asdata => \cam_instance|current_column\(12),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cam_instance|horizontal_size\(12));

-- Location: LCCOMB_X8_Y12_N6
\cam_instance|current_column[13]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \cam_instance|current_column[13]~44_combout\ = (\cam_instance|current_column\(13) & (\cam_instance|current_column[12]~43\ $ (GND))) # (!\cam_instance|current_column\(13) & (!\cam_instance|current_column[12]~43\ & VCC))
-- \cam_instance|current_column[13]~45\ = CARRY((\cam_instance|current_column\(13) & !\cam_instance|current_column[12]~43\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cam_instance|current_column\(13),
	datad => VCC,
	cin => \cam_instance|current_column[12]~43\,
	combout => \cam_instance|current_column[13]~44_combout\,
	cout => \cam_instance|current_column[13]~45\);

-- Location: FF_X8_Y12_N7
\cam_instance|current_column[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GPIO[11]~inputclkctrl_outclk\,
	d => \cam_instance|current_column[13]~44_combout\,
	clrn => \GPIO[8]~inputclkctrl_outclk\,
	ena => \cam_instance|ALT_INV_second_byte~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cam_instance|current_column\(13));

-- Location: LCCOMB_X8_Y12_N8
\cam_instance|current_column[14]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \cam_instance|current_column[14]~46_combout\ = (\cam_instance|current_column\(14) & (!\cam_instance|current_column[13]~45\)) # (!\cam_instance|current_column\(14) & ((\cam_instance|current_column[13]~45\) # (GND)))
-- \cam_instance|current_column[14]~47\ = CARRY((!\cam_instance|current_column[13]~45\) # (!\cam_instance|current_column\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cam_instance|current_column\(14),
	datad => VCC,
	cin => \cam_instance|current_column[13]~45\,
	combout => \cam_instance|current_column[14]~46_combout\,
	cout => \cam_instance|current_column[14]~47\);

-- Location: FF_X8_Y12_N9
\cam_instance|current_column[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GPIO[11]~inputclkctrl_outclk\,
	d => \cam_instance|current_column[14]~46_combout\,
	clrn => \GPIO[8]~inputclkctrl_outclk\,
	ena => \cam_instance|ALT_INV_second_byte~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cam_instance|current_column\(14));

-- Location: FF_X8_Y12_N21
\cam_instance|horizontal_size[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_GPIO[8]~inputclkctrl_outclk\,
	asdata => \cam_instance|current_column\(14),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cam_instance|horizontal_size\(14));

-- Location: LCCOMB_X8_Y12_N10
\cam_instance|current_column[15]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \cam_instance|current_column[15]~48_combout\ = (\cam_instance|current_column\(15) & (\cam_instance|current_column[14]~47\ $ (GND))) # (!\cam_instance|current_column\(15) & (!\cam_instance|current_column[14]~47\ & VCC))
-- \cam_instance|current_column[15]~49\ = CARRY((\cam_instance|current_column\(15) & !\cam_instance|current_column[14]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cam_instance|current_column\(15),
	datad => VCC,
	cin => \cam_instance|current_column[14]~47\,
	combout => \cam_instance|current_column[15]~48_combout\,
	cout => \cam_instance|current_column[15]~49\);

-- Location: FF_X8_Y12_N11
\cam_instance|current_column[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GPIO[11]~inputclkctrl_outclk\,
	d => \cam_instance|current_column[15]~48_combout\,
	clrn => \GPIO[8]~inputclkctrl_outclk\,
	ena => \cam_instance|ALT_INV_second_byte~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cam_instance|current_column\(15));

-- Location: LCCOMB_X8_Y12_N26
\cam_instance|horizontal_size[15]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \cam_instance|horizontal_size[15]~feeder_combout\ = \cam_instance|current_column\(15)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cam_instance|current_column\(15),
	combout => \cam_instance|horizontal_size[15]~feeder_combout\);

-- Location: FF_X8_Y12_N27
\cam_instance|horizontal_size[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_GPIO[8]~inputclkctrl_outclk\,
	d => \cam_instance|horizontal_size[15]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cam_instance|horizontal_size\(15));

-- Location: LCCOMB_X8_Y12_N28
\cam_instance|horizontal_size[13]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \cam_instance|horizontal_size[13]~feeder_combout\ = \cam_instance|current_column\(13)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cam_instance|current_column\(13),
	combout => \cam_instance|horizontal_size[13]~feeder_combout\);

-- Location: FF_X8_Y12_N29
\cam_instance|horizontal_size[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_GPIO[8]~inputclkctrl_outclk\,
	d => \cam_instance|horizontal_size[13]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cam_instance|horizontal_size\(13));

-- Location: LCCOMB_X4_Y8_N12
\hex7decoder|segments_out[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex7decoder|segments_out[0]~0_combout\ = (\cam_instance|horizontal_size\(14) & (!\cam_instance|horizontal_size\(13) & (\cam_instance|horizontal_size\(12) $ (!\cam_instance|horizontal_size\(15))))) # (!\cam_instance|horizontal_size\(14) & 
-- (\cam_instance|horizontal_size\(12) & (\cam_instance|horizontal_size\(15) $ (!\cam_instance|horizontal_size\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cam_instance|horizontal_size\(12),
	datab => \cam_instance|horizontal_size\(14),
	datac => \cam_instance|horizontal_size\(15),
	datad => \cam_instance|horizontal_size\(13),
	combout => \hex7decoder|segments_out[0]~0_combout\);

-- Location: LCCOMB_X4_Y8_N26
\hex7decoder|segments_out[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex7decoder|segments_out[1]~1_combout\ = (\cam_instance|horizontal_size\(15) & ((\cam_instance|horizontal_size\(12) & ((\cam_instance|horizontal_size\(13)))) # (!\cam_instance|horizontal_size\(12) & (\cam_instance|horizontal_size\(14))))) # 
-- (!\cam_instance|horizontal_size\(15) & (\cam_instance|horizontal_size\(14) & (\cam_instance|horizontal_size\(12) $ (\cam_instance|horizontal_size\(13)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cam_instance|horizontal_size\(12),
	datab => \cam_instance|horizontal_size\(14),
	datac => \cam_instance|horizontal_size\(15),
	datad => \cam_instance|horizontal_size\(13),
	combout => \hex7decoder|segments_out[1]~1_combout\);

-- Location: LCCOMB_X4_Y8_N0
\hex7decoder|segments_out[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex7decoder|segments_out[2]~2_combout\ = (\cam_instance|horizontal_size\(14) & (\cam_instance|horizontal_size\(15) & ((\cam_instance|horizontal_size\(13)) # (!\cam_instance|horizontal_size\(12))))) # (!\cam_instance|horizontal_size\(14) & 
-- (!\cam_instance|horizontal_size\(12) & (!\cam_instance|horizontal_size\(15) & \cam_instance|horizontal_size\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000101000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cam_instance|horizontal_size\(12),
	datab => \cam_instance|horizontal_size\(14),
	datac => \cam_instance|horizontal_size\(15),
	datad => \cam_instance|horizontal_size\(13),
	combout => \hex7decoder|segments_out[2]~2_combout\);

-- Location: LCCOMB_X8_Y12_N24
\hex7decoder|segments_out[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex7decoder|segments_out[3]~3_combout\ = (\cam_instance|horizontal_size\(13) & ((\cam_instance|horizontal_size\(14) & ((\cam_instance|horizontal_size\(12)))) # (!\cam_instance|horizontal_size\(14) & (\cam_instance|horizontal_size\(15) & 
-- !\cam_instance|horizontal_size\(12))))) # (!\cam_instance|horizontal_size\(13) & (!\cam_instance|horizontal_size\(15) & (\cam_instance|horizontal_size\(14) $ (\cam_instance|horizontal_size\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cam_instance|horizontal_size\(15),
	datab => \cam_instance|horizontal_size\(14),
	datac => \cam_instance|horizontal_size\(12),
	datad => \cam_instance|horizontal_size\(13),
	combout => \hex7decoder|segments_out[3]~3_combout\);

-- Location: LCCOMB_X4_Y8_N22
\hex7decoder|segments_out[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex7decoder|segments_out[4]~4_combout\ = (\cam_instance|horizontal_size\(13) & (\cam_instance|horizontal_size\(12) & ((!\cam_instance|horizontal_size\(15))))) # (!\cam_instance|horizontal_size\(13) & ((\cam_instance|horizontal_size\(14) & 
-- ((!\cam_instance|horizontal_size\(15)))) # (!\cam_instance|horizontal_size\(14) & (\cam_instance|horizontal_size\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cam_instance|horizontal_size\(12),
	datab => \cam_instance|horizontal_size\(14),
	datac => \cam_instance|horizontal_size\(15),
	datad => \cam_instance|horizontal_size\(13),
	combout => \hex7decoder|segments_out[4]~4_combout\);

-- Location: LCCOMB_X8_Y12_N20
\hex7decoder|segments_out[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex7decoder|segments_out[5]~5_combout\ = (\cam_instance|horizontal_size\(12) & (\cam_instance|horizontal_size\(15) $ (((\cam_instance|horizontal_size\(13)) # (!\cam_instance|horizontal_size\(14)))))) # (!\cam_instance|horizontal_size\(12) & 
-- (!\cam_instance|horizontal_size\(15) & (!\cam_instance|horizontal_size\(14) & \cam_instance|horizontal_size\(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cam_instance|horizontal_size\(15),
	datab => \cam_instance|horizontal_size\(12),
	datac => \cam_instance|horizontal_size\(14),
	datad => \cam_instance|horizontal_size\(13),
	combout => \hex7decoder|segments_out[5]~5_combout\);

-- Location: LCCOMB_X4_Y8_N8
\hex7decoder|segments_out[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex7decoder|segments_out[6]~6_combout\ = (\cam_instance|horizontal_size\(12) & (!\cam_instance|horizontal_size\(15) & (\cam_instance|horizontal_size\(14) $ (!\cam_instance|horizontal_size\(13))))) # (!\cam_instance|horizontal_size\(12) & 
-- (!\cam_instance|horizontal_size\(13) & (\cam_instance|horizontal_size\(14) $ (!\cam_instance|horizontal_size\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100001000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cam_instance|horizontal_size\(12),
	datab => \cam_instance|horizontal_size\(14),
	datac => \cam_instance|horizontal_size\(15),
	datad => \cam_instance|horizontal_size\(13),
	combout => \hex7decoder|segments_out[6]~6_combout\);

-- Location: LCCOMB_X11_Y15_N16
\VGA_R[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_R[0]~0_combout\ = (\camstatemachine_instance|current_state.display~q\) # (\camstatemachine_instance|current_state.read_foreground_pixel~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camstatemachine_instance|current_state.display~q\,
	datab => \camstatemachine_instance|current_state.read_foreground_pixel~q\,
	combout => \VGA_R[0]~0_combout\);

-- Location: LCCOMB_X11_Y15_N2
\VGA_R[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_R[0]~1_combout\ = (\SRAM_DQ[8]~input_o\ & ((\camstatemachine_instance|current_state.wait_for_display_end_pre_copy~2_combout\) # ((\VGA_R[0]~0_combout\) # (\camstatemachine_instance|current_state.read_background_pixel~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_DQ[8]~input_o\,
	datab => \camstatemachine_instance|current_state.wait_for_display_end_pre_copy~2_combout\,
	datac => \VGA_R[0]~0_combout\,
	datad => \camstatemachine_instance|current_state.read_background_pixel~2_combout\,
	combout => \VGA_R[0]~1_combout\);

-- Location: CLKCTRL_G2
\camstatemachine_instance|WideOr2~clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \camstatemachine_instance|WideOr2~clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \camstatemachine_instance|WideOr2~clkctrl_outclk\);

-- Location: LCCOMB_X11_Y15_N20
\VGA_R[0]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_R[0]$latch~combout\ = (GLOBAL(\camstatemachine_instance|WideOr2~clkctrl_outclk\) & ((\VGA_R[0]$latch~combout\))) # (!GLOBAL(\camstatemachine_instance|WideOr2~clkctrl_outclk\) & (\VGA_R[0]~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_R[0]~1_combout\,
	datac => \camstatemachine_instance|WideOr2~clkctrl_outclk\,
	datad => \VGA_R[0]$latch~combout\,
	combout => \VGA_R[0]$latch~combout\);

-- Location: LCCOMB_X11_Y15_N28
\VGA_R[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_R[1]~2_combout\ = (\SRAM_DQ[9]~input_o\ & ((\camstatemachine_instance|current_state.wait_for_display_end_pre_copy~2_combout\) # ((\VGA_R[0]~0_combout\) # (\camstatemachine_instance|current_state.read_background_pixel~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_DQ[9]~input_o\,
	datab => \camstatemachine_instance|current_state.wait_for_display_end_pre_copy~2_combout\,
	datac => \VGA_R[0]~0_combout\,
	datad => \camstatemachine_instance|current_state.read_background_pixel~2_combout\,
	combout => \VGA_R[1]~2_combout\);

-- Location: LCCOMB_X11_Y15_N6
\VGA_R[1]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_R[1]$latch~combout\ = (GLOBAL(\camstatemachine_instance|WideOr2~clkctrl_outclk\) & ((\VGA_R[1]$latch~combout\))) # (!GLOBAL(\camstatemachine_instance|WideOr2~clkctrl_outclk\) & (\VGA_R[1]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_R[1]~2_combout\,
	datac => \camstatemachine_instance|WideOr2~clkctrl_outclk\,
	datad => \VGA_R[1]$latch~combout\,
	combout => \VGA_R[1]$latch~combout\);

-- Location: LCCOMB_X10_Y15_N28
\VGA_R[2]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_R[2]~3_combout\ = (\camstatemachine_instance|WideOr0~combout\ & \SRAM_DQ[10]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \camstatemachine_instance|WideOr0~combout\,
	datad => \SRAM_DQ[10]~input_o\,
	combout => \VGA_R[2]~3_combout\);

-- Location: LCCOMB_X10_Y15_N30
\VGA_R[2]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_R[2]$latch~combout\ = (GLOBAL(\camstatemachine_instance|WideOr2~clkctrl_outclk\) & ((\VGA_R[2]$latch~combout\))) # (!GLOBAL(\camstatemachine_instance|WideOr2~clkctrl_outclk\) & (\VGA_R[2]~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_R[2]~3_combout\,
	datac => \VGA_R[2]$latch~combout\,
	datad => \camstatemachine_instance|WideOr2~clkctrl_outclk\,
	combout => \VGA_R[2]$latch~combout\);

-- Location: LCCOMB_X11_Y15_N26
\VGA_R[3]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_R[3]~4_combout\ = (\SRAM_DQ[11]~input_o\ & ((\camstatemachine_instance|current_state.wait_for_display_end_pre_copy~2_combout\) # ((\VGA_R[0]~0_combout\) # (\camstatemachine_instance|current_state.read_background_pixel~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_DQ[11]~input_o\,
	datab => \camstatemachine_instance|current_state.wait_for_display_end_pre_copy~2_combout\,
	datac => \VGA_R[0]~0_combout\,
	datad => \camstatemachine_instance|current_state.read_background_pixel~2_combout\,
	combout => \VGA_R[3]~4_combout\);

-- Location: LCCOMB_X11_Y15_N24
\VGA_R[3]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_R[3]$latch~combout\ = (GLOBAL(\camstatemachine_instance|WideOr2~clkctrl_outclk\) & ((\VGA_R[3]$latch~combout\))) # (!GLOBAL(\camstatemachine_instance|WideOr2~clkctrl_outclk\) & (\VGA_R[3]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_R[3]~4_combout\,
	datac => \camstatemachine_instance|WideOr2~clkctrl_outclk\,
	datad => \VGA_R[3]$latch~combout\,
	combout => \VGA_R[3]$latch~combout\);

-- Location: LCCOMB_X10_Y15_N14
\VGA_R[4]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_R[4]~5_combout\ = (\camstatemachine_instance|WideOr0~combout\ & \SRAM_DQ[12]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \camstatemachine_instance|WideOr0~combout\,
	datad => \SRAM_DQ[12]~input_o\,
	combout => \VGA_R[4]~5_combout\);

-- Location: LCCOMB_X10_Y15_N20
\VGA_R[4]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_R[4]$latch~combout\ = (GLOBAL(\camstatemachine_instance|WideOr2~clkctrl_outclk\) & (\VGA_R[4]$latch~combout\)) # (!GLOBAL(\camstatemachine_instance|WideOr2~clkctrl_outclk\) & ((\VGA_R[4]~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_R[4]$latch~combout\,
	datac => \VGA_R[4]~5_combout\,
	datad => \camstatemachine_instance|WideOr2~clkctrl_outclk\,
	combout => \VGA_R[4]$latch~combout\);

-- Location: LCCOMB_X11_Y15_N8
\VGA_R[5]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_R[5]~6_combout\ = (\SRAM_DQ[13]~input_o\ & ((\camstatemachine_instance|current_state.read_background_pixel~2_combout\) # ((\camstatemachine_instance|current_state.wait_for_display_end_pre_copy~2_combout\) # (\VGA_R[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camstatemachine_instance|current_state.read_background_pixel~2_combout\,
	datab => \camstatemachine_instance|current_state.wait_for_display_end_pre_copy~2_combout\,
	datac => \VGA_R[0]~0_combout\,
	datad => \SRAM_DQ[13]~input_o\,
	combout => \VGA_R[5]~6_combout\);

-- Location: LCCOMB_X11_Y15_N18
\VGA_R[5]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_R[5]$latch~combout\ = (GLOBAL(\camstatemachine_instance|WideOr2~clkctrl_outclk\) & ((\VGA_R[5]$latch~combout\))) # (!GLOBAL(\camstatemachine_instance|WideOr2~clkctrl_outclk\) & (\VGA_R[5]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_R[5]~6_combout\,
	datac => \camstatemachine_instance|WideOr2~clkctrl_outclk\,
	datad => \VGA_R[5]$latch~combout\,
	combout => \VGA_R[5]$latch~combout\);

-- Location: LCCOMB_X14_Y13_N20
\VGA_R[6]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_R[6]~7_combout\ = (\camstatemachine_instance|WideOr0~combout\ & \SRAM_DQ[14]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camstatemachine_instance|WideOr0~combout\,
	datac => \SRAM_DQ[14]~input_o\,
	combout => \VGA_R[6]~7_combout\);

-- Location: LCCOMB_X14_Y13_N18
\VGA_R[6]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_R[6]$latch~combout\ = (GLOBAL(\camstatemachine_instance|WideOr2~clkctrl_outclk\) & (\VGA_R[6]$latch~combout\)) # (!GLOBAL(\camstatemachine_instance|WideOr2~clkctrl_outclk\) & ((\VGA_R[6]~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_R[6]$latch~combout\,
	datac => \VGA_R[6]~7_combout\,
	datad => \camstatemachine_instance|WideOr2~clkctrl_outclk\,
	combout => \VGA_R[6]$latch~combout\);

-- Location: LCCOMB_X14_Y15_N2
\VGA_R[7]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_R[7]~8_combout\ = (\camstatemachine_instance|WideOr0~combout\ & \SRAM_DQ[15]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \camstatemachine_instance|WideOr0~combout\,
	datad => \SRAM_DQ[15]~input_o\,
	combout => \VGA_R[7]~8_combout\);

-- Location: LCCOMB_X14_Y15_N16
\VGA_R[7]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_R[7]$latch~combout\ = (GLOBAL(\camstatemachine_instance|WideOr2~clkctrl_outclk\) & ((\VGA_R[7]$latch~combout\))) # (!GLOBAL(\camstatemachine_instance|WideOr2~clkctrl_outclk\) & (\VGA_R[7]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_R[7]~8_combout\,
	datac => \camstatemachine_instance|WideOr2~clkctrl_outclk\,
	datad => \VGA_R[7]$latch~combout\,
	combout => \VGA_R[7]$latch~combout\);

-- Location: LCCOMB_X20_Y16_N4
\vga_sync_instance|LessThan5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_sync_instance|LessThan5~0_combout\ = ((!\vga_sync_instance|h_count\(8) & !\vga_sync_instance|h_count\(7))) # (!\vga_sync_instance|h_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga_sync_instance|h_count\(8),
	datac => \vga_sync_instance|h_count\(7),
	datad => \vga_sync_instance|h_count\(9),
	combout => \vga_sync_instance|LessThan5~0_combout\);

-- Location: FF_X20_Y15_N17
\vga_sync_instance|video_on_h\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_camera_clock~clkctrl_outclk\,
	asdata => \vga_sync_instance|LessThan5~0_combout\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_sync_instance|video_on_h~q\);

-- Location: LCCOMB_X20_Y15_N16
\vga_sync_instance|video_on\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_sync_instance|video_on~combout\ = (\vga_sync_instance|video_on_h~q\ & !\vga_sync_instance|eof~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vga_sync_instance|video_on_h~q\,
	datad => \vga_sync_instance|eof~q\,
	combout => \vga_sync_instance|video_on~combout\);

-- Location: LCCOMB_X20_Y15_N20
\vga_sync_instance|process_0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_sync_instance|process_0~6_combout\ = (\vga_sync_instance|h_count\(5) & ((\vga_sync_instance|h_count\(0)) # ((\vga_sync_instance|h_count\(1)) # (\vga_sync_instance|h_count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_sync_instance|h_count\(0),
	datab => \vga_sync_instance|h_count\(1),
	datac => \vga_sync_instance|h_count\(5),
	datad => \vga_sync_instance|h_count\(2),
	combout => \vga_sync_instance|process_0~6_combout\);

-- Location: LCCOMB_X20_Y15_N2
\vga_sync_instance|process_0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_sync_instance|process_0~5_combout\ = ((\vga_sync_instance|h_count\(8)) # ((\vga_sync_instance|process_0~1_combout\) # (!\vga_sync_instance|h_count\(7)))) # (!\vga_sync_instance|h_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_sync_instance|h_count\(9),
	datab => \vga_sync_instance|h_count\(8),
	datac => \vga_sync_instance|h_count\(7),
	datad => \vga_sync_instance|process_0~1_combout\,
	combout => \vga_sync_instance|process_0~5_combout\);

-- Location: LCCOMB_X20_Y15_N4
\vga_sync_instance|process_0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_sync_instance|process_0~7_combout\ = (\vga_sync_instance|process_0~5_combout\) # ((\vga_sync_instance|process_0~3_combout\ & (\vga_sync_instance|process_0~6_combout\ & \vga_sync_instance|h_count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_sync_instance|process_0~3_combout\,
	datab => \vga_sync_instance|process_0~6_combout\,
	datac => \vga_sync_instance|h_count\(6),
	datad => \vga_sync_instance|process_0~5_combout\,
	combout => \vga_sync_instance|process_0~7_combout\);

-- Location: FF_X20_Y15_N5
\vga_sync_instance|horiz_sync\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_camera_clock~clkctrl_outclk\,
	d => \vga_sync_instance|process_0~7_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_sync_instance|horiz_sync~q\);

-- Location: FF_X21_Y15_N1
\vga_sync_instance|horiz_sync_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_camera_clock~clkctrl_outclk\,
	asdata => \vga_sync_instance|horiz_sync~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_sync_instance|horiz_sync_out~q\);

-- Location: LCCOMB_X19_Y15_N2
\vga_sync_instance|process_0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_sync_instance|process_0~8_combout\ = ((\vga_sync_instance|v_count\(1) & ((\vga_sync_instance|v_count\(2)) # (!\vga_sync_instance|v_count\(0)))) # (!\vga_sync_instance|v_count\(1) & ((!\vga_sync_instance|v_count\(2))))) # 
-- (!\vga_sync_instance|v_count\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_sync_instance|v_count\(0),
	datab => \vga_sync_instance|v_count\(3),
	datac => \vga_sync_instance|v_count\(1),
	datad => \vga_sync_instance|v_count\(2),
	combout => \vga_sync_instance|process_0~8_combout\);

-- Location: LCCOMB_X19_Y15_N8
\vga_sync_instance|process_0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_sync_instance|process_0~9_combout\ = (\vga_sync_instance|v_count\(9)) # ((\vga_sync_instance|process_0~8_combout\) # ((\vga_sync_instance|v_count\(4)) # (!\vga_sync_instance|LessThan6~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_sync_instance|v_count\(9),
	datab => \vga_sync_instance|process_0~8_combout\,
	datac => \vga_sync_instance|v_count\(4),
	datad => \vga_sync_instance|LessThan6~0_combout\,
	combout => \vga_sync_instance|process_0~9_combout\);

-- Location: FF_X19_Y15_N9
\vga_sync_instance|vert_sync\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_camera_clock~clkctrl_outclk\,
	d => \vga_sync_instance|process_0~9_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_sync_instance|vert_sync~q\);

-- Location: FF_X19_Y15_N27
\vga_sync_instance|vert_sync_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_camera_clock~clkctrl_outclk\,
	asdata => \vga_sync_instance|vert_sync~q\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_sync_instance|vert_sync_out~q\);

-- Location: FF_X20_Y16_N13
\vga_sync_instance|pixel_column[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_camera_clock~clkctrl_outclk\,
	asdata => \vga_sync_instance|h_count\(0),
	sload => VCC,
	ena => \vga_sync_instance|LessThan5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_sync_instance|pixel_column\(0));

-- Location: LCCOMB_X14_Y16_N0
\SRAM_ADDR[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAM_ADDR[0]~0_combout\ = (\camstatemachine_instance|WideOr0~combout\ & (((\vga_sync_instance|pixel_column\(0))))) # (!\camstatemachine_instance|WideOr0~combout\ & (\camstatemachine_instance|WideOr1~combout\ & ((\cam_instance|current_column\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camstatemachine_instance|WideOr1~combout\,
	datab => \vga_sync_instance|pixel_column\(0),
	datac => \camstatemachine_instance|WideOr0~combout\,
	datad => \cam_instance|current_column\(0),
	combout => \SRAM_ADDR[0]~0_combout\);

-- Location: LCCOMB_X14_Y16_N18
\SRAM_ADDR[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAM_ADDR[0]~1_combout\ = (\camstatemachine_instance|WideOr2~combout\ & (pixel_counter(0))) # (!\camstatemachine_instance|WideOr2~combout\ & ((\SRAM_ADDR[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \camstatemachine_instance|WideOr2~combout\,
	datac => pixel_counter(0),
	datad => \SRAM_ADDR[0]~0_combout\,
	combout => \SRAM_ADDR[0]~1_combout\);

-- Location: FF_X20_Y15_N19
\vga_sync_instance|pixel_column[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_camera_clock~clkctrl_outclk\,
	asdata => \vga_sync_instance|h_count\(1),
	sload => VCC,
	ena => \vga_sync_instance|LessThan5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_sync_instance|pixel_column\(1));

-- Location: LCCOMB_X20_Y15_N18
\SRAM_ADDR[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAM_ADDR[1]~2_combout\ = (\camstatemachine_instance|WideOr0~combout\ & (((\vga_sync_instance|pixel_column\(1))))) # (!\camstatemachine_instance|WideOr0~combout\ & (\cam_instance|current_column\(1) & (\camstatemachine_instance|WideOr1~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cam_instance|current_column\(1),
	datab => \camstatemachine_instance|WideOr1~combout\,
	datac => \vga_sync_instance|pixel_column\(1),
	datad => \camstatemachine_instance|WideOr0~combout\,
	combout => \SRAM_ADDR[1]~2_combout\);

-- Location: LCCOMB_X15_Y14_N4
\SRAM_ADDR[1]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAM_ADDR[1]~3_combout\ = (\camstatemachine_instance|WideOr2~combout\ & (pixel_counter(1))) # (!\camstatemachine_instance|WideOr2~combout\ & ((\SRAM_ADDR[1]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \camstatemachine_instance|WideOr2~combout\,
	datac => pixel_counter(1),
	datad => \SRAM_ADDR[1]~2_combout\,
	combout => \SRAM_ADDR[1]~3_combout\);

-- Location: FF_X20_Y16_N29
\vga_sync_instance|pixel_column[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_camera_clock~clkctrl_outclk\,
	asdata => \vga_sync_instance|h_count\(2),
	sload => VCC,
	ena => \vga_sync_instance|LessThan5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_sync_instance|pixel_column\(2));

-- Location: LCCOMB_X15_Y14_N0
\SRAM_ADDR[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAM_ADDR[2]~4_combout\ = (\camstatemachine_instance|WideOr0~combout\ & (\vga_sync_instance|pixel_column\(2))) # (!\camstatemachine_instance|WideOr0~combout\ & (((\camstatemachine_instance|WideOr1~combout\ & \cam_instance|current_column\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_sync_instance|pixel_column\(2),
	datab => \camstatemachine_instance|WideOr0~combout\,
	datac => \camstatemachine_instance|WideOr1~combout\,
	datad => \cam_instance|current_column\(2),
	combout => \SRAM_ADDR[2]~4_combout\);

-- Location: LCCOMB_X15_Y14_N26
\SRAM_ADDR[2]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAM_ADDR[2]~5_combout\ = (\camstatemachine_instance|WideOr2~combout\ & (pixel_counter(2))) # (!\camstatemachine_instance|WideOr2~combout\ & ((\SRAM_ADDR[2]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \camstatemachine_instance|WideOr2~combout\,
	datac => pixel_counter(2),
	datad => \SRAM_ADDR[2]~4_combout\,
	combout => \SRAM_ADDR[2]~5_combout\);

-- Location: FF_X20_Y16_N17
\vga_sync_instance|pixel_column[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_camera_clock~clkctrl_outclk\,
	asdata => \vga_sync_instance|h_count\(3),
	sload => VCC,
	ena => \vga_sync_instance|LessThan5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_sync_instance|pixel_column\(3));

-- Location: LCCOMB_X17_Y16_N0
\SRAM_ADDR[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAM_ADDR[3]~6_combout\ = (\camstatemachine_instance|WideOr0~combout\ & (((\vga_sync_instance|pixel_column\(3))))) # (!\camstatemachine_instance|WideOr0~combout\ & (\camstatemachine_instance|WideOr1~combout\ & (\cam_instance|current_column\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camstatemachine_instance|WideOr0~combout\,
	datab => \camstatemachine_instance|WideOr1~combout\,
	datac => \cam_instance|current_column\(3),
	datad => \vga_sync_instance|pixel_column\(3),
	combout => \SRAM_ADDR[3]~6_combout\);

-- Location: LCCOMB_X17_Y16_N18
\SRAM_ADDR[3]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAM_ADDR[3]~7_combout\ = (\camstatemachine_instance|WideOr2~combout\ & ((pixel_counter(3)))) # (!\camstatemachine_instance|WideOr2~combout\ & (\SRAM_ADDR[3]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \camstatemachine_instance|WideOr2~combout\,
	datac => \SRAM_ADDR[3]~6_combout\,
	datad => pixel_counter(3),
	combout => \SRAM_ADDR[3]~7_combout\);

-- Location: FF_X20_Y16_N21
\vga_sync_instance|pixel_column[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_camera_clock~clkctrl_outclk\,
	asdata => \vga_sync_instance|h_count\(4),
	sload => VCC,
	ena => \vga_sync_instance|LessThan5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_sync_instance|pixel_column\(4));

-- Location: LCCOMB_X17_Y16_N28
\SRAM_ADDR[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAM_ADDR[4]~8_combout\ = (\camstatemachine_instance|WideOr0~combout\ & (\vga_sync_instance|pixel_column\(4))) # (!\camstatemachine_instance|WideOr0~combout\ & (((\camstatemachine_instance|WideOr1~combout\ & \cam_instance|current_column\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_sync_instance|pixel_column\(4),
	datab => \camstatemachine_instance|WideOr1~combout\,
	datac => \cam_instance|current_column\(4),
	datad => \camstatemachine_instance|WideOr0~combout\,
	combout => \SRAM_ADDR[4]~8_combout\);

-- Location: LCCOMB_X17_Y16_N30
\SRAM_ADDR[4]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAM_ADDR[4]~9_combout\ = (\camstatemachine_instance|WideOr2~combout\ & ((pixel_counter(4)))) # (!\camstatemachine_instance|WideOr2~combout\ & (\SRAM_ADDR[4]~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRAM_ADDR[4]~8_combout\,
	datac => pixel_counter(4),
	datad => \camstatemachine_instance|WideOr2~combout\,
	combout => \SRAM_ADDR[4]~9_combout\);

-- Location: FF_X20_Y16_N27
\vga_sync_instance|pixel_column[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_camera_clock~clkctrl_outclk\,
	asdata => \vga_sync_instance|h_count\(5),
	sload => VCC,
	ena => \vga_sync_instance|LessThan5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_sync_instance|pixel_column\(5));

-- Location: LCCOMB_X14_Y16_N20
\SRAM_ADDR[5]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAM_ADDR[5]~10_combout\ = (\camstatemachine_instance|WideOr0~combout\ & (((\vga_sync_instance|pixel_column\(5))))) # (!\camstatemachine_instance|WideOr0~combout\ & (\cam_instance|current_column\(5) & ((\camstatemachine_instance|WideOr1~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cam_instance|current_column\(5),
	datab => \vga_sync_instance|pixel_column\(5),
	datac => \camstatemachine_instance|WideOr0~combout\,
	datad => \camstatemachine_instance|WideOr1~combout\,
	combout => \SRAM_ADDR[5]~10_combout\);

-- Location: LCCOMB_X14_Y16_N30
\SRAM_ADDR[5]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAM_ADDR[5]~11_combout\ = (\camstatemachine_instance|WideOr2~combout\ & ((pixel_counter(5)))) # (!\camstatemachine_instance|WideOr2~combout\ & (\SRAM_ADDR[5]~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camstatemachine_instance|WideOr2~combout\,
	datab => \SRAM_ADDR[5]~10_combout\,
	datac => pixel_counter(5),
	combout => \SRAM_ADDR[5]~11_combout\);

-- Location: FF_X20_Y15_N9
\vga_sync_instance|pixel_column[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_camera_clock~clkctrl_outclk\,
	asdata => \vga_sync_instance|h_count\(6),
	sload => VCC,
	ena => \vga_sync_instance|LessThan5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_sync_instance|pixel_column\(6));

-- Location: LCCOMB_X20_Y15_N8
\SRAM_ADDR[6]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAM_ADDR[6]~12_combout\ = (\camstatemachine_instance|WideOr0~combout\ & (((\vga_sync_instance|pixel_column\(6))))) # (!\camstatemachine_instance|WideOr0~combout\ & (\cam_instance|current_column\(6) & (\camstatemachine_instance|WideOr1~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cam_instance|current_column\(6),
	datab => \camstatemachine_instance|WideOr1~combout\,
	datac => \vga_sync_instance|pixel_column\(6),
	datad => \camstatemachine_instance|WideOr0~combout\,
	combout => \SRAM_ADDR[6]~12_combout\);

-- Location: LCCOMB_X20_Y15_N26
\SRAM_ADDR[6]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAM_ADDR[6]~13_combout\ = (\camstatemachine_instance|WideOr2~combout\ & ((pixel_counter(6)))) # (!\camstatemachine_instance|WideOr2~combout\ & (\SRAM_ADDR[6]~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRAM_ADDR[6]~12_combout\,
	datac => \camstatemachine_instance|WideOr2~combout\,
	datad => pixel_counter(6),
	combout => \SRAM_ADDR[6]~13_combout\);

-- Location: LCCOMB_X8_Y14_N4
\Add9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~0_combout\ = (\cam_instance|current_column\(7) & (\cam_instance|current_row\(0) $ (VCC))) # (!\cam_instance|current_column\(7) & (\cam_instance|current_row\(0) & VCC))
-- \Add9~1\ = CARRY((\cam_instance|current_column\(7) & \cam_instance|current_row\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cam_instance|current_column\(7),
	datab => \cam_instance|current_row\(0),
	datad => VCC,
	combout => \Add9~0_combout\,
	cout => \Add9~1\);

-- Location: FF_X20_Y16_N7
\vga_sync_instance|pixel_column[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_camera_clock~clkctrl_outclk\,
	asdata => \vga_sync_instance|h_count\(7),
	sload => VCC,
	ena => \vga_sync_instance|LessThan5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_sync_instance|pixel_column\(7));

-- Location: FF_X19_Y15_N29
\vga_sync_instance|pixel_row[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_camera_clock~clkctrl_outclk\,
	asdata => \vga_sync_instance|v_count\(0),
	sload => VCC,
	ena => \vga_sync_instance|ALT_INV_LessThan6~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_sync_instance|pixel_row\(0));

-- Location: LCCOMB_X20_Y16_N6
\Add6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~0_combout\ = (\vga_sync_instance|pixel_column\(7) & (\vga_sync_instance|pixel_row\(0) $ (VCC))) # (!\vga_sync_instance|pixel_column\(7) & (\vga_sync_instance|pixel_row\(0) & VCC))
-- \Add6~1\ = CARRY((\vga_sync_instance|pixel_column\(7) & \vga_sync_instance|pixel_row\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_sync_instance|pixel_column\(7),
	datab => \vga_sync_instance|pixel_row\(0),
	datad => VCC,
	combout => \Add6~0_combout\,
	cout => \Add6~1\);

-- Location: LCCOMB_X20_Y15_N12
\SRAM_ADDR[7]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAM_ADDR[7]~14_combout\ = (\camstatemachine_instance|WideOr0~combout\ & (((\Add6~0_combout\)))) # (!\camstatemachine_instance|WideOr0~combout\ & (\Add9~0_combout\ & (\camstatemachine_instance|WideOr1~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~0_combout\,
	datab => \camstatemachine_instance|WideOr0~combout\,
	datac => \camstatemachine_instance|WideOr1~combout\,
	datad => \Add6~0_combout\,
	combout => \SRAM_ADDR[7]~14_combout\);

-- Location: LCCOMB_X20_Y15_N14
\SRAM_ADDR[7]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAM_ADDR[7]~15_combout\ = (\camstatemachine_instance|WideOr2~combout\ & ((pixel_counter(7)))) # (!\camstatemachine_instance|WideOr2~combout\ & (\SRAM_ADDR[7]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_ADDR[7]~14_combout\,
	datab => pixel_counter(7),
	datac => \camstatemachine_instance|WideOr2~combout\,
	combout => \SRAM_ADDR[7]~15_combout\);

-- Location: FF_X19_Y15_N3
\vga_sync_instance|pixel_row[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_camera_clock~clkctrl_outclk\,
	asdata => \vga_sync_instance|v_count\(1),
	sload => VCC,
	ena => \vga_sync_instance|ALT_INV_LessThan6~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_sync_instance|pixel_row\(1));

-- Location: FF_X20_Y16_N9
\vga_sync_instance|pixel_column[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_camera_clock~clkctrl_outclk\,
	asdata => \vga_sync_instance|h_count\(8),
	sload => VCC,
	ena => \vga_sync_instance|LessThan5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_sync_instance|pixel_column\(8));

-- Location: LCCOMB_X20_Y16_N8
\Add6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~2_combout\ = (\vga_sync_instance|pixel_row\(1) & ((\vga_sync_instance|pixel_column\(8) & (\Add6~1\ & VCC)) # (!\vga_sync_instance|pixel_column\(8) & (!\Add6~1\)))) # (!\vga_sync_instance|pixel_row\(1) & ((\vga_sync_instance|pixel_column\(8) & 
-- (!\Add6~1\)) # (!\vga_sync_instance|pixel_column\(8) & ((\Add6~1\) # (GND)))))
-- \Add6~3\ = CARRY((\vga_sync_instance|pixel_row\(1) & (!\vga_sync_instance|pixel_column\(8) & !\Add6~1\)) # (!\vga_sync_instance|pixel_row\(1) & ((!\Add6~1\) # (!\vga_sync_instance|pixel_column\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_sync_instance|pixel_row\(1),
	datab => \vga_sync_instance|pixel_column\(8),
	datad => VCC,
	cin => \Add6~1\,
	combout => \Add6~2_combout\,
	cout => \Add6~3\);

-- Location: LCCOMB_X8_Y14_N6
\Add9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~2_combout\ = (\cam_instance|current_column\(8) & ((\cam_instance|current_row\(1) & (\Add9~1\ & VCC)) # (!\cam_instance|current_row\(1) & (!\Add9~1\)))) # (!\cam_instance|current_column\(8) & ((\cam_instance|current_row\(1) & (!\Add9~1\)) # 
-- (!\cam_instance|current_row\(1) & ((\Add9~1\) # (GND)))))
-- \Add9~3\ = CARRY((\cam_instance|current_column\(8) & (!\cam_instance|current_row\(1) & !\Add9~1\)) # (!\cam_instance|current_column\(8) & ((!\Add9~1\) # (!\cam_instance|current_row\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cam_instance|current_column\(8),
	datab => \cam_instance|current_row\(1),
	datad => VCC,
	cin => \Add9~1\,
	combout => \Add9~2_combout\,
	cout => \Add9~3\);

-- Location: LCCOMB_X20_Y15_N0
\SRAM_ADDR[8]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAM_ADDR[8]~16_combout\ = (\camstatemachine_instance|WideOr0~combout\ & (\Add6~2_combout\)) # (!\camstatemachine_instance|WideOr0~combout\ & (((\camstatemachine_instance|WideOr1~combout\ & \Add9~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~2_combout\,
	datab => \camstatemachine_instance|WideOr0~combout\,
	datac => \camstatemachine_instance|WideOr1~combout\,
	datad => \Add9~2_combout\,
	combout => \SRAM_ADDR[8]~16_combout\);

-- Location: LCCOMB_X20_Y15_N10
\SRAM_ADDR[8]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAM_ADDR[8]~17_combout\ = (\camstatemachine_instance|WideOr2~combout\ & (pixel_counter(8))) # (!\camstatemachine_instance|WideOr2~combout\ & ((\SRAM_ADDR[8]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pixel_counter(8),
	datac => \camstatemachine_instance|WideOr2~combout\,
	datad => \SRAM_ADDR[8]~16_combout\,
	combout => \SRAM_ADDR[8]~17_combout\);

-- Location: LCCOMB_X7_Y22_N4
\Add8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~0_combout\ = (\cam_instance|current_row\(2) & (\cam_instance|current_row\(0) $ (VCC))) # (!\cam_instance|current_row\(2) & (\cam_instance|current_row\(0) & VCC))
-- \Add8~1\ = CARRY((\cam_instance|current_row\(2) & \cam_instance|current_row\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cam_instance|current_row\(2),
	datab => \cam_instance|current_row\(0),
	datad => VCC,
	combout => \Add8~0_combout\,
	cout => \Add8~1\);

-- Location: LCCOMB_X8_Y14_N8
\Add9~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~4_combout\ = ((\cam_instance|current_column\(9) $ (\Add8~0_combout\ $ (!\Add9~3\)))) # (GND)
-- \Add9~5\ = CARRY((\cam_instance|current_column\(9) & ((\Add8~0_combout\) # (!\Add9~3\))) # (!\cam_instance|current_column\(9) & (\Add8~0_combout\ & !\Add9~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cam_instance|current_column\(9),
	datab => \Add8~0_combout\,
	datad => VCC,
	cin => \Add9~3\,
	combout => \Add9~4_combout\,
	cout => \Add9~5\);

-- Location: FF_X20_Y16_N11
\vga_sync_instance|pixel_column[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_camera_clock~clkctrl_outclk\,
	asdata => \vga_sync_instance|h_count\(9),
	sload => VCC,
	ena => \vga_sync_instance|LessThan5~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_sync_instance|pixel_column\(9));

-- Location: LCCOMB_X19_Y15_N30
\vga_sync_instance|pixel_row[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_sync_instance|pixel_row[2]~feeder_combout\ = \vga_sync_instance|v_count\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \vga_sync_instance|v_count\(2),
	combout => \vga_sync_instance|pixel_row[2]~feeder_combout\);

-- Location: FF_X19_Y15_N31
\vga_sync_instance|pixel_row[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_camera_clock~clkctrl_outclk\,
	d => \vga_sync_instance|pixel_row[2]~feeder_combout\,
	ena => \vga_sync_instance|ALT_INV_LessThan6~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_sync_instance|pixel_row\(2));

-- Location: LCCOMB_X19_Y16_N4
\Add5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~0_combout\ = (\vga_sync_instance|pixel_row\(2) & (\vga_sync_instance|pixel_row\(0) $ (VCC))) # (!\vga_sync_instance|pixel_row\(2) & (\vga_sync_instance|pixel_row\(0) & VCC))
-- \Add5~1\ = CARRY((\vga_sync_instance|pixel_row\(2) & \vga_sync_instance|pixel_row\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_sync_instance|pixel_row\(2),
	datab => \vga_sync_instance|pixel_row\(0),
	datad => VCC,
	combout => \Add5~0_combout\,
	cout => \Add5~1\);

-- Location: LCCOMB_X20_Y16_N10
\Add6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~4_combout\ = ((\vga_sync_instance|pixel_column\(9) $ (\Add5~0_combout\ $ (!\Add6~3\)))) # (GND)
-- \Add6~5\ = CARRY((\vga_sync_instance|pixel_column\(9) & ((\Add5~0_combout\) # (!\Add6~3\))) # (!\vga_sync_instance|pixel_column\(9) & (\Add5~0_combout\ & !\Add6~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_sync_instance|pixel_column\(9),
	datab => \Add5~0_combout\,
	datad => VCC,
	cin => \Add6~3\,
	combout => \Add6~4_combout\,
	cout => \Add6~5\);

-- Location: LCCOMB_X14_Y16_N16
\SRAM_ADDR[9]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAM_ADDR[9]~19_combout\ = (\Add9~4_combout\ & ((\SRAM_ADDR[19]~18_combout\) # ((\Add6~4_combout\ & \camstatemachine_instance|WideOr0~combout\)))) # (!\Add9~4_combout\ & (\Add6~4_combout\ & (\camstatemachine_instance|WideOr0~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~4_combout\,
	datab => \Add6~4_combout\,
	datac => \camstatemachine_instance|WideOr0~combout\,
	datad => \SRAM_ADDR[19]~18_combout\,
	combout => \SRAM_ADDR[9]~19_combout\);

-- Location: LCCOMB_X14_Y16_N26
\SRAM_ADDR[9]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAM_ADDR[9]~20_combout\ = (\camstatemachine_instance|WideOr2~combout\ & (pixel_counter(9))) # (!\camstatemachine_instance|WideOr2~combout\ & ((\SRAM_ADDR[9]~19_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => pixel_counter(9),
	datac => \camstatemachine_instance|WideOr2~combout\,
	datad => \SRAM_ADDR[9]~19_combout\,
	combout => \SRAM_ADDR[9]~20_combout\);

-- Location: LCCOMB_X7_Y22_N6
\Add8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~2_combout\ = (\cam_instance|current_row\(3) & ((\cam_instance|current_row\(1) & (\Add8~1\ & VCC)) # (!\cam_instance|current_row\(1) & (!\Add8~1\)))) # (!\cam_instance|current_row\(3) & ((\cam_instance|current_row\(1) & (!\Add8~1\)) # 
-- (!\cam_instance|current_row\(1) & ((\Add8~1\) # (GND)))))
-- \Add8~3\ = CARRY((\cam_instance|current_row\(3) & (!\cam_instance|current_row\(1) & !\Add8~1\)) # (!\cam_instance|current_row\(3) & ((!\Add8~1\) # (!\cam_instance|current_row\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cam_instance|current_row\(3),
	datab => \cam_instance|current_row\(1),
	datad => VCC,
	cin => \Add8~1\,
	combout => \Add8~2_combout\,
	cout => \Add8~3\);

-- Location: LCCOMB_X8_Y14_N10
\Add9~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~6_combout\ = (\cam_instance|current_column\(10) & ((\Add8~2_combout\ & (\Add9~5\ & VCC)) # (!\Add8~2_combout\ & (!\Add9~5\)))) # (!\cam_instance|current_column\(10) & ((\Add8~2_combout\ & (!\Add9~5\)) # (!\Add8~2_combout\ & ((\Add9~5\) # (GND)))))
-- \Add9~7\ = CARRY((\cam_instance|current_column\(10) & (!\Add8~2_combout\ & !\Add9~5\)) # (!\cam_instance|current_column\(10) & ((!\Add9~5\) # (!\Add8~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cam_instance|current_column\(10),
	datab => \Add8~2_combout\,
	datad => VCC,
	cin => \Add9~5\,
	combout => \Add9~6_combout\,
	cout => \Add9~7\);

-- Location: LCCOMB_X19_Y15_N0
\vga_sync_instance|pixel_row[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_sync_instance|pixel_row[3]~feeder_combout\ = \vga_sync_instance|v_count\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \vga_sync_instance|v_count\(3),
	combout => \vga_sync_instance|pixel_row[3]~feeder_combout\);

-- Location: FF_X19_Y15_N1
\vga_sync_instance|pixel_row[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_camera_clock~clkctrl_outclk\,
	d => \vga_sync_instance|pixel_row[3]~feeder_combout\,
	ena => \vga_sync_instance|ALT_INV_LessThan6~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_sync_instance|pixel_row\(3));

-- Location: LCCOMB_X19_Y16_N6
\Add5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~2_combout\ = (\vga_sync_instance|pixel_row\(1) & ((\vga_sync_instance|pixel_row\(3) & (\Add5~1\ & VCC)) # (!\vga_sync_instance|pixel_row\(3) & (!\Add5~1\)))) # (!\vga_sync_instance|pixel_row\(1) & ((\vga_sync_instance|pixel_row\(3) & (!\Add5~1\)) # 
-- (!\vga_sync_instance|pixel_row\(3) & ((\Add5~1\) # (GND)))))
-- \Add5~3\ = CARRY((\vga_sync_instance|pixel_row\(1) & (!\vga_sync_instance|pixel_row\(3) & !\Add5~1\)) # (!\vga_sync_instance|pixel_row\(1) & ((!\Add5~1\) # (!\vga_sync_instance|pixel_row\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_sync_instance|pixel_row\(1),
	datab => \vga_sync_instance|pixel_row\(3),
	datad => VCC,
	cin => \Add5~1\,
	combout => \Add5~2_combout\,
	cout => \Add5~3\);

-- Location: LCCOMB_X20_Y16_N12
\Add6~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~6_combout\ = (\Add5~2_combout\ & (!\Add6~5\)) # (!\Add5~2_combout\ & ((\Add6~5\) # (GND)))
-- \Add6~7\ = CARRY((!\Add6~5\) # (!\Add5~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add5~2_combout\,
	datad => VCC,
	cin => \Add6~5\,
	combout => \Add6~6_combout\,
	cout => \Add6~7\);

-- Location: LCCOMB_X14_Y14_N0
\SRAM_ADDR[10]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAM_ADDR[10]~21_combout\ = (\SRAM_ADDR[19]~18_combout\ & ((\Add9~6_combout\) # ((\camstatemachine_instance|WideOr0~combout\ & \Add6~6_combout\)))) # (!\SRAM_ADDR[19]~18_combout\ & (((\camstatemachine_instance|WideOr0~combout\ & \Add6~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_ADDR[19]~18_combout\,
	datab => \Add9~6_combout\,
	datac => \camstatemachine_instance|WideOr0~combout\,
	datad => \Add6~6_combout\,
	combout => \SRAM_ADDR[10]~21_combout\);

-- Location: LCCOMB_X14_Y16_N8
\SRAM_ADDR[10]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAM_ADDR[10]~22_combout\ = (\camstatemachine_instance|WideOr2~combout\ & (pixel_counter(10))) # (!\camstatemachine_instance|WideOr2~combout\ & ((\SRAM_ADDR[10]~21_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \camstatemachine_instance|WideOr2~combout\,
	datac => pixel_counter(10),
	datad => \SRAM_ADDR[10]~21_combout\,
	combout => \SRAM_ADDR[10]~22_combout\);

-- Location: LCCOMB_X7_Y22_N8
\Add8~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~4_combout\ = ((\cam_instance|current_row\(2) $ (\cam_instance|current_row\(4) $ (!\Add8~3\)))) # (GND)
-- \Add8~5\ = CARRY((\cam_instance|current_row\(2) & ((\cam_instance|current_row\(4)) # (!\Add8~3\))) # (!\cam_instance|current_row\(2) & (\cam_instance|current_row\(4) & !\Add8~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cam_instance|current_row\(2),
	datab => \cam_instance|current_row\(4),
	datad => VCC,
	cin => \Add8~3\,
	combout => \Add8~4_combout\,
	cout => \Add8~5\);

-- Location: LCCOMB_X8_Y14_N12
\Add9~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~8_combout\ = ((\Add8~4_combout\ $ (\cam_instance|current_column\(11) $ (!\Add9~7\)))) # (GND)
-- \Add9~9\ = CARRY((\Add8~4_combout\ & ((\cam_instance|current_column\(11)) # (!\Add9~7\))) # (!\Add8~4_combout\ & (\cam_instance|current_column\(11) & !\Add9~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~4_combout\,
	datab => \cam_instance|current_column\(11),
	datad => VCC,
	cin => \Add9~7\,
	combout => \Add9~8_combout\,
	cout => \Add9~9\);

-- Location: FF_X19_Y15_N5
\vga_sync_instance|pixel_row[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_camera_clock~clkctrl_outclk\,
	asdata => \vga_sync_instance|v_count\(4),
	sload => VCC,
	ena => \vga_sync_instance|ALT_INV_LessThan6~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_sync_instance|pixel_row\(4));

-- Location: LCCOMB_X19_Y16_N8
\Add5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~4_combout\ = ((\vga_sync_instance|pixel_row\(2) $ (\vga_sync_instance|pixel_row\(4) $ (!\Add5~3\)))) # (GND)
-- \Add5~5\ = CARRY((\vga_sync_instance|pixel_row\(2) & ((\vga_sync_instance|pixel_row\(4)) # (!\Add5~3\))) # (!\vga_sync_instance|pixel_row\(2) & (\vga_sync_instance|pixel_row\(4) & !\Add5~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_sync_instance|pixel_row\(2),
	datab => \vga_sync_instance|pixel_row\(4),
	datad => VCC,
	cin => \Add5~3\,
	combout => \Add5~4_combout\,
	cout => \Add5~5\);

-- Location: LCCOMB_X20_Y16_N14
\Add6~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~8_combout\ = (\Add5~4_combout\ & (\Add6~7\ $ (GND))) # (!\Add5~4_combout\ & (!\Add6~7\ & VCC))
-- \Add6~9\ = CARRY((\Add5~4_combout\ & !\Add6~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~4_combout\,
	datad => VCC,
	cin => \Add6~7\,
	combout => \Add6~8_combout\,
	cout => \Add6~9\);

-- Location: LCCOMB_X14_Y16_N22
\SRAM_ADDR[11]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAM_ADDR[11]~23_combout\ = (\SRAM_ADDR[19]~18_combout\ & ((\Add9~8_combout\) # ((\camstatemachine_instance|WideOr0~combout\ & \Add6~8_combout\)))) # (!\SRAM_ADDR[19]~18_combout\ & (((\camstatemachine_instance|WideOr0~combout\ & \Add6~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_ADDR[19]~18_combout\,
	datab => \Add9~8_combout\,
	datac => \camstatemachine_instance|WideOr0~combout\,
	datad => \Add6~8_combout\,
	combout => \SRAM_ADDR[11]~23_combout\);

-- Location: LCCOMB_X14_Y16_N12
\SRAM_ADDR[11]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAM_ADDR[11]~24_combout\ = (\camstatemachine_instance|WideOr2~combout\ & (pixel_counter(11))) # (!\camstatemachine_instance|WideOr2~combout\ & ((\SRAM_ADDR[11]~23_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => pixel_counter(11),
	datac => \SRAM_ADDR[11]~23_combout\,
	datad => \camstatemachine_instance|WideOr2~combout\,
	combout => \SRAM_ADDR[11]~24_combout\);

-- Location: LCCOMB_X7_Y22_N10
\Add8~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~6_combout\ = (\cam_instance|current_row\(3) & ((\cam_instance|current_row\(5) & (\Add8~5\ & VCC)) # (!\cam_instance|current_row\(5) & (!\Add8~5\)))) # (!\cam_instance|current_row\(3) & ((\cam_instance|current_row\(5) & (!\Add8~5\)) # 
-- (!\cam_instance|current_row\(5) & ((\Add8~5\) # (GND)))))
-- \Add8~7\ = CARRY((\cam_instance|current_row\(3) & (!\cam_instance|current_row\(5) & !\Add8~5\)) # (!\cam_instance|current_row\(3) & ((!\Add8~5\) # (!\cam_instance|current_row\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cam_instance|current_row\(3),
	datab => \cam_instance|current_row\(5),
	datad => VCC,
	cin => \Add8~5\,
	combout => \Add8~6_combout\,
	cout => \Add8~7\);

-- Location: LCCOMB_X8_Y14_N14
\Add9~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~10_combout\ = (\Add8~6_combout\ & ((\cam_instance|current_column\(12) & (\Add9~9\ & VCC)) # (!\cam_instance|current_column\(12) & (!\Add9~9\)))) # (!\Add8~6_combout\ & ((\cam_instance|current_column\(12) & (!\Add9~9\)) # 
-- (!\cam_instance|current_column\(12) & ((\Add9~9\) # (GND)))))
-- \Add9~11\ = CARRY((\Add8~6_combout\ & (!\cam_instance|current_column\(12) & !\Add9~9\)) # (!\Add8~6_combout\ & ((!\Add9~9\) # (!\cam_instance|current_column\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~6_combout\,
	datab => \cam_instance|current_column\(12),
	datad => VCC,
	cin => \Add9~9\,
	combout => \Add9~10_combout\,
	cout => \Add9~11\);

-- Location: LCCOMB_X19_Y14_N6
\Add10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~0_combout\ = \Add9~10_combout\ $ (VCC)
-- \Add10~1\ = CARRY(\Add9~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add9~10_combout\,
	datad => VCC,
	combout => \Add10~0_combout\,
	cout => \Add10~1\);

-- Location: LCCOMB_X20_Y14_N8
\SRAM_ADDR~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAM_ADDR~26_combout\ = (\camstatemachine_instance|WideOr1~combout\ & ((\SW[0]~input_o\ & (\Add10~0_combout\)) # (!\SW[0]~input_o\ & ((\Add9~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add10~0_combout\,
	datab => \Add9~10_combout\,
	datac => \SW[0]~input_o\,
	datad => \camstatemachine_instance|WideOr1~combout\,
	combout => \SRAM_ADDR~26_combout\);

-- Location: LCCOMB_X17_Y14_N24
\SRAM_ADDR[12]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAM_ADDR[12]~27_combout\ = (\camstatemachine_instance|WideOr2~combout\ & (((\camstatemachine_instance|WideOr0~combout\) # (pixel_counter(12))))) # (!\camstatemachine_instance|WideOr2~combout\ & (\SRAM_ADDR~26_combout\ & 
-- (!\camstatemachine_instance|WideOr0~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_ADDR~26_combout\,
	datab => \camstatemachine_instance|WideOr2~combout\,
	datac => \camstatemachine_instance|WideOr0~combout\,
	datad => pixel_counter(12),
	combout => \SRAM_ADDR[12]~27_combout\);

-- Location: FF_X19_Y15_N11
\vga_sync_instance|pixel_row[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_camera_clock~clkctrl_outclk\,
	asdata => \vga_sync_instance|v_count\(5),
	sload => VCC,
	ena => \vga_sync_instance|ALT_INV_LessThan6~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_sync_instance|pixel_row\(5));

-- Location: LCCOMB_X19_Y16_N10
\Add5~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~6_combout\ = (\vga_sync_instance|pixel_row\(5) & ((\vga_sync_instance|pixel_row\(3) & (\Add5~5\ & VCC)) # (!\vga_sync_instance|pixel_row\(3) & (!\Add5~5\)))) # (!\vga_sync_instance|pixel_row\(5) & ((\vga_sync_instance|pixel_row\(3) & (!\Add5~5\)) # 
-- (!\vga_sync_instance|pixel_row\(3) & ((\Add5~5\) # (GND)))))
-- \Add5~7\ = CARRY((\vga_sync_instance|pixel_row\(5) & (!\vga_sync_instance|pixel_row\(3) & !\Add5~5\)) # (!\vga_sync_instance|pixel_row\(5) & ((!\Add5~5\) # (!\vga_sync_instance|pixel_row\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_sync_instance|pixel_row\(5),
	datab => \vga_sync_instance|pixel_row\(3),
	datad => VCC,
	cin => \Add5~5\,
	combout => \Add5~6_combout\,
	cout => \Add5~7\);

-- Location: LCCOMB_X20_Y16_N16
\Add6~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~10_combout\ = (\Add5~6_combout\ & (!\Add6~9\)) # (!\Add5~6_combout\ & ((\Add6~9\) # (GND)))
-- \Add6~11\ = CARRY((!\Add6~9\) # (!\Add5~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~6_combout\,
	datad => VCC,
	cin => \Add6~9\,
	combout => \Add6~10_combout\,
	cout => \Add6~11\);

-- Location: LCCOMB_X19_Y15_N12
\Add4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~0_combout\ = \Add6~10_combout\ $ (VCC)
-- \Add4~1\ = CARRY(\Add6~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~10_combout\,
	datad => VCC,
	combout => \Add4~0_combout\,
	cout => \Add4~1\);

-- Location: LCCOMB_X19_Y14_N0
\SRAM_ADDR[12]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAM_ADDR[12]~25_combout\ = (\SW[0]~input_o\ & ((\SW[1]~input_o\ & ((\Add6~10_combout\))) # (!\SW[1]~input_o\ & (\Add4~0_combout\)))) # (!\SW[0]~input_o\ & (((\Add6~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~0_combout\,
	datab => \SW[0]~input_o\,
	datac => \Add6~10_combout\,
	datad => \SW[1]~input_o\,
	combout => \SRAM_ADDR[12]~25_combout\);

-- Location: LCCOMB_X17_Y14_N4
\Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~0_combout\ = pixel_counter(12) $ (VCC)
-- \Add0~1\ = CARRY(pixel_counter(12))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => pixel_counter(12),
	datad => VCC,
	combout => \Add0~0_combout\,
	cout => \Add0~1\);

-- Location: LCCOMB_X21_Y14_N0
\SRAM_ADDR~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAM_ADDR~28_combout\ = (\camstatemachine_instance|image_select~combout\ & ((\Add0~0_combout\))) # (!\camstatemachine_instance|image_select~combout\ & (pixel_counter(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111000100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pixel_counter(12),
	datab => \camstatemachine_instance|image_select~combout\,
	datad => \Add0~0_combout\,
	combout => \SRAM_ADDR~28_combout\);

-- Location: LCCOMB_X20_Y15_N28
\SRAM_ADDR[12]~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAM_ADDR[12]~29_combout\ = (\SRAM_ADDR[12]~27_combout\ & (((\SRAM_ADDR~28_combout\)) # (!\camstatemachine_instance|WideOr0~combout\))) # (!\SRAM_ADDR[12]~27_combout\ & (\camstatemachine_instance|WideOr0~combout\ & (\SRAM_ADDR[12]~25_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_ADDR[12]~27_combout\,
	datab => \camstatemachine_instance|WideOr0~combout\,
	datac => \SRAM_ADDR[12]~25_combout\,
	datad => \SRAM_ADDR~28_combout\,
	combout => \SRAM_ADDR[12]~29_combout\);

-- Location: LCCOMB_X15_Y14_N30
\SRAM_ADDR[19]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAM_ADDR[19]~38_combout\ = (\SW[0]~input_o\) # (((\camstatemachine_instance|WideOr0~combout\) # (\camstatemachine_instance|WideOr2~combout\)) # (!\camstatemachine_instance|WideOr1~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datab => \camstatemachine_instance|WideOr1~combout\,
	datac => \camstatemachine_instance|WideOr0~combout\,
	datad => \camstatemachine_instance|WideOr2~combout\,
	combout => \SRAM_ADDR[19]~38_combout\);

-- Location: LCCOMB_X7_Y22_N12
\Add8~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~8_combout\ = ((\cam_instance|current_row\(6) $ (\cam_instance|current_row\(4) $ (!\Add8~7\)))) # (GND)
-- \Add8~9\ = CARRY((\cam_instance|current_row\(6) & ((\cam_instance|current_row\(4)) # (!\Add8~7\))) # (!\cam_instance|current_row\(6) & (\cam_instance|current_row\(4) & !\Add8~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cam_instance|current_row\(6),
	datab => \cam_instance|current_row\(4),
	datad => VCC,
	cin => \Add8~7\,
	combout => \Add8~8_combout\,
	cout => \Add8~9\);

-- Location: LCCOMB_X8_Y14_N16
\Add9~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~12_combout\ = ((\cam_instance|current_column\(13) $ (\Add8~8_combout\ $ (!\Add9~11\)))) # (GND)
-- \Add9~13\ = CARRY((\cam_instance|current_column\(13) & ((\Add8~8_combout\) # (!\Add9~11\))) # (!\cam_instance|current_column\(13) & (\Add8~8_combout\ & !\Add9~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cam_instance|current_column\(13),
	datab => \Add8~8_combout\,
	datad => VCC,
	cin => \Add9~11\,
	combout => \Add9~12_combout\,
	cout => \Add9~13\);

-- Location: LCCOMB_X17_Y14_N30
\SRAM_ADDR[19]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAM_ADDR[19]~30_combout\ = (\camstatemachine_instance|WideOr2~combout\ & ((!\camstatemachine_instance|WideOr0~combout\) # (!\camstatemachine_instance|image_select~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100110001001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camstatemachine_instance|image_select~combout\,
	datab => \camstatemachine_instance|WideOr2~combout\,
	datac => \camstatemachine_instance|WideOr0~combout\,
	combout => \SRAM_ADDR[19]~30_combout\);

-- Location: LCCOMB_X19_Y15_N6
\vga_sync_instance|pixel_row[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_sync_instance|pixel_row[6]~feeder_combout\ = \vga_sync_instance|v_count\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vga_sync_instance|v_count\(6),
	combout => \vga_sync_instance|pixel_row[6]~feeder_combout\);

-- Location: FF_X19_Y15_N7
\vga_sync_instance|pixel_row[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_camera_clock~clkctrl_outclk\,
	d => \vga_sync_instance|pixel_row[6]~feeder_combout\,
	ena => \vga_sync_instance|ALT_INV_LessThan6~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_sync_instance|pixel_row\(6));

-- Location: LCCOMB_X19_Y16_N12
\Add5~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~8_combout\ = ((\vga_sync_instance|pixel_row\(6) $ (\vga_sync_instance|pixel_row\(4) $ (!\Add5~7\)))) # (GND)
-- \Add5~9\ = CARRY((\vga_sync_instance|pixel_row\(6) & ((\vga_sync_instance|pixel_row\(4)) # (!\Add5~7\))) # (!\vga_sync_instance|pixel_row\(6) & (\vga_sync_instance|pixel_row\(4) & !\Add5~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_sync_instance|pixel_row\(6),
	datab => \vga_sync_instance|pixel_row\(4),
	datad => VCC,
	cin => \Add5~7\,
	combout => \Add5~8_combout\,
	cout => \Add5~9\);

-- Location: LCCOMB_X20_Y16_N18
\Add6~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~12_combout\ = (\Add5~8_combout\ & (\Add6~11\ $ (GND))) # (!\Add5~8_combout\ & (!\Add6~11\ & VCC))
-- \Add6~13\ = CARRY((\Add5~8_combout\ & !\Add6~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add5~8_combout\,
	datad => VCC,
	cin => \Add6~11\,
	combout => \Add6~12_combout\,
	cout => \Add6~13\);

-- Location: LCCOMB_X19_Y15_N14
\Add4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~2_combout\ = (\Add6~12_combout\ & (\Add4~1\ & VCC)) # (!\Add6~12_combout\ & (!\Add4~1\))
-- \Add4~3\ = CARRY((!\Add6~12_combout\ & !\Add4~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add6~12_combout\,
	datad => VCC,
	cin => \Add4~1\,
	combout => \Add4~2_combout\,
	cout => \Add4~3\);

-- Location: LCCOMB_X20_Y14_N18
\Add7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~0_combout\ = \Add6~12_combout\ $ (VCC)
-- \Add7~1\ = CARRY(\Add6~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add6~12_combout\,
	datad => VCC,
	combout => \Add7~0_combout\,
	cout => \Add7~1\);

-- Location: LCCOMB_X19_Y14_N22
\SRAM_ADDR[19]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAM_ADDR[19]~31_combout\ = (\SW[0]~input_o\ & \camstatemachine_instance|WideOr0~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SW[0]~input_o\,
	datac => \camstatemachine_instance|WideOr0~combout\,
	combout => \SRAM_ADDR[19]~31_combout\);

-- Location: LCCOMB_X19_Y14_N8
\Add10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~2_combout\ = (\Add9~12_combout\ & (\Add10~1\ & VCC)) # (!\Add9~12_combout\ & (!\Add10~1\))
-- \Add10~3\ = CARRY((!\Add9~12_combout\ & !\Add10~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~12_combout\,
	datad => VCC,
	cin => \Add10~1\,
	combout => \Add10~2_combout\,
	cout => \Add10~3\);

-- Location: LCCOMB_X15_Y14_N24
\SRAM_ADDR[19]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAM_ADDR[19]~32_combout\ = (\camstatemachine_instance|WideOr0~combout\ & (!\SW[0]~input_o\)) # (!\camstatemachine_instance|WideOr0~combout\ & ((\camstatemachine_instance|WideOr1~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[0]~input_o\,
	datac => \camstatemachine_instance|WideOr1~combout\,
	datad => \camstatemachine_instance|WideOr0~combout\,
	combout => \SRAM_ADDR[19]~32_combout\);

-- Location: LCCOMB_X19_Y14_N24
\SRAM_ADDR[19]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAM_ADDR[19]~33_combout\ = (\camstatemachine_instance|WideOr0~combout\ & ((!\SW[1]~input_o\) # (!\SW[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camstatemachine_instance|WideOr0~combout\,
	datac => \SW[0]~input_o\,
	datad => \SW[1]~input_o\,
	combout => \SRAM_ADDR[19]~33_combout\);

-- Location: LCCOMB_X20_Y14_N6
\SRAM_ADDR[13]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAM_ADDR[13]~34_combout\ = (\SRAM_ADDR[19]~32_combout\ & ((\SRAM_ADDR[19]~33_combout\ & ((\Add6~12_combout\))) # (!\SRAM_ADDR[19]~33_combout\ & (\Add10~2_combout\)))) # (!\SRAM_ADDR[19]~32_combout\ & (((\SRAM_ADDR[19]~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add10~2_combout\,
	datab => \SRAM_ADDR[19]~32_combout\,
	datac => \Add6~12_combout\,
	datad => \SRAM_ADDR[19]~33_combout\,
	combout => \SRAM_ADDR[13]~34_combout\);

-- Location: LCCOMB_X19_Y14_N2
\SRAM_ADDR[13]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAM_ADDR[13]~35_combout\ = (\SRAM_ADDR[19]~31_combout\ & ((\SRAM_ADDR[13]~34_combout\ & (\Add4~2_combout\)) # (!\SRAM_ADDR[13]~34_combout\ & ((\Add7~0_combout\))))) # (!\SRAM_ADDR[19]~31_combout\ & (((\SRAM_ADDR[13]~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~2_combout\,
	datab => \Add7~0_combout\,
	datac => \SRAM_ADDR[19]~31_combout\,
	datad => \SRAM_ADDR[13]~34_combout\,
	combout => \SRAM_ADDR[13]~35_combout\);

-- Location: LCCOMB_X17_Y15_N0
\fpixel[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fpixel[0]~0_combout\ = (\camstatemachine_instance|WideOr0~combout\ & ((\camstatemachine_instance|current_state.read_foreground_pixel~q\) # ((\camstatemachine_instance|current_state.read_background_pixel~2_combout\) # 
-- (\camstatemachine_instance|current_state.write_processed_pixel~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camstatemachine_instance|current_state.read_foreground_pixel~q\,
	datab => \camstatemachine_instance|WideOr0~combout\,
	datac => \camstatemachine_instance|current_state.read_background_pixel~2_combout\,
	datad => \camstatemachine_instance|current_state.write_processed_pixel~q\,
	combout => \fpixel[0]~0_combout\);

-- Location: LCCOMB_X17_Y14_N6
\Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~2_combout\ = (pixel_counter(13) & (\Add0~1\ & VCC)) # (!pixel_counter(13) & (!\Add0~1\))
-- \Add0~3\ = CARRY((!pixel_counter(13) & !\Add0~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => pixel_counter(13),
	datad => VCC,
	cin => \Add0~1\,
	combout => \Add0~2_combout\,
	cout => \Add0~3\);

-- Location: LCCOMB_X16_Y14_N0
\SRAM_ADDR[13]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAM_ADDR[13]~36_combout\ = (\SRAM_ADDR[19]~30_combout\ & (((\fpixel[0]~0_combout\)))) # (!\SRAM_ADDR[19]~30_combout\ & ((\fpixel[0]~0_combout\ & ((\Add0~2_combout\))) # (!\fpixel[0]~0_combout\ & (\SRAM_ADDR[13]~35_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_ADDR[19]~30_combout\,
	datab => \SRAM_ADDR[13]~35_combout\,
	datac => \fpixel[0]~0_combout\,
	datad => \Add0~2_combout\,
	combout => \SRAM_ADDR[13]~36_combout\);

-- Location: LCCOMB_X16_Y14_N2
\Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = pixel_counter(13) $ (VCC)
-- \Add2~1\ = CARRY(pixel_counter(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pixel_counter(13),
	datad => VCC,
	combout => \Add2~0_combout\,
	cout => \Add2~1\);

-- Location: LCCOMB_X16_Y14_N28
\SRAM_ADDR[13]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAM_ADDR[13]~37_combout\ = (\SRAM_ADDR[19]~30_combout\ & ((\SRAM_ADDR[13]~36_combout\ & (pixel_counter(13))) # (!\SRAM_ADDR[13]~36_combout\ & ((\Add2~0_combout\))))) # (!\SRAM_ADDR[19]~30_combout\ & (\SRAM_ADDR[13]~36_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_ADDR[19]~30_combout\,
	datab => \SRAM_ADDR[13]~36_combout\,
	datac => pixel_counter(13),
	datad => \Add2~0_combout\,
	combout => \SRAM_ADDR[13]~37_combout\);

-- Location: LCCOMB_X15_Y14_N12
\SRAM_ADDR[13]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAM_ADDR[13]~39_combout\ = (\SRAM_ADDR[19]~38_combout\ & ((\SRAM_ADDR[13]~37_combout\))) # (!\SRAM_ADDR[19]~38_combout\ & (\Add9~12_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_ADDR[19]~38_combout\,
	datac => \Add9~12_combout\,
	datad => \SRAM_ADDR[13]~37_combout\,
	combout => \SRAM_ADDR[13]~39_combout\);

-- Location: LCCOMB_X7_Y22_N14
\Add8~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~10_combout\ = (\cam_instance|current_row\(7) & ((\cam_instance|current_row\(5) & (\Add8~9\ & VCC)) # (!\cam_instance|current_row\(5) & (!\Add8~9\)))) # (!\cam_instance|current_row\(7) & ((\cam_instance|current_row\(5) & (!\Add8~9\)) # 
-- (!\cam_instance|current_row\(5) & ((\Add8~9\) # (GND)))))
-- \Add8~11\ = CARRY((\cam_instance|current_row\(7) & (!\cam_instance|current_row\(5) & !\Add8~9\)) # (!\cam_instance|current_row\(7) & ((!\Add8~9\) # (!\cam_instance|current_row\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cam_instance|current_row\(7),
	datab => \cam_instance|current_row\(5),
	datad => VCC,
	cin => \Add8~9\,
	combout => \Add8~10_combout\,
	cout => \Add8~11\);

-- Location: LCCOMB_X8_Y14_N18
\Add9~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~14_combout\ = (\Add8~10_combout\ & ((\cam_instance|current_column\(14) & (\Add9~13\ & VCC)) # (!\cam_instance|current_column\(14) & (!\Add9~13\)))) # (!\Add8~10_combout\ & ((\cam_instance|current_column\(14) & (!\Add9~13\)) # 
-- (!\cam_instance|current_column\(14) & ((\Add9~13\) # (GND)))))
-- \Add9~15\ = CARRY((\Add8~10_combout\ & (!\cam_instance|current_column\(14) & !\Add9~13\)) # (!\Add8~10_combout\ & ((!\Add9~13\) # (!\cam_instance|current_column\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~10_combout\,
	datab => \cam_instance|current_column\(14),
	datad => VCC,
	cin => \Add9~13\,
	combout => \Add9~14_combout\,
	cout => \Add9~15\);

-- Location: LCCOMB_X16_Y14_N4
\Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~2_combout\ = (pixel_counter(14) & (\Add2~1\ & VCC)) # (!pixel_counter(14) & (!\Add2~1\))
-- \Add2~3\ = CARRY((!pixel_counter(14) & !\Add2~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => pixel_counter(14),
	datad => VCC,
	cin => \Add2~1\,
	combout => \Add2~2_combout\,
	cout => \Add2~3\);

-- Location: FF_X19_Y15_N23
\vga_sync_instance|pixel_row[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_camera_clock~clkctrl_outclk\,
	asdata => \vga_sync_instance|v_count\(7),
	sload => VCC,
	ena => \vga_sync_instance|ALT_INV_LessThan6~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_sync_instance|pixel_row\(7));

-- Location: LCCOMB_X19_Y16_N14
\Add5~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~10_combout\ = (\vga_sync_instance|pixel_row\(5) & ((\vga_sync_instance|pixel_row\(7) & (\Add5~9\ & VCC)) # (!\vga_sync_instance|pixel_row\(7) & (!\Add5~9\)))) # (!\vga_sync_instance|pixel_row\(5) & ((\vga_sync_instance|pixel_row\(7) & (!\Add5~9\)) # 
-- (!\vga_sync_instance|pixel_row\(7) & ((\Add5~9\) # (GND)))))
-- \Add5~11\ = CARRY((\vga_sync_instance|pixel_row\(5) & (!\vga_sync_instance|pixel_row\(7) & !\Add5~9\)) # (!\vga_sync_instance|pixel_row\(5) & ((!\Add5~9\) # (!\vga_sync_instance|pixel_row\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_sync_instance|pixel_row\(5),
	datab => \vga_sync_instance|pixel_row\(7),
	datad => VCC,
	cin => \Add5~9\,
	combout => \Add5~10_combout\,
	cout => \Add5~11\);

-- Location: LCCOMB_X20_Y16_N20
\Add6~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~14_combout\ = (\Add5~10_combout\ & (!\Add6~13\)) # (!\Add5~10_combout\ & ((\Add6~13\) # (GND)))
-- \Add6~15\ = CARRY((!\Add6~13\) # (!\Add5~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~10_combout\,
	datad => VCC,
	cin => \Add6~13\,
	combout => \Add6~14_combout\,
	cout => \Add6~15\);

-- Location: LCCOMB_X19_Y15_N16
\Add4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~4_combout\ = (\Add6~14_combout\ & (\Add4~3\ $ (GND))) # (!\Add6~14_combout\ & (!\Add4~3\ & VCC))
-- \Add4~5\ = CARRY((\Add6~14_combout\ & !\Add4~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add6~14_combout\,
	datad => VCC,
	cin => \Add4~3\,
	combout => \Add4~4_combout\,
	cout => \Add4~5\);

-- Location: LCCOMB_X20_Y14_N20
\Add7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~2_combout\ = (\Add6~14_combout\ & (\Add7~1\ & VCC)) # (!\Add6~14_combout\ & (!\Add7~1\))
-- \Add7~3\ = CARRY((!\Add6~14_combout\ & !\Add7~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~14_combout\,
	datad => VCC,
	cin => \Add7~1\,
	combout => \Add7~2_combout\,
	cout => \Add7~3\);

-- Location: LCCOMB_X19_Y14_N10
\Add10~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~4_combout\ = (\Add9~14_combout\ & (\Add10~3\ $ (GND))) # (!\Add9~14_combout\ & (!\Add10~3\ & VCC))
-- \Add10~5\ = CARRY((\Add9~14_combout\ & !\Add10~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add9~14_combout\,
	datad => VCC,
	cin => \Add10~3\,
	combout => \Add10~4_combout\,
	cout => \Add10~5\);

-- Location: LCCOMB_X20_Y14_N16
\SRAM_ADDR[14]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAM_ADDR[14]~40_combout\ = (\SRAM_ADDR[19]~32_combout\ & ((\SRAM_ADDR[19]~33_combout\ & ((\Add6~14_combout\))) # (!\SRAM_ADDR[19]~33_combout\ & (\Add10~4_combout\)))) # (!\SRAM_ADDR[19]~32_combout\ & (((\SRAM_ADDR[19]~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add10~4_combout\,
	datab => \SRAM_ADDR[19]~32_combout\,
	datac => \Add6~14_combout\,
	datad => \SRAM_ADDR[19]~33_combout\,
	combout => \SRAM_ADDR[14]~40_combout\);

-- Location: LCCOMB_X19_Y14_N4
\SRAM_ADDR[14]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAM_ADDR[14]~41_combout\ = (\SRAM_ADDR[19]~31_combout\ & ((\SRAM_ADDR[14]~40_combout\ & (\Add4~4_combout\)) # (!\SRAM_ADDR[14]~40_combout\ & ((\Add7~2_combout\))))) # (!\SRAM_ADDR[19]~31_combout\ & (((\SRAM_ADDR[14]~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_ADDR[19]~31_combout\,
	datab => \Add4~4_combout\,
	datac => \Add7~2_combout\,
	datad => \SRAM_ADDR[14]~40_combout\,
	combout => \SRAM_ADDR[14]~41_combout\);

-- Location: LCCOMB_X16_Y14_N26
\SRAM_ADDR[14]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAM_ADDR[14]~42_combout\ = (\SRAM_ADDR[19]~30_combout\ & ((\Add2~2_combout\) # ((\fpixel[0]~0_combout\)))) # (!\SRAM_ADDR[19]~30_combout\ & (((!\fpixel[0]~0_combout\ & \SRAM_ADDR[14]~41_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_ADDR[19]~30_combout\,
	datab => \Add2~2_combout\,
	datac => \fpixel[0]~0_combout\,
	datad => \SRAM_ADDR[14]~41_combout\,
	combout => \SRAM_ADDR[14]~42_combout\);

-- Location: LCCOMB_X17_Y14_N8
\Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (pixel_counter(14) & (\Add0~3\ $ (GND))) # (!pixel_counter(14) & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((pixel_counter(14) & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => pixel_counter(14),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X17_Y14_N28
\SRAM_ADDR[14]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAM_ADDR[14]~43_combout\ = (\SRAM_ADDR[14]~42_combout\ & (((pixel_counter(14)) # (!\fpixel[0]~0_combout\)))) # (!\SRAM_ADDR[14]~42_combout\ & (\Add0~4_combout\ & (\fpixel[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110101001001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_ADDR[14]~42_combout\,
	datab => \Add0~4_combout\,
	datac => \fpixel[0]~0_combout\,
	datad => pixel_counter(14),
	combout => \SRAM_ADDR[14]~43_combout\);

-- Location: LCCOMB_X15_Y14_N6
\SRAM_ADDR[14]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAM_ADDR[14]~44_combout\ = (\SRAM_ADDR[19]~38_combout\ & ((\SRAM_ADDR[14]~43_combout\))) # (!\SRAM_ADDR[19]~38_combout\ & (\Add9~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_ADDR[19]~38_combout\,
	datab => \Add9~14_combout\,
	datad => \SRAM_ADDR[14]~43_combout\,
	combout => \SRAM_ADDR[14]~44_combout\);

-- Location: LCCOMB_X16_Y14_N6
\Add2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~4_combout\ = (pixel_counter(15) & (\Add2~3\ $ (GND))) # (!pixel_counter(15) & (!\Add2~3\ & VCC))
-- \Add2~5\ = CARRY((pixel_counter(15) & !\Add2~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => pixel_counter(15),
	datad => VCC,
	cin => \Add2~3\,
	combout => \Add2~4_combout\,
	cout => \Add2~5\);

-- Location: LCCOMB_X17_Y14_N10
\Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (pixel_counter(15) & (\Add0~5\ & VCC)) # (!pixel_counter(15) & (!\Add0~5\))
-- \Add0~7\ = CARRY((!pixel_counter(15) & !\Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => pixel_counter(15),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X7_Y22_N16
\Add8~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~12_combout\ = ((\cam_instance|current_row\(6) $ (\cam_instance|current_row\(8) $ (!\Add8~11\)))) # (GND)
-- \Add8~13\ = CARRY((\cam_instance|current_row\(6) & ((\cam_instance|current_row\(8)) # (!\Add8~11\))) # (!\cam_instance|current_row\(6) & (\cam_instance|current_row\(8) & !\Add8~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cam_instance|current_row\(6),
	datab => \cam_instance|current_row\(8),
	datad => VCC,
	cin => \Add8~11\,
	combout => \Add8~12_combout\,
	cout => \Add8~13\);

-- Location: LCCOMB_X8_Y14_N20
\Add9~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~16_combout\ = ((\cam_instance|current_column\(15) $ (\Add8~12_combout\ $ (!\Add9~15\)))) # (GND)
-- \Add9~17\ = CARRY((\cam_instance|current_column\(15) & ((\Add8~12_combout\) # (!\Add9~15\))) # (!\cam_instance|current_column\(15) & (\Add8~12_combout\ & !\Add9~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cam_instance|current_column\(15),
	datab => \Add8~12_combout\,
	datad => VCC,
	cin => \Add9~15\,
	combout => \Add9~16_combout\,
	cout => \Add9~17\);

-- Location: LCCOMB_X19_Y14_N12
\Add10~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~6_combout\ = (\Add9~16_combout\ & (\Add10~5\ & VCC)) # (!\Add9~16_combout\ & (!\Add10~5\))
-- \Add10~7\ = CARRY((!\Add9~16_combout\ & !\Add10~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add9~16_combout\,
	datad => VCC,
	cin => \Add10~5\,
	combout => \Add10~6_combout\,
	cout => \Add10~7\);

-- Location: FF_X19_Y15_N25
\vga_sync_instance|pixel_row[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_camera_clock~clkctrl_outclk\,
	asdata => \vga_sync_instance|v_count\(8),
	sload => VCC,
	ena => \vga_sync_instance|ALT_INV_LessThan6~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_sync_instance|pixel_row\(8));

-- Location: LCCOMB_X19_Y16_N16
\Add5~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~12_combout\ = ((\vga_sync_instance|pixel_row\(6) $ (\vga_sync_instance|pixel_row\(8) $ (!\Add5~11\)))) # (GND)
-- \Add5~13\ = CARRY((\vga_sync_instance|pixel_row\(6) & ((\vga_sync_instance|pixel_row\(8)) # (!\Add5~11\))) # (!\vga_sync_instance|pixel_row\(6) & (\vga_sync_instance|pixel_row\(8) & !\Add5~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_sync_instance|pixel_row\(6),
	datab => \vga_sync_instance|pixel_row\(8),
	datad => VCC,
	cin => \Add5~11\,
	combout => \Add5~12_combout\,
	cout => \Add5~13\);

-- Location: LCCOMB_X20_Y16_N22
\Add6~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~16_combout\ = (\Add5~12_combout\ & (\Add6~15\ $ (GND))) # (!\Add5~12_combout\ & (!\Add6~15\ & VCC))
-- \Add6~17\ = CARRY((\Add5~12_combout\ & !\Add6~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~12_combout\,
	datad => VCC,
	cin => \Add6~15\,
	combout => \Add6~16_combout\,
	cout => \Add6~17\);

-- Location: LCCOMB_X19_Y14_N30
\SRAM_ADDR[15]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAM_ADDR[15]~45_combout\ = (\SRAM_ADDR[19]~33_combout\ & (((\Add6~16_combout\) # (!\SRAM_ADDR[19]~32_combout\)))) # (!\SRAM_ADDR[19]~33_combout\ & (\Add10~6_combout\ & (\SRAM_ADDR[19]~32_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add10~6_combout\,
	datab => \SRAM_ADDR[19]~33_combout\,
	datac => \SRAM_ADDR[19]~32_combout\,
	datad => \Add6~16_combout\,
	combout => \SRAM_ADDR[15]~45_combout\);

-- Location: LCCOMB_X19_Y15_N18
\Add4~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~6_combout\ = (\Add6~16_combout\ & (\Add4~5\ & VCC)) # (!\Add6~16_combout\ & (!\Add4~5\))
-- \Add4~7\ = CARRY((!\Add6~16_combout\ & !\Add4~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add6~16_combout\,
	datad => VCC,
	cin => \Add4~5\,
	combout => \Add4~6_combout\,
	cout => \Add4~7\);

-- Location: LCCOMB_X20_Y14_N22
\Add7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~4_combout\ = (\Add6~16_combout\ & (\Add7~3\ $ (GND))) # (!\Add6~16_combout\ & (!\Add7~3\ & VCC))
-- \Add7~5\ = CARRY((\Add6~16_combout\ & !\Add7~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~16_combout\,
	datad => VCC,
	cin => \Add7~3\,
	combout => \Add7~4_combout\,
	cout => \Add7~5\);

-- Location: LCCOMB_X19_Y14_N28
\SRAM_ADDR[15]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAM_ADDR[15]~46_combout\ = (\SRAM_ADDR[19]~31_combout\ & ((\SRAM_ADDR[15]~45_combout\ & (\Add4~6_combout\)) # (!\SRAM_ADDR[15]~45_combout\ & ((\Add7~4_combout\))))) # (!\SRAM_ADDR[19]~31_combout\ & (\SRAM_ADDR[15]~45_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_ADDR[19]~31_combout\,
	datab => \SRAM_ADDR[15]~45_combout\,
	datac => \Add4~6_combout\,
	datad => \Add7~4_combout\,
	combout => \SRAM_ADDR[15]~46_combout\);

-- Location: LCCOMB_X16_Y14_N24
\SRAM_ADDR[15]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAM_ADDR[15]~47_combout\ = (\SRAM_ADDR[19]~30_combout\ & (((\fpixel[0]~0_combout\)))) # (!\SRAM_ADDR[19]~30_combout\ & ((\fpixel[0]~0_combout\ & (\Add0~6_combout\)) # (!\fpixel[0]~0_combout\ & ((\SRAM_ADDR[15]~46_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_ADDR[19]~30_combout\,
	datab => \Add0~6_combout\,
	datac => \fpixel[0]~0_combout\,
	datad => \SRAM_ADDR[15]~46_combout\,
	combout => \SRAM_ADDR[15]~47_combout\);

-- Location: LCCOMB_X16_Y14_N30
\SRAM_ADDR[15]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAM_ADDR[15]~48_combout\ = (\SRAM_ADDR[15]~47_combout\ & (((pixel_counter(15)) # (!\SRAM_ADDR[19]~30_combout\)))) # (!\SRAM_ADDR[15]~47_combout\ & (\Add2~4_combout\ & (\SRAM_ADDR[19]~30_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110000101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~4_combout\,
	datab => \SRAM_ADDR[15]~47_combout\,
	datac => \SRAM_ADDR[19]~30_combout\,
	datad => pixel_counter(15),
	combout => \SRAM_ADDR[15]~48_combout\);

-- Location: LCCOMB_X15_Y14_N8
\SRAM_ADDR[15]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAM_ADDR[15]~49_combout\ = (\SRAM_ADDR[19]~38_combout\ & (\SRAM_ADDR[15]~48_combout\)) # (!\SRAM_ADDR[19]~38_combout\ & ((\Add9~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_ADDR[19]~38_combout\,
	datac => \SRAM_ADDR[15]~48_combout\,
	datad => \Add9~16_combout\,
	combout => \SRAM_ADDR[15]~49_combout\);

-- Location: LCCOMB_X16_Y14_N8
\Add2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~6_combout\ = (pixel_counter(16) & (\Add2~5\ & VCC)) # (!pixel_counter(16) & (!\Add2~5\))
-- \Add2~7\ = CARRY((!pixel_counter(16) & !\Add2~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => pixel_counter(16),
	datad => VCC,
	cin => \Add2~5\,
	combout => \Add2~6_combout\,
	cout => \Add2~7\);

-- Location: LCCOMB_X7_Y22_N18
\Add8~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~14_combout\ = (\cam_instance|current_row\(7) & ((\cam_instance|current_row\(9) & (\Add8~13\ & VCC)) # (!\cam_instance|current_row\(9) & (!\Add8~13\)))) # (!\cam_instance|current_row\(7) & ((\cam_instance|current_row\(9) & (!\Add8~13\)) # 
-- (!\cam_instance|current_row\(9) & ((\Add8~13\) # (GND)))))
-- \Add8~15\ = CARRY((\cam_instance|current_row\(7) & (!\cam_instance|current_row\(9) & !\Add8~13\)) # (!\cam_instance|current_row\(7) & ((!\Add8~13\) # (!\cam_instance|current_row\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cam_instance|current_row\(7),
	datab => \cam_instance|current_row\(9),
	datad => VCC,
	cin => \Add8~13\,
	combout => \Add8~14_combout\,
	cout => \Add8~15\);

-- Location: LCCOMB_X8_Y12_N12
\cam_instance|current_column[16]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \cam_instance|current_column[16]~50_combout\ = (\cam_instance|current_column\(16) & (!\cam_instance|current_column[15]~49\)) # (!\cam_instance|current_column\(16) & ((\cam_instance|current_column[15]~49\) # (GND)))
-- \cam_instance|current_column[16]~51\ = CARRY((!\cam_instance|current_column[15]~49\) # (!\cam_instance|current_column\(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cam_instance|current_column\(16),
	datad => VCC,
	cin => \cam_instance|current_column[15]~49\,
	combout => \cam_instance|current_column[16]~50_combout\,
	cout => \cam_instance|current_column[16]~51\);

-- Location: FF_X8_Y12_N13
\cam_instance|current_column[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GPIO[11]~inputclkctrl_outclk\,
	d => \cam_instance|current_column[16]~50_combout\,
	clrn => \GPIO[8]~inputclkctrl_outclk\,
	ena => \cam_instance|ALT_INV_second_byte~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cam_instance|current_column\(16));

-- Location: LCCOMB_X8_Y14_N22
\Add9~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~18_combout\ = (\Add8~14_combout\ & ((\cam_instance|current_column\(16) & (\Add9~17\ & VCC)) # (!\cam_instance|current_column\(16) & (!\Add9~17\)))) # (!\Add8~14_combout\ & ((\cam_instance|current_column\(16) & (!\Add9~17\)) # 
-- (!\cam_instance|current_column\(16) & ((\Add9~17\) # (GND)))))
-- \Add9~19\ = CARRY((\Add8~14_combout\ & (!\cam_instance|current_column\(16) & !\Add9~17\)) # (!\Add8~14_combout\ & ((!\Add9~17\) # (!\cam_instance|current_column\(16)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~14_combout\,
	datab => \cam_instance|current_column\(16),
	datad => VCC,
	cin => \Add9~17\,
	combout => \Add9~18_combout\,
	cout => \Add9~19\);

-- Location: LCCOMB_X19_Y14_N14
\Add10~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~8_combout\ = (\Add9~18_combout\ & (\Add10~7\ $ (GND))) # (!\Add9~18_combout\ & (!\Add10~7\ & VCC))
-- \Add10~9\ = CARRY((\Add9~18_combout\ & !\Add10~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add9~18_combout\,
	datad => VCC,
	cin => \Add10~7\,
	combout => \Add10~8_combout\,
	cout => \Add10~9\);

-- Location: LCCOMB_X19_Y16_N18
\Add5~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~14_combout\ = (\vga_sync_instance|pixel_row\(7) & (!\Add5~13\)) # (!\vga_sync_instance|pixel_row\(7) & ((\Add5~13\) # (GND)))
-- \Add5~15\ = CARRY((!\Add5~13\) # (!\vga_sync_instance|pixel_row\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga_sync_instance|pixel_row\(7),
	datad => VCC,
	cin => \Add5~13\,
	combout => \Add5~14_combout\,
	cout => \Add5~15\);

-- Location: LCCOMB_X20_Y16_N24
\Add6~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~18_combout\ = (\Add5~14_combout\ & (!\Add6~17\)) # (!\Add5~14_combout\ & ((\Add6~17\) # (GND)))
-- \Add6~19\ = CARRY((!\Add6~17\) # (!\Add5~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add5~14_combout\,
	datad => VCC,
	cin => \Add6~17\,
	combout => \Add6~18_combout\,
	cout => \Add6~19\);

-- Location: LCCOMB_X19_Y14_N26
\SRAM_ADDR[16]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAM_ADDR[16]~50_combout\ = (\SRAM_ADDR[19]~32_combout\ & ((\SRAM_ADDR[19]~33_combout\ & ((\Add6~18_combout\))) # (!\SRAM_ADDR[19]~33_combout\ & (\Add10~8_combout\)))) # (!\SRAM_ADDR[19]~32_combout\ & (\SRAM_ADDR[19]~33_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110001100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_ADDR[19]~32_combout\,
	datab => \SRAM_ADDR[19]~33_combout\,
	datac => \Add10~8_combout\,
	datad => \Add6~18_combout\,
	combout => \SRAM_ADDR[16]~50_combout\);

-- Location: LCCOMB_X20_Y14_N24
\Add7~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~6_combout\ = (\Add6~18_combout\ & (\Add7~5\ & VCC)) # (!\Add6~18_combout\ & (!\Add7~5\))
-- \Add7~7\ = CARRY((!\Add6~18_combout\ & !\Add7~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add6~18_combout\,
	datad => VCC,
	cin => \Add7~5\,
	combout => \Add7~6_combout\,
	cout => \Add7~7\);

-- Location: LCCOMB_X19_Y15_N20
\Add4~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~8_combout\ = (\Add6~18_combout\ & (\Add4~7\ $ (GND))) # (!\Add6~18_combout\ & (!\Add4~7\ & VCC))
-- \Add4~9\ = CARRY((\Add6~18_combout\ & !\Add4~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add6~18_combout\,
	datad => VCC,
	cin => \Add4~7\,
	combout => \Add4~8_combout\,
	cout => \Add4~9\);

-- Location: LCCOMB_X20_Y14_N10
\SRAM_ADDR[16]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAM_ADDR[16]~51_combout\ = (\SRAM_ADDR[16]~50_combout\ & (((\Add4~8_combout\) # (!\SRAM_ADDR[19]~31_combout\)))) # (!\SRAM_ADDR[16]~50_combout\ & (\Add7~6_combout\ & ((\SRAM_ADDR[19]~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_ADDR[16]~50_combout\,
	datab => \Add7~6_combout\,
	datac => \Add4~8_combout\,
	datad => \SRAM_ADDR[19]~31_combout\,
	combout => \SRAM_ADDR[16]~51_combout\);

-- Location: LCCOMB_X16_Y14_N20
\SRAM_ADDR[16]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAM_ADDR[16]~52_combout\ = (\SRAM_ADDR[19]~30_combout\ & ((\Add2~6_combout\) # ((\fpixel[0]~0_combout\)))) # (!\SRAM_ADDR[19]~30_combout\ & (((!\fpixel[0]~0_combout\ & \SRAM_ADDR[16]~51_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_ADDR[19]~30_combout\,
	datab => \Add2~6_combout\,
	datac => \fpixel[0]~0_combout\,
	datad => \SRAM_ADDR[16]~51_combout\,
	combout => \SRAM_ADDR[16]~52_combout\);

-- Location: LCCOMB_X17_Y14_N12
\Add0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~8_combout\ = (pixel_counter(16) & (\Add0~7\ $ (GND))) # (!pixel_counter(16) & (!\Add0~7\ & VCC))
-- \Add0~9\ = CARRY((pixel_counter(16) & !\Add0~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => pixel_counter(16),
	datad => VCC,
	cin => \Add0~7\,
	combout => \Add0~8_combout\,
	cout => \Add0~9\);

-- Location: LCCOMB_X15_Y14_N16
\SRAM_ADDR[16]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAM_ADDR[16]~53_combout\ = (\SRAM_ADDR[16]~52_combout\ & (((pixel_counter(16)) # (!\fpixel[0]~0_combout\)))) # (!\SRAM_ADDR[16]~52_combout\ & (\Add0~8_combout\ & ((\fpixel[0]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_ADDR[16]~52_combout\,
	datab => \Add0~8_combout\,
	datac => pixel_counter(16),
	datad => \fpixel[0]~0_combout\,
	combout => \SRAM_ADDR[16]~53_combout\);

-- Location: LCCOMB_X15_Y14_N28
\SRAM_ADDR[16]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAM_ADDR[16]~54_combout\ = (\SRAM_ADDR[19]~38_combout\ & (\SRAM_ADDR[16]~53_combout\)) # (!\SRAM_ADDR[19]~38_combout\ & ((\Add9~18_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRAM_ADDR[16]~53_combout\,
	datac => \SRAM_ADDR[19]~38_combout\,
	datad => \Add9~18_combout\,
	combout => \SRAM_ADDR[16]~54_combout\);

-- Location: LCCOMB_X7_Y22_N20
\Add8~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~16_combout\ = ((\cam_instance|current_row\(8) $ (\cam_instance|current_row\(10) $ (!\Add8~15\)))) # (GND)
-- \Add8~17\ = CARRY((\cam_instance|current_row\(8) & ((\cam_instance|current_row\(10)) # (!\Add8~15\))) # (!\cam_instance|current_row\(8) & (\cam_instance|current_row\(10) & !\Add8~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cam_instance|current_row\(8),
	datab => \cam_instance|current_row\(10),
	datad => VCC,
	cin => \Add8~15\,
	combout => \Add8~16_combout\,
	cout => \Add8~17\);

-- Location: LCCOMB_X8_Y12_N14
\cam_instance|current_column[17]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \cam_instance|current_column[17]~52_combout\ = (\cam_instance|current_column\(17) & (\cam_instance|current_column[16]~51\ $ (GND))) # (!\cam_instance|current_column\(17) & (!\cam_instance|current_column[16]~51\ & VCC))
-- \cam_instance|current_column[17]~53\ = CARRY((\cam_instance|current_column\(17) & !\cam_instance|current_column[16]~51\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cam_instance|current_column\(17),
	datad => VCC,
	cin => \cam_instance|current_column[16]~51\,
	combout => \cam_instance|current_column[17]~52_combout\,
	cout => \cam_instance|current_column[17]~53\);

-- Location: FF_X8_Y12_N15
\cam_instance|current_column[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GPIO[11]~inputclkctrl_outclk\,
	d => \cam_instance|current_column[17]~52_combout\,
	clrn => \GPIO[8]~inputclkctrl_outclk\,
	ena => \cam_instance|ALT_INV_second_byte~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cam_instance|current_column\(17));

-- Location: LCCOMB_X8_Y14_N24
\Add9~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~20_combout\ = ((\Add8~16_combout\ $ (\cam_instance|current_column\(17) $ (!\Add9~19\)))) # (GND)
-- \Add9~21\ = CARRY((\Add8~16_combout\ & ((\cam_instance|current_column\(17)) # (!\Add9~19\))) # (!\Add8~16_combout\ & (\cam_instance|current_column\(17) & !\Add9~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~16_combout\,
	datab => \cam_instance|current_column\(17),
	datad => VCC,
	cin => \Add9~19\,
	combout => \Add9~20_combout\,
	cout => \Add9~21\);

-- Location: LCCOMB_X16_Y14_N10
\Add2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~8_combout\ = (pixel_counter(17) & (\Add2~7\ $ (GND))) # (!pixel_counter(17) & (!\Add2~7\ & VCC))
-- \Add2~9\ = CARRY((pixel_counter(17) & !\Add2~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => pixel_counter(17),
	datad => VCC,
	cin => \Add2~7\,
	combout => \Add2~8_combout\,
	cout => \Add2~9\);

-- Location: LCCOMB_X17_Y14_N14
\Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (pixel_counter(17) & (!\Add0~9\)) # (!pixel_counter(17) & ((\Add0~9\) # (GND)))
-- \Add0~11\ = CARRY((!\Add0~9\) # (!pixel_counter(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => pixel_counter(17),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X19_Y16_N20
\Add5~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~16_combout\ = (\vga_sync_instance|pixel_row\(8) & (\Add5~15\ $ (GND))) # (!\vga_sync_instance|pixel_row\(8) & (!\Add5~15\ & VCC))
-- \Add5~17\ = CARRY((\vga_sync_instance|pixel_row\(8) & !\Add5~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga_sync_instance|pixel_row\(8),
	datad => VCC,
	cin => \Add5~15\,
	combout => \Add5~16_combout\,
	cout => \Add5~17\);

-- Location: LCCOMB_X20_Y16_N26
\Add6~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~20_combout\ = (\Add5~16_combout\ & (\Add6~19\ $ (GND))) # (!\Add5~16_combout\ & (!\Add6~19\ & VCC))
-- \Add6~21\ = CARRY((\Add5~16_combout\ & !\Add6~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add5~16_combout\,
	datad => VCC,
	cin => \Add6~19\,
	combout => \Add6~20_combout\,
	cout => \Add6~21\);

-- Location: LCCOMB_X20_Y14_N26
\Add7~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~8_combout\ = (\Add6~20_combout\ & (\Add7~7\ $ (GND))) # (!\Add6~20_combout\ & (!\Add7~7\ & VCC))
-- \Add7~9\ = CARRY((\Add6~20_combout\ & !\Add7~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~20_combout\,
	datad => VCC,
	cin => \Add7~7\,
	combout => \Add7~8_combout\,
	cout => \Add7~9\);

-- Location: LCCOMB_X19_Y15_N22
\Add4~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~10_combout\ = (\Add6~20_combout\ & (!\Add4~9\)) # (!\Add6~20_combout\ & ((\Add4~9\) # (GND)))
-- \Add4~11\ = CARRY((!\Add4~9\) # (!\Add6~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add6~20_combout\,
	datad => VCC,
	cin => \Add4~9\,
	combout => \Add4~10_combout\,
	cout => \Add4~11\);

-- Location: LCCOMB_X19_Y14_N16
\Add10~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~10_combout\ = (\Add9~20_combout\ & (!\Add10~9\)) # (!\Add9~20_combout\ & ((\Add10~9\) # (GND)))
-- \Add10~11\ = CARRY((!\Add10~9\) # (!\Add9~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~20_combout\,
	datad => VCC,
	cin => \Add10~9\,
	combout => \Add10~10_combout\,
	cout => \Add10~11\);

-- Location: LCCOMB_X20_Y14_N0
\SRAM_ADDR[17]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAM_ADDR[17]~55_combout\ = (\SRAM_ADDR[19]~32_combout\ & ((\SRAM_ADDR[19]~33_combout\ & ((\Add6~20_combout\))) # (!\SRAM_ADDR[19]~33_combout\ & (\Add10~10_combout\)))) # (!\SRAM_ADDR[19]~32_combout\ & (((\SRAM_ADDR[19]~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add10~10_combout\,
	datab => \SRAM_ADDR[19]~32_combout\,
	datac => \Add6~20_combout\,
	datad => \SRAM_ADDR[19]~33_combout\,
	combout => \SRAM_ADDR[17]~55_combout\);

-- Location: LCCOMB_X20_Y14_N14
\SRAM_ADDR[17]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAM_ADDR[17]~56_combout\ = (\SRAM_ADDR[19]~31_combout\ & ((\SRAM_ADDR[17]~55_combout\ & ((\Add4~10_combout\))) # (!\SRAM_ADDR[17]~55_combout\ & (\Add7~8_combout\)))) # (!\SRAM_ADDR[19]~31_combout\ & (((\SRAM_ADDR[17]~55_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~8_combout\,
	datab => \SRAM_ADDR[19]~31_combout\,
	datac => \Add4~10_combout\,
	datad => \SRAM_ADDR[17]~55_combout\,
	combout => \SRAM_ADDR[17]~56_combout\);

-- Location: LCCOMB_X17_Y14_N26
\SRAM_ADDR[17]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAM_ADDR[17]~57_combout\ = (\fpixel[0]~0_combout\ & ((\Add0~10_combout\) # ((\SRAM_ADDR[19]~30_combout\)))) # (!\fpixel[0]~0_combout\ & (((!\SRAM_ADDR[19]~30_combout\ & \SRAM_ADDR[17]~56_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \fpixel[0]~0_combout\,
	datab => \Add0~10_combout\,
	datac => \SRAM_ADDR[19]~30_combout\,
	datad => \SRAM_ADDR[17]~56_combout\,
	combout => \SRAM_ADDR[17]~57_combout\);

-- Location: LCCOMB_X16_Y14_N18
\SRAM_ADDR[17]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAM_ADDR[17]~58_combout\ = (\SRAM_ADDR[19]~30_combout\ & ((\SRAM_ADDR[17]~57_combout\ & ((pixel_counter(17)))) # (!\SRAM_ADDR[17]~57_combout\ & (\Add2~8_combout\)))) # (!\SRAM_ADDR[19]~30_combout\ & (((\SRAM_ADDR[17]~57_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~8_combout\,
	datab => pixel_counter(17),
	datac => \SRAM_ADDR[19]~30_combout\,
	datad => \SRAM_ADDR[17]~57_combout\,
	combout => \SRAM_ADDR[17]~58_combout\);

-- Location: LCCOMB_X16_Y14_N16
\SRAM_ADDR[17]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAM_ADDR[17]~59_combout\ = (\SRAM_ADDR[19]~38_combout\ & ((\SRAM_ADDR[17]~58_combout\))) # (!\SRAM_ADDR[19]~38_combout\ & (\Add9~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRAM_ADDR[19]~38_combout\,
	datac => \Add9~20_combout\,
	datad => \SRAM_ADDR[17]~58_combout\,
	combout => \SRAM_ADDR[17]~59_combout\);

-- Location: LCCOMB_X7_Y22_N22
\Add8~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~18_combout\ = (\cam_instance|current_row\(11) & ((\cam_instance|current_row\(9) & (\Add8~17\ & VCC)) # (!\cam_instance|current_row\(9) & (!\Add8~17\)))) # (!\cam_instance|current_row\(11) & ((\cam_instance|current_row\(9) & (!\Add8~17\)) # 
-- (!\cam_instance|current_row\(9) & ((\Add8~17\) # (GND)))))
-- \Add8~19\ = CARRY((\cam_instance|current_row\(11) & (!\cam_instance|current_row\(9) & !\Add8~17\)) # (!\cam_instance|current_row\(11) & ((!\Add8~17\) # (!\cam_instance|current_row\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cam_instance|current_row\(11),
	datab => \cam_instance|current_row\(9),
	datad => VCC,
	cin => \Add8~17\,
	combout => \Add8~18_combout\,
	cout => \Add8~19\);

-- Location: LCCOMB_X8_Y12_N16
\cam_instance|current_column[18]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \cam_instance|current_column[18]~54_combout\ = (\cam_instance|current_column\(18) & (!\cam_instance|current_column[17]~53\)) # (!\cam_instance|current_column\(18) & ((\cam_instance|current_column[17]~53\) # (GND)))
-- \cam_instance|current_column[18]~55\ = CARRY((!\cam_instance|current_column[17]~53\) # (!\cam_instance|current_column\(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cam_instance|current_column\(18),
	datad => VCC,
	cin => \cam_instance|current_column[17]~53\,
	combout => \cam_instance|current_column[18]~54_combout\,
	cout => \cam_instance|current_column[18]~55\);

-- Location: FF_X8_Y12_N17
\cam_instance|current_column[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GPIO[11]~inputclkctrl_outclk\,
	d => \cam_instance|current_column[18]~54_combout\,
	clrn => \GPIO[8]~inputclkctrl_outclk\,
	ena => \cam_instance|ALT_INV_second_byte~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cam_instance|current_column\(18));

-- Location: LCCOMB_X8_Y14_N26
\Add9~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~22_combout\ = (\Add8~18_combout\ & ((\cam_instance|current_column\(18) & (\Add9~21\ & VCC)) # (!\cam_instance|current_column\(18) & (!\Add9~21\)))) # (!\Add8~18_combout\ & ((\cam_instance|current_column\(18) & (!\Add9~21\)) # 
-- (!\cam_instance|current_column\(18) & ((\Add9~21\) # (GND)))))
-- \Add9~23\ = CARRY((\Add8~18_combout\ & (!\cam_instance|current_column\(18) & !\Add9~21\)) # (!\Add8~18_combout\ & ((!\Add9~21\) # (!\cam_instance|current_column\(18)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~18_combout\,
	datab => \cam_instance|current_column\(18),
	datad => VCC,
	cin => \Add9~21\,
	combout => \Add9~22_combout\,
	cout => \Add9~23\);

-- Location: LCCOMB_X17_Y14_N16
\Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~12_combout\ = (pixel_counter(18) & ((GND) # (!\Add0~11\))) # (!pixel_counter(18) & (\Add0~11\ $ (GND)))
-- \Add0~13\ = CARRY((pixel_counter(18)) # (!\Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => pixel_counter(18),
	datad => VCC,
	cin => \Add0~11\,
	combout => \Add0~12_combout\,
	cout => \Add0~13\);

-- Location: LCCOMB_X16_Y14_N12
\Add2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~10_combout\ = (pixel_counter(18) & (!\Add2~9\)) # (!pixel_counter(18) & ((\Add2~9\) # (GND)))
-- \Add2~11\ = CARRY((!\Add2~9\) # (!pixel_counter(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => pixel_counter(18),
	datad => VCC,
	cin => \Add2~9\,
	combout => \Add2~10_combout\,
	cout => \Add2~11\);

-- Location: LCCOMB_X19_Y16_N22
\Add5~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~18_combout\ = \Add5~17\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Add5~17\,
	combout => \Add5~18_combout\);

-- Location: LCCOMB_X20_Y16_N28
\Add6~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~22_combout\ = \Add6~21\ $ (\Add5~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Add5~18_combout\,
	cin => \Add6~21\,
	combout => \Add6~22_combout\);

-- Location: LCCOMB_X19_Y15_N24
\Add4~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~12_combout\ = (\Add6~22_combout\ & ((GND) # (!\Add4~11\))) # (!\Add6~22_combout\ & (\Add4~11\ $ (GND)))
-- \Add4~13\ = CARRY((\Add6~22_combout\) # (!\Add4~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~22_combout\,
	datad => VCC,
	cin => \Add4~11\,
	combout => \Add4~12_combout\,
	cout => \Add4~13\);

-- Location: LCCOMB_X19_Y14_N18
\Add10~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~12_combout\ = (\Add9~22_combout\ & ((GND) # (!\Add10~11\))) # (!\Add9~22_combout\ & (\Add10~11\ $ (GND)))
-- \Add10~13\ = CARRY((\Add9~22_combout\) # (!\Add10~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101010101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~22_combout\,
	datad => VCC,
	cin => \Add10~11\,
	combout => \Add10~12_combout\,
	cout => \Add10~13\);

-- Location: LCCOMB_X20_Y14_N4
\SRAM_ADDR[18]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAM_ADDR[18]~60_combout\ = (\SRAM_ADDR[19]~32_combout\ & ((\SRAM_ADDR[19]~33_combout\ & ((\Add6~22_combout\))) # (!\SRAM_ADDR[19]~33_combout\ & (\Add10~12_combout\)))) # (!\SRAM_ADDR[19]~32_combout\ & (((\SRAM_ADDR[19]~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add10~12_combout\,
	datab => \SRAM_ADDR[19]~32_combout\,
	datac => \Add6~22_combout\,
	datad => \SRAM_ADDR[19]~33_combout\,
	combout => \SRAM_ADDR[18]~60_combout\);

-- Location: LCCOMB_X20_Y14_N28
\Add7~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~10_combout\ = (\Add6~22_combout\ & (!\Add7~9\)) # (!\Add6~22_combout\ & ((\Add7~9\) # (GND)))
-- \Add7~11\ = CARRY((!\Add7~9\) # (!\Add6~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add6~22_combout\,
	datad => VCC,
	cin => \Add7~9\,
	combout => \Add7~10_combout\,
	cout => \Add7~11\);

-- Location: LCCOMB_X20_Y14_N2
\SRAM_ADDR[18]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAM_ADDR[18]~61_combout\ = (\SRAM_ADDR[19]~31_combout\ & ((\SRAM_ADDR[18]~60_combout\ & (\Add4~12_combout\)) # (!\SRAM_ADDR[18]~60_combout\ & ((\Add7~10_combout\))))) # (!\SRAM_ADDR[19]~31_combout\ & (((\SRAM_ADDR[18]~60_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~12_combout\,
	datab => \SRAM_ADDR[19]~31_combout\,
	datac => \SRAM_ADDR[18]~60_combout\,
	datad => \Add7~10_combout\,
	combout => \SRAM_ADDR[18]~61_combout\);

-- Location: LCCOMB_X17_Y14_N0
\SRAM_ADDR[18]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAM_ADDR[18]~62_combout\ = (\SRAM_ADDR[19]~30_combout\ & ((\Add2~10_combout\) # ((\fpixel[0]~0_combout\)))) # (!\SRAM_ADDR[19]~30_combout\ & (((!\fpixel[0]~0_combout\ & \SRAM_ADDR[18]~61_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110110101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_ADDR[19]~30_combout\,
	datab => \Add2~10_combout\,
	datac => \fpixel[0]~0_combout\,
	datad => \SRAM_ADDR[18]~61_combout\,
	combout => \SRAM_ADDR[18]~62_combout\);

-- Location: LCCOMB_X17_Y14_N22
\SRAM_ADDR[18]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAM_ADDR[18]~63_combout\ = (\fpixel[0]~0_combout\ & ((\SRAM_ADDR[18]~62_combout\ & (pixel_counter(18))) # (!\SRAM_ADDR[18]~62_combout\ & ((\Add0~12_combout\))))) # (!\fpixel[0]~0_combout\ & (((\SRAM_ADDR[18]~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pixel_counter(18),
	datab => \Add0~12_combout\,
	datac => \fpixel[0]~0_combout\,
	datad => \SRAM_ADDR[18]~62_combout\,
	combout => \SRAM_ADDR[18]~63_combout\);

-- Location: LCCOMB_X16_Y14_N22
\SRAM_ADDR[18]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAM_ADDR[18]~64_combout\ = (\SRAM_ADDR[19]~38_combout\ & ((\SRAM_ADDR[18]~63_combout\))) # (!\SRAM_ADDR[19]~38_combout\ & (\Add9~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRAM_ADDR[19]~38_combout\,
	datac => \Add9~22_combout\,
	datad => \SRAM_ADDR[18]~63_combout\,
	combout => \SRAM_ADDR[18]~64_combout\);

-- Location: LCCOMB_X16_Y14_N14
\Add2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~12_combout\ = \Add2~11\ $ (pixel_counter(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => pixel_counter(19),
	cin => \Add2~11\,
	combout => \Add2~12_combout\);

-- Location: LCCOMB_X17_Y14_N18
\Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~14_combout\ = pixel_counter(19) $ (\Add0~13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => pixel_counter(19),
	cin => \Add0~13\,
	combout => \Add0~14_combout\);

-- Location: LCCOMB_X7_Y22_N24
\Add8~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~20_combout\ = \cam_instance|current_row\(10) $ (\Add8~19\ $ (!\cam_instance|current_row\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cam_instance|current_row\(10),
	datad => \cam_instance|current_row\(12),
	cin => \Add8~19\,
	combout => \Add8~20_combout\);

-- Location: LCCOMB_X8_Y12_N18
\cam_instance|current_column[19]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \cam_instance|current_column[19]~56_combout\ = \cam_instance|current_column[18]~55\ $ (!\cam_instance|current_column\(19))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \cam_instance|current_column\(19),
	cin => \cam_instance|current_column[18]~55\,
	combout => \cam_instance|current_column[19]~56_combout\);

-- Location: FF_X8_Y12_N19
\cam_instance|current_column[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GPIO[11]~inputclkctrl_outclk\,
	d => \cam_instance|current_column[19]~56_combout\,
	clrn => \GPIO[8]~inputclkctrl_outclk\,
	ena => \cam_instance|ALT_INV_second_byte~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cam_instance|current_column\(19));

-- Location: LCCOMB_X8_Y14_N28
\Add9~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~24_combout\ = \Add8~20_combout\ $ (\cam_instance|current_column\(19) $ (!\Add9~23\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~20_combout\,
	datab => \cam_instance|current_column\(19),
	cin => \Add9~23\,
	combout => \Add9~24_combout\);

-- Location: LCCOMB_X19_Y14_N20
\Add10~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~14_combout\ = \Add10~13\ $ (\Add9~24_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Add9~24_combout\,
	cin => \Add10~13\,
	combout => \Add10~14_combout\);

-- Location: LCCOMB_X20_Y14_N12
\SRAM_ADDR[19]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAM_ADDR[19]~65_combout\ = (\SRAM_ADDR[19]~33_combout\ & (((\SRAM_ADDR[19]~31_combout\)))) # (!\SRAM_ADDR[19]~33_combout\ & (\camstatemachine_instance|WideOr1~combout\ & (\Add10~14_combout\ & !\SRAM_ADDR[19]~31_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camstatemachine_instance|WideOr1~combout\,
	datab => \SRAM_ADDR[19]~33_combout\,
	datac => \Add10~14_combout\,
	datad => \SRAM_ADDR[19]~31_combout\,
	combout => \SRAM_ADDR[19]~65_combout\);

-- Location: LCCOMB_X19_Y15_N26
\Add4~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~14_combout\ = \Add4~13\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Add4~13\,
	combout => \Add4~14_combout\);

-- Location: LCCOMB_X20_Y14_N30
\Add7~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~12_combout\ = \Add7~11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Add7~11\,
	combout => \Add7~12_combout\);

-- Location: LCCOMB_X20_Y15_N30
\SRAM_ADDR[19]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAM_ADDR[19]~66_combout\ = (\SRAM_ADDR[19]~65_combout\ & (((\Add4~14_combout\)) # (!\SRAM_ADDR[19]~31_combout\))) # (!\SRAM_ADDR[19]~65_combout\ & (\SRAM_ADDR[19]~31_combout\ & ((\Add7~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011010100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_ADDR[19]~65_combout\,
	datab => \SRAM_ADDR[19]~31_combout\,
	datac => \Add4~14_combout\,
	datad => \Add7~12_combout\,
	combout => \SRAM_ADDR[19]~66_combout\);

-- Location: LCCOMB_X17_Y14_N20
\SRAM_ADDR[19]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAM_ADDR[19]~67_combout\ = (\SRAM_ADDR[19]~30_combout\ & (((\fpixel[0]~0_combout\)))) # (!\SRAM_ADDR[19]~30_combout\ & ((\fpixel[0]~0_combout\ & (\Add0~14_combout\)) # (!\fpixel[0]~0_combout\ & ((\SRAM_ADDR[19]~66_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110010111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_ADDR[19]~30_combout\,
	datab => \Add0~14_combout\,
	datac => \fpixel[0]~0_combout\,
	datad => \SRAM_ADDR[19]~66_combout\,
	combout => \SRAM_ADDR[19]~67_combout\);

-- Location: LCCOMB_X17_Y14_N2
\SRAM_ADDR[19]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAM_ADDR[19]~68_combout\ = (\SRAM_ADDR[19]~30_combout\ & ((\SRAM_ADDR[19]~67_combout\ & ((pixel_counter(19)))) # (!\SRAM_ADDR[19]~67_combout\ & (\Add2~12_combout\)))) # (!\SRAM_ADDR[19]~30_combout\ & (((\SRAM_ADDR[19]~67_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~12_combout\,
	datab => pixel_counter(19),
	datac => \SRAM_ADDR[19]~30_combout\,
	datad => \SRAM_ADDR[19]~67_combout\,
	combout => \SRAM_ADDR[19]~68_combout\);

-- Location: LCCOMB_X21_Y14_N22
\SRAM_ADDR[19]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAM_ADDR[19]~69_combout\ = (\SRAM_ADDR[19]~38_combout\ & (\SRAM_ADDR[19]~68_combout\)) # (!\SRAM_ADDR[19]~38_combout\ & ((\Add9~24_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100010111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_ADDR[19]~68_combout\,
	datab => \SRAM_ADDR[19]~38_combout\,
	datac => \Add9~24_combout\,
	combout => \SRAM_ADDR[19]~69_combout\);

-- Location: LCCOMB_X1_Y21_N16
\SRAM_WE_N~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAM_WE_N~0_combout\ = (\GPIO[11]~input_o\ & (\GPIO[8]~input_o\ & (\camstatemachine_instance|WideOr1~combout\ & !\cam_instance|second_byte~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \GPIO[11]~input_o\,
	datab => \GPIO[8]~input_o\,
	datac => \camstatemachine_instance|WideOr1~combout\,
	datad => \cam_instance|second_byte~q\,
	combout => \SRAM_WE_N~0_combout\);

-- Location: IOIBUF_X21_Y0_N8
\KEY[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: IOIBUF_X21_Y0_N1
\KEY[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

-- Location: IOIBUF_X41_Y21_N15
\KEY[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

-- Location: IOIBUF_X3_Y0_N29
\SW[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(2),
	o => \SW[2]~input_o\);

-- Location: IOIBUF_X35_Y29_N15
\SW[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(3),
	o => \SW[3]~input_o\);

-- Location: IOIBUF_X39_Y29_N8
\SW[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(4),
	o => \SW[4]~input_o\);

-- Location: IOIBUF_X39_Y29_N1
\SW[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: IOIBUF_X39_Y0_N8
\SW[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: IOIBUF_X30_Y29_N15
\SW[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: IOIBUF_X28_Y0_N15
\SW[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: IOIBUF_X28_Y0_N8
\SW[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

-- Location: IOIBUF_X28_Y29_N15
\SW[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(10),
	o => \SW[10]~input_o\);

-- Location: IOIBUF_X37_Y0_N29
\SW[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(11),
	o => \SW[11]~input_o\);

-- Location: IOIBUF_X41_Y3_N15
\SW[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(12),
	o => \SW[12]~input_o\);

-- Location: IOIBUF_X32_Y29_N22
\SW[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(13),
	o => \SW[13]~input_o\);

-- Location: IOIBUF_X41_Y12_N22
\SW[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(14),
	o => \SW[14]~input_o\);

-- Location: IOIBUF_X37_Y0_N1
\SW[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(15),
	o => \SW[15]~input_o\);

-- Location: IOIBUF_X41_Y2_N1
\SW[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(16),
	o => \SW[16]~input_o\);

-- Location: IOIBUF_X1_Y29_N15
\SW[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(17),
	o => \SW[17]~input_o\);

-- Location: IOIBUF_X0_Y27_N22
\GPIO[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(13),
	o => \GPIO[13]~input_o\);

-- Location: IOIBUF_X39_Y29_N29
\GPIO[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(14),
	o => \GPIO[14]~input_o\);

-- Location: IOIBUF_X0_Y24_N15
\GPIO[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(15),
	o => \GPIO[15]~input_o\);

-- Location: IOIBUF_X39_Y0_N15
\GPIO[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(16),
	o => \GPIO[16]~input_o\);

-- Location: IOIBUF_X11_Y0_N8
\GPIO[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(17),
	o => \GPIO[17]~input_o\);

-- Location: IOIBUF_X30_Y0_N8
\GPIO[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(18),
	o => \GPIO[18]~input_o\);

-- Location: IOIBUF_X41_Y24_N8
\GPIO[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(19),
	o => \GPIO[19]~input_o\);

-- Location: IOIBUF_X0_Y4_N1
\GPIO[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(20),
	o => \GPIO[20]~input_o\);

-- Location: IOIBUF_X35_Y29_N1
\GPIO[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(21),
	o => \GPIO[21]~input_o\);

-- Location: IOIBUF_X41_Y25_N8
\GPIO[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(22),
	o => \GPIO[22]~input_o\);

-- Location: IOIBUF_X11_Y29_N29
\GPIO[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(23),
	o => \GPIO[23]~input_o\);

-- Location: IOIBUF_X41_Y7_N15
\GPIO[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(24),
	o => \GPIO[24]~input_o\);

-- Location: IOIBUF_X35_Y0_N1
\GPIO[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(25),
	o => \GPIO[25]~input_o\);

-- Location: IOIBUF_X35_Y0_N22
\GPIO[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(26),
	o => \GPIO[26]~input_o\);

-- Location: IOIBUF_X0_Y4_N8
\GPIO[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(27),
	o => \GPIO[27]~input_o\);

-- Location: IOIBUF_X39_Y29_N15
\GPIO[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(28),
	o => \GPIO[28]~input_o\);

-- Location: IOIBUF_X23_Y29_N1
\GPIO[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(29),
	o => \GPIO[29]~input_o\);

-- Location: IOIBUF_X37_Y29_N15
\GPIO[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(30),
	o => \GPIO[30]~input_o\);

-- Location: IOIBUF_X14_Y0_N22
\GPIO[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(31),
	o => \GPIO[31]~input_o\);

-- Location: IOIBUF_X41_Y10_N22
\GPIO[32]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(32),
	o => \GPIO[32]~input_o\);

-- Location: IOIBUF_X37_Y29_N29
\GPIO[33]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(33),
	o => \GPIO[33]~input_o\);

-- Location: IOIBUF_X41_Y25_N15
\GPIO[34]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(34),
	o => \GPIO[34]~input_o\);

-- Location: IOIBUF_X41_Y18_N1
\GPIO[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(10),
	o => \GPIO[10]~input_o\);

-- Location: IOIBUF_X0_Y10_N15
\GPIO[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(12),
	o => \GPIO[12]~input_o\);

-- Location: IOIBUF_X28_Y0_N22
\GPIO[35]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(35),
	o => \GPIO[35]~input_o\);

-- Location: IOIBUF_X11_Y0_N1
\SRAM_DQ[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SRAM_DQ(0),
	o => \SRAM_DQ[0]~input_o\);

-- Location: IOIBUF_X16_Y29_N29
\SRAM_DQ[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SRAM_DQ(1),
	o => \SRAM_DQ[1]~input_o\);

-- Location: IOIBUF_X9_Y29_N22
\SRAM_DQ[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SRAM_DQ(2),
	o => \SRAM_DQ[2]~input_o\);

-- Location: IOIBUF_X9_Y0_N22
\SRAM_DQ[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SRAM_DQ(3),
	o => \SRAM_DQ[3]~input_o\);

-- Location: IOIBUF_X0_Y3_N1
\SRAM_DQ[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SRAM_DQ(4),
	o => \SRAM_DQ[4]~input_o\);

-- Location: IOIBUF_X1_Y0_N1
\SRAM_DQ[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SRAM_DQ(5),
	o => \SRAM_DQ[5]~input_o\);

-- Location: IOIBUF_X3_Y0_N1
\SRAM_DQ[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SRAM_DQ(6),
	o => \SRAM_DQ[6]~input_o\);

-- Location: IOIBUF_X5_Y0_N1
\SRAM_DQ[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SRAM_DQ(7),
	o => \SRAM_DQ[7]~input_o\);

ww_HEX0(0) <= \HEX0[0]~output_o\;

ww_HEX0(1) <= \HEX0[1]~output_o\;

ww_HEX0(2) <= \HEX0[2]~output_o\;

ww_HEX0(3) <= \HEX0[3]~output_o\;

ww_HEX0(4) <= \HEX0[4]~output_o\;

ww_HEX0(5) <= \HEX0[5]~output_o\;

ww_HEX0(6) <= \HEX0[6]~output_o\;

ww_HEX1(0) <= \HEX1[0]~output_o\;

ww_HEX1(1) <= \HEX1[1]~output_o\;

ww_HEX1(2) <= \HEX1[2]~output_o\;

ww_HEX1(3) <= \HEX1[3]~output_o\;

ww_HEX1(4) <= \HEX1[4]~output_o\;

ww_HEX1(5) <= \HEX1[5]~output_o\;

ww_HEX1(6) <= \HEX1[6]~output_o\;

ww_HEX2(0) <= \HEX2[0]~output_o\;

ww_HEX2(1) <= \HEX2[1]~output_o\;

ww_HEX2(2) <= \HEX2[2]~output_o\;

ww_HEX2(3) <= \HEX2[3]~output_o\;

ww_HEX2(4) <= \HEX2[4]~output_o\;

ww_HEX2(5) <= \HEX2[5]~output_o\;

ww_HEX2(6) <= \HEX2[6]~output_o\;

ww_HEX3(0) <= \HEX3[0]~output_o\;

ww_HEX3(1) <= \HEX3[1]~output_o\;

ww_HEX3(2) <= \HEX3[2]~output_o\;

ww_HEX3(3) <= \HEX3[3]~output_o\;

ww_HEX3(4) <= \HEX3[4]~output_o\;

ww_HEX3(5) <= \HEX3[5]~output_o\;

ww_HEX3(6) <= \HEX3[6]~output_o\;

ww_HEX4(0) <= \HEX4[0]~output_o\;

ww_HEX4(1) <= \HEX4[1]~output_o\;

ww_HEX4(2) <= \HEX4[2]~output_o\;

ww_HEX4(3) <= \HEX4[3]~output_o\;

ww_HEX4(4) <= \HEX4[4]~output_o\;

ww_HEX4(5) <= \HEX4[5]~output_o\;

ww_HEX4(6) <= \HEX4[6]~output_o\;

ww_HEX5(0) <= \HEX5[0]~output_o\;

ww_HEX5(1) <= \HEX5[1]~output_o\;

ww_HEX5(2) <= \HEX5[2]~output_o\;

ww_HEX5(3) <= \HEX5[3]~output_o\;

ww_HEX5(4) <= \HEX5[4]~output_o\;

ww_HEX5(5) <= \HEX5[5]~output_o\;

ww_HEX5(6) <= \HEX5[6]~output_o\;

ww_HEX6(0) <= \HEX6[0]~output_o\;

ww_HEX6(1) <= \HEX6[1]~output_o\;

ww_HEX6(2) <= \HEX6[2]~output_o\;

ww_HEX6(3) <= \HEX6[3]~output_o\;

ww_HEX6(4) <= \HEX6[4]~output_o\;

ww_HEX6(5) <= \HEX6[5]~output_o\;

ww_HEX6(6) <= \HEX6[6]~output_o\;

ww_HEX7(0) <= \HEX7[0]~output_o\;

ww_HEX7(1) <= \HEX7[1]~output_o\;

ww_HEX7(2) <= \HEX7[2]~output_o\;

ww_HEX7(3) <= \HEX7[3]~output_o\;

ww_HEX7(4) <= \HEX7[4]~output_o\;

ww_HEX7(5) <= \HEX7[5]~output_o\;

ww_HEX7(6) <= \HEX7[6]~output_o\;

ww_VGA_R(0) <= \VGA_R[0]~output_o\;

ww_VGA_R(1) <= \VGA_R[1]~output_o\;

ww_VGA_R(2) <= \VGA_R[2]~output_o\;

ww_VGA_R(3) <= \VGA_R[3]~output_o\;

ww_VGA_R(4) <= \VGA_R[4]~output_o\;

ww_VGA_R(5) <= \VGA_R[5]~output_o\;

ww_VGA_R(6) <= \VGA_R[6]~output_o\;

ww_VGA_R(7) <= \VGA_R[7]~output_o\;

ww_VGA_G(0) <= \VGA_G[0]~output_o\;

ww_VGA_G(1) <= \VGA_G[1]~output_o\;

ww_VGA_G(2) <= \VGA_G[2]~output_o\;

ww_VGA_G(3) <= \VGA_G[3]~output_o\;

ww_VGA_G(4) <= \VGA_G[4]~output_o\;

ww_VGA_G(5) <= \VGA_G[5]~output_o\;

ww_VGA_G(6) <= \VGA_G[6]~output_o\;

ww_VGA_G(7) <= \VGA_G[7]~output_o\;

ww_VGA_B(0) <= \VGA_B[0]~output_o\;

ww_VGA_B(1) <= \VGA_B[1]~output_o\;

ww_VGA_B(2) <= \VGA_B[2]~output_o\;

ww_VGA_B(3) <= \VGA_B[3]~output_o\;

ww_VGA_B(4) <= \VGA_B[4]~output_o\;

ww_VGA_B(5) <= \VGA_B[5]~output_o\;

ww_VGA_B(6) <= \VGA_B[6]~output_o\;

ww_VGA_B(7) <= \VGA_B[7]~output_o\;

ww_VGA_CLK <= \VGA_CLK~output_o\;

ww_VGA_BLANK_N <= \VGA_BLANK_N~output_o\;

ww_VGA_HS <= \VGA_HS~output_o\;

ww_VGA_VS <= \VGA_VS~output_o\;

ww_VGA_SYNC_N <= \VGA_SYNC_N~output_o\;

ww_SRAM_ADDR(0) <= \SRAM_ADDR[0]~output_o\;

ww_SRAM_ADDR(1) <= \SRAM_ADDR[1]~output_o\;

ww_SRAM_ADDR(2) <= \SRAM_ADDR[2]~output_o\;

ww_SRAM_ADDR(3) <= \SRAM_ADDR[3]~output_o\;

ww_SRAM_ADDR(4) <= \SRAM_ADDR[4]~output_o\;

ww_SRAM_ADDR(5) <= \SRAM_ADDR[5]~output_o\;

ww_SRAM_ADDR(6) <= \SRAM_ADDR[6]~output_o\;

ww_SRAM_ADDR(7) <= \SRAM_ADDR[7]~output_o\;

ww_SRAM_ADDR(8) <= \SRAM_ADDR[8]~output_o\;

ww_SRAM_ADDR(9) <= \SRAM_ADDR[9]~output_o\;

ww_SRAM_ADDR(10) <= \SRAM_ADDR[10]~output_o\;

ww_SRAM_ADDR(11) <= \SRAM_ADDR[11]~output_o\;

ww_SRAM_ADDR(12) <= \SRAM_ADDR[12]~output_o\;

ww_SRAM_ADDR(13) <= \SRAM_ADDR[13]~output_o\;

ww_SRAM_ADDR(14) <= \SRAM_ADDR[14]~output_o\;

ww_SRAM_ADDR(15) <= \SRAM_ADDR[15]~output_o\;

ww_SRAM_ADDR(16) <= \SRAM_ADDR[16]~output_o\;

ww_SRAM_ADDR(17) <= \SRAM_ADDR[17]~output_o\;

ww_SRAM_ADDR(18) <= \SRAM_ADDR[18]~output_o\;

ww_SRAM_ADDR(19) <= \SRAM_ADDR[19]~output_o\;

ww_SRAM_CE_N <= \SRAM_CE_N~output_o\;

ww_SRAM_LB_N <= \SRAM_LB_N~output_o\;

ww_SRAM_UB_N <= \SRAM_UB_N~output_o\;

ww_SRAM_OE_N <= \SRAM_OE_N~output_o\;

ww_SRAM_WE_N <= \SRAM_WE_N~output_o\;

GPIO(13) <= \GPIO[13]~output_o\;

GPIO(14) <= \GPIO[14]~output_o\;

GPIO(15) <= \GPIO[15]~output_o\;

GPIO(16) <= \GPIO[16]~output_o\;

GPIO(17) <= \GPIO[17]~output_o\;

GPIO(18) <= \GPIO[18]~output_o\;

GPIO(19) <= \GPIO[19]~output_o\;

GPIO(20) <= \GPIO[20]~output_o\;

GPIO(21) <= \GPIO[21]~output_o\;

GPIO(22) <= \GPIO[22]~output_o\;

GPIO(23) <= \GPIO[23]~output_o\;

GPIO(24) <= \GPIO[24]~output_o\;

GPIO(25) <= \GPIO[25]~output_o\;

GPIO(26) <= \GPIO[26]~output_o\;

GPIO(27) <= \GPIO[27]~output_o\;

GPIO(28) <= \GPIO[28]~output_o\;

GPIO(29) <= \GPIO[29]~output_o\;

GPIO(30) <= \GPIO[30]~output_o\;

GPIO(31) <= \GPIO[31]~output_o\;

GPIO(32) <= \GPIO[32]~output_o\;

GPIO(33) <= \GPIO[33]~output_o\;

GPIO(34) <= \GPIO[34]~output_o\;

GPIO(0) <= \GPIO[0]~output_o\;

GPIO(1) <= \GPIO[1]~output_o\;

GPIO(2) <= \GPIO[2]~output_o\;

GPIO(3) <= \GPIO[3]~output_o\;

GPIO(4) <= \GPIO[4]~output_o\;

GPIO(5) <= \GPIO[5]~output_o\;

GPIO(6) <= \GPIO[6]~output_o\;

GPIO(7) <= \GPIO[7]~output_o\;

GPIO(8) <= \GPIO[8]~output_o\;

GPIO(9) <= \GPIO[9]~output_o\;

GPIO(10) <= \GPIO[10]~output_o\;

GPIO(11) <= \GPIO[11]~output_o\;

GPIO(12) <= \GPIO[12]~output_o\;

GPIO(35) <= \GPIO[35]~output_o\;

SRAM_DQ(0) <= \SRAM_DQ[0]~output_o\;

SRAM_DQ(1) <= \SRAM_DQ[1]~output_o\;

SRAM_DQ(2) <= \SRAM_DQ[2]~output_o\;

SRAM_DQ(3) <= \SRAM_DQ[3]~output_o\;

SRAM_DQ(4) <= \SRAM_DQ[4]~output_o\;

SRAM_DQ(5) <= \SRAM_DQ[5]~output_o\;

SRAM_DQ(6) <= \SRAM_DQ[6]~output_o\;

SRAM_DQ(7) <= \SRAM_DQ[7]~output_o\;

SRAM_DQ(8) <= \SRAM_DQ[8]~output_o\;

SRAM_DQ(9) <= \SRAM_DQ[9]~output_o\;

SRAM_DQ(10) <= \SRAM_DQ[10]~output_o\;

SRAM_DQ(11) <= \SRAM_DQ[11]~output_o\;

SRAM_DQ(12) <= \SRAM_DQ[12]~output_o\;

SRAM_DQ(13) <= \SRAM_DQ[13]~output_o\;

SRAM_DQ(14) <= \SRAM_DQ[14]~output_o\;

SRAM_DQ(15) <= \SRAM_DQ[15]~output_o\;
END structure;


