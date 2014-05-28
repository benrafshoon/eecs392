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

-- DATE "05/27/2014 19:01:56"

-- 
-- Device: Altera EP4CE115F29C8 Package FBGA780
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
	SW : IN std_logic_vector(17 DOWNTO 0);
	LEDR : OUT std_logic_vector(17 DOWNTO 0)
	);
END camerainterface;

-- Design Ports Information
-- HEX0[0]	=>  Location: PIN_G18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[1]	=>  Location: PIN_F22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[2]	=>  Location: PIN_E17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[3]	=>  Location: PIN_L26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[4]	=>  Location: PIN_L25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[5]	=>  Location: PIN_J22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX0[6]	=>  Location: PIN_H22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[0]	=>  Location: PIN_M24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[1]	=>  Location: PIN_Y22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[2]	=>  Location: PIN_W21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[3]	=>  Location: PIN_W22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[4]	=>  Location: PIN_W25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[5]	=>  Location: PIN_U23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX1[6]	=>  Location: PIN_U24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[0]	=>  Location: PIN_AA25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[1]	=>  Location: PIN_AA26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[2]	=>  Location: PIN_Y25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[3]	=>  Location: PIN_W26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[4]	=>  Location: PIN_Y26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[5]	=>  Location: PIN_W27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX2[6]	=>  Location: PIN_W28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[0]	=>  Location: PIN_V21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[1]	=>  Location: PIN_U21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- HEX3[2]	=>  Location: PIN_AB20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[3]	=>  Location: PIN_AA21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[4]	=>  Location: PIN_AD24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[5]	=>  Location: PIN_AF23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX3[6]	=>  Location: PIN_Y19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[0]	=>  Location: PIN_AB19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[1]	=>  Location: PIN_AA19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[2]	=>  Location: PIN_AG21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[3]	=>  Location: PIN_AH21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[4]	=>  Location: PIN_AE19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[5]	=>  Location: PIN_AF19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX4[6]	=>  Location: PIN_AE18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[0]	=>  Location: PIN_AD18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[1]	=>  Location: PIN_AC18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[2]	=>  Location: PIN_AB18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[3]	=>  Location: PIN_AH19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[4]	=>  Location: PIN_AG19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[5]	=>  Location: PIN_AF18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX5[6]	=>  Location: PIN_AH18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX6[0]	=>  Location: PIN_AA17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX6[1]	=>  Location: PIN_AB16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX6[2]	=>  Location: PIN_AA16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX6[3]	=>  Location: PIN_AB17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX6[4]	=>  Location: PIN_AB15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX6[5]	=>  Location: PIN_AA15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX6[6]	=>  Location: PIN_AC17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX7[0]	=>  Location: PIN_AD17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX7[1]	=>  Location: PIN_AE17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX7[2]	=>  Location: PIN_AG17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX7[3]	=>  Location: PIN_AH17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX7[4]	=>  Location: PIN_AF17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX7[5]	=>  Location: PIN_AG18,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- HEX7[6]	=>  Location: PIN_AA14,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_R[0]	=>  Location: PIN_E12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_R[1]	=>  Location: PIN_E11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_R[2]	=>  Location: PIN_D10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_R[3]	=>  Location: PIN_F12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_R[4]	=>  Location: PIN_G10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_R[5]	=>  Location: PIN_J12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_R[6]	=>  Location: PIN_H8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_R[7]	=>  Location: PIN_H10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_G[0]	=>  Location: PIN_G8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_G[1]	=>  Location: PIN_G11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_G[2]	=>  Location: PIN_F8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_G[3]	=>  Location: PIN_H12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_G[4]	=>  Location: PIN_C8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_G[5]	=>  Location: PIN_B8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_G[6]	=>  Location: PIN_F10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_G[7]	=>  Location: PIN_C9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_B[0]	=>  Location: PIN_B10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_B[1]	=>  Location: PIN_A10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_B[2]	=>  Location: PIN_C11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_B[3]	=>  Location: PIN_B11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_B[4]	=>  Location: PIN_A11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_B[5]	=>  Location: PIN_C12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_B[6]	=>  Location: PIN_D11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_B[7]	=>  Location: PIN_D12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_CLK	=>  Location: PIN_A12,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_BLANK_N	=>  Location: PIN_F11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_HS	=>  Location: PIN_G13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_VS	=>  Location: PIN_C13,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- VGA_SYNC_N	=>  Location: PIN_C10,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SRAM_ADDR[0]	=>  Location: PIN_AB7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SRAM_ADDR[1]	=>  Location: PIN_AD7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SRAM_ADDR[2]	=>  Location: PIN_AE7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SRAM_ADDR[3]	=>  Location: PIN_AC7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SRAM_ADDR[4]	=>  Location: PIN_AB6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SRAM_ADDR[5]	=>  Location: PIN_AE6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SRAM_ADDR[6]	=>  Location: PIN_AB5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SRAM_ADDR[7]	=>  Location: PIN_AC5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SRAM_ADDR[8]	=>  Location: PIN_AF5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SRAM_ADDR[9]	=>  Location: PIN_T7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SRAM_ADDR[10]	=>  Location: PIN_AF2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SRAM_ADDR[11]	=>  Location: PIN_AD3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SRAM_ADDR[12]	=>  Location: PIN_AB4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SRAM_ADDR[13]	=>  Location: PIN_AC3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SRAM_ADDR[14]	=>  Location: PIN_AA4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SRAM_ADDR[15]	=>  Location: PIN_AB11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SRAM_ADDR[16]	=>  Location: PIN_AC11,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SRAM_ADDR[17]	=>  Location: PIN_AB9,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SRAM_ADDR[18]	=>  Location: PIN_AB8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SRAM_ADDR[19]	=>  Location: PIN_T8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SRAM_CE_N	=>  Location: PIN_AF8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SRAM_LB_N	=>  Location: PIN_AD4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SRAM_UB_N	=>  Location: PIN_AC4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SRAM_OE_N	=>  Location: PIN_AD5,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SRAM_WE_N	=>  Location: PIN_AE8,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- KEY[3]	=>  Location: PIN_R24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[2]	=>  Location: PIN_AC27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[3]	=>  Location: PIN_AD27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[4]	=>  Location: PIN_AB27,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[5]	=>  Location: PIN_AC26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[6]	=>  Location: PIN_AD26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[7]	=>  Location: PIN_AB26,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[8]	=>  Location: PIN_AC25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[9]	=>  Location: PIN_AB25,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[10]	=>  Location: PIN_AC24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[11]	=>  Location: PIN_AB24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[12]	=>  Location: PIN_AB23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[13]	=>  Location: PIN_AA24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[14]	=>  Location: PIN_AA23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[15]	=>  Location: PIN_AA22,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[16]	=>  Location: PIN_Y24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[17]	=>  Location: PIN_Y23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[0]	=>  Location: PIN_G19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[1]	=>  Location: PIN_F19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[2]	=>  Location: PIN_E19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[3]	=>  Location: PIN_F21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[4]	=>  Location: PIN_F18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[5]	=>  Location: PIN_E18,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[6]	=>  Location: PIN_J19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[7]	=>  Location: PIN_H19,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[8]	=>  Location: PIN_J17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[9]	=>  Location: PIN_G17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[10]	=>  Location: PIN_J15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[11]	=>  Location: PIN_H16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[12]	=>  Location: PIN_J16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[13]	=>  Location: PIN_H17,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[14]	=>  Location: PIN_F15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[15]	=>  Location: PIN_G15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[16]	=>  Location: PIN_G16,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- LEDR[17]	=>  Location: PIN_H15,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- GPIO[13]	=>  Location: PIN_AF15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[14]	=>  Location: PIN_AF24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[15]	=>  Location: PIN_AE21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[16]	=>  Location: PIN_AF25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[17]	=>  Location: PIN_AC22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[18]	=>  Location: PIN_AE22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[19]	=>  Location: PIN_AF21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[20]	=>  Location: PIN_AF22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[21]	=>  Location: PIN_AD22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[22]	=>  Location: PIN_AG25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[23]	=>  Location: PIN_AD25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[24]	=>  Location: PIN_AH25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[25]	=>  Location: PIN_AE25,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[26]	=>  Location: PIN_AG22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[27]	=>  Location: PIN_AE24,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[28]	=>  Location: PIN_AH22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[29]	=>  Location: PIN_AF26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[30]	=>  Location: PIN_AE20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[31]	=>  Location: PIN_AG23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[32]	=>  Location: PIN_AF20,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[33]	=>  Location: PIN_AH26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[34]	=>  Location: PIN_AH23,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[0]	=>  Location: PIN_AB22,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[1]	=>  Location: PIN_AC15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[2]	=>  Location: PIN_AB21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[3]	=>  Location: PIN_Y17,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[4]	=>  Location: PIN_AC21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[5]	=>  Location: PIN_Y16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[6]	=>  Location: PIN_AD21,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[7]	=>  Location: PIN_AE16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[8]	=>  Location: PIN_AD15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[9]	=>  Location: PIN_AE15,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[10]	=>  Location: PIN_AC19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[11]	=>  Location: PIN_AF16,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[12]	=>  Location: PIN_AD19,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- GPIO[35]	=>  Location: PIN_AG26,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SRAM_DQ[0]	=>  Location: PIN_AH3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SRAM_DQ[1]	=>  Location: PIN_AF4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SRAM_DQ[2]	=>  Location: PIN_AG4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SRAM_DQ[3]	=>  Location: PIN_AH4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SRAM_DQ[4]	=>  Location: PIN_AF6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SRAM_DQ[5]	=>  Location: PIN_AG6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SRAM_DQ[6]	=>  Location: PIN_AH6,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SRAM_DQ[7]	=>  Location: PIN_AF7,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SRAM_DQ[8]	=>  Location: PIN_AD1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SRAM_DQ[9]	=>  Location: PIN_AD2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SRAM_DQ[10]	=>  Location: PIN_AE2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SRAM_DQ[11]	=>  Location: PIN_AE1,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SRAM_DQ[12]	=>  Location: PIN_AE3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SRAM_DQ[13]	=>  Location: PIN_AE4,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SRAM_DQ[14]	=>  Location: PIN_AF3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SRAM_DQ[15]	=>  Location: PIN_AG3,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: 8mA
-- SW[0]	=>  Location: PIN_AB28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SW[1]	=>  Location: PIN_AC28,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- CLOCK_50	=>  Location: PIN_Y2,	 I/O Standard: 3.3-V LVTTL,	 Current Strength: Default
-- KEY[2]	=>  Location: PIN_N21,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[0]	=>  Location: PIN_M23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- KEY[1]	=>  Location: PIN_M21,	 I/O Standard: 2.5 V,	 Current Strength: Default


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
SIGNAL ww_LEDR : std_logic_vector(17 DOWNTO 0);
SIGNAL \CLOCK_50~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \camera_clock~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \bpixel[0]~1clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \backgroundsubtraction_eof~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \camstatemachine_instance|WideOr2~clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SRAM_ADDR[13]~71clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \fpixel[0]~0clkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
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
SIGNAL \LEDR[0]~output_o\ : std_logic;
SIGNAL \LEDR[1]~output_o\ : std_logic;
SIGNAL \LEDR[2]~output_o\ : std_logic;
SIGNAL \LEDR[3]~output_o\ : std_logic;
SIGNAL \LEDR[4]~output_o\ : std_logic;
SIGNAL \LEDR[5]~output_o\ : std_logic;
SIGNAL \LEDR[6]~output_o\ : std_logic;
SIGNAL \LEDR[7]~output_o\ : std_logic;
SIGNAL \LEDR[8]~output_o\ : std_logic;
SIGNAL \LEDR[9]~output_o\ : std_logic;
SIGNAL \LEDR[10]~output_o\ : std_logic;
SIGNAL \LEDR[11]~output_o\ : std_logic;
SIGNAL \LEDR[12]~output_o\ : std_logic;
SIGNAL \LEDR[13]~output_o\ : std_logic;
SIGNAL \LEDR[14]~output_o\ : std_logic;
SIGNAL \LEDR[15]~output_o\ : std_logic;
SIGNAL \LEDR[16]~output_o\ : std_logic;
SIGNAL \LEDR[17]~output_o\ : std_logic;
SIGNAL \CLOCK_50~input_o\ : std_logic;
SIGNAL \CLOCK_50~inputclkctrl_outclk\ : std_logic;
SIGNAL \camera_clock~0_combout\ : std_logic;
SIGNAL \camera_clock~_Duplicate_2feeder_combout\ : std_logic;
SIGNAL \camera_clock~_Duplicate_2_q\ : std_logic;
SIGNAL \camera_clock~q\ : std_logic;
SIGNAL \GPIO[11]~input_o\ : std_logic;
SIGNAL \KEY[0]~input_o\ : std_logic;
SIGNAL \KEY[1]~input_o\ : std_logic;
SIGNAL \camstatemachine_instance|current_state.wait_for_display_end_pre_copy~6_combout\ : std_logic;
SIGNAL \camstatemachine_instance|current_state.read_background_pixel~1_combout\ : std_logic;
SIGNAL \camstatemachine_instance|current_state.display~0_combout\ : std_logic;
SIGNAL \camstatemachine_instance|current_state.write_processed_pixel~q\ : std_logic;
SIGNAL \camera_clock~clkctrl_outclk\ : std_logic;
SIGNAL \vga_sync_instance|Add0~11\ : std_logic;
SIGNAL \vga_sync_instance|Add0~12_combout\ : std_logic;
SIGNAL \vga_sync_instance|Add0~13\ : std_logic;
SIGNAL \vga_sync_instance|Add0~14_combout\ : std_logic;
SIGNAL \vga_sync_instance|Add0~15\ : std_logic;
SIGNAL \vga_sync_instance|Add0~16_combout\ : std_logic;
SIGNAL \vga_sync_instance|h_count~0_combout\ : std_logic;
SIGNAL \vga_sync_instance|Equal0~1_combout\ : std_logic;
SIGNAL \vga_sync_instance|Add0~17\ : std_logic;
SIGNAL \vga_sync_instance|Add0~18_combout\ : std_logic;
SIGNAL \vga_sync_instance|h_count~1_combout\ : std_logic;
SIGNAL \vga_sync_instance|Equal0~0_combout\ : std_logic;
SIGNAL \vga_sync_instance|Equal0~2_combout\ : std_logic;
SIGNAL \vga_sync_instance|Add0~0_combout\ : std_logic;
SIGNAL \vga_sync_instance|h_count~2_combout\ : std_logic;
SIGNAL \vga_sync_instance|Add0~1\ : std_logic;
SIGNAL \vga_sync_instance|Add0~2_combout\ : std_logic;
SIGNAL \vga_sync_instance|Add0~3\ : std_logic;
SIGNAL \vga_sync_instance|Add0~4_combout\ : std_logic;
SIGNAL \vga_sync_instance|Add0~5\ : std_logic;
SIGNAL \vga_sync_instance|Add0~6_combout\ : std_logic;
SIGNAL \vga_sync_instance|Add0~7\ : std_logic;
SIGNAL \vga_sync_instance|Add0~8_combout\ : std_logic;
SIGNAL \vga_sync_instance|Add0~9\ : std_logic;
SIGNAL \vga_sync_instance|Add0~10_combout\ : std_logic;
SIGNAL \vga_sync_instance|h_count~3_combout\ : std_logic;
SIGNAL \vga_sync_instance|process_0~1_combout\ : std_logic;
SIGNAL \vga_sync_instance|process_0~0_combout\ : std_logic;
SIGNAL \vga_sync_instance|process_0~2_combout\ : std_logic;
SIGNAL \vga_sync_instance|Add1~0_combout\ : std_logic;
SIGNAL \vga_sync_instance|v_count~8_combout\ : std_logic;
SIGNAL \vga_sync_instance|Add1~1\ : std_logic;
SIGNAL \vga_sync_instance|Add1~2_combout\ : std_logic;
SIGNAL \vga_sync_instance|v_count~9_combout\ : std_logic;
SIGNAL \vga_sync_instance|Add1~3\ : std_logic;
SIGNAL \vga_sync_instance|Add1~4_combout\ : std_logic;
SIGNAL \vga_sync_instance|Equal0~3_combout\ : std_logic;
SIGNAL \vga_sync_instance|process_0~3_combout\ : std_logic;
SIGNAL \vga_sync_instance|Equal1~0_combout\ : std_logic;
SIGNAL \vga_sync_instance|v_count[4]~0_combout\ : std_logic;
SIGNAL \vga_sync_instance|v_count[2]~10_combout\ : std_logic;
SIGNAL \vga_sync_instance|Add1~5\ : std_logic;
SIGNAL \vga_sync_instance|Add1~6_combout\ : std_logic;
SIGNAL \vga_sync_instance|v_count[3]~11_combout\ : std_logic;
SIGNAL \vga_sync_instance|LessThan1~0_combout\ : std_logic;
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
SIGNAL \vga_sync_instance|LessThan1~1_combout\ : std_logic;
SIGNAL \vga_sync_instance|LessThan1~2_combout\ : std_logic;
SIGNAL \vga_sync_instance|v_count[0]~1_combout\ : std_logic;
SIGNAL \vga_sync_instance|Add1~15\ : std_logic;
SIGNAL \vga_sync_instance|Add1~16_combout\ : std_logic;
SIGNAL \vga_sync_instance|v_count[8]~6_combout\ : std_logic;
SIGNAL \vga_sync_instance|Add1~17\ : std_logic;
SIGNAL \vga_sync_instance|Add1~18_combout\ : std_logic;
SIGNAL \vga_sync_instance|v_count[9]~2_combout\ : std_logic;
SIGNAL \vga_sync_instance|LessThan6~0_combout\ : std_logic;
SIGNAL \vga_sync_instance|LessThan6~1_combout\ : std_logic;
SIGNAL \vga_sync_instance|LessThan6~2_combout\ : std_logic;
SIGNAL \vga_sync_instance|eof~q\ : std_logic;
SIGNAL \GPIO[9]~input_o\ : std_logic;
SIGNAL \camstatemachine_instance|Selector5~0_combout\ : std_logic;
SIGNAL \camstatemachine_instance|Selector5~1_combout\ : std_logic;
SIGNAL \camstatemachine_instance|current_state.wait_for_display_end_post_copy~q\ : std_logic;
SIGNAL \camstatemachine_instance|current_state.display~1_combout\ : std_logic;
SIGNAL \camstatemachine_instance|current_state.display~q\ : std_logic;
SIGNAL \camstatemachine_instance|current_state.wait_for_display_end_pre_copy~1_combout\ : std_logic;
SIGNAL \camstatemachine_instance|current_state.wait_for_display_end_pre_copy~3_combout\ : std_logic;
SIGNAL \camstatemachine_instance|current_state.wait_for_display_end_pre_copy~0_combout\ : std_logic;
SIGNAL \camstatemachine_instance|current_state.wait_for_display_end_pre_copy~_emulated_q\ : std_logic;
SIGNAL \camstatemachine_instance|current_state.wait_for_display_end_pre_copy~2_combout\ : std_logic;
SIGNAL \camstatemachine_instance|WideOr0~combout\ : std_logic;
SIGNAL \camstatemachine_instance|WideOr2~combout\ : std_logic;
SIGNAL \pixel_counter[0]~30_combout\ : std_logic;
SIGNAL \KEY[2]~input_o\ : std_logic;
SIGNAL \pixel_counter[1]~31_combout\ : std_logic;
SIGNAL \pixel_counter[27]~33_combout\ : std_logic;
SIGNAL \pixel_counter[27]~34_combout\ : std_logic;
SIGNAL \pixel_counter[1]~32\ : std_logic;
SIGNAL \pixel_counter[2]~35_combout\ : std_logic;
SIGNAL \pixel_counter[2]~36\ : std_logic;
SIGNAL \pixel_counter[3]~37_combout\ : std_logic;
SIGNAL \pixel_counter[3]~38\ : std_logic;
SIGNAL \pixel_counter[4]~39_combout\ : std_logic;
SIGNAL \pixel_counter[4]~40\ : std_logic;
SIGNAL \pixel_counter[5]~41_combout\ : std_logic;
SIGNAL \pixel_counter[5]~42\ : std_logic;
SIGNAL \pixel_counter[6]~43_combout\ : std_logic;
SIGNAL \pixel_counter[6]~44\ : std_logic;
SIGNAL \pixel_counter[7]~45_combout\ : std_logic;
SIGNAL \pixel_counter[7]~46\ : std_logic;
SIGNAL \pixel_counter[8]~47_combout\ : std_logic;
SIGNAL \pixel_counter[8]~48\ : std_logic;
SIGNAL \pixel_counter[9]~49_combout\ : std_logic;
SIGNAL \pixel_counter[9]~50\ : std_logic;
SIGNAL \pixel_counter[10]~51_combout\ : std_logic;
SIGNAL \pixel_counter[10]~52\ : std_logic;
SIGNAL \pixel_counter[11]~53_combout\ : std_logic;
SIGNAL \pixel_counter[11]~54\ : std_logic;
SIGNAL \pixel_counter[12]~55_combout\ : std_logic;
SIGNAL \pixel_counter[12]~56\ : std_logic;
SIGNAL \pixel_counter[13]~57_combout\ : std_logic;
SIGNAL \pixel_counter[13]~58\ : std_logic;
SIGNAL \pixel_counter[14]~59_combout\ : std_logic;
SIGNAL \pixel_counter[14]~60\ : std_logic;
SIGNAL \pixel_counter[15]~61_combout\ : std_logic;
SIGNAL \pixel_counter[15]~62\ : std_logic;
SIGNAL \pixel_counter[16]~63_combout\ : std_logic;
SIGNAL \pixel_counter[16]~64\ : std_logic;
SIGNAL \pixel_counter[17]~65_combout\ : std_logic;
SIGNAL \pixel_counter[17]~66\ : std_logic;
SIGNAL \pixel_counter[18]~67_combout\ : std_logic;
SIGNAL \pixel_counter[18]~68\ : std_logic;
SIGNAL \pixel_counter[19]~69_combout\ : std_logic;
SIGNAL \pixel_counter[19]~70\ : std_logic;
SIGNAL \pixel_counter[20]~71_combout\ : std_logic;
SIGNAL \pixel_counter[20]~72\ : std_logic;
SIGNAL \pixel_counter[21]~73_combout\ : std_logic;
SIGNAL \pixel_counter[21]~74\ : std_logic;
SIGNAL \pixel_counter[22]~75_combout\ : std_logic;
SIGNAL \pixel_counter[22]~76\ : std_logic;
SIGNAL \pixel_counter[23]~77_combout\ : std_logic;
SIGNAL \pixel_counter[23]~78\ : std_logic;
SIGNAL \pixel_counter[24]~79_combout\ : std_logic;
SIGNAL \pixel_counter[24]~80\ : std_logic;
SIGNAL \pixel_counter[25]~81_combout\ : std_logic;
SIGNAL \pixel_counter[25]~82\ : std_logic;
SIGNAL \pixel_counter[26]~83_combout\ : std_logic;
SIGNAL \pixel_counter[26]~84\ : std_logic;
SIGNAL \pixel_counter[27]~85_combout\ : std_logic;
SIGNAL \pixel_counter[27]~86\ : std_logic;
SIGNAL \pixel_counter[28]~87_combout\ : std_logic;
SIGNAL \pixel_counter[28]~88\ : std_logic;
SIGNAL \pixel_counter[29]~89_combout\ : std_logic;
SIGNAL \pixel_counter[29]~90\ : std_logic;
SIGNAL \pixel_counter[30]~91_combout\ : std_logic;
SIGNAL \LessThan1~4_combout\ : std_logic;
SIGNAL \LessThan1~0_combout\ : std_logic;
SIGNAL \LessThan1~1_combout\ : std_logic;
SIGNAL \LessThan1~2_combout\ : std_logic;
SIGNAL \LessThan1~3_combout\ : std_logic;
SIGNAL \LessThan1~5_combout\ : std_logic;
SIGNAL \backgroundsubtraction_eof~0_combout\ : std_logic;
SIGNAL \backgroundsubtraction_eof~0clkctrl_outclk\ : std_logic;
SIGNAL \backgroundsubtraction_eof~combout\ : std_logic;
SIGNAL \camstatemachine_instance|current_state.read_background_pixel~3_combout\ : std_logic;
SIGNAL \camstatemachine_instance|current_state.read_background_pixel~0_combout\ : std_logic;
SIGNAL \camstatemachine_instance|current_state.read_background_pixel~_emulated_q\ : std_logic;
SIGNAL \camstatemachine_instance|current_state.read_background_pixel~2_combout\ : std_logic;
SIGNAL \camstatemachine_instance|current_state.read_foreground_pixel~q\ : std_logic;
SIGNAL \camstatemachine_instance|Selector4~0_combout\ : std_logic;
SIGNAL \camstatemachine_instance|Selector3~0_combout\ : std_logic;
SIGNAL \camstatemachine_instance|current_state.wait_for_cam_start~q\ : std_logic;
SIGNAL \camstatemachine_instance|WideOr7~0_combout\ : std_logic;
SIGNAL \camstatemachine_instance|Selector4~1_combout\ : std_logic;
SIGNAL \camstatemachine_instance|current_state.copy2~q\ : std_logic;
SIGNAL \camstatemachine_instance|next_state~0_combout\ : std_logic;
SIGNAL \camstatemachine_instance|current_state.copy1~q\ : std_logic;
SIGNAL \camstatemachine_instance|WideOr1~combout\ : std_logic;
SIGNAL \SRAM_ADDR[13]~71_combout\ : std_logic;
SIGNAL \SRAM_ADDR[13]~71clkctrl_outclk\ : std_logic;
SIGNAL \SRAM_DQ[15]~input_o\ : std_logic;
SIGNAL \sram_data_out[15]~0_combout\ : std_logic;
SIGNAL \camstatemachine_instance|WideOr7~combout\ : std_logic;
SIGNAL \camstatemachine_instance|image_select~combout\ : std_logic;
SIGNAL \fpixel[0]~0_combout\ : std_logic;
SIGNAL \fpixel[0]~0clkctrl_outclk\ : std_logic;
SIGNAL \bpixel[0]~1_combout\ : std_logic;
SIGNAL \bpixel[0]~1clkctrl_outclk\ : std_logic;
SIGNAL \SRAM_DQ[14]~input_o\ : std_logic;
SIGNAL \sram_data_out[14]~1_combout\ : std_logic;
SIGNAL \SRAM_DQ[13]~input_o\ : std_logic;
SIGNAL \sram_data_out[13]~2_combout\ : std_logic;
SIGNAL \SRAM_DQ[12]~input_o\ : std_logic;
SIGNAL \sram_data_out[12]~3_combout\ : std_logic;
SIGNAL \sram_data_out[11]~4_combout\ : std_logic;
SIGNAL \SRAM_DQ[11]~input_o\ : std_logic;
SIGNAL \sram_data_out[11]~5_combout\ : std_logic;
SIGNAL \SRAM_DQ[10]~input_o\ : std_logic;
SIGNAL \sram_data_out[10]~6_combout\ : std_logic;
SIGNAL \SRAM_DQ[9]~input_o\ : std_logic;
SIGNAL \sram_data_out[9]~7_combout\ : std_logic;
SIGNAL \SRAM_DQ[8]~input_o\ : std_logic;
SIGNAL \sram_data_out[8]~8_combout\ : std_logic;
SIGNAL \Add2~1\ : std_logic;
SIGNAL \Add2~3\ : std_logic;
SIGNAL \Add2~5\ : std_logic;
SIGNAL \Add2~7\ : std_logic;
SIGNAL \Add2~9\ : std_logic;
SIGNAL \Add2~11\ : std_logic;
SIGNAL \Add2~13\ : std_logic;
SIGNAL \Add2~14_combout\ : std_logic;
SIGNAL \Add2~15\ : std_logic;
SIGNAL \Add2~17\ : std_logic;
SIGNAL \Add2~19\ : std_logic;
SIGNAL \Add2~21\ : std_logic;
SIGNAL \Add2~23\ : std_logic;
SIGNAL \Add2~25\ : std_logic;
SIGNAL \Add2~27\ : std_logic;
SIGNAL \Add2~29\ : std_logic;
SIGNAL \Add2~31\ : std_logic;
SIGNAL \Add2~33\ : std_logic;
SIGNAL \Add2~35\ : std_logic;
SIGNAL \Add2~37\ : std_logic;
SIGNAL \Add2~39\ : std_logic;
SIGNAL \Add2~41\ : std_logic;
SIGNAL \Add2~43\ : std_logic;
SIGNAL \Add2~45\ : std_logic;
SIGNAL \Add2~47\ : std_logic;
SIGNAL \Add2~49\ : std_logic;
SIGNAL \Add2~51\ : std_logic;
SIGNAL \Add2~53\ : std_logic;
SIGNAL \Add2~55\ : std_logic;
SIGNAL \Add2~57\ : std_logic;
SIGNAL \Add2~59\ : std_logic;
SIGNAL \Add2~61\ : std_logic;
SIGNAL \Add2~62_combout\ : std_logic;
SIGNAL \Add2~12_combout\ : std_logic;
SIGNAL \Add2~10_combout\ : std_logic;
SIGNAL \Add2~8_combout\ : std_logic;
SIGNAL \Add2~6_combout\ : std_logic;
SIGNAL \Add2~4_combout\ : std_logic;
SIGNAL \Add2~2_combout\ : std_logic;
SIGNAL \Add2~0_combout\ : std_logic;
SIGNAL \diff~0_combout\ : std_logic;
SIGNAL \Add3~1_cout\ : std_logic;
SIGNAL \Add3~3\ : std_logic;
SIGNAL \Add3~5\ : std_logic;
SIGNAL \Add3~7\ : std_logic;
SIGNAL \Add3~9\ : std_logic;
SIGNAL \Add3~11\ : std_logic;
SIGNAL \Add3~13\ : std_logic;
SIGNAL \Add3~14_combout\ : std_logic;
SIGNAL \Add2~22_combout\ : std_logic;
SIGNAL \Add2~20_combout\ : std_logic;
SIGNAL \Add2~18_combout\ : std_logic;
SIGNAL \Add2~16_combout\ : std_logic;
SIGNAL \Add3~15\ : std_logic;
SIGNAL \Add3~17\ : std_logic;
SIGNAL \Add3~19\ : std_logic;
SIGNAL \Add3~21\ : std_logic;
SIGNAL \Add3~22_combout\ : std_logic;
SIGNAL \Add3~18_combout\ : std_logic;
SIGNAL \Add3~20_combout\ : std_logic;
SIGNAL \Add3~16_combout\ : std_logic;
SIGNAL \LessThan0~0_combout\ : std_logic;
SIGNAL \Add3~12_combout\ : std_logic;
SIGNAL \Add3~10_combout\ : std_logic;
SIGNAL \LessThan0~2_combout\ : std_logic;
SIGNAL \Add3~2_combout\ : std_logic;
SIGNAL \Add3~8_combout\ : std_logic;
SIGNAL \Add3~6_combout\ : std_logic;
SIGNAL \Add3~4_combout\ : std_logic;
SIGNAL \LessThan0~1_combout\ : std_logic;
SIGNAL \LessThan0~3_combout\ : std_logic;
SIGNAL \GPIO[0]~input_o\ : std_logic;
SIGNAL \cam_instance|second_byte~0_combout\ : std_logic;
SIGNAL \GPIO[8]~input_o\ : std_logic;
SIGNAL \cam_instance|second_byte~q\ : std_logic;
SIGNAL \cam_instance|y_data[0]~0_combout\ : std_logic;
SIGNAL \Add2~56_combout\ : std_logic;
SIGNAL \Add2~54_combout\ : std_logic;
SIGNAL \Add2~52_combout\ : std_logic;
SIGNAL \Add2~50_combout\ : std_logic;
SIGNAL \Add2~48_combout\ : std_logic;
SIGNAL \Add2~46_combout\ : std_logic;
SIGNAL \Add2~44_combout\ : std_logic;
SIGNAL \Add2~42_combout\ : std_logic;
SIGNAL \Add2~40_combout\ : std_logic;
SIGNAL \Add2~38_combout\ : std_logic;
SIGNAL \Add2~36_combout\ : std_logic;
SIGNAL \Add2~34_combout\ : std_logic;
SIGNAL \Add2~32_combout\ : std_logic;
SIGNAL \Add2~30_combout\ : std_logic;
SIGNAL \Add2~28_combout\ : std_logic;
SIGNAL \Add2~26_combout\ : std_logic;
SIGNAL \Add2~24_combout\ : std_logic;
SIGNAL \Add3~23\ : std_logic;
SIGNAL \Add3~25\ : std_logic;
SIGNAL \Add3~27\ : std_logic;
SIGNAL \Add3~29\ : std_logic;
SIGNAL \Add3~31\ : std_logic;
SIGNAL \Add3~33\ : std_logic;
SIGNAL \Add3~35\ : std_logic;
SIGNAL \Add3~37\ : std_logic;
SIGNAL \Add3~39\ : std_logic;
SIGNAL \Add3~41\ : std_logic;
SIGNAL \Add3~43\ : std_logic;
SIGNAL \Add3~45\ : std_logic;
SIGNAL \Add3~47\ : std_logic;
SIGNAL \Add3~49\ : std_logic;
SIGNAL \Add3~51\ : std_logic;
SIGNAL \Add3~53\ : std_logic;
SIGNAL \Add3~55\ : std_logic;
SIGNAL \Add3~56_combout\ : std_logic;
SIGNAL \Add2~60_combout\ : std_logic;
SIGNAL \Add2~58_combout\ : std_logic;
SIGNAL \Add3~57\ : std_logic;
SIGNAL \Add3~59\ : std_logic;
SIGNAL \Add3~60_combout\ : std_logic;
SIGNAL \Add3~58_combout\ : std_logic;
SIGNAL \Add3~36_combout\ : std_logic;
SIGNAL \Add3~32_combout\ : std_logic;
SIGNAL \Add3~38_combout\ : std_logic;
SIGNAL \Add3~34_combout\ : std_logic;
SIGNAL \LessThan0~5_combout\ : std_logic;
SIGNAL \Add3~48_combout\ : std_logic;
SIGNAL \Add3~50_combout\ : std_logic;
SIGNAL \Add3~52_combout\ : std_logic;
SIGNAL \Add3~54_combout\ : std_logic;
SIGNAL \LessThan0~7_combout\ : std_logic;
SIGNAL \Add3~44_combout\ : std_logic;
SIGNAL \Add3~42_combout\ : std_logic;
SIGNAL \Add3~46_combout\ : std_logic;
SIGNAL \Add3~40_combout\ : std_logic;
SIGNAL \LessThan0~6_combout\ : std_logic;
SIGNAL \Add3~28_combout\ : std_logic;
SIGNAL \Add3~24_combout\ : std_logic;
SIGNAL \Add3~26_combout\ : std_logic;
SIGNAL \Add3~30_combout\ : std_logic;
SIGNAL \LessThan0~4_combout\ : std_logic;
SIGNAL \LessThan0~8_combout\ : std_logic;
SIGNAL \LessThan0~9_combout\ : std_logic;
SIGNAL \sram_data_in[8]~0_combout\ : std_logic;
SIGNAL \GPIO[1]~input_o\ : std_logic;
SIGNAL \sram_data_in[9]~1_combout\ : std_logic;
SIGNAL \GPIO[2]~input_o\ : std_logic;
SIGNAL \sram_data_in[10]~2_combout\ : std_logic;
SIGNAL \GPIO[3]~input_o\ : std_logic;
SIGNAL \sram_data_in[11]~3_combout\ : std_logic;
SIGNAL \GPIO[4]~input_o\ : std_logic;
SIGNAL \sram_data_in[12]~4_combout\ : std_logic;
SIGNAL \GPIO[5]~input_o\ : std_logic;
SIGNAL \sram_data_in[13]~5_combout\ : std_logic;
SIGNAL \GPIO[6]~input_o\ : std_logic;
SIGNAL \sram_data_in[14]~6_combout\ : std_logic;
SIGNAL \GPIO[7]~input_o\ : std_logic;
SIGNAL \sram_data_in[15]~7_combout\ : std_logic;
SIGNAL \cam_instance|current_row[0]~45_combout\ : std_logic;
SIGNAL \cam_instance|current_row[1]~15_combout\ : std_logic;
SIGNAL \cam_instance|current_row[1]~16\ : std_logic;
SIGNAL \cam_instance|current_row[2]~17_combout\ : std_logic;
SIGNAL \cam_instance|vertical_size[2]~feeder_combout\ : std_logic;
SIGNAL \cam_instance|vertical_size[0]~feeder_combout\ : std_logic;
SIGNAL \cam_instance|current_row[2]~18\ : std_logic;
SIGNAL \cam_instance|current_row[3]~19_combout\ : std_logic;
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
SIGNAL \cam_instance|current_row[5]~24\ : std_logic;
SIGNAL \cam_instance|current_row[6]~25_combout\ : std_logic;
SIGNAL \cam_instance|vertical_size[4]~feeder_combout\ : std_logic;
SIGNAL \cam_instance|current_row[6]~26\ : std_logic;
SIGNAL \cam_instance|current_row[7]~27_combout\ : std_logic;
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
SIGNAL \cam_instance|vertical_size[10]~feeder_combout\ : std_logic;
SIGNAL \hex2decoder|segments_out[0]~0_combout\ : std_logic;
SIGNAL \hex2decoder|segments_out[1]~1_combout\ : std_logic;
SIGNAL \hex2decoder|segments_out[2]~2_combout\ : std_logic;
SIGNAL \hex2decoder|segments_out[3]~3_combout\ : std_logic;
SIGNAL \hex2decoder|segments_out[4]~4_combout\ : std_logic;
SIGNAL \hex2decoder|segments_out[5]~5_combout\ : std_logic;
SIGNAL \hex2decoder|segments_out[6]~6_combout\ : std_logic;
SIGNAL \cam_instance|current_row[11]~36\ : std_logic;
SIGNAL \cam_instance|current_row[12]~37_combout\ : std_logic;
SIGNAL \cam_instance|current_row[12]~38\ : std_logic;
SIGNAL \cam_instance|current_row[13]~39_combout\ : std_logic;
SIGNAL \cam_instance|current_row[13]~40\ : std_logic;
SIGNAL \cam_instance|current_row[14]~41_combout\ : std_logic;
SIGNAL \cam_instance|vertical_size[12]~feeder_combout\ : std_logic;
SIGNAL \cam_instance|current_row[14]~42\ : std_logic;
SIGNAL \cam_instance|current_row[15]~43_combout\ : std_logic;
SIGNAL \hex3decoder|segments_out[0]~0_combout\ : std_logic;
SIGNAL \hex3decoder|segments_out[1]~1_combout\ : std_logic;
SIGNAL \hex3decoder|segments_out[2]~2_combout\ : std_logic;
SIGNAL \hex3decoder|segments_out[3]~3_combout\ : std_logic;
SIGNAL \hex3decoder|segments_out[4]~4_combout\ : std_logic;
SIGNAL \hex3decoder|segments_out[5]~5_combout\ : std_logic;
SIGNAL \hex3decoder|segments_out[6]~6_combout\ : std_logic;
SIGNAL \cam_instance|current_column[0]~19_combout\ : std_logic;
SIGNAL \cam_instance|current_column[1]~20_combout\ : std_logic;
SIGNAL \cam_instance|horizontal_size[1]~feeder_combout\ : std_logic;
SIGNAL \cam_instance|horizontal_size[0]~feeder_combout\ : std_logic;
SIGNAL \cam_instance|current_column[1]~21\ : std_logic;
SIGNAL \cam_instance|current_column[2]~22_combout\ : std_logic;
SIGNAL \cam_instance|horizontal_size[2]~feeder_combout\ : std_logic;
SIGNAL \cam_instance|current_column[2]~23\ : std_logic;
SIGNAL \cam_instance|current_column[3]~24_combout\ : std_logic;
SIGNAL \cam_instance|horizontal_size[3]~feeder_combout\ : std_logic;
SIGNAL \hex4decoder|segments_out[0]~0_combout\ : std_logic;
SIGNAL \hex4decoder|segments_out[1]~1_combout\ : std_logic;
SIGNAL \hex4decoder|segments_out[2]~2_combout\ : std_logic;
SIGNAL \hex4decoder|segments_out[3]~3_combout\ : std_logic;
SIGNAL \hex4decoder|segments_out[4]~4_combout\ : std_logic;
SIGNAL \hex4decoder|segments_out[5]~5_combout\ : std_logic;
SIGNAL \hex4decoder|segments_out[6]~6_combout\ : std_logic;
SIGNAL \cam_instance|current_column[3]~25\ : std_logic;
SIGNAL \cam_instance|current_column[4]~26_combout\ : std_logic;
SIGNAL \cam_instance|current_column[4]~27\ : std_logic;
SIGNAL \cam_instance|current_column[5]~28_combout\ : std_logic;
SIGNAL \cam_instance|current_column[5]~29\ : std_logic;
SIGNAL \cam_instance|current_column[6]~30_combout\ : std_logic;
SIGNAL \cam_instance|current_column[6]~31\ : std_logic;
SIGNAL \cam_instance|current_column[7]~32_combout\ : std_logic;
SIGNAL \cam_instance|horizontal_size[7]~feeder_combout\ : std_logic;
SIGNAL \cam_instance|horizontal_size[6]~feeder_combout\ : std_logic;
SIGNAL \cam_instance|horizontal_size[4]~feeder_combout\ : std_logic;
SIGNAL \cam_instance|horizontal_size[5]~feeder_combout\ : std_logic;
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
SIGNAL \cam_instance|current_column[10]~39\ : std_logic;
SIGNAL \cam_instance|current_column[11]~40_combout\ : std_logic;
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
SIGNAL \cam_instance|horizontal_size[13]~feeder_combout\ : std_logic;
SIGNAL \cam_instance|current_column[13]~45\ : std_logic;
SIGNAL \cam_instance|current_column[14]~46_combout\ : std_logic;
SIGNAL \cam_instance|current_column[14]~47\ : std_logic;
SIGNAL \cam_instance|current_column[15]~48_combout\ : std_logic;
SIGNAL \cam_instance|horizontal_size[15]~feeder_combout\ : std_logic;
SIGNAL \cam_instance|horizontal_size[14]~feeder_combout\ : std_logic;
SIGNAL \hex7decoder|segments_out[0]~0_combout\ : std_logic;
SIGNAL \hex7decoder|segments_out[1]~1_combout\ : std_logic;
SIGNAL \hex7decoder|segments_out[2]~2_combout\ : std_logic;
SIGNAL \hex7decoder|segments_out[3]~3_combout\ : std_logic;
SIGNAL \hex7decoder|segments_out[4]~4_combout\ : std_logic;
SIGNAL \hex7decoder|segments_out[5]~5_combout\ : std_logic;
SIGNAL \hex7decoder|segments_out[6]~6_combout\ : std_logic;
SIGNAL \VGA_R~0_combout\ : std_logic;
SIGNAL \camstatemachine_instance|WideOr2~clkctrl_outclk\ : std_logic;
SIGNAL \VGA_R[0]$latch~combout\ : std_logic;
SIGNAL \VGA_R~1_combout\ : std_logic;
SIGNAL \VGA_R[1]$latch~combout\ : std_logic;
SIGNAL \VGA_R~2_combout\ : std_logic;
SIGNAL \VGA_R[2]$latch~combout\ : std_logic;
SIGNAL \VGA_R~3_combout\ : std_logic;
SIGNAL \VGA_R[3]$latch~combout\ : std_logic;
SIGNAL \VGA_R~4_combout\ : std_logic;
SIGNAL \VGA_R[4]$latch~combout\ : std_logic;
SIGNAL \VGA_R~5_combout\ : std_logic;
SIGNAL \VGA_R[5]$latch~combout\ : std_logic;
SIGNAL \VGA_R~6_combout\ : std_logic;
SIGNAL \VGA_R~7_combout\ : std_logic;
SIGNAL \VGA_R[6]$latch~combout\ : std_logic;
SIGNAL \VGA_R~8_combout\ : std_logic;
SIGNAL \VGA_R[7]$latch~combout\ : std_logic;
SIGNAL \camera_clock~_Duplicate_1_q\ : std_logic;
SIGNAL \vga_sync_instance|LessThan5~0_combout\ : std_logic;
SIGNAL \vga_sync_instance|video_on_h~q\ : std_logic;
SIGNAL \vga_sync_instance|video_on~combout\ : std_logic;
SIGNAL \vga_sync_instance|process_0~5_combout\ : std_logic;
SIGNAL \vga_sync_instance|process_0~4_combout\ : std_logic;
SIGNAL \vga_sync_instance|process_0~6_combout\ : std_logic;
SIGNAL \vga_sync_instance|horiz_sync~q\ : std_logic;
SIGNAL \vga_sync_instance|horiz_sync_out~q\ : std_logic;
SIGNAL \vga_sync_instance|process_0~7_combout\ : std_logic;
SIGNAL \vga_sync_instance|process_0~8_combout\ : std_logic;
SIGNAL \vga_sync_instance|vert_sync~q\ : std_logic;
SIGNAL \vga_sync_instance|vert_sync_out~q\ : std_logic;
SIGNAL \SRAM_ADDR[0]~2_combout\ : std_logic;
SIGNAL \SRAM_ADDR[0]~3_combout\ : std_logic;
SIGNAL \SRAM_ADDR[1]~4_combout\ : std_logic;
SIGNAL \SRAM_ADDR[1]~5_combout\ : std_logic;
SIGNAL \SRAM_ADDR[2]~6_combout\ : std_logic;
SIGNAL \SRAM_ADDR[2]~7_combout\ : std_logic;
SIGNAL \SRAM_ADDR[3]~8_combout\ : std_logic;
SIGNAL \SRAM_ADDR[3]~9_combout\ : std_logic;
SIGNAL \SRAM_ADDR[4]~10_combout\ : std_logic;
SIGNAL \SRAM_ADDR[4]~11_combout\ : std_logic;
SIGNAL \SRAM_ADDR[5]~12_combout\ : std_logic;
SIGNAL \SRAM_ADDR[5]~13_combout\ : std_logic;
SIGNAL \SRAM_ADDR[6]~14_combout\ : std_logic;
SIGNAL \SRAM_ADDR[6]~15_combout\ : std_logic;
SIGNAL \Add10~0_combout\ : std_logic;
SIGNAL \vga_sync_instance|pixel_row[0]~feeder_combout\ : std_logic;
SIGNAL \Add7~0_combout\ : std_logic;
SIGNAL \SRAM_ADDR[7]~16_combout\ : std_logic;
SIGNAL \SRAM_ADDR[7]~17_combout\ : std_logic;
SIGNAL \Add10~1\ : std_logic;
SIGNAL \Add10~2_combout\ : std_logic;
SIGNAL \vga_sync_instance|pixel_row[1]~feeder_combout\ : std_logic;
SIGNAL \Add7~1\ : std_logic;
SIGNAL \Add7~2_combout\ : std_logic;
SIGNAL \SRAM_ADDR[8]~18_combout\ : std_logic;
SIGNAL \SRAM_ADDR[8]~19_combout\ : std_logic;
SIGNAL \Add9~0_combout\ : std_logic;
SIGNAL \Add10~3\ : std_logic;
SIGNAL \Add10~4_combout\ : std_logic;
SIGNAL \vga_sync_instance|pixel_row[2]~feeder_combout\ : std_logic;
SIGNAL \Add6~0_combout\ : std_logic;
SIGNAL \Add7~3\ : std_logic;
SIGNAL \Add7~4_combout\ : std_logic;
SIGNAL \SRAM_ADDR[9]~20_combout\ : std_logic;
SIGNAL \SRAM_ADDR[9]~21_combout\ : std_logic;
SIGNAL \vga_sync_instance|pixel_row[3]~feeder_combout\ : std_logic;
SIGNAL \Add6~1\ : std_logic;
SIGNAL \Add6~2_combout\ : std_logic;
SIGNAL \Add7~5\ : std_logic;
SIGNAL \Add7~6_combout\ : std_logic;
SIGNAL \Add9~1\ : std_logic;
SIGNAL \Add9~2_combout\ : std_logic;
SIGNAL \Add10~5\ : std_logic;
SIGNAL \Add10~6_combout\ : std_logic;
SIGNAL \SRAM_ADDR[10]~22_combout\ : std_logic;
SIGNAL \SRAM_ADDR[10]~23_combout\ : std_logic;
SIGNAL \Add9~3\ : std_logic;
SIGNAL \Add9~4_combout\ : std_logic;
SIGNAL \Add10~7\ : std_logic;
SIGNAL \Add10~8_combout\ : std_logic;
SIGNAL \vga_sync_instance|pixel_row[4]~feeder_combout\ : std_logic;
SIGNAL \Add6~3\ : std_logic;
SIGNAL \Add6~4_combout\ : std_logic;
SIGNAL \Add7~7\ : std_logic;
SIGNAL \Add7~8_combout\ : std_logic;
SIGNAL \SRAM_ADDR[11]~24_combout\ : std_logic;
SIGNAL \SRAM_ADDR[11]~25_combout\ : std_logic;
SIGNAL \Add9~5\ : std_logic;
SIGNAL \Add9~6_combout\ : std_logic;
SIGNAL \Add10~9\ : std_logic;
SIGNAL \Add10~10_combout\ : std_logic;
SIGNAL \Add11~0_combout\ : std_logic;
SIGNAL \SW[0]~input_o\ : std_logic;
SIGNAL \SRAM_ADDR~27_combout\ : std_logic;
SIGNAL \SRAM_ADDR[12]~28_combout\ : std_logic;
SIGNAL \Add0~0_combout\ : std_logic;
SIGNAL \SRAM_ADDR~29_combout\ : std_logic;
SIGNAL \vga_sync_instance|pixel_row[5]~feeder_combout\ : std_logic;
SIGNAL \Add6~5\ : std_logic;
SIGNAL \Add6~6_combout\ : std_logic;
SIGNAL \Add7~9\ : std_logic;
SIGNAL \Add7~10_combout\ : std_logic;
SIGNAL \Add5~0_combout\ : std_logic;
SIGNAL \SW[1]~input_o\ : std_logic;
SIGNAL \SRAM_ADDR~26_combout\ : std_logic;
SIGNAL \SRAM_ADDR[12]~30_combout\ : std_logic;
SIGNAL \SRAM_ADDR[13]~31_combout\ : std_logic;
SIGNAL \vga_sync_instance|pixel_row[6]~feeder_combout\ : std_logic;
SIGNAL \Add6~7\ : std_logic;
SIGNAL \Add6~8_combout\ : std_logic;
SIGNAL \Add7~11\ : std_logic;
SIGNAL \Add7~12_combout\ : std_logic;
SIGNAL \Add8~0_combout\ : std_logic;
SIGNAL \SRAM_ADDR[13]~34_combout\ : std_logic;
SIGNAL \Add9~7\ : std_logic;
SIGNAL \Add9~8_combout\ : std_logic;
SIGNAL \Add10~11\ : std_logic;
SIGNAL \Add10~12_combout\ : std_logic;
SIGNAL \Add11~1\ : std_logic;
SIGNAL \Add11~2_combout\ : std_logic;
SIGNAL \SRAM_ADDR[13]~33_combout\ : std_logic;
SIGNAL \SRAM_ADDR[13]~35_combout\ : std_logic;
SIGNAL \Add5~1\ : std_logic;
SIGNAL \Add5~2_combout\ : std_logic;
SIGNAL \SRAM_ADDR[13]~32_combout\ : std_logic;
SIGNAL \SRAM_ADDR[13]~36_combout\ : std_logic;
SIGNAL \bpixel[0]~0_combout\ : std_logic;
SIGNAL \Add0~1\ : std_logic;
SIGNAL \Add0~2_combout\ : std_logic;
SIGNAL \SRAM_ADDR[13]~37_combout\ : std_logic;
SIGNAL \Add4~0_combout\ : std_logic;
SIGNAL \SRAM_ADDR[13]~38_combout\ : std_logic;
SIGNAL \SRAM_ADDR[13]~39_combout\ : std_logic;
SIGNAL \SRAM_ADDR[13]~40_combout\ : std_logic;
SIGNAL \Add4~1\ : std_logic;
SIGNAL \Add4~2_combout\ : std_logic;
SIGNAL \vga_sync_instance|pixel_row[7]~feeder_combout\ : std_logic;
SIGNAL \Add6~9\ : std_logic;
SIGNAL \Add6~10_combout\ : std_logic;
SIGNAL \Add7~13\ : std_logic;
SIGNAL \Add7~14_combout\ : std_logic;
SIGNAL \Add5~3\ : std_logic;
SIGNAL \Add5~4_combout\ : std_logic;
SIGNAL \Add8~1\ : std_logic;
SIGNAL \Add8~2_combout\ : std_logic;
SIGNAL \Add9~9\ : std_logic;
SIGNAL \Add9~10_combout\ : std_logic;
SIGNAL \Add10~13\ : std_logic;
SIGNAL \Add10~14_combout\ : std_logic;
SIGNAL \Add11~3\ : std_logic;
SIGNAL \Add11~4_combout\ : std_logic;
SIGNAL \SRAM_ADDR[14]~41_combout\ : std_logic;
SIGNAL \SRAM_ADDR[14]~42_combout\ : std_logic;
SIGNAL \SRAM_ADDR[14]~43_combout\ : std_logic;
SIGNAL \Add0~3\ : std_logic;
SIGNAL \Add0~4_combout\ : std_logic;
SIGNAL \SRAM_ADDR[14]~44_combout\ : std_logic;
SIGNAL \SRAM_ADDR[14]~45_combout\ : std_logic;
SIGNAL \Add9~11\ : std_logic;
SIGNAL \Add9~12_combout\ : std_logic;
SIGNAL \Add10~15\ : std_logic;
SIGNAL \Add10~16_combout\ : std_logic;
SIGNAL \Add4~3\ : std_logic;
SIGNAL \Add4~4_combout\ : std_logic;
SIGNAL \Add0~5\ : std_logic;
SIGNAL \Add0~6_combout\ : std_logic;
SIGNAL \vga_sync_instance|pixel_row[8]~feeder_combout\ : std_logic;
SIGNAL \Add6~11\ : std_logic;
SIGNAL \Add6~12_combout\ : std_logic;
SIGNAL \Add7~15\ : std_logic;
SIGNAL \Add7~16_combout\ : std_logic;
SIGNAL \Add5~5\ : std_logic;
SIGNAL \Add5~6_combout\ : std_logic;
SIGNAL \Add11~5\ : std_logic;
SIGNAL \Add11~6_combout\ : std_logic;
SIGNAL \Add8~3\ : std_logic;
SIGNAL \Add8~4_combout\ : std_logic;
SIGNAL \SRAM_ADDR[15]~46_combout\ : std_logic;
SIGNAL \SRAM_ADDR[15]~47_combout\ : std_logic;
SIGNAL \SRAM_ADDR[15]~48_combout\ : std_logic;
SIGNAL \SRAM_ADDR[15]~49_combout\ : std_logic;
SIGNAL \SRAM_ADDR[15]~50_combout\ : std_logic;
SIGNAL \cam_instance|current_column[15]~49\ : std_logic;
SIGNAL \cam_instance|current_column[16]~50_combout\ : std_logic;
SIGNAL \Add9~13\ : std_logic;
SIGNAL \Add9~14_combout\ : std_logic;
SIGNAL \Add10~17\ : std_logic;
SIGNAL \Add10~18_combout\ : std_logic;
SIGNAL \Add0~7\ : std_logic;
SIGNAL \Add0~8_combout\ : std_logic;
SIGNAL \Add6~13\ : std_logic;
SIGNAL \Add6~14_combout\ : std_logic;
SIGNAL \Add7~17\ : std_logic;
SIGNAL \Add7~18_combout\ : std_logic;
SIGNAL \Add5~7\ : std_logic;
SIGNAL \Add5~8_combout\ : std_logic;
SIGNAL \Add11~7\ : std_logic;
SIGNAL \Add11~8_combout\ : std_logic;
SIGNAL \Add8~5\ : std_logic;
SIGNAL \Add8~6_combout\ : std_logic;
SIGNAL \SRAM_ADDR[16]~51_combout\ : std_logic;
SIGNAL \SRAM_ADDR[16]~52_combout\ : std_logic;
SIGNAL \Add4~5\ : std_logic;
SIGNAL \Add4~6_combout\ : std_logic;
SIGNAL \SRAM_ADDR[16]~53_combout\ : std_logic;
SIGNAL \SRAM_ADDR[16]~54_combout\ : std_logic;
SIGNAL \SRAM_ADDR[16]~55_combout\ : std_logic;
SIGNAL \Add0~9\ : std_logic;
SIGNAL \Add0~10_combout\ : std_logic;
SIGNAL \Add6~15\ : std_logic;
SIGNAL \Add6~16_combout\ : std_logic;
SIGNAL \Add7~19\ : std_logic;
SIGNAL \Add7~20_combout\ : std_logic;
SIGNAL \Add5~9\ : std_logic;
SIGNAL \Add5~10_combout\ : std_logic;
SIGNAL \Add9~15\ : std_logic;
SIGNAL \Add9~16_combout\ : std_logic;
SIGNAL \cam_instance|current_column[16]~51\ : std_logic;
SIGNAL \cam_instance|current_column[17]~52_combout\ : std_logic;
SIGNAL \Add10~19\ : std_logic;
SIGNAL \Add10~20_combout\ : std_logic;
SIGNAL \Add11~9\ : std_logic;
SIGNAL \Add11~10_combout\ : std_logic;
SIGNAL \Add8~7\ : std_logic;
SIGNAL \Add8~8_combout\ : std_logic;
SIGNAL \SRAM_ADDR[17]~56_combout\ : std_logic;
SIGNAL \SRAM_ADDR[17]~57_combout\ : std_logic;
SIGNAL \SRAM_ADDR[17]~58_combout\ : std_logic;
SIGNAL \Add4~7\ : std_logic;
SIGNAL \Add4~8_combout\ : std_logic;
SIGNAL \SRAM_ADDR[17]~59_combout\ : std_logic;
SIGNAL \SRAM_ADDR[17]~60_combout\ : std_logic;
SIGNAL \cam_instance|current_column[17]~53\ : std_logic;
SIGNAL \cam_instance|current_column[18]~54_combout\ : std_logic;
SIGNAL \Add9~17\ : std_logic;
SIGNAL \Add9~18_combout\ : std_logic;
SIGNAL \Add10~21\ : std_logic;
SIGNAL \Add10~22_combout\ : std_logic;
SIGNAL \Add11~11\ : std_logic;
SIGNAL \Add11~12_combout\ : std_logic;
SIGNAL \Add6~17\ : std_logic;
SIGNAL \Add6~18_combout\ : std_logic;
SIGNAL \Add7~21\ : std_logic;
SIGNAL \Add7~22_combout\ : std_logic;
SIGNAL \Add8~9\ : std_logic;
SIGNAL \Add8~10_combout\ : std_logic;
SIGNAL \SRAM_ADDR[18]~61_combout\ : std_logic;
SIGNAL \Add5~11\ : std_logic;
SIGNAL \Add5~12_combout\ : std_logic;
SIGNAL \SRAM_ADDR[18]~62_combout\ : std_logic;
SIGNAL \Add4~9\ : std_logic;
SIGNAL \Add4~10_combout\ : std_logic;
SIGNAL \SRAM_ADDR[18]~63_combout\ : std_logic;
SIGNAL \Add0~11\ : std_logic;
SIGNAL \Add0~12_combout\ : std_logic;
SIGNAL \SRAM_ADDR[18]~64_combout\ : std_logic;
SIGNAL \SRAM_ADDR[18]~65_combout\ : std_logic;
SIGNAL \cam_instance|current_column[18]~55\ : std_logic;
SIGNAL \cam_instance|current_column[19]~56_combout\ : std_logic;
SIGNAL \Add9~19\ : std_logic;
SIGNAL \Add9~20_combout\ : std_logic;
SIGNAL \Add10~23\ : std_logic;
SIGNAL \Add10~24_combout\ : std_logic;
SIGNAL \Add11~13\ : std_logic;
SIGNAL \Add11~14_combout\ : std_logic;
SIGNAL \Add8~11\ : std_logic;
SIGNAL \Add8~12_combout\ : std_logic;
SIGNAL \SRAM_ADDR[19]~66_combout\ : std_logic;
SIGNAL \Add5~13\ : std_logic;
SIGNAL \Add5~14_combout\ : std_logic;
SIGNAL \SRAM_ADDR[19]~67_combout\ : std_logic;
SIGNAL \Add0~13\ : std_logic;
SIGNAL \Add0~14_combout\ : std_logic;
SIGNAL \SRAM_ADDR[19]~68_combout\ : std_logic;
SIGNAL \Add4~11\ : std_logic;
SIGNAL \Add4~12_combout\ : std_logic;
SIGNAL \SRAM_ADDR[19]~69_combout\ : std_logic;
SIGNAL \SRAM_ADDR[19]~70_combout\ : std_logic;
SIGNAL \SRAM_WE_N~0_combout\ : std_logic;
SIGNAL sram_data_in : std_logic_vector(15 DOWNTO 0);
SIGNAL pixel_counter : std_logic_vector(30 DOWNTO 0);
SIGNAL fpixel : std_logic_vector(30 DOWNTO 0);
SIGNAL diff : std_logic_vector(30 DOWNTO 0);
SIGNAL bpixel : std_logic_vector(30 DOWNTO 0);
SIGNAL \cam_instance|y_data\ : std_logic_vector(7 DOWNTO 0);
SIGNAL \cam_instance|vertical_size\ : std_logic_vector(30 DOWNTO 0);
SIGNAL \cam_instance|horizontal_size\ : std_logic_vector(30 DOWNTO 0);
SIGNAL \cam_instance|current_row\ : std_logic_vector(30 DOWNTO 0);
SIGNAL \cam_instance|current_column\ : std_logic_vector(30 DOWNTO 0);
SIGNAL \vga_sync_instance|v_count\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \vga_sync_instance|pixel_row\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \vga_sync_instance|pixel_column\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \vga_sync_instance|h_count\ : std_logic_vector(9 DOWNTO 0);
SIGNAL \ALT_INV_camera_clock~clkctrl_outclk\ : std_logic;
SIGNAL \ALT_INV_GPIO[9]~input_o\ : std_logic;
SIGNAL \ALT_INV_GPIO[8]~input_o\ : std_logic;
SIGNAL \camstatemachine_instance|ALT_INV_current_state.wait_for_display_end_pre_copy~0_combout\ : std_logic;
SIGNAL \camstatemachine_instance|ALT_INV_current_state.read_background_pixel~0_combout\ : std_logic;
SIGNAL \vga_sync_instance|ALT_INV_v_count[0]~1_combout\ : std_logic;
SIGNAL \camstatemachine_instance|ALT_INV_current_state.display~0_combout\ : std_logic;
SIGNAL \vga_sync_instance|ALT_INV_LessThan6~2_combout\ : std_logic;
SIGNAL \ALT_INV_SRAM_WE_N~0_combout\ : std_logic;
SIGNAL \cam_instance|ALT_INV_second_byte~q\ : std_logic;
SIGNAL \camstatemachine_instance|ALT_INV_WideOr1~combout\ : std_logic;
SIGNAL \ALT_INV_camera_clock~_Duplicate_2_q\ : std_logic;

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
LEDR <= ww_LEDR;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\CLOCK_50~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \CLOCK_50~input_o\);

\camera_clock~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \camera_clock~_Duplicate_2_q\);

\bpixel[0]~1clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \bpixel[0]~1_combout\);

\backgroundsubtraction_eof~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \backgroundsubtraction_eof~0_combout\);

\camstatemachine_instance|WideOr2~clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \camstatemachine_instance|WideOr2~combout\);

\SRAM_ADDR[13]~71clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \SRAM_ADDR[13]~71_combout\);

\fpixel[0]~0clkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \fpixel[0]~0_combout\);
\ALT_INV_camera_clock~clkctrl_outclk\ <= NOT \camera_clock~clkctrl_outclk\;
\ALT_INV_GPIO[9]~input_o\ <= NOT \GPIO[9]~input_o\;
\ALT_INV_GPIO[8]~input_o\ <= NOT \GPIO[8]~input_o\;
\camstatemachine_instance|ALT_INV_current_state.wait_for_display_end_pre_copy~0_combout\ <= NOT \camstatemachine_instance|current_state.wait_for_display_end_pre_copy~0_combout\;
\camstatemachine_instance|ALT_INV_current_state.read_background_pixel~0_combout\ <= NOT \camstatemachine_instance|current_state.read_background_pixel~0_combout\;
\vga_sync_instance|ALT_INV_v_count[0]~1_combout\ <= NOT \vga_sync_instance|v_count[0]~1_combout\;
\camstatemachine_instance|ALT_INV_current_state.display~0_combout\ <= NOT \camstatemachine_instance|current_state.display~0_combout\;
\vga_sync_instance|ALT_INV_LessThan6~2_combout\ <= NOT \vga_sync_instance|LessThan6~2_combout\;
\ALT_INV_SRAM_WE_N~0_combout\ <= NOT \SRAM_WE_N~0_combout\;
\cam_instance|ALT_INV_second_byte~q\ <= NOT \cam_instance|second_byte~q\;
\camstatemachine_instance|ALT_INV_WideOr1~combout\ <= NOT \camstatemachine_instance|WideOr1~combout\;
\ALT_INV_camera_clock~_Duplicate_2_q\ <= NOT \camera_clock~_Duplicate_2_q\;

-- Location: IOOBUF_X60_Y0_N2
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

-- Location: IOOBUF_X83_Y0_N9
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

-- Location: IOOBUF_X85_Y0_N2
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

-- Location: IOOBUF_X83_Y0_N2
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

-- Location: IOOBUF_X109_Y0_N2
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

-- Location: IOOBUF_X96_Y0_N9
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

-- Location: IOOBUF_X87_Y0_N23
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

-- Location: IOOBUF_X96_Y0_N2
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

-- Location: IOOBUF_X111_Y0_N9
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

-- Location: IOOBUF_X91_Y0_N23
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

-- Location: IOOBUF_X100_Y0_N23
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

-- Location: IOOBUF_X91_Y0_N16
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

-- Location: IOOBUF_X89_Y0_N9
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

-- Location: IOOBUF_X79_Y0_N9
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

-- Location: IOOBUF_X100_Y0_N16
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

-- Location: IOOBUF_X79_Y0_N2
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

-- Location: IOOBUF_X89_Y0_N2
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

-- Location: IOOBUF_X85_Y0_N23
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

-- Location: IOOBUF_X81_Y0_N23
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

-- Location: IOOBUF_X85_Y0_N16
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

-- Location: IOOBUF_X113_Y0_N2
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

-- Location: IOOBUF_X81_Y0_N16
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

-- Location: IOOBUF_X107_Y0_N2
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

-- Location: IOOBUF_X60_Y0_N23
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

-- Location: IOOBUF_X109_Y0_N9
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

-- Location: IOOBUF_X96_Y0_N23
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

-- Location: IOOBUF_X102_Y0_N23
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

-- Location: IOOBUF_X96_Y0_N16
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

-- Location: IOOBUF_X102_Y0_N16
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

-- Location: IOOBUF_X65_Y0_N23
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

-- Location: IOOBUF_X60_Y0_N16
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

-- Location: IOOBUF_X60_Y0_N9
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

-- Location: IOOBUF_X94_Y0_N9
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

-- Location: IOOBUF_X65_Y0_N16
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

-- Location: IOOBUF_X94_Y0_N2
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

-- Location: IOOBUF_X113_Y0_N9
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

-- Location: IOOBUF_X5_Y0_N9
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

-- Location: IOOBUF_X1_Y0_N2
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

-- Location: IOOBUF_X9_Y0_N23
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

-- Location: IOOBUF_X9_Y0_N16
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

-- Location: IOOBUF_X7_Y0_N16
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

-- Location: IOOBUF_X11_Y0_N23
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

-- Location: IOOBUF_X11_Y0_N16
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

-- Location: IOOBUF_X20_Y0_N9
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

-- Location: IOOBUF_X0_Y21_N16
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

-- Location: IOOBUF_X0_Y22_N23
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

-- Location: IOOBUF_X0_Y17_N16
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

-- Location: IOOBUF_X0_Y16_N16
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

-- Location: IOOBUF_X0_Y7_N9
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

-- Location: IOOBUF_X3_Y0_N23
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

-- Location: IOOBUF_X7_Y0_N23
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

-- Location: IOOBUF_X3_Y0_N16
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

-- Location: IOOBUF_X69_Y73_N23
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

-- Location: IOOBUF_X107_Y73_N23
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

-- Location: IOOBUF_X67_Y73_N23
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

-- Location: IOOBUF_X115_Y50_N2
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

-- Location: IOOBUF_X115_Y54_N16
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

-- Location: IOOBUF_X115_Y67_N16
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

-- Location: IOOBUF_X115_Y69_N2
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

-- Location: IOOBUF_X115_Y41_N2
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

-- Location: IOOBUF_X115_Y30_N9
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

-- Location: IOOBUF_X115_Y25_N23
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

-- Location: IOOBUF_X115_Y30_N2
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

-- Location: IOOBUF_X115_Y20_N9
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

-- Location: IOOBUF_X115_Y22_N2
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

-- Location: IOOBUF_X115_Y28_N9
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

-- Location: IOOBUF_X115_Y17_N9
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

-- Location: IOOBUF_X115_Y16_N2
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

-- Location: IOOBUF_X115_Y19_N9
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

-- Location: IOOBUF_X115_Y19_N2
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

-- Location: IOOBUF_X115_Y18_N2
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

-- Location: IOOBUF_X115_Y20_N2
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

-- Location: IOOBUF_X115_Y21_N16
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

-- Location: IOOBUF_X115_Y25_N16
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

-- Location: IOOBUF_X115_Y29_N2
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

-- Location: IOOBUF_X100_Y0_N2
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

-- Location: IOOBUF_X111_Y0_N2
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

-- Location: IOOBUF_X105_Y0_N23
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

-- Location: IOOBUF_X105_Y0_N9
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

-- Location: IOOBUF_X105_Y0_N2
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

-- Location: IOOBUF_X98_Y0_N23
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

-- Location: IOOBUF_X107_Y0_N9
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

-- Location: IOOBUF_X74_Y0_N9
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

-- Location: IOOBUF_X74_Y0_N2
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

-- Location: IOOBUF_X83_Y0_N23
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

-- Location: IOOBUF_X83_Y0_N16
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

-- Location: IOOBUF_X79_Y0_N23
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

-- Location: IOOBUF_X85_Y0_N9
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

-- Location: IOOBUF_X87_Y0_N16
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

-- Location: IOOBUF_X98_Y0_N16
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

-- Location: IOOBUF_X72_Y0_N2
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

-- Location: IOOBUF_X72_Y0_N9
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

-- Location: IOOBUF_X79_Y0_N16
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

-- Location: IOOBUF_X69_Y0_N2
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

-- Location: IOOBUF_X89_Y0_N23
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

-- Location: IOOBUF_X65_Y0_N2
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

-- Location: IOOBUF_X65_Y0_N9
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

-- Location: IOOBUF_X89_Y0_N16
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

-- Location: IOOBUF_X67_Y0_N16
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

-- Location: IOOBUF_X67_Y0_N23
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

-- Location: IOOBUF_X74_Y0_N23
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

-- Location: IOOBUF_X74_Y0_N16
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

-- Location: IOOBUF_X67_Y0_N9
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

-- Location: IOOBUF_X62_Y0_N23
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

-- Location: IOOBUF_X62_Y0_N16
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

-- Location: IOOBUF_X67_Y0_N2
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

-- Location: IOOBUF_X69_Y0_N9
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

-- Location: IOOBUF_X54_Y0_N23
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

-- Location: IOOBUF_X33_Y73_N2
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

-- Location: IOOBUF_X31_Y73_N2
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

-- Location: IOOBUF_X35_Y73_N23
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

-- Location: IOOBUF_X33_Y73_N9
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

-- Location: IOOBUF_X20_Y73_N9
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

-- Location: IOOBUF_X40_Y73_N9
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

-- Location: IOOBUF_X11_Y73_N23
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

-- Location: IOOBUF_X20_Y73_N16
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

-- Location: IOOBUF_X11_Y73_N16
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

-- Location: IOOBUF_X25_Y73_N16
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

-- Location: IOOBUF_X11_Y73_N9
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

-- Location: IOOBUF_X25_Y73_N23
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

-- Location: IOOBUF_X16_Y73_N9
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

-- Location: IOOBUF_X16_Y73_N2
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

-- Location: IOOBUF_X20_Y73_N2
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

-- Location: IOOBUF_X23_Y73_N16
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

-- Location: IOOBUF_X38_Y73_N9
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

-- Location: IOOBUF_X38_Y73_N2
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

-- Location: IOOBUF_X23_Y73_N2
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

-- Location: IOOBUF_X42_Y73_N9
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

-- Location: IOOBUF_X42_Y73_N2
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

-- Location: IOOBUF_X52_Y73_N16
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

-- Location: IOOBUF_X23_Y73_N9
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

-- Location: IOOBUF_X52_Y73_N23
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

-- Location: IOOBUF_X47_Y73_N2
\VGA_CLK~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \camera_clock~_Duplicate_1_q\,
	devoe => ww_devoe,
	o => \VGA_CLK~output_o\);

-- Location: IOOBUF_X31_Y73_N9
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

-- Location: IOOBUF_X38_Y73_N16
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

-- Location: IOOBUF_X54_Y73_N2
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

-- Location: IOOBUF_X35_Y73_N16
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

-- Location: IOOBUF_X16_Y0_N2
\SRAM_ADDR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SRAM_ADDR[0]~3_combout\,
	devoe => ww_devoe,
	o => \SRAM_ADDR[0]~output_o\);

-- Location: IOOBUF_X3_Y0_N2
\SRAM_ADDR[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SRAM_ADDR[1]~5_combout\,
	devoe => ww_devoe,
	o => \SRAM_ADDR[1]~output_o\);

-- Location: IOOBUF_X20_Y0_N16
\SRAM_ADDR[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SRAM_ADDR[2]~7_combout\,
	devoe => ww_devoe,
	o => \SRAM_ADDR[2]~output_o\);

-- Location: IOOBUF_X9_Y0_N2
\SRAM_ADDR[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SRAM_ADDR[3]~9_combout\,
	devoe => ww_devoe,
	o => \SRAM_ADDR[3]~output_o\);

-- Location: IOOBUF_X0_Y4_N9
\SRAM_ADDR[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SRAM_ADDR[4]~11_combout\,
	devoe => ww_devoe,
	o => \SRAM_ADDR[4]~output_o\);

-- Location: IOOBUF_X1_Y0_N16
\SRAM_ADDR[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SRAM_ADDR[5]~13_combout\,
	devoe => ww_devoe,
	o => \SRAM_ADDR[5]~output_o\);

-- Location: IOOBUF_X0_Y4_N23
\SRAM_ADDR[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SRAM_ADDR[6]~15_combout\,
	devoe => ww_devoe,
	o => \SRAM_ADDR[6]~output_o\);

-- Location: IOOBUF_X0_Y5_N16
\SRAM_ADDR[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SRAM_ADDR[7]~17_combout\,
	devoe => ww_devoe,
	o => \SRAM_ADDR[7]~output_o\);

-- Location: IOOBUF_X5_Y0_N16
\SRAM_ADDR[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SRAM_ADDR[8]~19_combout\,
	devoe => ww_devoe,
	o => \SRAM_ADDR[8]~output_o\);

-- Location: IOOBUF_X0_Y31_N16
\SRAM_ADDR[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SRAM_ADDR[9]~21_combout\,
	devoe => ww_devoe,
	o => \SRAM_ADDR[9]~output_o\);

-- Location: IOOBUF_X0_Y6_N2
\SRAM_ADDR[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SRAM_ADDR[10]~23_combout\,
	devoe => ww_devoe,
	o => \SRAM_ADDR[10]~output_o\);

-- Location: IOOBUF_X0_Y22_N16
\SRAM_ADDR[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SRAM_ADDR[11]~25_combout\,
	devoe => ww_devoe,
	o => \SRAM_ADDR[11]~output_o\);

-- Location: IOOBUF_X0_Y8_N23
\SRAM_ADDR[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SRAM_ADDR[12]~30_combout\,
	devoe => ww_devoe,
	o => \SRAM_ADDR[12]~output_o\);

-- Location: IOOBUF_X0_Y23_N23
\SRAM_ADDR[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SRAM_ADDR[13]~40_combout\,
	devoe => ww_devoe,
	o => \SRAM_ADDR[13]~output_o\);

-- Location: IOOBUF_X0_Y19_N2
\SRAM_ADDR[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SRAM_ADDR[14]~45_combout\,
	devoe => ww_devoe,
	o => \SRAM_ADDR[14]~output_o\);

-- Location: IOOBUF_X27_Y0_N9
\SRAM_ADDR[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SRAM_ADDR[15]~50_combout\,
	devoe => ww_devoe,
	o => \SRAM_ADDR[15]~output_o\);

-- Location: IOOBUF_X49_Y0_N9
\SRAM_ADDR[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SRAM_ADDR[16]~55_combout\,
	devoe => ww_devoe,
	o => \SRAM_ADDR[16]~output_o\);

-- Location: IOOBUF_X11_Y0_N9
\SRAM_ADDR[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SRAM_ADDR[17]~60_combout\,
	devoe => ww_devoe,
	o => \SRAM_ADDR[17]~output_o\);

-- Location: IOOBUF_X11_Y0_N2
\SRAM_ADDR[18]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SRAM_ADDR[18]~65_combout\,
	devoe => ww_devoe,
	o => \SRAM_ADDR[18]~output_o\);

-- Location: IOOBUF_X0_Y20_N16
\SRAM_ADDR[19]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \SRAM_ADDR[19]~70_combout\,
	devoe => ww_devoe,
	o => \SRAM_ADDR[19]~output_o\);

-- Location: IOOBUF_X23_Y0_N16
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

-- Location: IOOBUF_X1_Y0_N9
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

-- Location: IOOBUF_X0_Y4_N2
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

-- Location: IOOBUF_X1_Y0_N23
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

-- Location: IOOBUF_X23_Y0_N23
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

-- Location: IOOBUF_X69_Y73_N16
\LEDR[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \camstatemachine_instance|WideOr2~combout\,
	devoe => ww_devoe,
	o => \LEDR[0]~output_o\);

-- Location: IOOBUF_X94_Y73_N2
\LEDR[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \backgroundsubtraction_eof~combout\,
	devoe => ww_devoe,
	o => \LEDR[1]~output_o\);

-- Location: IOOBUF_X94_Y73_N9
\LEDR[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[2]~output_o\);

-- Location: IOOBUF_X107_Y73_N16
\LEDR[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[3]~output_o\);

-- Location: IOOBUF_X87_Y73_N16
\LEDR[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[4]~output_o\);

-- Location: IOOBUF_X87_Y73_N9
\LEDR[5]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[5]~output_o\);

-- Location: IOOBUF_X72_Y73_N9
\LEDR[6]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[6]~output_o\);

-- Location: IOOBUF_X72_Y73_N2
\LEDR[7]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[7]~output_o\);

-- Location: IOOBUF_X69_Y73_N2
\LEDR[8]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[8]~output_o\);

-- Location: IOOBUF_X83_Y73_N23
\LEDR[9]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[9]~output_o\);

-- Location: IOOBUF_X60_Y73_N23
\LEDR[10]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[10]~output_o\);

-- Location: IOOBUF_X65_Y73_N23
\LEDR[11]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[11]~output_o\);

-- Location: IOOBUF_X65_Y73_N16
\LEDR[12]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[12]~output_o\);

-- Location: IOOBUF_X67_Y73_N9
\LEDR[13]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[13]~output_o\);

-- Location: IOOBUF_X58_Y73_N2
\LEDR[14]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[14]~output_o\);

-- Location: IOOBUF_X65_Y73_N9
\LEDR[15]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[15]~output_o\);

-- Location: IOOBUF_X67_Y73_N2
\LEDR[16]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[16]~output_o\);

-- Location: IOOBUF_X60_Y73_N16
\LEDR[17]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => GND,
	devoe => ww_devoe,
	o => \LEDR[17]~output_o\);

-- Location: IOIBUF_X0_Y36_N15
\CLOCK_50~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_CLOCK_50,
	o => \CLOCK_50~input_o\);

-- Location: CLKCTRL_G4
\CLOCK_50~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \CLOCK_50~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \CLOCK_50~inputclkctrl_outclk\);

-- Location: LCCOMB_X70_Y33_N16
\camera_clock~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \camera_clock~0_combout\ = !\camera_clock~_Duplicate_2_q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \camera_clock~_Duplicate_2_q\,
	combout => \camera_clock~0_combout\);

-- Location: LCCOMB_X70_Y33_N8
\camera_clock~_Duplicate_2feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \camera_clock~_Duplicate_2feeder_combout\ = \camera_clock~0_combout\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \camera_clock~0_combout\,
	combout => \camera_clock~_Duplicate_2feeder_combout\);

-- Location: FF_X70_Y33_N9
\camera_clock~_Duplicate_2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \camera_clock~_Duplicate_2feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \camera_clock~_Duplicate_2_q\);

-- Location: DDIOOUTCELL_X94_Y0_N11
camera_clock : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \ALT_INV_camera_clock~_Duplicate_2_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \camera_clock~q\);

-- Location: IOIBUF_X65_Y0_N15
\GPIO[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(11),
	o => \GPIO[11]~input_o\);

-- Location: IOIBUF_X115_Y40_N8
\KEY[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(0),
	o => \KEY[0]~input_o\);

-- Location: IOIBUF_X115_Y53_N15
\KEY[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(1),
	o => \KEY[1]~input_o\);

-- Location: LCCOMB_X59_Y26_N28
\camstatemachine_instance|current_state.wait_for_display_end_pre_copy~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \camstatemachine_instance|current_state.wait_for_display_end_pre_copy~6_combout\ = (!\KEY[1]~input_o\ & \KEY[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY[1]~input_o\,
	datad => \KEY[0]~input_o\,
	combout => \camstatemachine_instance|current_state.wait_for_display_end_pre_copy~6_combout\);

-- Location: LCCOMB_X60_Y26_N4
\camstatemachine_instance|current_state.read_background_pixel~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \camstatemachine_instance|current_state.read_background_pixel~1_combout\ = (\KEY[0]~input_o\ & ((\camstatemachine_instance|current_state.read_background_pixel~1_combout\) # 
-- (\camstatemachine_instance|current_state.wait_for_display_end_pre_copy~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \KEY[0]~input_o\,
	datac => \camstatemachine_instance|current_state.read_background_pixel~1_combout\,
	datad => \camstatemachine_instance|current_state.wait_for_display_end_pre_copy~6_combout\,
	combout => \camstatemachine_instance|current_state.read_background_pixel~1_combout\);

-- Location: LCCOMB_X60_Y26_N22
\camstatemachine_instance|current_state.display~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \camstatemachine_instance|current_state.display~0_combout\ = (!\KEY[0]~input_o\) # (!\KEY[1]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \KEY[1]~input_o\,
	datad => \KEY[0]~input_o\,
	combout => \camstatemachine_instance|current_state.display~0_combout\);

-- Location: FF_X60_Y26_N15
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

-- Location: CLKCTRL_G6
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

-- Location: LCCOMB_X61_Y23_N22
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

-- Location: LCCOMB_X61_Y23_N24
\vga_sync_instance|Add0~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_sync_instance|Add0~12_combout\ = (\vga_sync_instance|h_count\(6) & (\vga_sync_instance|Add0~11\ $ (GND))) # (!\vga_sync_instance|h_count\(6) & (!\vga_sync_instance|Add0~11\ & VCC))
-- \vga_sync_instance|Add0~13\ = CARRY((\vga_sync_instance|h_count\(6) & !\vga_sync_instance|Add0~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga_sync_instance|h_count\(6),
	datad => VCC,
	cin => \vga_sync_instance|Add0~11\,
	combout => \vga_sync_instance|Add0~12_combout\,
	cout => \vga_sync_instance|Add0~13\);

-- Location: FF_X61_Y23_N25
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

-- Location: LCCOMB_X61_Y23_N26
\vga_sync_instance|Add0~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_sync_instance|Add0~14_combout\ = (\vga_sync_instance|h_count\(7) & (!\vga_sync_instance|Add0~13\)) # (!\vga_sync_instance|h_count\(7) & ((\vga_sync_instance|Add0~13\) # (GND)))
-- \vga_sync_instance|Add0~15\ = CARRY((!\vga_sync_instance|Add0~13\) # (!\vga_sync_instance|h_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_sync_instance|h_count\(7),
	datad => VCC,
	cin => \vga_sync_instance|Add0~13\,
	combout => \vga_sync_instance|Add0~14_combout\,
	cout => \vga_sync_instance|Add0~15\);

-- Location: FF_X61_Y23_N27
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

-- Location: LCCOMB_X61_Y23_N28
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

-- Location: LCCOMB_X61_Y23_N8
\vga_sync_instance|h_count~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_sync_instance|h_count~0_combout\ = (!\vga_sync_instance|Equal0~2_combout\ & \vga_sync_instance|Add0~16_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_sync_instance|Equal0~2_combout\,
	datad => \vga_sync_instance|Add0~16_combout\,
	combout => \vga_sync_instance|h_count~0_combout\);

-- Location: FF_X61_Y23_N9
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

-- Location: LCCOMB_X62_Y23_N14
\vga_sync_instance|Equal0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_sync_instance|Equal0~1_combout\ = (!\vga_sync_instance|h_count\(7) & (!\vga_sync_instance|h_count\(3) & (\vga_sync_instance|h_count\(5) & !\vga_sync_instance|h_count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_sync_instance|h_count\(7),
	datab => \vga_sync_instance|h_count\(3),
	datac => \vga_sync_instance|h_count\(5),
	datad => \vga_sync_instance|h_count\(4),
	combout => \vga_sync_instance|Equal0~1_combout\);

-- Location: LCCOMB_X61_Y23_N30
\vga_sync_instance|Add0~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_sync_instance|Add0~18_combout\ = \vga_sync_instance|Add0~17\ $ (\vga_sync_instance|h_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \vga_sync_instance|h_count\(9),
	cin => \vga_sync_instance|Add0~17\,
	combout => \vga_sync_instance|Add0~18_combout\);

-- Location: LCCOMB_X61_Y23_N0
\vga_sync_instance|h_count~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_sync_instance|h_count~1_combout\ = (\vga_sync_instance|Add0~18_combout\ & !\vga_sync_instance|Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vga_sync_instance|Add0~18_combout\,
	datad => \vga_sync_instance|Equal0~2_combout\,
	combout => \vga_sync_instance|h_count~1_combout\);

-- Location: FF_X61_Y23_N1
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

-- Location: LCCOMB_X62_Y23_N12
\vga_sync_instance|Equal0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_sync_instance|Equal0~0_combout\ = (!\vga_sync_instance|h_count\(0) & (!\vga_sync_instance|h_count\(6) & (!\vga_sync_instance|h_count\(2) & !\vga_sync_instance|h_count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_sync_instance|h_count\(0),
	datab => \vga_sync_instance|h_count\(6),
	datac => \vga_sync_instance|h_count\(2),
	datad => \vga_sync_instance|h_count\(1),
	combout => \vga_sync_instance|Equal0~0_combout\);

-- Location: LCCOMB_X62_Y23_N4
\vga_sync_instance|Equal0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_sync_instance|Equal0~2_combout\ = (\vga_sync_instance|h_count\(8) & (\vga_sync_instance|Equal0~1_combout\ & (\vga_sync_instance|h_count\(9) & \vga_sync_instance|Equal0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_sync_instance|h_count\(8),
	datab => \vga_sync_instance|Equal0~1_combout\,
	datac => \vga_sync_instance|h_count\(9),
	datad => \vga_sync_instance|Equal0~0_combout\,
	combout => \vga_sync_instance|Equal0~2_combout\);

-- Location: LCCOMB_X61_Y23_N12
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

-- Location: LCCOMB_X62_Y23_N10
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

-- Location: FF_X62_Y23_N11
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

-- Location: LCCOMB_X61_Y23_N14
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

-- Location: FF_X61_Y23_N15
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

-- Location: LCCOMB_X61_Y23_N16
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

-- Location: FF_X61_Y23_N17
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

-- Location: LCCOMB_X61_Y23_N18
\vga_sync_instance|Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_sync_instance|Add0~6_combout\ = (\vga_sync_instance|h_count\(3) & (!\vga_sync_instance|Add0~5\)) # (!\vga_sync_instance|h_count\(3) & ((\vga_sync_instance|Add0~5\) # (GND)))
-- \vga_sync_instance|Add0~7\ = CARRY((!\vga_sync_instance|Add0~5\) # (!\vga_sync_instance|h_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga_sync_instance|h_count\(3),
	datad => VCC,
	cin => \vga_sync_instance|Add0~5\,
	combout => \vga_sync_instance|Add0~6_combout\,
	cout => \vga_sync_instance|Add0~7\);

-- Location: FF_X61_Y23_N19
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

-- Location: LCCOMB_X61_Y23_N20
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

-- Location: FF_X61_Y23_N21
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

-- Location: LCCOMB_X61_Y23_N6
\vga_sync_instance|h_count~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_sync_instance|h_count~3_combout\ = (\vga_sync_instance|Add0~10_combout\ & !\vga_sync_instance|Equal0~2_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vga_sync_instance|Add0~10_combout\,
	datad => \vga_sync_instance|Equal0~2_combout\,
	combout => \vga_sync_instance|h_count~3_combout\);

-- Location: FF_X61_Y23_N7
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

-- Location: LCCOMB_X61_Y23_N10
\vga_sync_instance|process_0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_sync_instance|process_0~1_combout\ = (!\vga_sync_instance|h_count\(5) & (!\vga_sync_instance|h_count\(6) & ((!\vga_sync_instance|h_count\(4)) # (!\vga_sync_instance|h_count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_sync_instance|h_count\(5),
	datab => \vga_sync_instance|h_count\(3),
	datac => \vga_sync_instance|h_count\(6),
	datad => \vga_sync_instance|h_count\(4),
	combout => \vga_sync_instance|process_0~1_combout\);

-- Location: LCCOMB_X61_Y23_N2
\vga_sync_instance|process_0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_sync_instance|process_0~0_combout\ = (!\vga_sync_instance|v_count\(9)) # (!\vga_sync_instance|h_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vga_sync_instance|h_count\(9),
	datad => \vga_sync_instance|v_count\(9),
	combout => \vga_sync_instance|process_0~0_combout\);

-- Location: LCCOMB_X61_Y23_N4
\vga_sync_instance|process_0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_sync_instance|process_0~2_combout\ = (\vga_sync_instance|process_0~0_combout\) # ((!\vga_sync_instance|h_count\(8) & ((\vga_sync_instance|process_0~1_combout\) # (!\vga_sync_instance|h_count\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100100011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_sync_instance|process_0~1_combout\,
	datab => \vga_sync_instance|h_count\(8),
	datac => \vga_sync_instance|h_count\(7),
	datad => \vga_sync_instance|process_0~0_combout\,
	combout => \vga_sync_instance|process_0~2_combout\);

-- Location: LCCOMB_X59_Y23_N8
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

-- Location: LCCOMB_X60_Y23_N8
\vga_sync_instance|v_count~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_sync_instance|v_count~8_combout\ = (\vga_sync_instance|Add1~0_combout\ & ((\vga_sync_instance|process_0~2_combout\) # (\vga_sync_instance|LessThan1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_sync_instance|process_0~2_combout\,
	datac => \vga_sync_instance|LessThan1~2_combout\,
	datad => \vga_sync_instance|Add1~0_combout\,
	combout => \vga_sync_instance|v_count~8_combout\);

-- Location: FF_X60_Y23_N9
\vga_sync_instance|v_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_camera_clock~clkctrl_outclk\,
	d => \vga_sync_instance|v_count~8_combout\,
	ena => \vga_sync_instance|ALT_INV_v_count[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_sync_instance|v_count\(0));

-- Location: LCCOMB_X59_Y23_N10
\vga_sync_instance|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_sync_instance|Add1~2_combout\ = (\vga_sync_instance|v_count\(1) & (!\vga_sync_instance|Add1~1\)) # (!\vga_sync_instance|v_count\(1) & ((\vga_sync_instance|Add1~1\) # (GND)))
-- \vga_sync_instance|Add1~3\ = CARRY((!\vga_sync_instance|Add1~1\) # (!\vga_sync_instance|v_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga_sync_instance|v_count\(1),
	datad => VCC,
	cin => \vga_sync_instance|Add1~1\,
	combout => \vga_sync_instance|Add1~2_combout\,
	cout => \vga_sync_instance|Add1~3\);

-- Location: LCCOMB_X60_Y23_N10
\vga_sync_instance|v_count~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_sync_instance|v_count~9_combout\ = (\vga_sync_instance|Add1~2_combout\ & ((\vga_sync_instance|process_0~2_combout\) # (\vga_sync_instance|LessThan1~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_sync_instance|process_0~2_combout\,
	datac => \vga_sync_instance|LessThan1~2_combout\,
	datad => \vga_sync_instance|Add1~2_combout\,
	combout => \vga_sync_instance|v_count~9_combout\);

-- Location: FF_X60_Y23_N11
\vga_sync_instance|v_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_camera_clock~clkctrl_outclk\,
	d => \vga_sync_instance|v_count~9_combout\,
	ena => \vga_sync_instance|ALT_INV_v_count[0]~1_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_sync_instance|v_count\(1));

-- Location: LCCOMB_X59_Y23_N12
\vga_sync_instance|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_sync_instance|Add1~4_combout\ = (\vga_sync_instance|v_count\(2) & (\vga_sync_instance|Add1~3\ $ (GND))) # (!\vga_sync_instance|v_count\(2) & (!\vga_sync_instance|Add1~3\ & VCC))
-- \vga_sync_instance|Add1~5\ = CARRY((\vga_sync_instance|v_count\(2) & !\vga_sync_instance|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga_sync_instance|v_count\(2),
	datad => VCC,
	cin => \vga_sync_instance|Add1~3\,
	combout => \vga_sync_instance|Add1~4_combout\,
	cout => \vga_sync_instance|Add1~5\);

-- Location: LCCOMB_X62_Y23_N6
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

-- Location: LCCOMB_X62_Y23_N24
\vga_sync_instance|process_0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_sync_instance|process_0~3_combout\ = (\vga_sync_instance|h_count\(4) & \vga_sync_instance|h_count\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga_sync_instance|h_count\(4),
	datad => \vga_sync_instance|h_count\(3),
	combout => \vga_sync_instance|process_0~3_combout\);

-- Location: LCCOMB_X62_Y23_N22
\vga_sync_instance|Equal1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_sync_instance|Equal1~0_combout\ = (\vga_sync_instance|h_count\(8)) # ((\vga_sync_instance|h_count\(5)) # ((!\vga_sync_instance|process_0~3_combout\) # (!\vga_sync_instance|h_count\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_sync_instance|h_count\(8),
	datab => \vga_sync_instance|h_count\(5),
	datac => \vga_sync_instance|h_count\(7),
	datad => \vga_sync_instance|process_0~3_combout\,
	combout => \vga_sync_instance|Equal1~0_combout\);

-- Location: LCCOMB_X60_Y23_N4
\vga_sync_instance|v_count[4]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_sync_instance|v_count[4]~0_combout\ = (\vga_sync_instance|Equal0~3_combout\ & (!\vga_sync_instance|Equal1~0_combout\ & ((\vga_sync_instance|LessThan1~2_combout\) # (\vga_sync_instance|process_0~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_sync_instance|LessThan1~2_combout\,
	datab => \vga_sync_instance|Equal0~3_combout\,
	datac => \vga_sync_instance|Equal1~0_combout\,
	datad => \vga_sync_instance|process_0~2_combout\,
	combout => \vga_sync_instance|v_count[4]~0_combout\);

-- Location: LCCOMB_X60_Y23_N28
\vga_sync_instance|v_count[2]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_sync_instance|v_count[2]~10_combout\ = (\vga_sync_instance|Add1~4_combout\ & ((\vga_sync_instance|v_count[4]~0_combout\) # ((\vga_sync_instance|v_count\(2) & \vga_sync_instance|v_count[0]~1_combout\)))) # (!\vga_sync_instance|Add1~4_combout\ & 
-- (((\vga_sync_instance|v_count\(2) & \vga_sync_instance|v_count[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_sync_instance|Add1~4_combout\,
	datab => \vga_sync_instance|v_count[4]~0_combout\,
	datac => \vga_sync_instance|v_count\(2),
	datad => \vga_sync_instance|v_count[0]~1_combout\,
	combout => \vga_sync_instance|v_count[2]~10_combout\);

-- Location: FF_X60_Y23_N29
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

-- Location: LCCOMB_X59_Y23_N14
\vga_sync_instance|Add1~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_sync_instance|Add1~6_combout\ = (\vga_sync_instance|v_count\(3) & (!\vga_sync_instance|Add1~5\)) # (!\vga_sync_instance|v_count\(3) & ((\vga_sync_instance|Add1~5\) # (GND)))
-- \vga_sync_instance|Add1~7\ = CARRY((!\vga_sync_instance|Add1~5\) # (!\vga_sync_instance|v_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_sync_instance|v_count\(3),
	datad => VCC,
	cin => \vga_sync_instance|Add1~5\,
	combout => \vga_sync_instance|Add1~6_combout\,
	cout => \vga_sync_instance|Add1~7\);

-- Location: LCCOMB_X60_Y23_N6
\vga_sync_instance|v_count[3]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_sync_instance|v_count[3]~11_combout\ = (\vga_sync_instance|Add1~6_combout\ & ((\vga_sync_instance|v_count[4]~0_combout\) # ((\vga_sync_instance|v_count\(3) & \vga_sync_instance|v_count[0]~1_combout\)))) # (!\vga_sync_instance|Add1~6_combout\ & 
-- (((\vga_sync_instance|v_count\(3) & \vga_sync_instance|v_count[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_sync_instance|Add1~6_combout\,
	datab => \vga_sync_instance|v_count[4]~0_combout\,
	datac => \vga_sync_instance|v_count\(3),
	datad => \vga_sync_instance|v_count[0]~1_combout\,
	combout => \vga_sync_instance|v_count[3]~11_combout\);

-- Location: FF_X60_Y23_N7
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

-- Location: LCCOMB_X60_Y23_N14
\vga_sync_instance|LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_sync_instance|LessThan1~0_combout\ = (((!\vga_sync_instance|v_count\(0) & !\vga_sync_instance|v_count\(1))) # (!\vga_sync_instance|v_count\(3))) # (!\vga_sync_instance|v_count\(2))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011111111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_sync_instance|v_count\(0),
	datab => \vga_sync_instance|v_count\(2),
	datac => \vga_sync_instance|v_count\(1),
	datad => \vga_sync_instance|v_count\(3),
	combout => \vga_sync_instance|LessThan1~0_combout\);

-- Location: LCCOMB_X59_Y23_N16
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

-- Location: LCCOMB_X60_Y23_N30
\vga_sync_instance|v_count[4]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_sync_instance|v_count[4]~7_combout\ = (\vga_sync_instance|Add1~8_combout\ & ((\vga_sync_instance|v_count[4]~0_combout\) # ((\vga_sync_instance|v_count\(4) & \vga_sync_instance|v_count[0]~1_combout\)))) # (!\vga_sync_instance|Add1~8_combout\ & 
-- (((\vga_sync_instance|v_count\(4) & \vga_sync_instance|v_count[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_sync_instance|Add1~8_combout\,
	datab => \vga_sync_instance|v_count[4]~0_combout\,
	datac => \vga_sync_instance|v_count\(4),
	datad => \vga_sync_instance|v_count[0]~1_combout\,
	combout => \vga_sync_instance|v_count[4]~7_combout\);

-- Location: FF_X60_Y23_N31
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

-- Location: LCCOMB_X59_Y23_N18
\vga_sync_instance|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_sync_instance|Add1~10_combout\ = (\vga_sync_instance|v_count\(5) & (!\vga_sync_instance|Add1~9\)) # (!\vga_sync_instance|v_count\(5) & ((\vga_sync_instance|Add1~9\) # (GND)))
-- \vga_sync_instance|Add1~11\ = CARRY((!\vga_sync_instance|Add1~9\) # (!\vga_sync_instance|v_count\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga_sync_instance|v_count\(5),
	datad => VCC,
	cin => \vga_sync_instance|Add1~9\,
	combout => \vga_sync_instance|Add1~10_combout\,
	cout => \vga_sync_instance|Add1~11\);

-- Location: LCCOMB_X60_Y23_N18
\vga_sync_instance|v_count[5]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_sync_instance|v_count[5]~3_combout\ = (\vga_sync_instance|v_count[0]~1_combout\ & ((\vga_sync_instance|v_count\(5)) # ((\vga_sync_instance|v_count[4]~0_combout\ & \vga_sync_instance|Add1~10_combout\)))) # (!\vga_sync_instance|v_count[0]~1_combout\ & 
-- (\vga_sync_instance|v_count[4]~0_combout\ & ((\vga_sync_instance|Add1~10_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_sync_instance|v_count[0]~1_combout\,
	datab => \vga_sync_instance|v_count[4]~0_combout\,
	datac => \vga_sync_instance|v_count\(5),
	datad => \vga_sync_instance|Add1~10_combout\,
	combout => \vga_sync_instance|v_count[5]~3_combout\);

-- Location: FF_X60_Y23_N19
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

-- Location: LCCOMB_X59_Y23_N20
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

-- Location: LCCOMB_X60_Y23_N20
\vga_sync_instance|v_count[6]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_sync_instance|v_count[6]~4_combout\ = (\vga_sync_instance|Add1~12_combout\ & ((\vga_sync_instance|v_count[4]~0_combout\) # ((\vga_sync_instance|v_count\(6) & \vga_sync_instance|v_count[0]~1_combout\)))) # (!\vga_sync_instance|Add1~12_combout\ & 
-- (((\vga_sync_instance|v_count\(6) & \vga_sync_instance|v_count[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_sync_instance|Add1~12_combout\,
	datab => \vga_sync_instance|v_count[4]~0_combout\,
	datac => \vga_sync_instance|v_count\(6),
	datad => \vga_sync_instance|v_count[0]~1_combout\,
	combout => \vga_sync_instance|v_count[6]~4_combout\);

-- Location: FF_X60_Y23_N21
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

-- Location: LCCOMB_X59_Y23_N22
\vga_sync_instance|Add1~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_sync_instance|Add1~14_combout\ = (\vga_sync_instance|v_count\(7) & (!\vga_sync_instance|Add1~13\)) # (!\vga_sync_instance|v_count\(7) & ((\vga_sync_instance|Add1~13\) # (GND)))
-- \vga_sync_instance|Add1~15\ = CARRY((!\vga_sync_instance|Add1~13\) # (!\vga_sync_instance|v_count\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga_sync_instance|v_count\(7),
	datad => VCC,
	cin => \vga_sync_instance|Add1~13\,
	combout => \vga_sync_instance|Add1~14_combout\,
	cout => \vga_sync_instance|Add1~15\);

-- Location: LCCOMB_X60_Y23_N22
\vga_sync_instance|v_count[7]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_sync_instance|v_count[7]~5_combout\ = (\vga_sync_instance|Add1~14_combout\ & ((\vga_sync_instance|v_count[4]~0_combout\) # ((\vga_sync_instance|v_count\(7) & \vga_sync_instance|v_count[0]~1_combout\)))) # (!\vga_sync_instance|Add1~14_combout\ & 
-- (((\vga_sync_instance|v_count\(7) & \vga_sync_instance|v_count[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_sync_instance|Add1~14_combout\,
	datab => \vga_sync_instance|v_count[4]~0_combout\,
	datac => \vga_sync_instance|v_count\(7),
	datad => \vga_sync_instance|v_count[0]~1_combout\,
	combout => \vga_sync_instance|v_count[7]~5_combout\);

-- Location: FF_X60_Y23_N23
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

-- Location: LCCOMB_X60_Y23_N0
\vga_sync_instance|LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_sync_instance|LessThan1~1_combout\ = (!\vga_sync_instance|v_count\(4) & (!\vga_sync_instance|v_count\(5) & (!\vga_sync_instance|v_count\(7) & !\vga_sync_instance|v_count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_sync_instance|v_count\(4),
	datab => \vga_sync_instance|v_count\(5),
	datac => \vga_sync_instance|v_count\(7),
	datad => \vga_sync_instance|v_count\(6),
	combout => \vga_sync_instance|LessThan1~1_combout\);

-- Location: LCCOMB_X60_Y23_N26
\vga_sync_instance|LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_sync_instance|LessThan1~2_combout\ = (!\vga_sync_instance|v_count\(8) & (\vga_sync_instance|LessThan1~0_combout\ & \vga_sync_instance|LessThan1~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga_sync_instance|v_count\(8),
	datac => \vga_sync_instance|LessThan1~0_combout\,
	datad => \vga_sync_instance|LessThan1~1_combout\,
	combout => \vga_sync_instance|LessThan1~2_combout\);

-- Location: LCCOMB_X60_Y23_N2
\vga_sync_instance|v_count[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_sync_instance|v_count[0]~1_combout\ = (\vga_sync_instance|LessThan1~2_combout\ & (((\vga_sync_instance|Equal1~0_combout\)) # (!\vga_sync_instance|Equal0~3_combout\))) # (!\vga_sync_instance|LessThan1~2_combout\ & 
-- (\vga_sync_instance|process_0~2_combout\ & ((\vga_sync_instance|Equal1~0_combout\) # (!\vga_sync_instance|Equal0~3_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001110100010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_sync_instance|LessThan1~2_combout\,
	datab => \vga_sync_instance|Equal0~3_combout\,
	datac => \vga_sync_instance|Equal1~0_combout\,
	datad => \vga_sync_instance|process_0~2_combout\,
	combout => \vga_sync_instance|v_count[0]~1_combout\);

-- Location: LCCOMB_X59_Y23_N24
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

-- Location: LCCOMB_X59_Y23_N4
\vga_sync_instance|v_count[8]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_sync_instance|v_count[8]~6_combout\ = (\vga_sync_instance|v_count[0]~1_combout\ & ((\vga_sync_instance|v_count\(8)) # ((\vga_sync_instance|Add1~16_combout\ & \vga_sync_instance|v_count[4]~0_combout\)))) # (!\vga_sync_instance|v_count[0]~1_combout\ & 
-- (\vga_sync_instance|Add1~16_combout\ & ((\vga_sync_instance|v_count[4]~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_sync_instance|v_count[0]~1_combout\,
	datab => \vga_sync_instance|Add1~16_combout\,
	datac => \vga_sync_instance|v_count\(8),
	datad => \vga_sync_instance|v_count[4]~0_combout\,
	combout => \vga_sync_instance|v_count[8]~6_combout\);

-- Location: FF_X59_Y23_N5
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

-- Location: LCCOMB_X59_Y23_N26
\vga_sync_instance|Add1~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_sync_instance|Add1~18_combout\ = \vga_sync_instance|v_count\(9) $ (\vga_sync_instance|Add1~17\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga_sync_instance|v_count\(9),
	cin => \vga_sync_instance|Add1~17\,
	combout => \vga_sync_instance|Add1~18_combout\);

-- Location: LCCOMB_X60_Y23_N12
\vga_sync_instance|v_count[9]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_sync_instance|v_count[9]~2_combout\ = (\vga_sync_instance|Add1~18_combout\ & ((\vga_sync_instance|v_count[4]~0_combout\) # ((\vga_sync_instance|v_count\(9) & \vga_sync_instance|v_count[0]~1_combout\)))) # (!\vga_sync_instance|Add1~18_combout\ & 
-- (((\vga_sync_instance|v_count\(9) & \vga_sync_instance|v_count[0]~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_sync_instance|Add1~18_combout\,
	datab => \vga_sync_instance|v_count[4]~0_combout\,
	datac => \vga_sync_instance|v_count\(9),
	datad => \vga_sync_instance|v_count[0]~1_combout\,
	combout => \vga_sync_instance|v_count[9]~2_combout\);

-- Location: FF_X60_Y23_N13
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

-- Location: LCCOMB_X60_Y23_N16
\vga_sync_instance|LessThan6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_sync_instance|LessThan6~0_combout\ = (\vga_sync_instance|v_count\(7) & (\vga_sync_instance|v_count\(5) & (\vga_sync_instance|v_count\(8) & \vga_sync_instance|v_count\(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_sync_instance|v_count\(7),
	datab => \vga_sync_instance|v_count\(5),
	datac => \vga_sync_instance|v_count\(8),
	datad => \vga_sync_instance|v_count\(6),
	combout => \vga_sync_instance|LessThan6~0_combout\);

-- Location: LCCOMB_X60_Y23_N24
\vga_sync_instance|LessThan6~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_sync_instance|LessThan6~1_combout\ = (\vga_sync_instance|v_count\(1)) # ((\vga_sync_instance|v_count\(2)) # ((\vga_sync_instance|v_count\(0)) # (\vga_sync_instance|v_count\(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_sync_instance|v_count\(1),
	datab => \vga_sync_instance|v_count\(2),
	datac => \vga_sync_instance|v_count\(0),
	datad => \vga_sync_instance|v_count\(3),
	combout => \vga_sync_instance|LessThan6~1_combout\);

-- Location: LCCOMB_X61_Y26_N16
\vga_sync_instance|LessThan6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_sync_instance|LessThan6~2_combout\ = (\vga_sync_instance|v_count\(9)) # ((\vga_sync_instance|LessThan6~0_combout\ & ((\vga_sync_instance|v_count\(4)) # (\vga_sync_instance|LessThan6~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_sync_instance|v_count\(9),
	datab => \vga_sync_instance|v_count\(4),
	datac => \vga_sync_instance|LessThan6~0_combout\,
	datad => \vga_sync_instance|LessThan6~1_combout\,
	combout => \vga_sync_instance|LessThan6~2_combout\);

-- Location: FF_X61_Y26_N1
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

-- Location: IOIBUF_X60_Y0_N8
\GPIO[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(9),
	o => \GPIO[9]~input_o\);

-- Location: LCCOMB_X60_Y26_N10
\camstatemachine_instance|Selector5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \camstatemachine_instance|Selector5~0_combout\ = (\camstatemachine_instance|current_state.write_processed_pixel~q\ & ((\backgroundsubtraction_eof~combout\) # ((\camstatemachine_instance|current_state.wait_for_display_end_post_copy~q\ & 
-- !\vga_sync_instance|eof~q\)))) # (!\camstatemachine_instance|current_state.write_processed_pixel~q\ & (\camstatemachine_instance|current_state.wait_for_display_end_post_copy~q\ & (!\vga_sync_instance|eof~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camstatemachine_instance|current_state.write_processed_pixel~q\,
	datab => \camstatemachine_instance|current_state.wait_for_display_end_post_copy~q\,
	datac => \vga_sync_instance|eof~q\,
	datad => \backgroundsubtraction_eof~combout\,
	combout => \camstatemachine_instance|Selector5~0_combout\);

-- Location: LCCOMB_X60_Y26_N18
\camstatemachine_instance|Selector5~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \camstatemachine_instance|Selector5~1_combout\ = (\camstatemachine_instance|Selector5~0_combout\) # ((\GPIO[9]~input_o\ & \camstatemachine_instance|current_state.copy2~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \GPIO[9]~input_o\,
	datac => \camstatemachine_instance|current_state.copy2~q\,
	datad => \camstatemachine_instance|Selector5~0_combout\,
	combout => \camstatemachine_instance|Selector5~1_combout\);

-- Location: FF_X60_Y26_N19
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

-- Location: LCCOMB_X60_Y26_N26
\camstatemachine_instance|current_state.display~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \camstatemachine_instance|current_state.display~1_combout\ = (\camstatemachine_instance|current_state.display~q\) # ((\vga_sync_instance|eof~q\ & \camstatemachine_instance|current_state.wait_for_display_end_post_copy~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \vga_sync_instance|eof~q\,
	datac => \camstatemachine_instance|current_state.display~q\,
	datad => \camstatemachine_instance|current_state.wait_for_display_end_post_copy~q\,
	combout => \camstatemachine_instance|current_state.display~1_combout\);

-- Location: FF_X60_Y26_N27
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

-- Location: LCCOMB_X60_Y26_N20
\camstatemachine_instance|current_state.wait_for_display_end_pre_copy~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \camstatemachine_instance|current_state.wait_for_display_end_pre_copy~1_combout\ = (!\camstatemachine_instance|current_state.wait_for_display_end_pre_copy~6_combout\ & ((\camstatemachine_instance|current_state.wait_for_display_end_pre_copy~1_combout\) # 
-- (!\KEY[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100000011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \camstatemachine_instance|current_state.wait_for_display_end_pre_copy~6_combout\,
	datac => \KEY[0]~input_o\,
	datad => \camstatemachine_instance|current_state.wait_for_display_end_pre_copy~1_combout\,
	combout => \camstatemachine_instance|current_state.wait_for_display_end_pre_copy~1_combout\);

-- Location: LCCOMB_X59_Y26_N26
\camstatemachine_instance|current_state.wait_for_display_end_pre_copy~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \camstatemachine_instance|current_state.wait_for_display_end_pre_copy~3_combout\ = \camstatemachine_instance|current_state.wait_for_display_end_pre_copy~1_combout\ $ (((\camstatemachine_instance|current_state.wait_for_display_end_pre_copy~2_combout\ & 
-- !\vga_sync_instance|eof~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100011011000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camstatemachine_instance|current_state.wait_for_display_end_pre_copy~2_combout\,
	datab => \camstatemachine_instance|current_state.wait_for_display_end_pre_copy~1_combout\,
	datac => \vga_sync_instance|eof~q\,
	combout => \camstatemachine_instance|current_state.wait_for_display_end_pre_copy~3_combout\);

-- Location: LCCOMB_X59_Y26_N2
\camstatemachine_instance|current_state.wait_for_display_end_pre_copy~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \camstatemachine_instance|current_state.wait_for_display_end_pre_copy~0_combout\ = (\camstatemachine_instance|current_state.wait_for_display_end_pre_copy~6_combout\) # (!\KEY[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY[0]~input_o\,
	datad => \camstatemachine_instance|current_state.wait_for_display_end_pre_copy~6_combout\,
	combout => \camstatemachine_instance|current_state.wait_for_display_end_pre_copy~0_combout\);

-- Location: FF_X59_Y26_N27
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

-- Location: LCCOMB_X59_Y26_N22
\camstatemachine_instance|current_state.wait_for_display_end_pre_copy~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \camstatemachine_instance|current_state.wait_for_display_end_pre_copy~2_combout\ = (!\camstatemachine_instance|current_state.wait_for_display_end_pre_copy~6_combout\ & ((\camstatemachine_instance|current_state.wait_for_display_end_pre_copy~1_combout\ $ 
-- (\camstatemachine_instance|current_state.wait_for_display_end_pre_copy~_emulated_q\)) # (!\KEY[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camstatemachine_instance|current_state.wait_for_display_end_pre_copy~1_combout\,
	datab => \KEY[0]~input_o\,
	datac => \camstatemachine_instance|current_state.wait_for_display_end_pre_copy~_emulated_q\,
	datad => \camstatemachine_instance|current_state.wait_for_display_end_pre_copy~6_combout\,
	combout => \camstatemachine_instance|current_state.wait_for_display_end_pre_copy~2_combout\);

-- Location: LCCOMB_X59_Y26_N24
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

-- Location: LCCOMB_X60_Y26_N0
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

-- Location: LCCOMB_X58_Y27_N0
\pixel_counter[0]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \pixel_counter[0]~30_combout\ = pixel_counter(0) $ (((!\camstatemachine_instance|WideOr0~combout\ & \camstatemachine_instance|WideOr2~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camstatemachine_instance|WideOr0~combout\,
	datac => pixel_counter(0),
	datad => \camstatemachine_instance|WideOr2~combout\,
	combout => \pixel_counter[0]~30_combout\);

-- Location: IOIBUF_X115_Y42_N15
\KEY[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(2),
	o => \KEY[2]~input_o\);

-- Location: FF_X58_Y27_N1
\pixel_counter[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pixel_counter[0]~30_combout\,
	clrn => \KEY[2]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pixel_counter(0));

-- Location: LCCOMB_X58_Y27_N2
\pixel_counter[1]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \pixel_counter[1]~31_combout\ = (pixel_counter(0) & (pixel_counter(1) $ (VCC))) # (!pixel_counter(0) & (pixel_counter(1) & VCC))
-- \pixel_counter[1]~32\ = CARRY((pixel_counter(0) & pixel_counter(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pixel_counter(0),
	datab => pixel_counter(1),
	datad => VCC,
	combout => \pixel_counter[1]~31_combout\,
	cout => \pixel_counter[1]~32\);

-- Location: LCCOMB_X60_Y26_N2
\pixel_counter[27]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \pixel_counter[27]~33_combout\ = (\camstatemachine_instance|current_state.write_processed_pixel~q\ & !\camstatemachine_instance|current_state.display~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \camstatemachine_instance|current_state.write_processed_pixel~q\,
	datad => \camstatemachine_instance|current_state.display~q\,
	combout => \pixel_counter[27]~33_combout\);

-- Location: LCCOMB_X59_Y26_N0
\pixel_counter[27]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \pixel_counter[27]~34_combout\ = (\pixel_counter[27]~33_combout\ & (!\camstatemachine_instance|current_state.read_foreground_pixel~q\ & (!\camstatemachine_instance|current_state.read_background_pixel~2_combout\ & 
-- !\camstatemachine_instance|current_state.wait_for_display_end_pre_copy~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \pixel_counter[27]~33_combout\,
	datab => \camstatemachine_instance|current_state.read_foreground_pixel~q\,
	datac => \camstatemachine_instance|current_state.read_background_pixel~2_combout\,
	datad => \camstatemachine_instance|current_state.wait_for_display_end_pre_copy~2_combout\,
	combout => \pixel_counter[27]~34_combout\);

-- Location: FF_X58_Y27_N3
\pixel_counter[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pixel_counter[1]~31_combout\,
	clrn => \KEY[2]~input_o\,
	ena => \pixel_counter[27]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pixel_counter(1));

-- Location: LCCOMB_X58_Y27_N4
\pixel_counter[2]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \pixel_counter[2]~35_combout\ = (pixel_counter(2) & (!\pixel_counter[1]~32\)) # (!pixel_counter(2) & ((\pixel_counter[1]~32\) # (GND)))
-- \pixel_counter[2]~36\ = CARRY((!\pixel_counter[1]~32\) # (!pixel_counter(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => pixel_counter(2),
	datad => VCC,
	cin => \pixel_counter[1]~32\,
	combout => \pixel_counter[2]~35_combout\,
	cout => \pixel_counter[2]~36\);

-- Location: FF_X58_Y27_N5
\pixel_counter[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pixel_counter[2]~35_combout\,
	clrn => \KEY[2]~input_o\,
	ena => \pixel_counter[27]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pixel_counter(2));

-- Location: LCCOMB_X58_Y27_N6
\pixel_counter[3]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \pixel_counter[3]~37_combout\ = (pixel_counter(3) & (\pixel_counter[2]~36\ $ (GND))) # (!pixel_counter(3) & (!\pixel_counter[2]~36\ & VCC))
-- \pixel_counter[3]~38\ = CARRY((pixel_counter(3) & !\pixel_counter[2]~36\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => pixel_counter(3),
	datad => VCC,
	cin => \pixel_counter[2]~36\,
	combout => \pixel_counter[3]~37_combout\,
	cout => \pixel_counter[3]~38\);

-- Location: FF_X58_Y27_N7
\pixel_counter[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pixel_counter[3]~37_combout\,
	clrn => \KEY[2]~input_o\,
	ena => \pixel_counter[27]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pixel_counter(3));

-- Location: LCCOMB_X58_Y27_N8
\pixel_counter[4]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \pixel_counter[4]~39_combout\ = (pixel_counter(4) & (!\pixel_counter[3]~38\)) # (!pixel_counter(4) & ((\pixel_counter[3]~38\) # (GND)))
-- \pixel_counter[4]~40\ = CARRY((!\pixel_counter[3]~38\) # (!pixel_counter(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => pixel_counter(4),
	datad => VCC,
	cin => \pixel_counter[3]~38\,
	combout => \pixel_counter[4]~39_combout\,
	cout => \pixel_counter[4]~40\);

-- Location: FF_X58_Y27_N9
\pixel_counter[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pixel_counter[4]~39_combout\,
	clrn => \KEY[2]~input_o\,
	ena => \pixel_counter[27]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pixel_counter(4));

-- Location: LCCOMB_X58_Y27_N10
\pixel_counter[5]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \pixel_counter[5]~41_combout\ = (pixel_counter(5) & (\pixel_counter[4]~40\ $ (GND))) # (!pixel_counter(5) & (!\pixel_counter[4]~40\ & VCC))
-- \pixel_counter[5]~42\ = CARRY((pixel_counter(5) & !\pixel_counter[4]~40\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => pixel_counter(5),
	datad => VCC,
	cin => \pixel_counter[4]~40\,
	combout => \pixel_counter[5]~41_combout\,
	cout => \pixel_counter[5]~42\);

-- Location: FF_X58_Y27_N11
\pixel_counter[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pixel_counter[5]~41_combout\,
	clrn => \KEY[2]~input_o\,
	ena => \pixel_counter[27]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pixel_counter(5));

-- Location: LCCOMB_X58_Y27_N12
\pixel_counter[6]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \pixel_counter[6]~43_combout\ = (pixel_counter(6) & (!\pixel_counter[5]~42\)) # (!pixel_counter(6) & ((\pixel_counter[5]~42\) # (GND)))
-- \pixel_counter[6]~44\ = CARRY((!\pixel_counter[5]~42\) # (!pixel_counter(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => pixel_counter(6),
	datad => VCC,
	cin => \pixel_counter[5]~42\,
	combout => \pixel_counter[6]~43_combout\,
	cout => \pixel_counter[6]~44\);

-- Location: FF_X58_Y27_N13
\pixel_counter[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pixel_counter[6]~43_combout\,
	clrn => \KEY[2]~input_o\,
	ena => \pixel_counter[27]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pixel_counter(6));

-- Location: LCCOMB_X58_Y27_N14
\pixel_counter[7]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \pixel_counter[7]~45_combout\ = (pixel_counter(7) & (\pixel_counter[6]~44\ $ (GND))) # (!pixel_counter(7) & (!\pixel_counter[6]~44\ & VCC))
-- \pixel_counter[7]~46\ = CARRY((pixel_counter(7) & !\pixel_counter[6]~44\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => pixel_counter(7),
	datad => VCC,
	cin => \pixel_counter[6]~44\,
	combout => \pixel_counter[7]~45_combout\,
	cout => \pixel_counter[7]~46\);

-- Location: FF_X58_Y27_N15
\pixel_counter[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pixel_counter[7]~45_combout\,
	clrn => \KEY[2]~input_o\,
	ena => \pixel_counter[27]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pixel_counter(7));

-- Location: LCCOMB_X58_Y27_N16
\pixel_counter[8]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \pixel_counter[8]~47_combout\ = (pixel_counter(8) & (!\pixel_counter[7]~46\)) # (!pixel_counter(8) & ((\pixel_counter[7]~46\) # (GND)))
-- \pixel_counter[8]~48\ = CARRY((!\pixel_counter[7]~46\) # (!pixel_counter(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => pixel_counter(8),
	datad => VCC,
	cin => \pixel_counter[7]~46\,
	combout => \pixel_counter[8]~47_combout\,
	cout => \pixel_counter[8]~48\);

-- Location: FF_X58_Y27_N17
\pixel_counter[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pixel_counter[8]~47_combout\,
	clrn => \KEY[2]~input_o\,
	ena => \pixel_counter[27]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pixel_counter(8));

-- Location: LCCOMB_X58_Y27_N18
\pixel_counter[9]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \pixel_counter[9]~49_combout\ = (pixel_counter(9) & (\pixel_counter[8]~48\ $ (GND))) # (!pixel_counter(9) & (!\pixel_counter[8]~48\ & VCC))
-- \pixel_counter[9]~50\ = CARRY((pixel_counter(9) & !\pixel_counter[8]~48\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => pixel_counter(9),
	datad => VCC,
	cin => \pixel_counter[8]~48\,
	combout => \pixel_counter[9]~49_combout\,
	cout => \pixel_counter[9]~50\);

-- Location: FF_X58_Y27_N19
\pixel_counter[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pixel_counter[9]~49_combout\,
	clrn => \KEY[2]~input_o\,
	ena => \pixel_counter[27]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pixel_counter(9));

-- Location: LCCOMB_X58_Y27_N20
\pixel_counter[10]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \pixel_counter[10]~51_combout\ = (pixel_counter(10) & (!\pixel_counter[9]~50\)) # (!pixel_counter(10) & ((\pixel_counter[9]~50\) # (GND)))
-- \pixel_counter[10]~52\ = CARRY((!\pixel_counter[9]~50\) # (!pixel_counter(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => pixel_counter(10),
	datad => VCC,
	cin => \pixel_counter[9]~50\,
	combout => \pixel_counter[10]~51_combout\,
	cout => \pixel_counter[10]~52\);

-- Location: FF_X58_Y27_N21
\pixel_counter[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pixel_counter[10]~51_combout\,
	clrn => \KEY[2]~input_o\,
	ena => \pixel_counter[27]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pixel_counter(10));

-- Location: LCCOMB_X58_Y27_N22
\pixel_counter[11]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \pixel_counter[11]~53_combout\ = (pixel_counter(11) & (\pixel_counter[10]~52\ $ (GND))) # (!pixel_counter(11) & (!\pixel_counter[10]~52\ & VCC))
-- \pixel_counter[11]~54\ = CARRY((pixel_counter(11) & !\pixel_counter[10]~52\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => pixel_counter(11),
	datad => VCC,
	cin => \pixel_counter[10]~52\,
	combout => \pixel_counter[11]~53_combout\,
	cout => \pixel_counter[11]~54\);

-- Location: FF_X58_Y27_N23
\pixel_counter[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pixel_counter[11]~53_combout\,
	clrn => \KEY[2]~input_o\,
	ena => \pixel_counter[27]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pixel_counter(11));

-- Location: LCCOMB_X58_Y27_N24
\pixel_counter[12]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \pixel_counter[12]~55_combout\ = (pixel_counter(12) & (!\pixel_counter[11]~54\)) # (!pixel_counter(12) & ((\pixel_counter[11]~54\) # (GND)))
-- \pixel_counter[12]~56\ = CARRY((!\pixel_counter[11]~54\) # (!pixel_counter(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => pixel_counter(12),
	datad => VCC,
	cin => \pixel_counter[11]~54\,
	combout => \pixel_counter[12]~55_combout\,
	cout => \pixel_counter[12]~56\);

-- Location: FF_X58_Y27_N25
\pixel_counter[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pixel_counter[12]~55_combout\,
	clrn => \KEY[2]~input_o\,
	ena => \pixel_counter[27]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pixel_counter(12));

-- Location: LCCOMB_X58_Y27_N26
\pixel_counter[13]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \pixel_counter[13]~57_combout\ = (pixel_counter(13) & (\pixel_counter[12]~56\ $ (GND))) # (!pixel_counter(13) & (!\pixel_counter[12]~56\ & VCC))
-- \pixel_counter[13]~58\ = CARRY((pixel_counter(13) & !\pixel_counter[12]~56\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => pixel_counter(13),
	datad => VCC,
	cin => \pixel_counter[12]~56\,
	combout => \pixel_counter[13]~57_combout\,
	cout => \pixel_counter[13]~58\);

-- Location: FF_X58_Y27_N27
\pixel_counter[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pixel_counter[13]~57_combout\,
	clrn => \KEY[2]~input_o\,
	ena => \pixel_counter[27]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pixel_counter(13));

-- Location: LCCOMB_X58_Y27_N28
\pixel_counter[14]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \pixel_counter[14]~59_combout\ = (pixel_counter(14) & (!\pixel_counter[13]~58\)) # (!pixel_counter(14) & ((\pixel_counter[13]~58\) # (GND)))
-- \pixel_counter[14]~60\ = CARRY((!\pixel_counter[13]~58\) # (!pixel_counter(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => pixel_counter(14),
	datad => VCC,
	cin => \pixel_counter[13]~58\,
	combout => \pixel_counter[14]~59_combout\,
	cout => \pixel_counter[14]~60\);

-- Location: FF_X58_Y27_N29
\pixel_counter[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pixel_counter[14]~59_combout\,
	clrn => \KEY[2]~input_o\,
	ena => \pixel_counter[27]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pixel_counter(14));

-- Location: LCCOMB_X58_Y27_N30
\pixel_counter[15]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \pixel_counter[15]~61_combout\ = (pixel_counter(15) & (\pixel_counter[14]~60\ $ (GND))) # (!pixel_counter(15) & (!\pixel_counter[14]~60\ & VCC))
-- \pixel_counter[15]~62\ = CARRY((pixel_counter(15) & !\pixel_counter[14]~60\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => pixel_counter(15),
	datad => VCC,
	cin => \pixel_counter[14]~60\,
	combout => \pixel_counter[15]~61_combout\,
	cout => \pixel_counter[15]~62\);

-- Location: FF_X58_Y27_N31
\pixel_counter[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pixel_counter[15]~61_combout\,
	clrn => \KEY[2]~input_o\,
	ena => \pixel_counter[27]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pixel_counter(15));

-- Location: LCCOMB_X58_Y26_N0
\pixel_counter[16]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \pixel_counter[16]~63_combout\ = (pixel_counter(16) & (!\pixel_counter[15]~62\)) # (!pixel_counter(16) & ((\pixel_counter[15]~62\) # (GND)))
-- \pixel_counter[16]~64\ = CARRY((!\pixel_counter[15]~62\) # (!pixel_counter(16)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => pixel_counter(16),
	datad => VCC,
	cin => \pixel_counter[15]~62\,
	combout => \pixel_counter[16]~63_combout\,
	cout => \pixel_counter[16]~64\);

-- Location: FF_X58_Y26_N1
\pixel_counter[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pixel_counter[16]~63_combout\,
	clrn => \KEY[2]~input_o\,
	ena => \pixel_counter[27]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pixel_counter(16));

-- Location: LCCOMB_X58_Y26_N2
\pixel_counter[17]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \pixel_counter[17]~65_combout\ = (pixel_counter(17) & (\pixel_counter[16]~64\ $ (GND))) # (!pixel_counter(17) & (!\pixel_counter[16]~64\ & VCC))
-- \pixel_counter[17]~66\ = CARRY((pixel_counter(17) & !\pixel_counter[16]~64\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => pixel_counter(17),
	datad => VCC,
	cin => \pixel_counter[16]~64\,
	combout => \pixel_counter[17]~65_combout\,
	cout => \pixel_counter[17]~66\);

-- Location: FF_X58_Y26_N3
\pixel_counter[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pixel_counter[17]~65_combout\,
	clrn => \KEY[2]~input_o\,
	ena => \pixel_counter[27]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pixel_counter(17));

-- Location: LCCOMB_X58_Y26_N4
\pixel_counter[18]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \pixel_counter[18]~67_combout\ = (pixel_counter(18) & (!\pixel_counter[17]~66\)) # (!pixel_counter(18) & ((\pixel_counter[17]~66\) # (GND)))
-- \pixel_counter[18]~68\ = CARRY((!\pixel_counter[17]~66\) # (!pixel_counter(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => pixel_counter(18),
	datad => VCC,
	cin => \pixel_counter[17]~66\,
	combout => \pixel_counter[18]~67_combout\,
	cout => \pixel_counter[18]~68\);

-- Location: FF_X58_Y26_N5
\pixel_counter[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pixel_counter[18]~67_combout\,
	clrn => \KEY[2]~input_o\,
	ena => \pixel_counter[27]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pixel_counter(18));

-- Location: LCCOMB_X58_Y26_N6
\pixel_counter[19]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \pixel_counter[19]~69_combout\ = (pixel_counter(19) & (\pixel_counter[18]~68\ $ (GND))) # (!pixel_counter(19) & (!\pixel_counter[18]~68\ & VCC))
-- \pixel_counter[19]~70\ = CARRY((pixel_counter(19) & !\pixel_counter[18]~68\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => pixel_counter(19),
	datad => VCC,
	cin => \pixel_counter[18]~68\,
	combout => \pixel_counter[19]~69_combout\,
	cout => \pixel_counter[19]~70\);

-- Location: FF_X58_Y26_N7
\pixel_counter[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pixel_counter[19]~69_combout\,
	clrn => \KEY[2]~input_o\,
	ena => \pixel_counter[27]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pixel_counter(19));

-- Location: LCCOMB_X58_Y26_N8
\pixel_counter[20]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \pixel_counter[20]~71_combout\ = (pixel_counter(20) & (!\pixel_counter[19]~70\)) # (!pixel_counter(20) & ((\pixel_counter[19]~70\) # (GND)))
-- \pixel_counter[20]~72\ = CARRY((!\pixel_counter[19]~70\) # (!pixel_counter(20)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => pixel_counter(20),
	datad => VCC,
	cin => \pixel_counter[19]~70\,
	combout => \pixel_counter[20]~71_combout\,
	cout => \pixel_counter[20]~72\);

-- Location: FF_X58_Y26_N9
\pixel_counter[20]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pixel_counter[20]~71_combout\,
	clrn => \KEY[2]~input_o\,
	ena => \pixel_counter[27]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pixel_counter(20));

-- Location: LCCOMB_X58_Y26_N10
\pixel_counter[21]~73\ : cycloneive_lcell_comb
-- Equation(s):
-- \pixel_counter[21]~73_combout\ = (pixel_counter(21) & (\pixel_counter[20]~72\ $ (GND))) # (!pixel_counter(21) & (!\pixel_counter[20]~72\ & VCC))
-- \pixel_counter[21]~74\ = CARRY((pixel_counter(21) & !\pixel_counter[20]~72\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => pixel_counter(21),
	datad => VCC,
	cin => \pixel_counter[20]~72\,
	combout => \pixel_counter[21]~73_combout\,
	cout => \pixel_counter[21]~74\);

-- Location: FF_X58_Y26_N11
\pixel_counter[21]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pixel_counter[21]~73_combout\,
	clrn => \KEY[2]~input_o\,
	ena => \pixel_counter[27]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pixel_counter(21));

-- Location: LCCOMB_X58_Y26_N12
\pixel_counter[22]~75\ : cycloneive_lcell_comb
-- Equation(s):
-- \pixel_counter[22]~75_combout\ = (pixel_counter(22) & (!\pixel_counter[21]~74\)) # (!pixel_counter(22) & ((\pixel_counter[21]~74\) # (GND)))
-- \pixel_counter[22]~76\ = CARRY((!\pixel_counter[21]~74\) # (!pixel_counter(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => pixel_counter(22),
	datad => VCC,
	cin => \pixel_counter[21]~74\,
	combout => \pixel_counter[22]~75_combout\,
	cout => \pixel_counter[22]~76\);

-- Location: FF_X58_Y26_N13
\pixel_counter[22]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pixel_counter[22]~75_combout\,
	clrn => \KEY[2]~input_o\,
	ena => \pixel_counter[27]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pixel_counter(22));

-- Location: LCCOMB_X58_Y26_N14
\pixel_counter[23]~77\ : cycloneive_lcell_comb
-- Equation(s):
-- \pixel_counter[23]~77_combout\ = (pixel_counter(23) & (\pixel_counter[22]~76\ $ (GND))) # (!pixel_counter(23) & (!\pixel_counter[22]~76\ & VCC))
-- \pixel_counter[23]~78\ = CARRY((pixel_counter(23) & !\pixel_counter[22]~76\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => pixel_counter(23),
	datad => VCC,
	cin => \pixel_counter[22]~76\,
	combout => \pixel_counter[23]~77_combout\,
	cout => \pixel_counter[23]~78\);

-- Location: FF_X58_Y26_N15
\pixel_counter[23]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pixel_counter[23]~77_combout\,
	clrn => \KEY[2]~input_o\,
	ena => \pixel_counter[27]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pixel_counter(23));

-- Location: LCCOMB_X58_Y26_N16
\pixel_counter[24]~79\ : cycloneive_lcell_comb
-- Equation(s):
-- \pixel_counter[24]~79_combout\ = (pixel_counter(24) & (!\pixel_counter[23]~78\)) # (!pixel_counter(24) & ((\pixel_counter[23]~78\) # (GND)))
-- \pixel_counter[24]~80\ = CARRY((!\pixel_counter[23]~78\) # (!pixel_counter(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => pixel_counter(24),
	datad => VCC,
	cin => \pixel_counter[23]~78\,
	combout => \pixel_counter[24]~79_combout\,
	cout => \pixel_counter[24]~80\);

-- Location: FF_X58_Y26_N17
\pixel_counter[24]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pixel_counter[24]~79_combout\,
	clrn => \KEY[2]~input_o\,
	ena => \pixel_counter[27]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pixel_counter(24));

-- Location: LCCOMB_X58_Y26_N18
\pixel_counter[25]~81\ : cycloneive_lcell_comb
-- Equation(s):
-- \pixel_counter[25]~81_combout\ = (pixel_counter(25) & (\pixel_counter[24]~80\ $ (GND))) # (!pixel_counter(25) & (!\pixel_counter[24]~80\ & VCC))
-- \pixel_counter[25]~82\ = CARRY((pixel_counter(25) & !\pixel_counter[24]~80\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => pixel_counter(25),
	datad => VCC,
	cin => \pixel_counter[24]~80\,
	combout => \pixel_counter[25]~81_combout\,
	cout => \pixel_counter[25]~82\);

-- Location: FF_X58_Y26_N19
\pixel_counter[25]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pixel_counter[25]~81_combout\,
	clrn => \KEY[2]~input_o\,
	ena => \pixel_counter[27]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pixel_counter(25));

-- Location: LCCOMB_X58_Y26_N20
\pixel_counter[26]~83\ : cycloneive_lcell_comb
-- Equation(s):
-- \pixel_counter[26]~83_combout\ = (pixel_counter(26) & (!\pixel_counter[25]~82\)) # (!pixel_counter(26) & ((\pixel_counter[25]~82\) # (GND)))
-- \pixel_counter[26]~84\ = CARRY((!\pixel_counter[25]~82\) # (!pixel_counter(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => pixel_counter(26),
	datad => VCC,
	cin => \pixel_counter[25]~82\,
	combout => \pixel_counter[26]~83_combout\,
	cout => \pixel_counter[26]~84\);

-- Location: FF_X58_Y26_N21
\pixel_counter[26]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pixel_counter[26]~83_combout\,
	clrn => \KEY[2]~input_o\,
	ena => \pixel_counter[27]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pixel_counter(26));

-- Location: LCCOMB_X58_Y26_N22
\pixel_counter[27]~85\ : cycloneive_lcell_comb
-- Equation(s):
-- \pixel_counter[27]~85_combout\ = (pixel_counter(27) & (\pixel_counter[26]~84\ $ (GND))) # (!pixel_counter(27) & (!\pixel_counter[26]~84\ & VCC))
-- \pixel_counter[27]~86\ = CARRY((pixel_counter(27) & !\pixel_counter[26]~84\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => pixel_counter(27),
	datad => VCC,
	cin => \pixel_counter[26]~84\,
	combout => \pixel_counter[27]~85_combout\,
	cout => \pixel_counter[27]~86\);

-- Location: FF_X58_Y26_N23
\pixel_counter[27]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pixel_counter[27]~85_combout\,
	clrn => \KEY[2]~input_o\,
	ena => \pixel_counter[27]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pixel_counter(27));

-- Location: LCCOMB_X58_Y26_N24
\pixel_counter[28]~87\ : cycloneive_lcell_comb
-- Equation(s):
-- \pixel_counter[28]~87_combout\ = (pixel_counter(28) & (!\pixel_counter[27]~86\)) # (!pixel_counter(28) & ((\pixel_counter[27]~86\) # (GND)))
-- \pixel_counter[28]~88\ = CARRY((!\pixel_counter[27]~86\) # (!pixel_counter(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => pixel_counter(28),
	datad => VCC,
	cin => \pixel_counter[27]~86\,
	combout => \pixel_counter[28]~87_combout\,
	cout => \pixel_counter[28]~88\);

-- Location: FF_X58_Y26_N25
\pixel_counter[28]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pixel_counter[28]~87_combout\,
	clrn => \KEY[2]~input_o\,
	ena => \pixel_counter[27]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pixel_counter(28));

-- Location: LCCOMB_X58_Y26_N26
\pixel_counter[29]~89\ : cycloneive_lcell_comb
-- Equation(s):
-- \pixel_counter[29]~89_combout\ = (pixel_counter(29) & (\pixel_counter[28]~88\ $ (GND))) # (!pixel_counter(29) & (!\pixel_counter[28]~88\ & VCC))
-- \pixel_counter[29]~90\ = CARRY((pixel_counter(29) & !\pixel_counter[28]~88\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => pixel_counter(29),
	datad => VCC,
	cin => \pixel_counter[28]~88\,
	combout => \pixel_counter[29]~89_combout\,
	cout => \pixel_counter[29]~90\);

-- Location: FF_X58_Y26_N27
\pixel_counter[29]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pixel_counter[29]~89_combout\,
	clrn => \KEY[2]~input_o\,
	ena => \pixel_counter[27]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pixel_counter(29));

-- Location: LCCOMB_X58_Y26_N28
\pixel_counter[30]~91\ : cycloneive_lcell_comb
-- Equation(s):
-- \pixel_counter[30]~91_combout\ = \pixel_counter[29]~90\ $ (pixel_counter(30))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => pixel_counter(30),
	cin => \pixel_counter[29]~90\,
	combout => \pixel_counter[30]~91_combout\);

-- Location: FF_X58_Y26_N29
\pixel_counter[30]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \pixel_counter[30]~91_combout\,
	clrn => \KEY[2]~input_o\,
	ena => \pixel_counter[27]~34_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => pixel_counter(30));

-- Location: LCCOMB_X59_Y25_N0
\LessThan1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~4_combout\ = (!pixel_counter(27) & (!pixel_counter(28) & (!pixel_counter(29) & !pixel_counter(30))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pixel_counter(27),
	datab => pixel_counter(28),
	datac => pixel_counter(29),
	datad => pixel_counter(30),
	combout => \LessThan1~4_combout\);

-- Location: LCCOMB_X57_Y26_N8
\LessThan1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~0_combout\ = ((!pixel_counter(14) & ((!pixel_counter(13)) # (!pixel_counter(12))))) # (!pixel_counter(15))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pixel_counter(12),
	datab => pixel_counter(15),
	datac => pixel_counter(14),
	datad => pixel_counter(13),
	combout => \LessThan1~0_combout\);

-- Location: LCCOMB_X57_Y26_N10
\LessThan1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~1_combout\ = ((\LessThan1~0_combout\ & (!pixel_counter(16) & !pixel_counter(17)))) # (!pixel_counter(18))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~0_combout\,
	datab => pixel_counter(16),
	datac => pixel_counter(18),
	datad => pixel_counter(17),
	combout => \LessThan1~1_combout\);

-- Location: LCCOMB_X58_Y26_N30
\LessThan1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~2_combout\ = (!pixel_counter(20) & (!pixel_counter(22) & (!pixel_counter(19) & !pixel_counter(21))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pixel_counter(20),
	datab => pixel_counter(22),
	datac => pixel_counter(19),
	datad => pixel_counter(21),
	combout => \LessThan1~2_combout\);

-- Location: LCCOMB_X60_Y26_N8
\LessThan1~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~3_combout\ = (!pixel_counter(23) & (!pixel_counter(26) & (!pixel_counter(24) & !pixel_counter(25))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pixel_counter(23),
	datab => pixel_counter(26),
	datac => pixel_counter(24),
	datad => pixel_counter(25),
	combout => \LessThan1~3_combout\);

-- Location: LCCOMB_X60_Y26_N16
\LessThan1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan1~5_combout\ = (\LessThan1~4_combout\ & (\LessThan1~1_combout\ & (\LessThan1~2_combout\ & \LessThan1~3_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~4_combout\,
	datab => \LessThan1~1_combout\,
	datac => \LessThan1~2_combout\,
	datad => \LessThan1~3_combout\,
	combout => \LessThan1~5_combout\);

-- Location: LCCOMB_X58_Y23_N4
\backgroundsubtraction_eof~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \backgroundsubtraction_eof~0_combout\ = (\camstatemachine_instance|WideOr2~combout\ & (\camstatemachine_instance|WideOr1~combout\ & !\camstatemachine_instance|WideOr0~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \camstatemachine_instance|WideOr2~combout\,
	datac => \camstatemachine_instance|WideOr1~combout\,
	datad => \camstatemachine_instance|WideOr0~combout\,
	combout => \backgroundsubtraction_eof~0_combout\);

-- Location: CLKCTRL_G16
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

-- Location: LCCOMB_X60_Y26_N24
backgroundsubtraction_eof : cycloneive_lcell_comb
-- Equation(s):
-- \backgroundsubtraction_eof~combout\ = (\KEY[2]~input_o\ & ((GLOBAL(\backgroundsubtraction_eof~0clkctrl_outclk\) & (!\LessThan1~5_combout\)) # (!GLOBAL(\backgroundsubtraction_eof~0clkctrl_outclk\) & ((\backgroundsubtraction_eof~combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan1~5_combout\,
	datab => \backgroundsubtraction_eof~combout\,
	datac => \KEY[2]~input_o\,
	datad => \backgroundsubtraction_eof~0clkctrl_outclk\,
	combout => \backgroundsubtraction_eof~combout\);

-- Location: LCCOMB_X60_Y26_N30
\camstatemachine_instance|current_state.read_background_pixel~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \camstatemachine_instance|current_state.read_background_pixel~3_combout\ = \camstatemachine_instance|current_state.read_background_pixel~1_combout\ $ (((\camstatemachine_instance|current_state.write_processed_pixel~q\ & 
-- !\backgroundsubtraction_eof~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000111100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \camstatemachine_instance|current_state.read_background_pixel~1_combout\,
	datac => \camstatemachine_instance|current_state.write_processed_pixel~q\,
	datad => \backgroundsubtraction_eof~combout\,
	combout => \camstatemachine_instance|current_state.read_background_pixel~3_combout\);

-- Location: LCCOMB_X60_Y26_N6
\camstatemachine_instance|current_state.read_background_pixel~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \camstatemachine_instance|current_state.read_background_pixel~0_combout\ = (\camstatemachine_instance|current_state.wait_for_display_end_pre_copy~6_combout\) # (!\KEY[0]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \KEY[0]~input_o\,
	datad => \camstatemachine_instance|current_state.wait_for_display_end_pre_copy~6_combout\,
	combout => \camstatemachine_instance|current_state.read_background_pixel~0_combout\);

-- Location: FF_X60_Y26_N31
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

-- Location: LCCOMB_X59_Y26_N30
\camstatemachine_instance|current_state.read_background_pixel~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \camstatemachine_instance|current_state.read_background_pixel~2_combout\ = (\KEY[0]~input_o\ & ((\camstatemachine_instance|current_state.wait_for_display_end_pre_copy~6_combout\) # (\camstatemachine_instance|current_state.read_background_pixel~1_combout\ 
-- $ (\camstatemachine_instance|current_state.read_background_pixel~_emulated_q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camstatemachine_instance|current_state.read_background_pixel~1_combout\,
	datab => \KEY[0]~input_o\,
	datac => \camstatemachine_instance|current_state.read_background_pixel~_emulated_q\,
	datad => \camstatemachine_instance|current_state.wait_for_display_end_pre_copy~6_combout\,
	combout => \camstatemachine_instance|current_state.read_background_pixel~2_combout\);

-- Location: FF_X59_Y26_N31
\camstatemachine_instance|current_state.read_foreground_pixel\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	d => \camstatemachine_instance|current_state.read_background_pixel~2_combout\,
	clrn => \camstatemachine_instance|ALT_INV_current_state.display~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \camstatemachine_instance|current_state.read_foreground_pixel~q\);

-- Location: LCCOMB_X59_Y26_N16
\camstatemachine_instance|Selector4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \camstatemachine_instance|Selector4~0_combout\ = (\camstatemachine_instance|current_state.read_foreground_pixel~q\) # ((\GPIO[9]~input_o\) # (\camstatemachine_instance|current_state.read_background_pixel~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camstatemachine_instance|current_state.read_foreground_pixel~q\,
	datab => \GPIO[9]~input_o\,
	datad => \camstatemachine_instance|current_state.read_background_pixel~2_combout\,
	combout => \camstatemachine_instance|Selector4~0_combout\);

-- Location: LCCOMB_X60_Y26_N12
\camstatemachine_instance|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \camstatemachine_instance|Selector3~0_combout\ = (\camstatemachine_instance|current_state.wait_for_display_end_pre_copy~2_combout\ & ((\vga_sync_instance|eof~q\) # ((\camstatemachine_instance|current_state.wait_for_cam_start~q\ & !\GPIO[9]~input_o\)))) # 
-- (!\camstatemachine_instance|current_state.wait_for_display_end_pre_copy~2_combout\ & (((\camstatemachine_instance|current_state.wait_for_cam_start~q\ & !\GPIO[9]~input_o\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camstatemachine_instance|current_state.wait_for_display_end_pre_copy~2_combout\,
	datab => \vga_sync_instance|eof~q\,
	datac => \camstatemachine_instance|current_state.wait_for_cam_start~q\,
	datad => \GPIO[9]~input_o\,
	combout => \camstatemachine_instance|Selector3~0_combout\);

-- Location: FF_X60_Y26_N13
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

-- Location: LCCOMB_X59_Y26_N20
\camstatemachine_instance|WideOr7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \camstatemachine_instance|WideOr7~0_combout\ = (!\camstatemachine_instance|current_state.write_processed_pixel~q\ & (!\camstatemachine_instance|current_state.wait_for_display_end_pre_copy~2_combout\ & 
-- (!\camstatemachine_instance|current_state.wait_for_cam_start~q\ & !\camstatemachine_instance|current_state.display~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camstatemachine_instance|current_state.write_processed_pixel~q\,
	datab => \camstatemachine_instance|current_state.wait_for_display_end_pre_copy~2_combout\,
	datac => \camstatemachine_instance|current_state.wait_for_cam_start~q\,
	datad => \camstatemachine_instance|current_state.display~q\,
	combout => \camstatemachine_instance|WideOr7~0_combout\);

-- Location: LCCOMB_X59_Y26_N12
\camstatemachine_instance|Selector4~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \camstatemachine_instance|Selector4~1_combout\ = (!\camstatemachine_instance|Selector4~0_combout\ & (\camstatemachine_instance|WideOr7~0_combout\ & !\camstatemachine_instance|current_state.wait_for_display_end_post_copy~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \camstatemachine_instance|Selector4~0_combout\,
	datac => \camstatemachine_instance|WideOr7~0_combout\,
	datad => \camstatemachine_instance|current_state.wait_for_display_end_post_copy~q\,
	combout => \camstatemachine_instance|Selector4~1_combout\);

-- Location: FF_X59_Y26_N13
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

-- Location: LCCOMB_X60_Y26_N28
\camstatemachine_instance|next_state~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \camstatemachine_instance|next_state~0_combout\ = (\camstatemachine_instance|current_state.copy1~q\) # (\camstatemachine_instance|current_state.wait_for_cam_start~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camstatemachine_instance|current_state.copy1~q\,
	datac => \camstatemachine_instance|current_state.wait_for_cam_start~q\,
	combout => \camstatemachine_instance|next_state~0_combout\);

-- Location: FF_X59_Y26_N17
\camstatemachine_instance|current_state.copy1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~input_o\,
	asdata => \camstatemachine_instance|next_state~0_combout\,
	clrn => \camstatemachine_instance|ALT_INV_current_state.display~0_combout\,
	sclr => \ALT_INV_GPIO[9]~input_o\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \camstatemachine_instance|current_state.copy1~q\);

-- Location: LCCOMB_X59_Y26_N8
\camstatemachine_instance|WideOr1\ : cycloneive_lcell_comb
-- Equation(s):
-- \camstatemachine_instance|WideOr1~combout\ = (\camstatemachine_instance|current_state.copy2~q\) # ((\camstatemachine_instance|current_state.write_processed_pixel~q\) # (\camstatemachine_instance|current_state.copy1~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camstatemachine_instance|current_state.copy2~q\,
	datac => \camstatemachine_instance|current_state.write_processed_pixel~q\,
	datad => \camstatemachine_instance|current_state.copy1~q\,
	combout => \camstatemachine_instance|WideOr1~combout\);

-- Location: LCCOMB_X59_Y26_N6
\SRAM_ADDR[13]~71\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAM_ADDR[13]~71_combout\ = (!\camstatemachine_instance|WideOr0~combout\ & ((\camstatemachine_instance|current_state.copy2~q\) # ((\camstatemachine_instance|current_state.write_processed_pixel~q\) # (\camstatemachine_instance|current_state.copy1~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001100110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camstatemachine_instance|current_state.copy2~q\,
	datab => \camstatemachine_instance|WideOr0~combout\,
	datac => \camstatemachine_instance|current_state.write_processed_pixel~q\,
	datad => \camstatemachine_instance|current_state.copy1~q\,
	combout => \SRAM_ADDR[13]~71_combout\);

-- Location: CLKCTRL_G15
\SRAM_ADDR[13]~71clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \SRAM_ADDR[13]~71clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \SRAM_ADDR[13]~71clkctrl_outclk\);

-- Location: IOIBUF_X3_Y0_N15
\SRAM_DQ[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SRAM_DQ(15),
	o => \SRAM_DQ[15]~input_o\);

-- Location: LCCOMB_X40_Y24_N18
\sram_data_out[15]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram_data_out[15]~0_combout\ = (\SRAM_DQ[15]~input_o\) # (!\camstatemachine_instance|WideOr0~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SRAM_DQ[15]~input_o\,
	datad => \camstatemachine_instance|WideOr0~combout\,
	combout => \sram_data_out[15]~0_combout\);

-- Location: LCCOMB_X59_Y26_N14
\camstatemachine_instance|WideOr7\ : cycloneive_lcell_comb
-- Equation(s):
-- \camstatemachine_instance|WideOr7~combout\ = (\camstatemachine_instance|current_state.copy1~q\) # ((\camstatemachine_instance|current_state.copy2~q\) # ((\camstatemachine_instance|current_state.wait_for_display_end_post_copy~q\) # 
-- (!\camstatemachine_instance|WideOr7~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camstatemachine_instance|current_state.copy1~q\,
	datab => \camstatemachine_instance|current_state.copy2~q\,
	datac => \camstatemachine_instance|WideOr7~0_combout\,
	datad => \camstatemachine_instance|current_state.wait_for_display_end_post_copy~q\,
	combout => \camstatemachine_instance|WideOr7~combout\);

-- Location: LCCOMB_X59_Y26_N4
\camstatemachine_instance|image_select\ : cycloneive_lcell_comb
-- Equation(s):
-- \camstatemachine_instance|image_select~combout\ = (\camstatemachine_instance|WideOr7~combout\ & (\camstatemachine_instance|image_select~combout\)) # (!\camstatemachine_instance|WideOr7~combout\ & 
-- ((\camstatemachine_instance|current_state.read_foreground_pixel~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \camstatemachine_instance|image_select~combout\,
	datac => \camstatemachine_instance|WideOr7~combout\,
	datad => \camstatemachine_instance|current_state.read_foreground_pixel~q\,
	combout => \camstatemachine_instance|image_select~combout\);

-- Location: LCCOMB_X59_Y26_N18
\fpixel[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \fpixel[0]~0_combout\ = (\camstatemachine_instance|WideOr2~combout\ & (\camstatemachine_instance|image_select~combout\ & \camstatemachine_instance|WideOr0~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \camstatemachine_instance|WideOr2~combout\,
	datac => \camstatemachine_instance|image_select~combout\,
	datad => \camstatemachine_instance|WideOr0~combout\,
	combout => \fpixel[0]~0_combout\);

-- Location: CLKCTRL_G19
\fpixel[0]~0clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \fpixel[0]~0clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \fpixel[0]~0clkctrl_outclk\);

-- Location: LCCOMB_X40_Y24_N16
\fpixel[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- fpixel(7) = (GLOBAL(\fpixel[0]~0clkctrl_outclk\) & (\sram_data_out[15]~0_combout\)) # (!GLOBAL(\fpixel[0]~0clkctrl_outclk\) & ((fpixel(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sram_data_out[15]~0_combout\,
	datac => \fpixel[0]~0clkctrl_outclk\,
	datad => fpixel(7),
	combout => fpixel(7));

-- Location: LCCOMB_X59_Y26_N10
\bpixel[0]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \bpixel[0]~1_combout\ = (\camstatemachine_instance|WideOr2~combout\ & (!\camstatemachine_instance|image_select~combout\ & \camstatemachine_instance|WideOr0~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \camstatemachine_instance|WideOr2~combout\,
	datac => \camstatemachine_instance|image_select~combout\,
	datad => \camstatemachine_instance|WideOr0~combout\,
	combout => \bpixel[0]~1_combout\);

-- Location: CLKCTRL_G17
\bpixel[0]~1clkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \bpixel[0]~1clkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \bpixel[0]~1clkctrl_outclk\);

-- Location: LCCOMB_X40_Y24_N30
\bpixel[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- bpixel(7) = (GLOBAL(\bpixel[0]~1clkctrl_outclk\) & ((\sram_data_out[15]~0_combout\))) # (!GLOBAL(\bpixel[0]~1clkctrl_outclk\) & (bpixel(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bpixel(7),
	datac => \sram_data_out[15]~0_combout\,
	datad => \bpixel[0]~1clkctrl_outclk\,
	combout => bpixel(7));

-- Location: IOIBUF_X7_Y0_N22
\SRAM_DQ[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SRAM_DQ(14),
	o => \SRAM_DQ[14]~input_o\);

-- Location: LCCOMB_X42_Y24_N16
\sram_data_out[14]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram_data_out[14]~1_combout\ = (\SRAM_DQ[14]~input_o\) # (!\camstatemachine_instance|WideOr0~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRAM_DQ[14]~input_o\,
	datad => \camstatemachine_instance|WideOr0~combout\,
	combout => \sram_data_out[14]~1_combout\);

-- Location: LCCOMB_X42_Y24_N4
\bpixel[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- bpixel(6) = (GLOBAL(\bpixel[0]~1clkctrl_outclk\) & ((\sram_data_out[14]~1_combout\))) # (!GLOBAL(\bpixel[0]~1clkctrl_outclk\) & (bpixel(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => bpixel(6),
	datac => \sram_data_out[14]~1_combout\,
	datad => \bpixel[0]~1clkctrl_outclk\,
	combout => bpixel(6));

-- Location: LCCOMB_X42_Y24_N10
\fpixel[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- fpixel(6) = (GLOBAL(\fpixel[0]~0clkctrl_outclk\) & ((\sram_data_out[14]~1_combout\))) # (!GLOBAL(\fpixel[0]~0clkctrl_outclk\) & (fpixel(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => fpixel(6),
	datac => \fpixel[0]~0clkctrl_outclk\,
	datad => \sram_data_out[14]~1_combout\,
	combout => fpixel(6));

-- Location: IOIBUF_X3_Y0_N22
\SRAM_DQ[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SRAM_DQ(13),
	o => \SRAM_DQ[13]~input_o\);

-- Location: LCCOMB_X42_Y24_N14
\sram_data_out[13]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram_data_out[13]~2_combout\ = (\SRAM_DQ[13]~input_o\) # (!\camstatemachine_instance|WideOr0~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SRAM_DQ[13]~input_o\,
	datad => \camstatemachine_instance|WideOr0~combout\,
	combout => \sram_data_out[13]~2_combout\);

-- Location: LCCOMB_X42_Y24_N6
\fpixel[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- fpixel(5) = (GLOBAL(\fpixel[0]~0clkctrl_outclk\) & ((\sram_data_out[13]~2_combout\))) # (!GLOBAL(\fpixel[0]~0clkctrl_outclk\) & (fpixel(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => fpixel(5),
	datac => \fpixel[0]~0clkctrl_outclk\,
	datad => \sram_data_out[13]~2_combout\,
	combout => fpixel(5));

-- Location: LCCOMB_X42_Y24_N28
\bpixel[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- bpixel(5) = (GLOBAL(\bpixel[0]~1clkctrl_outclk\) & ((\sram_data_out[13]~2_combout\))) # (!GLOBAL(\bpixel[0]~1clkctrl_outclk\) & (bpixel(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => bpixel(5),
	datac => \sram_data_out[13]~2_combout\,
	datad => \bpixel[0]~1clkctrl_outclk\,
	combout => bpixel(5));

-- Location: IOIBUF_X0_Y7_N8
\SRAM_DQ[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SRAM_DQ(12),
	o => \SRAM_DQ[12]~input_o\);

-- Location: LCCOMB_X42_Y24_N0
\sram_data_out[12]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram_data_out[12]~3_combout\ = (\SRAM_DQ[12]~input_o\) # (!\camstatemachine_instance|WideOr0~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SRAM_DQ[12]~input_o\,
	datad => \camstatemachine_instance|WideOr0~combout\,
	combout => \sram_data_out[12]~3_combout\);

-- Location: LCCOMB_X42_Y24_N20
\bpixel[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- bpixel(4) = (GLOBAL(\bpixel[0]~1clkctrl_outclk\) & ((\sram_data_out[12]~3_combout\))) # (!GLOBAL(\bpixel[0]~1clkctrl_outclk\) & (bpixel(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => bpixel(4),
	datac => \sram_data_out[12]~3_combout\,
	datad => \bpixel[0]~1clkctrl_outclk\,
	combout => bpixel(4));

-- Location: LCCOMB_X42_Y24_N18
\fpixel[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- fpixel(4) = (GLOBAL(\fpixel[0]~0clkctrl_outclk\) & (\sram_data_out[12]~3_combout\)) # (!GLOBAL(\fpixel[0]~0clkctrl_outclk\) & ((fpixel(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \sram_data_out[12]~3_combout\,
	datac => \fpixel[0]~0clkctrl_outclk\,
	datad => fpixel(4),
	combout => fpixel(4));

-- Location: LCCOMB_X39_Y24_N22
\sram_data_out[11]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram_data_out[11]~4_combout\ = (!\camstatemachine_instance|current_state.read_foreground_pixel~q\ & !\camstatemachine_instance|current_state.display~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000100010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camstatemachine_instance|current_state.read_foreground_pixel~q\,
	datab => \camstatemachine_instance|current_state.display~q\,
	combout => \sram_data_out[11]~4_combout\);

-- Location: IOIBUF_X0_Y16_N15
\SRAM_DQ[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SRAM_DQ(11),
	o => \SRAM_DQ[11]~input_o\);

-- Location: LCCOMB_X39_Y24_N28
\sram_data_out[11]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram_data_out[11]~5_combout\ = (\SRAM_DQ[11]~input_o\) # ((!\camstatemachine_instance|current_state.wait_for_display_end_pre_copy~2_combout\ & (\sram_data_out[11]~4_combout\ & !\camstatemachine_instance|current_state.read_background_pixel~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camstatemachine_instance|current_state.wait_for_display_end_pre_copy~2_combout\,
	datab => \sram_data_out[11]~4_combout\,
	datac => \camstatemachine_instance|current_state.read_background_pixel~2_combout\,
	datad => \SRAM_DQ[11]~input_o\,
	combout => \sram_data_out[11]~5_combout\);

-- Location: LCCOMB_X39_Y24_N30
\bpixel[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- bpixel(3) = (GLOBAL(\bpixel[0]~1clkctrl_outclk\) & ((\sram_data_out[11]~5_combout\))) # (!GLOBAL(\bpixel[0]~1clkctrl_outclk\) & (bpixel(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bpixel(3),
	datac => \sram_data_out[11]~5_combout\,
	datad => \bpixel[0]~1clkctrl_outclk\,
	combout => bpixel(3));

-- Location: LCCOMB_X39_Y24_N16
\fpixel[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- fpixel(3) = (GLOBAL(\fpixel[0]~0clkctrl_outclk\) & ((\sram_data_out[11]~5_combout\))) # (!GLOBAL(\fpixel[0]~0clkctrl_outclk\) & (fpixel(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => fpixel(3),
	datac => \sram_data_out[11]~5_combout\,
	datad => \fpixel[0]~0clkctrl_outclk\,
	combout => fpixel(3));

-- Location: IOIBUF_X0_Y17_N15
\SRAM_DQ[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SRAM_DQ(10),
	o => \SRAM_DQ[10]~input_o\);

-- Location: LCCOMB_X40_Y24_N12
\sram_data_out[10]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram_data_out[10]~6_combout\ = (\SRAM_DQ[10]~input_o\) # (!\camstatemachine_instance|WideOr0~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SRAM_DQ[10]~input_o\,
	datad => \camstatemachine_instance|WideOr0~combout\,
	combout => \sram_data_out[10]~6_combout\);

-- Location: LCCOMB_X40_Y24_N10
\bpixel[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- bpixel(2) = (GLOBAL(\bpixel[0]~1clkctrl_outclk\) & ((\sram_data_out[10]~6_combout\))) # (!GLOBAL(\bpixel[0]~1clkctrl_outclk\) & (bpixel(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => bpixel(2),
	datac => \sram_data_out[10]~6_combout\,
	datad => \bpixel[0]~1clkctrl_outclk\,
	combout => bpixel(2));

-- Location: LCCOMB_X40_Y24_N20
\fpixel[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- fpixel(2) = (GLOBAL(\fpixel[0]~0clkctrl_outclk\) & (\sram_data_out[10]~6_combout\)) # (!GLOBAL(\fpixel[0]~0clkctrl_outclk\) & ((fpixel(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sram_data_out[10]~6_combout\,
	datac => \fpixel[0]~0clkctrl_outclk\,
	datad => fpixel(2),
	combout => fpixel(2));

-- Location: IOIBUF_X0_Y22_N22
\SRAM_DQ[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SRAM_DQ(9),
	o => \SRAM_DQ[9]~input_o\);

-- Location: LCCOMB_X40_Y24_N6
\sram_data_out[9]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram_data_out[9]~7_combout\ = (\SRAM_DQ[9]~input_o\) # (!\camstatemachine_instance|WideOr0~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SRAM_DQ[9]~input_o\,
	datad => \camstatemachine_instance|WideOr0~combout\,
	combout => \sram_data_out[9]~7_combout\);

-- Location: LCCOMB_X40_Y24_N14
\bpixel[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- bpixel(1) = (GLOBAL(\bpixel[0]~1clkctrl_outclk\) & ((\sram_data_out[9]~7_combout\))) # (!GLOBAL(\bpixel[0]~1clkctrl_outclk\) & (bpixel(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => bpixel(1),
	datac => \bpixel[0]~1clkctrl_outclk\,
	datad => \sram_data_out[9]~7_combout\,
	combout => bpixel(1));

-- Location: LCCOMB_X40_Y24_N24
\fpixel[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- fpixel(1) = (GLOBAL(\fpixel[0]~0clkctrl_outclk\) & ((\sram_data_out[9]~7_combout\))) # (!GLOBAL(\fpixel[0]~0clkctrl_outclk\) & (fpixel(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => fpixel(1),
	datac => \fpixel[0]~0clkctrl_outclk\,
	datad => \sram_data_out[9]~7_combout\,
	combout => fpixel(1));

-- Location: IOIBUF_X0_Y21_N15
\SRAM_DQ[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SRAM_DQ(8),
	o => \SRAM_DQ[8]~input_o\);

-- Location: LCCOMB_X42_Y24_N22
\sram_data_out[8]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram_data_out[8]~8_combout\ = (\SRAM_DQ[8]~input_o\) # (!\camstatemachine_instance|WideOr0~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRAM_DQ[8]~input_o\,
	datad => \camstatemachine_instance|WideOr0~combout\,
	combout => \sram_data_out[8]~8_combout\);

-- Location: LCCOMB_X42_Y24_N2
\fpixel[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- fpixel(0) = (GLOBAL(\fpixel[0]~0clkctrl_outclk\) & (\sram_data_out[8]~8_combout\)) # (!GLOBAL(\fpixel[0]~0clkctrl_outclk\) & ((fpixel(0))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \sram_data_out[8]~8_combout\,
	datac => \fpixel[0]~0clkctrl_outclk\,
	datad => fpixel(0),
	combout => fpixel(0));

-- Location: LCCOMB_X42_Y24_N24
\bpixel[0]\ : cycloneive_lcell_comb
-- Equation(s):
-- bpixel(0) = (GLOBAL(\bpixel[0]~1clkctrl_outclk\) & ((\sram_data_out[8]~8_combout\))) # (!GLOBAL(\bpixel[0]~1clkctrl_outclk\) & (bpixel(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => bpixel(0),
	datac => \sram_data_out[8]~8_combout\,
	datad => \bpixel[0]~1clkctrl_outclk\,
	combout => bpixel(0));

-- Location: LCCOMB_X41_Y24_N0
\Add2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~0_combout\ = (fpixel(0) & (bpixel(0) $ (VCC))) # (!fpixel(0) & ((bpixel(0)) # (GND)))
-- \Add2~1\ = CARRY((bpixel(0)) # (!fpixel(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011011011101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => fpixel(0),
	datab => bpixel(0),
	datad => VCC,
	combout => \Add2~0_combout\,
	cout => \Add2~1\);

-- Location: LCCOMB_X41_Y24_N2
\Add2~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~2_combout\ = (bpixel(1) & ((fpixel(1) & (!\Add2~1\)) # (!fpixel(1) & (\Add2~1\ & VCC)))) # (!bpixel(1) & ((fpixel(1) & ((\Add2~1\) # (GND))) # (!fpixel(1) & (!\Add2~1\))))
-- \Add2~3\ = CARRY((bpixel(1) & (fpixel(1) & !\Add2~1\)) # (!bpixel(1) & ((fpixel(1)) # (!\Add2~1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => bpixel(1),
	datab => fpixel(1),
	datad => VCC,
	cin => \Add2~1\,
	combout => \Add2~2_combout\,
	cout => \Add2~3\);

-- Location: LCCOMB_X41_Y24_N4
\Add2~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~4_combout\ = ((bpixel(2) $ (fpixel(2) $ (\Add2~3\)))) # (GND)
-- \Add2~5\ = CARRY((bpixel(2) & ((!\Add2~3\) # (!fpixel(2)))) # (!bpixel(2) & (!fpixel(2) & !\Add2~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => bpixel(2),
	datab => fpixel(2),
	datad => VCC,
	cin => \Add2~3\,
	combout => \Add2~4_combout\,
	cout => \Add2~5\);

-- Location: LCCOMB_X41_Y24_N6
\Add2~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~6_combout\ = (bpixel(3) & ((fpixel(3) & (!\Add2~5\)) # (!fpixel(3) & (\Add2~5\ & VCC)))) # (!bpixel(3) & ((fpixel(3) & ((\Add2~5\) # (GND))) # (!fpixel(3) & (!\Add2~5\))))
-- \Add2~7\ = CARRY((bpixel(3) & (fpixel(3) & !\Add2~5\)) # (!bpixel(3) & ((fpixel(3)) # (!\Add2~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => bpixel(3),
	datab => fpixel(3),
	datad => VCC,
	cin => \Add2~5\,
	combout => \Add2~6_combout\,
	cout => \Add2~7\);

-- Location: LCCOMB_X41_Y24_N8
\Add2~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~8_combout\ = ((bpixel(4) $ (fpixel(4) $ (\Add2~7\)))) # (GND)
-- \Add2~9\ = CARRY((bpixel(4) & ((!\Add2~7\) # (!fpixel(4)))) # (!bpixel(4) & (!fpixel(4) & !\Add2~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => bpixel(4),
	datab => fpixel(4),
	datad => VCC,
	cin => \Add2~7\,
	combout => \Add2~8_combout\,
	cout => \Add2~9\);

-- Location: LCCOMB_X41_Y24_N10
\Add2~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~10_combout\ = (fpixel(5) & ((bpixel(5) & (!\Add2~9\)) # (!bpixel(5) & ((\Add2~9\) # (GND))))) # (!fpixel(5) & ((bpixel(5) & (\Add2~9\ & VCC)) # (!bpixel(5) & (!\Add2~9\))))
-- \Add2~11\ = CARRY((fpixel(5) & ((!\Add2~9\) # (!bpixel(5)))) # (!fpixel(5) & (!bpixel(5) & !\Add2~9\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => fpixel(5),
	datab => bpixel(5),
	datad => VCC,
	cin => \Add2~9\,
	combout => \Add2~10_combout\,
	cout => \Add2~11\);

-- Location: LCCOMB_X41_Y24_N12
\Add2~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~12_combout\ = ((bpixel(6) $ (fpixel(6) $ (\Add2~11\)))) # (GND)
-- \Add2~13\ = CARRY((bpixel(6) & ((!\Add2~11\) # (!fpixel(6)))) # (!bpixel(6) & (!fpixel(6) & !\Add2~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => bpixel(6),
	datab => fpixel(6),
	datad => VCC,
	cin => \Add2~11\,
	combout => \Add2~12_combout\,
	cout => \Add2~13\);

-- Location: LCCOMB_X41_Y24_N14
\Add2~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~14_combout\ = (fpixel(7) & ((bpixel(7) & (!\Add2~13\)) # (!bpixel(7) & ((\Add2~13\) # (GND))))) # (!fpixel(7) & ((bpixel(7) & (\Add2~13\ & VCC)) # (!bpixel(7) & (!\Add2~13\))))
-- \Add2~15\ = CARRY((fpixel(7) & ((!\Add2~13\) # (!bpixel(7)))) # (!fpixel(7) & (!bpixel(7) & !\Add2~13\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => fpixel(7),
	datab => bpixel(7),
	datad => VCC,
	cin => \Add2~13\,
	combout => \Add2~14_combout\,
	cout => \Add2~15\);

-- Location: LCCOMB_X41_Y24_N16
\Add2~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~16_combout\ = \Add2~15\ $ (GND)
-- \Add2~17\ = CARRY(!\Add2~15\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \Add2~15\,
	combout => \Add2~16_combout\,
	cout => \Add2~17\);

-- Location: LCCOMB_X41_Y24_N18
\Add2~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~18_combout\ = !\Add2~17\
-- \Add2~19\ = CARRY(!\Add2~17\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \Add2~17\,
	combout => \Add2~18_combout\,
	cout => \Add2~19\);

-- Location: LCCOMB_X41_Y24_N20
\Add2~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~20_combout\ = \Add2~19\ $ (GND)
-- \Add2~21\ = CARRY(!\Add2~19\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \Add2~19\,
	combout => \Add2~20_combout\,
	cout => \Add2~21\);

-- Location: LCCOMB_X41_Y24_N22
\Add2~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~22_combout\ = !\Add2~21\
-- \Add2~23\ = CARRY(!\Add2~21\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \Add2~21\,
	combout => \Add2~22_combout\,
	cout => \Add2~23\);

-- Location: LCCOMB_X41_Y24_N24
\Add2~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~24_combout\ = \Add2~23\ $ (GND)
-- \Add2~25\ = CARRY(!\Add2~23\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \Add2~23\,
	combout => \Add2~24_combout\,
	cout => \Add2~25\);

-- Location: LCCOMB_X41_Y24_N26
\Add2~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~26_combout\ = !\Add2~25\
-- \Add2~27\ = CARRY(!\Add2~25\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \Add2~25\,
	combout => \Add2~26_combout\,
	cout => \Add2~27\);

-- Location: LCCOMB_X41_Y24_N28
\Add2~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~28_combout\ = \Add2~27\ $ (GND)
-- \Add2~29\ = CARRY(!\Add2~27\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \Add2~27\,
	combout => \Add2~28_combout\,
	cout => \Add2~29\);

-- Location: LCCOMB_X41_Y24_N30
\Add2~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~30_combout\ = !\Add2~29\
-- \Add2~31\ = CARRY(!\Add2~29\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \Add2~29\,
	combout => \Add2~30_combout\,
	cout => \Add2~31\);

-- Location: LCCOMB_X41_Y23_N0
\Add2~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~32_combout\ = \Add2~31\ $ (GND)
-- \Add2~33\ = CARRY(!\Add2~31\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \Add2~31\,
	combout => \Add2~32_combout\,
	cout => \Add2~33\);

-- Location: LCCOMB_X41_Y23_N2
\Add2~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~34_combout\ = !\Add2~33\
-- \Add2~35\ = CARRY(!\Add2~33\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \Add2~33\,
	combout => \Add2~34_combout\,
	cout => \Add2~35\);

-- Location: LCCOMB_X41_Y23_N4
\Add2~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~36_combout\ = \Add2~35\ $ (GND)
-- \Add2~37\ = CARRY(!\Add2~35\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \Add2~35\,
	combout => \Add2~36_combout\,
	cout => \Add2~37\);

-- Location: LCCOMB_X41_Y23_N6
\Add2~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~38_combout\ = !\Add2~37\
-- \Add2~39\ = CARRY(!\Add2~37\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \Add2~37\,
	combout => \Add2~38_combout\,
	cout => \Add2~39\);

-- Location: LCCOMB_X41_Y23_N8
\Add2~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~40_combout\ = \Add2~39\ $ (GND)
-- \Add2~41\ = CARRY(!\Add2~39\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \Add2~39\,
	combout => \Add2~40_combout\,
	cout => \Add2~41\);

-- Location: LCCOMB_X41_Y23_N10
\Add2~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~42_combout\ = !\Add2~41\
-- \Add2~43\ = CARRY(!\Add2~41\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \Add2~41\,
	combout => \Add2~42_combout\,
	cout => \Add2~43\);

-- Location: LCCOMB_X41_Y23_N12
\Add2~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~44_combout\ = \Add2~43\ $ (GND)
-- \Add2~45\ = CARRY(!\Add2~43\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \Add2~43\,
	combout => \Add2~44_combout\,
	cout => \Add2~45\);

-- Location: LCCOMB_X41_Y23_N14
\Add2~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~46_combout\ = !\Add2~45\
-- \Add2~47\ = CARRY(!\Add2~45\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \Add2~45\,
	combout => \Add2~46_combout\,
	cout => \Add2~47\);

-- Location: LCCOMB_X41_Y23_N16
\Add2~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~48_combout\ = \Add2~47\ $ (GND)
-- \Add2~49\ = CARRY(!\Add2~47\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \Add2~47\,
	combout => \Add2~48_combout\,
	cout => \Add2~49\);

-- Location: LCCOMB_X41_Y23_N18
\Add2~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~50_combout\ = !\Add2~49\
-- \Add2~51\ = CARRY(!\Add2~49\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \Add2~49\,
	combout => \Add2~50_combout\,
	cout => \Add2~51\);

-- Location: LCCOMB_X41_Y23_N20
\Add2~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~52_combout\ = \Add2~51\ $ (GND)
-- \Add2~53\ = CARRY(!\Add2~51\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \Add2~51\,
	combout => \Add2~52_combout\,
	cout => \Add2~53\);

-- Location: LCCOMB_X41_Y23_N22
\Add2~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~54_combout\ = !\Add2~53\
-- \Add2~55\ = CARRY(!\Add2~53\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \Add2~53\,
	combout => \Add2~54_combout\,
	cout => \Add2~55\);

-- Location: LCCOMB_X41_Y23_N24
\Add2~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~56_combout\ = \Add2~55\ $ (GND)
-- \Add2~57\ = CARRY(!\Add2~55\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \Add2~55\,
	combout => \Add2~56_combout\,
	cout => \Add2~57\);

-- Location: LCCOMB_X41_Y23_N26
\Add2~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~58_combout\ = !\Add2~57\
-- \Add2~59\ = CARRY(!\Add2~57\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111100001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \Add2~57\,
	combout => \Add2~58_combout\,
	cout => \Add2~59\);

-- Location: LCCOMB_X41_Y23_N28
\Add2~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~60_combout\ = \Add2~59\ $ (GND)
-- \Add2~61\ = CARRY(!\Add2~59\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => VCC,
	cin => \Add2~59\,
	combout => \Add2~60_combout\,
	cout => \Add2~61\);

-- Location: LCCOMB_X41_Y23_N30
\Add2~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add2~62_combout\ = \Add2~61\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Add2~61\,
	combout => \Add2~62_combout\);

-- Location: LCCOMB_X42_Y23_N0
\diff~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \diff~0_combout\ = \Add2~0_combout\ $ (\Add2~62_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \Add2~0_combout\,
	datad => \Add2~62_combout\,
	combout => \diff~0_combout\);

-- Location: LCCOMB_X42_Y23_N2
\Add3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~1_cout\ = CARRY((!\Add2~62_combout\ & !\diff~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~62_combout\,
	datab => \diff~0_combout\,
	datad => VCC,
	cout => \Add3~1_cout\);

-- Location: LCCOMB_X42_Y23_N4
\Add3~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~2_combout\ = (\Add3~1_cout\ & (\Add2~2_combout\ $ ((\Add2~62_combout\)))) # (!\Add3~1_cout\ & ((\Add2~2_combout\ $ (!\Add2~62_combout\)) # (GND)))
-- \Add3~3\ = CARRY((\Add2~2_combout\ $ (\Add2~62_combout\)) # (!\Add3~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~2_combout\,
	datab => \Add2~62_combout\,
	datad => VCC,
	cin => \Add3~1_cout\,
	combout => \Add3~2_combout\,
	cout => \Add3~3\);

-- Location: LCCOMB_X42_Y23_N6
\Add3~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~4_combout\ = (\Add3~3\ & ((\Add2~4_combout\ $ (!\Add2~62_combout\)))) # (!\Add3~3\ & (\Add2~4_combout\ $ (\Add2~62_combout\ $ (GND))))
-- \Add3~5\ = CARRY((!\Add3~3\ & (\Add2~4_combout\ $ (!\Add2~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~4_combout\,
	datab => \Add2~62_combout\,
	datad => VCC,
	cin => \Add3~3\,
	combout => \Add3~4_combout\,
	cout => \Add3~5\);

-- Location: LCCOMB_X42_Y23_N8
\Add3~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~6_combout\ = (\Add3~5\ & (\Add2~6_combout\ $ ((\Add2~62_combout\)))) # (!\Add3~5\ & ((\Add2~6_combout\ $ (!\Add2~62_combout\)) # (GND)))
-- \Add3~7\ = CARRY((\Add2~6_combout\ $ (\Add2~62_combout\)) # (!\Add3~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~6_combout\,
	datab => \Add2~62_combout\,
	datad => VCC,
	cin => \Add3~5\,
	combout => \Add3~6_combout\,
	cout => \Add3~7\);

-- Location: LCCOMB_X42_Y23_N10
\Add3~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~8_combout\ = (\Add3~7\ & ((\Add2~8_combout\ $ (!\Add2~62_combout\)))) # (!\Add3~7\ & (\Add2~8_combout\ $ (\Add2~62_combout\ $ (GND))))
-- \Add3~9\ = CARRY((!\Add3~7\ & (\Add2~8_combout\ $ (!\Add2~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~8_combout\,
	datab => \Add2~62_combout\,
	datad => VCC,
	cin => \Add3~7\,
	combout => \Add3~8_combout\,
	cout => \Add3~9\);

-- Location: LCCOMB_X42_Y23_N12
\Add3~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~10_combout\ = (\Add3~9\ & (\Add2~10_combout\ $ ((\Add2~62_combout\)))) # (!\Add3~9\ & ((\Add2~10_combout\ $ (!\Add2~62_combout\)) # (GND)))
-- \Add3~11\ = CARRY((\Add2~10_combout\ $ (\Add2~62_combout\)) # (!\Add3~9\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~10_combout\,
	datab => \Add2~62_combout\,
	datad => VCC,
	cin => \Add3~9\,
	combout => \Add3~10_combout\,
	cout => \Add3~11\);

-- Location: LCCOMB_X42_Y23_N14
\Add3~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~12_combout\ = (\Add3~11\ & ((\Add2~62_combout\ $ (!\Add2~12_combout\)))) # (!\Add3~11\ & (\Add2~62_combout\ $ (\Add2~12_combout\ $ (GND))))
-- \Add3~13\ = CARRY((!\Add3~11\ & (\Add2~62_combout\ $ (!\Add2~12_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~62_combout\,
	datab => \Add2~12_combout\,
	datad => VCC,
	cin => \Add3~11\,
	combout => \Add3~12_combout\,
	cout => \Add3~13\);

-- Location: LCCOMB_X42_Y23_N16
\Add3~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~14_combout\ = (\Add3~13\ & (\Add2~14_combout\ $ ((\Add2~62_combout\)))) # (!\Add3~13\ & ((\Add2~14_combout\ $ (!\Add2~62_combout\)) # (GND)))
-- \Add3~15\ = CARRY((\Add2~14_combout\ $ (\Add2~62_combout\)) # (!\Add3~13\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~14_combout\,
	datab => \Add2~62_combout\,
	datad => VCC,
	cin => \Add3~13\,
	combout => \Add3~14_combout\,
	cout => \Add3~15\);

-- Location: LCCOMB_X43_Y23_N12
\diff[7]\ : cycloneive_lcell_comb
-- Equation(s):
-- diff(7) = (GLOBAL(\backgroundsubtraction_eof~0clkctrl_outclk\) & ((\Add3~14_combout\))) # (!GLOBAL(\backgroundsubtraction_eof~0clkctrl_outclk\) & (diff(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => diff(7),
	datac => \Add3~14_combout\,
	datad => \backgroundsubtraction_eof~0clkctrl_outclk\,
	combout => diff(7));

-- Location: LCCOMB_X42_Y23_N18
\Add3~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~16_combout\ = (\Add3~15\ & ((\Add2~16_combout\ $ (!\Add2~62_combout\)))) # (!\Add3~15\ & (\Add2~16_combout\ $ (\Add2~62_combout\ $ (GND))))
-- \Add3~17\ = CARRY((!\Add3~15\ & (\Add2~16_combout\ $ (!\Add2~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~16_combout\,
	datab => \Add2~62_combout\,
	datad => VCC,
	cin => \Add3~15\,
	combout => \Add3~16_combout\,
	cout => \Add3~17\);

-- Location: LCCOMB_X42_Y23_N20
\Add3~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~18_combout\ = (\Add3~17\ & (\Add2~18_combout\ $ ((\Add2~62_combout\)))) # (!\Add3~17\ & ((\Add2~18_combout\ $ (!\Add2~62_combout\)) # (GND)))
-- \Add3~19\ = CARRY((\Add2~18_combout\ $ (\Add2~62_combout\)) # (!\Add3~17\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~18_combout\,
	datab => \Add2~62_combout\,
	datad => VCC,
	cin => \Add3~17\,
	combout => \Add3~18_combout\,
	cout => \Add3~19\);

-- Location: LCCOMB_X42_Y23_N22
\Add3~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~20_combout\ = (\Add3~19\ & ((\Add2~62_combout\ $ (!\Add2~20_combout\)))) # (!\Add3~19\ & (\Add2~62_combout\ $ (\Add2~20_combout\ $ (GND))))
-- \Add3~21\ = CARRY((!\Add3~19\ & (\Add2~62_combout\ $ (!\Add2~20_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~62_combout\,
	datab => \Add2~20_combout\,
	datad => VCC,
	cin => \Add3~19\,
	combout => \Add3~20_combout\,
	cout => \Add3~21\);

-- Location: LCCOMB_X42_Y23_N24
\Add3~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~22_combout\ = (\Add3~21\ & (\Add2~62_combout\ $ ((\Add2~22_combout\)))) # (!\Add3~21\ & ((\Add2~62_combout\ $ (!\Add2~22_combout\)) # (GND)))
-- \Add3~23\ = CARRY((\Add2~62_combout\ $ (\Add2~22_combout\)) # (!\Add3~21\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~62_combout\,
	datab => \Add2~22_combout\,
	datad => VCC,
	cin => \Add3~21\,
	combout => \Add3~22_combout\,
	cout => \Add3~23\);

-- Location: LCCOMB_X43_Y23_N26
\diff[11]\ : cycloneive_lcell_comb
-- Equation(s):
-- diff(11) = (GLOBAL(\backgroundsubtraction_eof~0clkctrl_outclk\) & (\Add3~22_combout\)) # (!GLOBAL(\backgroundsubtraction_eof~0clkctrl_outclk\) & ((diff(11))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add3~22_combout\,
	datac => diff(11),
	datad => \backgroundsubtraction_eof~0clkctrl_outclk\,
	combout => diff(11));

-- Location: LCCOMB_X43_Y23_N2
\diff[9]\ : cycloneive_lcell_comb
-- Equation(s):
-- diff(9) = (GLOBAL(\backgroundsubtraction_eof~0clkctrl_outclk\) & (\Add3~18_combout\)) # (!GLOBAL(\backgroundsubtraction_eof~0clkctrl_outclk\) & ((diff(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add3~18_combout\,
	datac => \backgroundsubtraction_eof~0clkctrl_outclk\,
	datad => diff(9),
	combout => diff(9));

-- Location: LCCOMB_X43_Y23_N8
\diff[10]\ : cycloneive_lcell_comb
-- Equation(s):
-- diff(10) = (GLOBAL(\backgroundsubtraction_eof~0clkctrl_outclk\) & (\Add3~20_combout\)) # (!GLOBAL(\backgroundsubtraction_eof~0clkctrl_outclk\) & ((diff(10))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add3~20_combout\,
	datac => diff(10),
	datad => \backgroundsubtraction_eof~0clkctrl_outclk\,
	combout => diff(10));

-- Location: LCCOMB_X43_Y23_N28
\diff[8]\ : cycloneive_lcell_comb
-- Equation(s):
-- diff(8) = (GLOBAL(\backgroundsubtraction_eof~0clkctrl_outclk\) & (\Add3~16_combout\)) # (!GLOBAL(\backgroundsubtraction_eof~0clkctrl_outclk\) & ((diff(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add3~16_combout\,
	datac => \backgroundsubtraction_eof~0clkctrl_outclk\,
	datad => diff(8),
	combout => diff(8));

-- Location: LCCOMB_X43_Y23_N16
\LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~0_combout\ = (diff(11)) # ((diff(9)) # ((diff(10)) # (diff(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => diff(11),
	datab => diff(9),
	datac => diff(10),
	datad => diff(8),
	combout => \LessThan0~0_combout\);

-- Location: LCCOMB_X43_Y23_N24
\diff[6]\ : cycloneive_lcell_comb
-- Equation(s):
-- diff(6) = (GLOBAL(\backgroundsubtraction_eof~0clkctrl_outclk\) & (\Add3~12_combout\)) # (!GLOBAL(\backgroundsubtraction_eof~0clkctrl_outclk\) & ((diff(6))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~12_combout\,
	datab => diff(6),
	datad => \backgroundsubtraction_eof~0clkctrl_outclk\,
	combout => diff(6));

-- Location: LCCOMB_X43_Y23_N6
\diff[5]\ : cycloneive_lcell_comb
-- Equation(s):
-- diff(5) = (GLOBAL(\backgroundsubtraction_eof~0clkctrl_outclk\) & (\Add3~10_combout\)) # (!GLOBAL(\backgroundsubtraction_eof~0clkctrl_outclk\) & ((diff(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~10_combout\,
	datac => \backgroundsubtraction_eof~0clkctrl_outclk\,
	datad => diff(5),
	combout => diff(5));

-- Location: LCCOMB_X43_Y23_N4
\LessThan0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~2_combout\ = (diff(6)) # (diff(5))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => diff(6),
	datad => diff(5),
	combout => \LessThan0~2_combout\);

-- Location: LCCOMB_X43_Y23_N22
\diff[1]\ : cycloneive_lcell_comb
-- Equation(s):
-- diff(1) = (GLOBAL(\backgroundsubtraction_eof~0clkctrl_outclk\) & (\Add3~2_combout\)) # (!GLOBAL(\backgroundsubtraction_eof~0clkctrl_outclk\) & ((diff(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add3~2_combout\,
	datac => diff(1),
	datad => \backgroundsubtraction_eof~0clkctrl_outclk\,
	combout => diff(1));

-- Location: LCCOMB_X43_Y23_N20
\diff[4]\ : cycloneive_lcell_comb
-- Equation(s):
-- diff(4) = (GLOBAL(\backgroundsubtraction_eof~0clkctrl_outclk\) & (\Add3~8_combout\)) # (!GLOBAL(\backgroundsubtraction_eof~0clkctrl_outclk\) & ((diff(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~8_combout\,
	datac => \backgroundsubtraction_eof~0clkctrl_outclk\,
	datad => diff(4),
	combout => diff(4));

-- Location: LCCOMB_X43_Y23_N14
\diff[3]\ : cycloneive_lcell_comb
-- Equation(s):
-- diff(3) = (GLOBAL(\backgroundsubtraction_eof~0clkctrl_outclk\) & (\Add3~6_combout\)) # (!GLOBAL(\backgroundsubtraction_eof~0clkctrl_outclk\) & ((diff(3))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~6_combout\,
	datac => diff(3),
	datad => \backgroundsubtraction_eof~0clkctrl_outclk\,
	combout => diff(3));

-- Location: LCCOMB_X43_Y23_N0
\diff[2]\ : cycloneive_lcell_comb
-- Equation(s):
-- diff(2) = (GLOBAL(\backgroundsubtraction_eof~0clkctrl_outclk\) & (\Add3~4_combout\)) # (!GLOBAL(\backgroundsubtraction_eof~0clkctrl_outclk\) & ((diff(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add3~4_combout\,
	datac => \backgroundsubtraction_eof~0clkctrl_outclk\,
	datad => diff(2),
	combout => diff(2));

-- Location: LCCOMB_X43_Y23_N18
\LessThan0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~1_combout\ = (diff(1)) # ((diff(4)) # ((diff(3)) # (diff(2))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => diff(1),
	datab => diff(4),
	datac => diff(3),
	datad => diff(2),
	combout => \LessThan0~1_combout\);

-- Location: LCCOMB_X43_Y23_N10
\LessThan0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~3_combout\ = (\LessThan0~0_combout\) # ((diff(7) & ((\LessThan0~2_combout\) # (\LessThan0~1_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => diff(7),
	datab => \LessThan0~0_combout\,
	datac => \LessThan0~2_combout\,
	datad => \LessThan0~1_combout\,
	combout => \LessThan0~3_combout\);

-- Location: IOIBUF_X107_Y0_N1
\GPIO[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(0),
	o => \GPIO[0]~input_o\);

-- Location: LCCOMB_X65_Y1_N20
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

-- Location: IOIBUF_X60_Y0_N15
\GPIO[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(8),
	o => \GPIO[8]~input_o\);

-- Location: FF_X65_Y1_N21
\cam_instance|second_byte\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GPIO[11]~input_o\,
	d => \cam_instance|second_byte~0_combout\,
	clrn => \GPIO[8]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cam_instance|second_byte~q\);

-- Location: LCCOMB_X65_Y1_N6
\cam_instance|y_data[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \cam_instance|y_data[0]~0_combout\ = (\cam_instance|second_byte~q\ & \GPIO[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \cam_instance|second_byte~q\,
	datad => \GPIO[8]~input_o\,
	combout => \cam_instance|y_data[0]~0_combout\);

-- Location: FF_X107_Y0_N3
\cam_instance|y_data[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GPIO[11]~input_o\,
	d => \GPIO[0]~input_o\,
	ena => \cam_instance|y_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cam_instance|y_data\(0));

-- Location: LCCOMB_X42_Y23_N26
\Add3~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~24_combout\ = (\Add3~23\ & ((\Add2~62_combout\ $ (!\Add2~24_combout\)))) # (!\Add3~23\ & (\Add2~62_combout\ $ (\Add2~24_combout\ $ (GND))))
-- \Add3~25\ = CARRY((!\Add3~23\ & (\Add2~62_combout\ $ (!\Add2~24_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~62_combout\,
	datab => \Add2~24_combout\,
	datad => VCC,
	cin => \Add3~23\,
	combout => \Add3~24_combout\,
	cout => \Add3~25\);

-- Location: LCCOMB_X42_Y23_N28
\Add3~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~26_combout\ = (\Add3~25\ & (\Add2~62_combout\ $ ((\Add2~26_combout\)))) # (!\Add3~25\ & ((\Add2~62_combout\ $ (!\Add2~26_combout\)) # (GND)))
-- \Add3~27\ = CARRY((\Add2~62_combout\ $ (\Add2~26_combout\)) # (!\Add3~25\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~62_combout\,
	datab => \Add2~26_combout\,
	datad => VCC,
	cin => \Add3~25\,
	combout => \Add3~26_combout\,
	cout => \Add3~27\);

-- Location: LCCOMB_X42_Y23_N30
\Add3~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~28_combout\ = (\Add3~27\ & ((\Add2~62_combout\ $ (!\Add2~28_combout\)))) # (!\Add3~27\ & (\Add2~62_combout\ $ (\Add2~28_combout\ $ (GND))))
-- \Add3~29\ = CARRY((!\Add3~27\ & (\Add2~62_combout\ $ (!\Add2~28_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~62_combout\,
	datab => \Add2~28_combout\,
	datad => VCC,
	cin => \Add3~27\,
	combout => \Add3~28_combout\,
	cout => \Add3~29\);

-- Location: LCCOMB_X42_Y22_N0
\Add3~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~30_combout\ = (\Add3~29\ & (\Add2~62_combout\ $ ((\Add2~30_combout\)))) # (!\Add3~29\ & ((\Add2~62_combout\ $ (!\Add2~30_combout\)) # (GND)))
-- \Add3~31\ = CARRY((\Add2~62_combout\ $ (\Add2~30_combout\)) # (!\Add3~29\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~62_combout\,
	datab => \Add2~30_combout\,
	datad => VCC,
	cin => \Add3~29\,
	combout => \Add3~30_combout\,
	cout => \Add3~31\);

-- Location: LCCOMB_X42_Y22_N2
\Add3~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~32_combout\ = (\Add3~31\ & ((\Add2~62_combout\ $ (!\Add2~32_combout\)))) # (!\Add3~31\ & (\Add2~62_combout\ $ (\Add2~32_combout\ $ (GND))))
-- \Add3~33\ = CARRY((!\Add3~31\ & (\Add2~62_combout\ $ (!\Add2~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~62_combout\,
	datab => \Add2~32_combout\,
	datad => VCC,
	cin => \Add3~31\,
	combout => \Add3~32_combout\,
	cout => \Add3~33\);

-- Location: LCCOMB_X42_Y22_N4
\Add3~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~34_combout\ = (\Add3~33\ & (\Add2~62_combout\ $ ((\Add2~34_combout\)))) # (!\Add3~33\ & ((\Add2~62_combout\ $ (!\Add2~34_combout\)) # (GND)))
-- \Add3~35\ = CARRY((\Add2~62_combout\ $ (\Add2~34_combout\)) # (!\Add3~33\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~62_combout\,
	datab => \Add2~34_combout\,
	datad => VCC,
	cin => \Add3~33\,
	combout => \Add3~34_combout\,
	cout => \Add3~35\);

-- Location: LCCOMB_X42_Y22_N6
\Add3~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~36_combout\ = (\Add3~35\ & ((\Add2~62_combout\ $ (!\Add2~36_combout\)))) # (!\Add3~35\ & (\Add2~62_combout\ $ (\Add2~36_combout\ $ (GND))))
-- \Add3~37\ = CARRY((!\Add3~35\ & (\Add2~62_combout\ $ (!\Add2~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~62_combout\,
	datab => \Add2~36_combout\,
	datad => VCC,
	cin => \Add3~35\,
	combout => \Add3~36_combout\,
	cout => \Add3~37\);

-- Location: LCCOMB_X42_Y22_N8
\Add3~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~38_combout\ = (\Add3~37\ & (\Add2~62_combout\ $ ((\Add2~38_combout\)))) # (!\Add3~37\ & ((\Add2~62_combout\ $ (!\Add2~38_combout\)) # (GND)))
-- \Add3~39\ = CARRY((\Add2~62_combout\ $ (\Add2~38_combout\)) # (!\Add3~37\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~62_combout\,
	datab => \Add2~38_combout\,
	datad => VCC,
	cin => \Add3~37\,
	combout => \Add3~38_combout\,
	cout => \Add3~39\);

-- Location: LCCOMB_X42_Y22_N10
\Add3~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~40_combout\ = (\Add3~39\ & ((\Add2~62_combout\ $ (!\Add2~40_combout\)))) # (!\Add3~39\ & (\Add2~62_combout\ $ (\Add2~40_combout\ $ (GND))))
-- \Add3~41\ = CARRY((!\Add3~39\ & (\Add2~62_combout\ $ (!\Add2~40_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~62_combout\,
	datab => \Add2~40_combout\,
	datad => VCC,
	cin => \Add3~39\,
	combout => \Add3~40_combout\,
	cout => \Add3~41\);

-- Location: LCCOMB_X42_Y22_N12
\Add3~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~42_combout\ = (\Add3~41\ & (\Add2~62_combout\ $ ((\Add2~42_combout\)))) # (!\Add3~41\ & ((\Add2~62_combout\ $ (!\Add2~42_combout\)) # (GND)))
-- \Add3~43\ = CARRY((\Add2~62_combout\ $ (\Add2~42_combout\)) # (!\Add3~41\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~62_combout\,
	datab => \Add2~42_combout\,
	datad => VCC,
	cin => \Add3~41\,
	combout => \Add3~42_combout\,
	cout => \Add3~43\);

-- Location: LCCOMB_X42_Y22_N14
\Add3~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~44_combout\ = (\Add3~43\ & ((\Add2~44_combout\ $ (!\Add2~62_combout\)))) # (!\Add3~43\ & (\Add2~44_combout\ $ (\Add2~62_combout\ $ (GND))))
-- \Add3~45\ = CARRY((!\Add3~43\ & (\Add2~44_combout\ $ (!\Add2~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~44_combout\,
	datab => \Add2~62_combout\,
	datad => VCC,
	cin => \Add3~43\,
	combout => \Add3~44_combout\,
	cout => \Add3~45\);

-- Location: LCCOMB_X42_Y22_N16
\Add3~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~46_combout\ = (\Add3~45\ & (\Add2~46_combout\ $ ((\Add2~62_combout\)))) # (!\Add3~45\ & ((\Add2~46_combout\ $ (!\Add2~62_combout\)) # (GND)))
-- \Add3~47\ = CARRY((\Add2~46_combout\ $ (\Add2~62_combout\)) # (!\Add3~45\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~46_combout\,
	datab => \Add2~62_combout\,
	datad => VCC,
	cin => \Add3~45\,
	combout => \Add3~46_combout\,
	cout => \Add3~47\);

-- Location: LCCOMB_X42_Y22_N18
\Add3~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~48_combout\ = (\Add3~47\ & ((\Add2~48_combout\ $ (!\Add2~62_combout\)))) # (!\Add3~47\ & (\Add2~48_combout\ $ (\Add2~62_combout\ $ (GND))))
-- \Add3~49\ = CARRY((!\Add3~47\ & (\Add2~48_combout\ $ (!\Add2~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~48_combout\,
	datab => \Add2~62_combout\,
	datad => VCC,
	cin => \Add3~47\,
	combout => \Add3~48_combout\,
	cout => \Add3~49\);

-- Location: LCCOMB_X42_Y22_N20
\Add3~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~50_combout\ = (\Add3~49\ & (\Add2~50_combout\ $ ((\Add2~62_combout\)))) # (!\Add3~49\ & ((\Add2~50_combout\ $ (!\Add2~62_combout\)) # (GND)))
-- \Add3~51\ = CARRY((\Add2~50_combout\ $ (\Add2~62_combout\)) # (!\Add3~49\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~50_combout\,
	datab => \Add2~62_combout\,
	datad => VCC,
	cin => \Add3~49\,
	combout => \Add3~50_combout\,
	cout => \Add3~51\);

-- Location: LCCOMB_X42_Y22_N22
\Add3~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~52_combout\ = (\Add3~51\ & ((\Add2~52_combout\ $ (!\Add2~62_combout\)))) # (!\Add3~51\ & (\Add2~52_combout\ $ (\Add2~62_combout\ $ (GND))))
-- \Add3~53\ = CARRY((!\Add3~51\ & (\Add2~52_combout\ $ (!\Add2~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~52_combout\,
	datab => \Add2~62_combout\,
	datad => VCC,
	cin => \Add3~51\,
	combout => \Add3~52_combout\,
	cout => \Add3~53\);

-- Location: LCCOMB_X42_Y22_N24
\Add3~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~54_combout\ = (\Add3~53\ & (\Add2~62_combout\ $ ((\Add2~54_combout\)))) # (!\Add3~53\ & ((\Add2~62_combout\ $ (!\Add2~54_combout\)) # (GND)))
-- \Add3~55\ = CARRY((\Add2~62_combout\ $ (\Add2~54_combout\)) # (!\Add3~53\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~62_combout\,
	datab => \Add2~54_combout\,
	datad => VCC,
	cin => \Add3~53\,
	combout => \Add3~54_combout\,
	cout => \Add3~55\);

-- Location: LCCOMB_X42_Y22_N26
\Add3~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~56_combout\ = (\Add3~55\ & ((\Add2~56_combout\ $ (!\Add2~62_combout\)))) # (!\Add3~55\ & (\Add2~56_combout\ $ (\Add2~62_combout\ $ (GND))))
-- \Add3~57\ = CARRY((!\Add3~55\ & (\Add2~56_combout\ $ (!\Add2~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000001001",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~56_combout\,
	datab => \Add2~62_combout\,
	datad => VCC,
	cin => \Add3~55\,
	combout => \Add3~56_combout\,
	cout => \Add3~57\);

-- Location: LCCOMB_X41_Y22_N12
\diff[28]\ : cycloneive_lcell_comb
-- Equation(s):
-- diff(28) = (GLOBAL(\backgroundsubtraction_eof~0clkctrl_outclk\) & ((\Add3~56_combout\))) # (!GLOBAL(\backgroundsubtraction_eof~0clkctrl_outclk\) & (diff(28)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => diff(28),
	datac => \backgroundsubtraction_eof~0clkctrl_outclk\,
	datad => \Add3~56_combout\,
	combout => diff(28));

-- Location: LCCOMB_X42_Y22_N28
\Add3~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~58_combout\ = (\Add3~57\ & (\Add2~58_combout\ $ ((\Add2~62_combout\)))) # (!\Add3~57\ & ((\Add2~58_combout\ $ (!\Add2~62_combout\)) # (GND)))
-- \Add3~59\ = CARRY((\Add2~58_combout\ $ (\Add2~62_combout\)) # (!\Add3~57\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add2~58_combout\,
	datab => \Add2~62_combout\,
	datad => VCC,
	cin => \Add3~57\,
	combout => \Add3~58_combout\,
	cout => \Add3~59\);

-- Location: LCCOMB_X42_Y22_N30
\Add3~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add3~60_combout\ = \Add2~60_combout\ $ (\Add3~59\ $ (\Add2~62_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add2~60_combout\,
	datad => \Add2~62_combout\,
	cin => \Add3~59\,
	combout => \Add3~60_combout\);

-- Location: LCCOMB_X41_Y22_N28
\diff[30]\ : cycloneive_lcell_comb
-- Equation(s):
-- diff(30) = (GLOBAL(\backgroundsubtraction_eof~0clkctrl_outclk\) & ((\Add3~60_combout\))) # (!GLOBAL(\backgroundsubtraction_eof~0clkctrl_outclk\) & (diff(30)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => diff(30),
	datac => \Add3~60_combout\,
	datad => \backgroundsubtraction_eof~0clkctrl_outclk\,
	combout => diff(30));

-- Location: LCCOMB_X41_Y22_N14
\diff[29]\ : cycloneive_lcell_comb
-- Equation(s):
-- diff(29) = (GLOBAL(\backgroundsubtraction_eof~0clkctrl_outclk\) & ((\Add3~58_combout\))) # (!GLOBAL(\backgroundsubtraction_eof~0clkctrl_outclk\) & (diff(29)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => diff(29),
	datac => \backgroundsubtraction_eof~0clkctrl_outclk\,
	datad => \Add3~58_combout\,
	combout => diff(29));

-- Location: LCCOMB_X43_Y22_N6
\diff[18]\ : cycloneive_lcell_comb
-- Equation(s):
-- diff(18) = (GLOBAL(\backgroundsubtraction_eof~0clkctrl_outclk\) & ((\Add3~36_combout\))) # (!GLOBAL(\backgroundsubtraction_eof~0clkctrl_outclk\) & (diff(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => diff(18),
	datac => \Add3~36_combout\,
	datad => \backgroundsubtraction_eof~0clkctrl_outclk\,
	combout => diff(18));

-- Location: LCCOMB_X43_Y22_N14
\diff[16]\ : cycloneive_lcell_comb
-- Equation(s):
-- diff(16) = (GLOBAL(\backgroundsubtraction_eof~0clkctrl_outclk\) & (\Add3~32_combout\)) # (!GLOBAL(\backgroundsubtraction_eof~0clkctrl_outclk\) & ((diff(16))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~32_combout\,
	datac => diff(16),
	datad => \backgroundsubtraction_eof~0clkctrl_outclk\,
	combout => diff(16));

-- Location: LCCOMB_X43_Y22_N4
\diff[19]\ : cycloneive_lcell_comb
-- Equation(s):
-- diff(19) = (GLOBAL(\backgroundsubtraction_eof~0clkctrl_outclk\) & ((\Add3~38_combout\))) # (!GLOBAL(\backgroundsubtraction_eof~0clkctrl_outclk\) & (diff(19)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => diff(19),
	datac => \backgroundsubtraction_eof~0clkctrl_outclk\,
	datad => \Add3~38_combout\,
	combout => diff(19));

-- Location: LCCOMB_X43_Y22_N12
\diff[17]\ : cycloneive_lcell_comb
-- Equation(s):
-- diff(17) = (GLOBAL(\backgroundsubtraction_eof~0clkctrl_outclk\) & ((\Add3~34_combout\))) # (!GLOBAL(\backgroundsubtraction_eof~0clkctrl_outclk\) & (diff(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => diff(17),
	datac => \Add3~34_combout\,
	datad => \backgroundsubtraction_eof~0clkctrl_outclk\,
	combout => diff(17));

-- Location: LCCOMB_X43_Y22_N10
\LessThan0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~5_combout\ = (diff(18)) # ((diff(16)) # ((diff(19)) # (diff(17))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => diff(18),
	datab => diff(16),
	datac => diff(19),
	datad => diff(17),
	combout => \LessThan0~5_combout\);

-- Location: LCCOMB_X43_Y22_N26
\diff[24]\ : cycloneive_lcell_comb
-- Equation(s):
-- diff(24) = (GLOBAL(\backgroundsubtraction_eof~0clkctrl_outclk\) & ((\Add3~48_combout\))) # (!GLOBAL(\backgroundsubtraction_eof~0clkctrl_outclk\) & (diff(24)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => diff(24),
	datac => \backgroundsubtraction_eof~0clkctrl_outclk\,
	datad => \Add3~48_combout\,
	combout => diff(24));

-- Location: LCCOMB_X43_Y22_N8
\diff[25]\ : cycloneive_lcell_comb
-- Equation(s):
-- diff(25) = (GLOBAL(\backgroundsubtraction_eof~0clkctrl_outclk\) & ((\Add3~50_combout\))) # (!GLOBAL(\backgroundsubtraction_eof~0clkctrl_outclk\) & (diff(25)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => diff(25),
	datac => \backgroundsubtraction_eof~0clkctrl_outclk\,
	datad => \Add3~50_combout\,
	combout => diff(25));

-- Location: LCCOMB_X43_Y22_N30
\diff[26]\ : cycloneive_lcell_comb
-- Equation(s):
-- diff(26) = (GLOBAL(\backgroundsubtraction_eof~0clkctrl_outclk\) & ((\Add3~52_combout\))) # (!GLOBAL(\backgroundsubtraction_eof~0clkctrl_outclk\) & (diff(26)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => diff(26),
	datac => \backgroundsubtraction_eof~0clkctrl_outclk\,
	datad => \Add3~52_combout\,
	combout => diff(26));

-- Location: LCCOMB_X43_Y22_N16
\diff[27]\ : cycloneive_lcell_comb
-- Equation(s):
-- diff(27) = (GLOBAL(\backgroundsubtraction_eof~0clkctrl_outclk\) & ((\Add3~54_combout\))) # (!GLOBAL(\backgroundsubtraction_eof~0clkctrl_outclk\) & (diff(27)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => diff(27),
	datac => \backgroundsubtraction_eof~0clkctrl_outclk\,
	datad => \Add3~54_combout\,
	combout => diff(27));

-- Location: LCCOMB_X43_Y22_N24
\LessThan0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~7_combout\ = (diff(24)) # ((diff(25)) # ((diff(26)) # (diff(27))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => diff(24),
	datab => diff(25),
	datac => diff(26),
	datad => diff(27),
	combout => \LessThan0~7_combout\);

-- Location: LCCOMB_X41_Y22_N26
\diff[22]\ : cycloneive_lcell_comb
-- Equation(s):
-- diff(22) = (GLOBAL(\backgroundsubtraction_eof~0clkctrl_outclk\) & ((\Add3~44_combout\))) # (!GLOBAL(\backgroundsubtraction_eof~0clkctrl_outclk\) & (diff(22)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => diff(22),
	datac => \Add3~44_combout\,
	datad => \backgroundsubtraction_eof~0clkctrl_outclk\,
	combout => diff(22));

-- Location: LCCOMB_X41_Y22_N24
\diff[21]\ : cycloneive_lcell_comb
-- Equation(s):
-- diff(21) = (GLOBAL(\backgroundsubtraction_eof~0clkctrl_outclk\) & ((\Add3~42_combout\))) # (!GLOBAL(\backgroundsubtraction_eof~0clkctrl_outclk\) & (diff(21)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => diff(21),
	datac => \Add3~42_combout\,
	datad => \backgroundsubtraction_eof~0clkctrl_outclk\,
	combout => diff(21));

-- Location: LCCOMB_X41_Y22_N4
\diff[23]\ : cycloneive_lcell_comb
-- Equation(s):
-- diff(23) = (GLOBAL(\backgroundsubtraction_eof~0clkctrl_outclk\) & ((\Add3~46_combout\))) # (!GLOBAL(\backgroundsubtraction_eof~0clkctrl_outclk\) & (diff(23)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => diff(23),
	datac => \backgroundsubtraction_eof~0clkctrl_outclk\,
	datad => \Add3~46_combout\,
	combout => diff(23));

-- Location: LCCOMB_X41_Y22_N18
\diff[20]\ : cycloneive_lcell_comb
-- Equation(s):
-- diff(20) = (GLOBAL(\backgroundsubtraction_eof~0clkctrl_outclk\) & (\Add3~40_combout\)) # (!GLOBAL(\backgroundsubtraction_eof~0clkctrl_outclk\) & ((diff(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add3~40_combout\,
	datac => \backgroundsubtraction_eof~0clkctrl_outclk\,
	datad => diff(20),
	combout => diff(20));

-- Location: LCCOMB_X41_Y22_N20
\LessThan0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~6_combout\ = (diff(22)) # ((diff(21)) # ((diff(23)) # (diff(20))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => diff(22),
	datab => diff(21),
	datac => diff(23),
	datad => diff(20),
	combout => \LessThan0~6_combout\);

-- Location: LCCOMB_X43_Y22_N22
\diff[14]\ : cycloneive_lcell_comb
-- Equation(s):
-- diff(14) = (GLOBAL(\backgroundsubtraction_eof~0clkctrl_outclk\) & ((\Add3~28_combout\))) # (!GLOBAL(\backgroundsubtraction_eof~0clkctrl_outclk\) & (diff(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => diff(14),
	datac => \Add3~28_combout\,
	datad => \backgroundsubtraction_eof~0clkctrl_outclk\,
	combout => diff(14));

-- Location: LCCOMB_X43_Y22_N20
\diff[12]\ : cycloneive_lcell_comb
-- Equation(s):
-- diff(12) = (GLOBAL(\backgroundsubtraction_eof~0clkctrl_outclk\) & (\Add3~24_combout\)) # (!GLOBAL(\backgroundsubtraction_eof~0clkctrl_outclk\) & ((diff(12))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add3~24_combout\,
	datac => \backgroundsubtraction_eof~0clkctrl_outclk\,
	datad => diff(12),
	combout => diff(12));

-- Location: LCCOMB_X43_Y23_N30
\diff[13]\ : cycloneive_lcell_comb
-- Equation(s):
-- diff(13) = (GLOBAL(\backgroundsubtraction_eof~0clkctrl_outclk\) & (\Add3~26_combout\)) # (!GLOBAL(\backgroundsubtraction_eof~0clkctrl_outclk\) & ((diff(13))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add3~26_combout\,
	datac => diff(13),
	datad => \backgroundsubtraction_eof~0clkctrl_outclk\,
	combout => diff(13));

-- Location: LCCOMB_X43_Y22_N28
\diff[15]\ : cycloneive_lcell_comb
-- Equation(s):
-- diff(15) = (GLOBAL(\backgroundsubtraction_eof~0clkctrl_outclk\) & ((\Add3~30_combout\))) # (!GLOBAL(\backgroundsubtraction_eof~0clkctrl_outclk\) & (diff(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => diff(15),
	datac => \Add3~30_combout\,
	datad => \backgroundsubtraction_eof~0clkctrl_outclk\,
	combout => diff(15));

-- Location: LCCOMB_X43_Y22_N0
\LessThan0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~4_combout\ = (diff(14)) # ((diff(12)) # ((diff(13)) # (diff(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => diff(14),
	datab => diff(12),
	datac => diff(13),
	datad => diff(15),
	combout => \LessThan0~4_combout\);

-- Location: LCCOMB_X43_Y22_N2
\LessThan0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~8_combout\ = (\LessThan0~5_combout\) # ((\LessThan0~7_combout\) # ((\LessThan0~6_combout\) # (\LessThan0~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \LessThan0~5_combout\,
	datab => \LessThan0~7_combout\,
	datac => \LessThan0~6_combout\,
	datad => \LessThan0~4_combout\,
	combout => \LessThan0~8_combout\);

-- Location: LCCOMB_X41_Y22_N2
\LessThan0~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \LessThan0~9_combout\ = (diff(28)) # ((diff(30)) # ((diff(29)) # (\LessThan0~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => diff(28),
	datab => diff(30),
	datac => diff(29),
	datad => \LessThan0~8_combout\,
	combout => \LessThan0~9_combout\);

-- Location: LCCOMB_X59_Y4_N28
\sram_data_in[8]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram_data_in[8]~0_combout\ = (\camstatemachine_instance|WideOr2~combout\ & ((\LessThan0~3_combout\) # ((\LessThan0~9_combout\)))) # (!\camstatemachine_instance|WideOr2~combout\ & (((\cam_instance|y_data\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camstatemachine_instance|WideOr2~combout\,
	datab => \LessThan0~3_combout\,
	datac => \cam_instance|y_data\(0),
	datad => \LessThan0~9_combout\,
	combout => \sram_data_in[8]~0_combout\);

-- Location: LCCOMB_X59_Y4_N24
\sram_data_in[8]\ : cycloneive_lcell_comb
-- Equation(s):
-- sram_data_in(8) = (GLOBAL(\SRAM_ADDR[13]~71clkctrl_outclk\) & ((\sram_data_in[8]~0_combout\))) # (!GLOBAL(\SRAM_ADDR[13]~71clkctrl_outclk\) & (sram_data_in(8)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => sram_data_in(8),
	datac => \SRAM_ADDR[13]~71clkctrl_outclk\,
	datad => \sram_data_in[8]~0_combout\,
	combout => sram_data_in(8));

-- Location: IOIBUF_X60_Y0_N22
\GPIO[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(1),
	o => \GPIO[1]~input_o\);

-- Location: FF_X60_Y0_N24
\cam_instance|y_data[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GPIO[11]~input_o\,
	d => \GPIO[1]~input_o\,
	ena => \cam_instance|y_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cam_instance|y_data\(1));

-- Location: LCCOMB_X59_Y4_N6
\sram_data_in[9]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram_data_in[9]~1_combout\ = (\camstatemachine_instance|WideOr2~combout\ & (((\LessThan0~3_combout\) # (\LessThan0~9_combout\)))) # (!\camstatemachine_instance|WideOr2~combout\ & (\cam_instance|y_data\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cam_instance|y_data\(1),
	datab => \LessThan0~3_combout\,
	datac => \camstatemachine_instance|WideOr2~combout\,
	datad => \LessThan0~9_combout\,
	combout => \sram_data_in[9]~1_combout\);

-- Location: LCCOMB_X59_Y4_N22
\sram_data_in[9]\ : cycloneive_lcell_comb
-- Equation(s):
-- sram_data_in(9) = (GLOBAL(\SRAM_ADDR[13]~71clkctrl_outclk\) & ((\sram_data_in[9]~1_combout\))) # (!GLOBAL(\SRAM_ADDR[13]~71clkctrl_outclk\) & (sram_data_in(9)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sram_data_in(9),
	datac => \SRAM_ADDR[13]~71clkctrl_outclk\,
	datad => \sram_data_in[9]~1_combout\,
	combout => sram_data_in(9));

-- Location: IOIBUF_X109_Y0_N8
\GPIO[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(2),
	o => \GPIO[2]~input_o\);

-- Location: FF_X109_Y0_N10
\cam_instance|y_data[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GPIO[11]~input_o\,
	d => \GPIO[2]~input_o\,
	ena => \cam_instance|y_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cam_instance|y_data\(2));

-- Location: LCCOMB_X59_Y4_N20
\sram_data_in[10]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram_data_in[10]~2_combout\ = (\camstatemachine_instance|WideOr2~combout\ & ((\LessThan0~3_combout\) # ((\LessThan0~9_combout\)))) # (!\camstatemachine_instance|WideOr2~combout\ & (((\cam_instance|y_data\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camstatemachine_instance|WideOr2~combout\,
	datab => \LessThan0~3_combout\,
	datac => \cam_instance|y_data\(2),
	datad => \LessThan0~9_combout\,
	combout => \sram_data_in[10]~2_combout\);

-- Location: LCCOMB_X59_Y4_N8
\sram_data_in[10]\ : cycloneive_lcell_comb
-- Equation(s):
-- sram_data_in(10) = (GLOBAL(\SRAM_ADDR[13]~71clkctrl_outclk\) & ((\sram_data_in[10]~2_combout\))) # (!GLOBAL(\SRAM_ADDR[13]~71clkctrl_outclk\) & (sram_data_in(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => sram_data_in(10),
	datac => \SRAM_ADDR[13]~71clkctrl_outclk\,
	datad => \sram_data_in[10]~2_combout\,
	combout => sram_data_in(10));

-- Location: IOIBUF_X96_Y0_N22
\GPIO[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(3),
	o => \GPIO[3]~input_o\);

-- Location: FF_X96_Y0_N24
\cam_instance|y_data[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GPIO[11]~input_o\,
	d => \GPIO[3]~input_o\,
	ena => \cam_instance|y_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cam_instance|y_data\(3));

-- Location: LCCOMB_X59_Y4_N10
\sram_data_in[11]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram_data_in[11]~3_combout\ = (\camstatemachine_instance|WideOr2~combout\ & ((\LessThan0~3_combout\) # ((\LessThan0~9_combout\)))) # (!\camstatemachine_instance|WideOr2~combout\ & (((\cam_instance|y_data\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camstatemachine_instance|WideOr2~combout\,
	datab => \LessThan0~3_combout\,
	datac => \cam_instance|y_data\(3),
	datad => \LessThan0~9_combout\,
	combout => \sram_data_in[11]~3_combout\);

-- Location: LCCOMB_X59_Y4_N30
\sram_data_in[11]\ : cycloneive_lcell_comb
-- Equation(s):
-- sram_data_in(11) = (GLOBAL(\SRAM_ADDR[13]~71clkctrl_outclk\) & ((\sram_data_in[11]~3_combout\))) # (!GLOBAL(\SRAM_ADDR[13]~71clkctrl_outclk\) & (sram_data_in(11)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sram_data_in(11),
	datac => \SRAM_ADDR[13]~71clkctrl_outclk\,
	datad => \sram_data_in[11]~3_combout\,
	combout => sram_data_in(11));

-- Location: IOIBUF_X102_Y0_N22
\GPIO[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(4),
	o => \GPIO[4]~input_o\);

-- Location: FF_X102_Y0_N24
\cam_instance|y_data[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GPIO[11]~input_o\,
	d => \GPIO[4]~input_o\,
	ena => \cam_instance|y_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cam_instance|y_data\(4));

-- Location: LCCOMB_X59_Y4_N0
\sram_data_in[12]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram_data_in[12]~4_combout\ = (\camstatemachine_instance|WideOr2~combout\ & (((\LessThan0~3_combout\) # (\LessThan0~9_combout\)))) # (!\camstatemachine_instance|WideOr2~combout\ & (\cam_instance|y_data\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cam_instance|y_data\(4),
	datab => \LessThan0~3_combout\,
	datac => \camstatemachine_instance|WideOr2~combout\,
	datad => \LessThan0~9_combout\,
	combout => \sram_data_in[12]~4_combout\);

-- Location: LCCOMB_X59_Y4_N12
\sram_data_in[12]\ : cycloneive_lcell_comb
-- Equation(s):
-- sram_data_in(12) = (GLOBAL(\SRAM_ADDR[13]~71clkctrl_outclk\) & ((\sram_data_in[12]~4_combout\))) # (!GLOBAL(\SRAM_ADDR[13]~71clkctrl_outclk\) & (sram_data_in(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sram_data_in(12),
	datac => \SRAM_ADDR[13]~71clkctrl_outclk\,
	datad => \sram_data_in[12]~4_combout\,
	combout => sram_data_in(12));

-- Location: IOIBUF_X96_Y0_N15
\GPIO[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(5),
	o => \GPIO[5]~input_o\);

-- Location: FF_X96_Y0_N17
\cam_instance|y_data[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GPIO[11]~input_o\,
	d => \GPIO[5]~input_o\,
	ena => \cam_instance|y_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cam_instance|y_data\(5));

-- Location: LCCOMB_X59_Y4_N2
\sram_data_in[13]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram_data_in[13]~5_combout\ = (\camstatemachine_instance|WideOr2~combout\ & (((\LessThan0~9_combout\) # (\LessThan0~3_combout\)))) # (!\camstatemachine_instance|WideOr2~combout\ & (\cam_instance|y_data\(5)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camstatemachine_instance|WideOr2~combout\,
	datab => \cam_instance|y_data\(5),
	datac => \LessThan0~9_combout\,
	datad => \LessThan0~3_combout\,
	combout => \sram_data_in[13]~5_combout\);

-- Location: LCCOMB_X59_Y4_N14
\sram_data_in[13]\ : cycloneive_lcell_comb
-- Equation(s):
-- sram_data_in(13) = (GLOBAL(\SRAM_ADDR[13]~71clkctrl_outclk\) & ((\sram_data_in[13]~5_combout\))) # (!GLOBAL(\SRAM_ADDR[13]~71clkctrl_outclk\) & (sram_data_in(13)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => sram_data_in(13),
	datac => \SRAM_ADDR[13]~71clkctrl_outclk\,
	datad => \sram_data_in[13]~5_combout\,
	combout => sram_data_in(13));

-- Location: IOIBUF_X102_Y0_N15
\GPIO[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(6),
	o => \GPIO[6]~input_o\);

-- Location: FF_X102_Y0_N17
\cam_instance|y_data[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GPIO[11]~input_o\,
	d => \GPIO[6]~input_o\,
	ena => \cam_instance|y_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cam_instance|y_data\(6));

-- Location: LCCOMB_X59_Y4_N16
\sram_data_in[14]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram_data_in[14]~6_combout\ = (\camstatemachine_instance|WideOr2~combout\ & (((\LessThan0~3_combout\) # (\LessThan0~9_combout\)))) # (!\camstatemachine_instance|WideOr2~combout\ & (\cam_instance|y_data\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cam_instance|y_data\(6),
	datab => \LessThan0~3_combout\,
	datac => \camstatemachine_instance|WideOr2~combout\,
	datad => \LessThan0~9_combout\,
	combout => \sram_data_in[14]~6_combout\);

-- Location: LCCOMB_X59_Y4_N4
\sram_data_in[14]\ : cycloneive_lcell_comb
-- Equation(s):
-- sram_data_in(14) = (GLOBAL(\SRAM_ADDR[13]~71clkctrl_outclk\) & ((\sram_data_in[14]~6_combout\))) # (!GLOBAL(\SRAM_ADDR[13]~71clkctrl_outclk\) & (sram_data_in(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => sram_data_in(14),
	datac => \SRAM_ADDR[13]~71clkctrl_outclk\,
	datad => \sram_data_in[14]~6_combout\,
	combout => sram_data_in(14));

-- Location: IOIBUF_X65_Y0_N22
\GPIO[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(7),
	o => \GPIO[7]~input_o\);

-- Location: FF_X65_Y0_N24
\cam_instance|y_data[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GPIO[11]~input_o\,
	d => \GPIO[7]~input_o\,
	ena => \cam_instance|y_data[0]~0_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cam_instance|y_data\(7));

-- Location: LCCOMB_X59_Y4_N18
\sram_data_in[15]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \sram_data_in[15]~7_combout\ = (\camstatemachine_instance|WideOr2~combout\ & (((\LessThan0~3_combout\) # (\LessThan0~9_combout\)))) # (!\camstatemachine_instance|WideOr2~combout\ & (\cam_instance|y_data\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cam_instance|y_data\(7),
	datab => \LessThan0~3_combout\,
	datac => \camstatemachine_instance|WideOr2~combout\,
	datad => \LessThan0~9_combout\,
	combout => \sram_data_in[15]~7_combout\);

-- Location: LCCOMB_X59_Y4_N26
\sram_data_in[15]\ : cycloneive_lcell_comb
-- Equation(s):
-- sram_data_in(15) = (GLOBAL(\SRAM_ADDR[13]~71clkctrl_outclk\) & ((\sram_data_in[15]~7_combout\))) # (!GLOBAL(\SRAM_ADDR[13]~71clkctrl_outclk\) & (sram_data_in(15)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => sram_data_in(15),
	datac => \SRAM_ADDR[13]~71clkctrl_outclk\,
	datad => \sram_data_in[15]~7_combout\,
	combout => sram_data_in(15));

-- Location: LCCOMB_X59_Y3_N0
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

-- Location: FF_X59_Y3_N1
\cam_instance|current_row[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GPIO[8]~input_o\,
	d => \cam_instance|current_row[0]~45_combout\,
	clrn => \ALT_INV_GPIO[9]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cam_instance|current_row\(0));

-- Location: LCCOMB_X59_Y3_N2
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

-- Location: FF_X59_Y3_N3
\cam_instance|current_row[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GPIO[8]~input_o\,
	d => \cam_instance|current_row[1]~15_combout\,
	clrn => \ALT_INV_GPIO[9]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cam_instance|current_row\(1));

-- Location: LCCOMB_X59_Y3_N4
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

-- Location: FF_X59_Y3_N5
\cam_instance|current_row[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GPIO[8]~input_o\,
	d => \cam_instance|current_row[2]~17_combout\,
	clrn => \ALT_INV_GPIO[9]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cam_instance|current_row\(2));

-- Location: LCCOMB_X60_Y3_N24
\cam_instance|vertical_size[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \cam_instance|vertical_size[2]~feeder_combout\ = \cam_instance|current_row\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cam_instance|current_row\(2),
	combout => \cam_instance|vertical_size[2]~feeder_combout\);

-- Location: FF_X60_Y3_N25
\cam_instance|vertical_size[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GPIO[9]~input_o\,
	d => \cam_instance|vertical_size[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cam_instance|vertical_size\(2));

-- Location: LCCOMB_X60_Y3_N26
\cam_instance|vertical_size[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \cam_instance|vertical_size[0]~feeder_combout\ = \cam_instance|current_row\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cam_instance|current_row\(0),
	combout => \cam_instance|vertical_size[0]~feeder_combout\);

-- Location: FF_X60_Y3_N27
\cam_instance|vertical_size[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GPIO[9]~input_o\,
	d => \cam_instance|vertical_size[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cam_instance|vertical_size\(0));

-- Location: LCCOMB_X59_Y3_N6
\cam_instance|current_row[3]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \cam_instance|current_row[3]~19_combout\ = (\cam_instance|current_row\(3) & (\cam_instance|current_row[2]~18\ $ (GND))) # (!\cam_instance|current_row\(3) & (!\cam_instance|current_row[2]~18\ & VCC))
-- \cam_instance|current_row[3]~20\ = CARRY((\cam_instance|current_row\(3) & !\cam_instance|current_row[2]~18\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cam_instance|current_row\(3),
	datad => VCC,
	cin => \cam_instance|current_row[2]~18\,
	combout => \cam_instance|current_row[3]~19_combout\,
	cout => \cam_instance|current_row[3]~20\);

-- Location: FF_X59_Y3_N7
\cam_instance|current_row[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GPIO[8]~input_o\,
	d => \cam_instance|current_row[3]~19_combout\,
	clrn => \ALT_INV_GPIO[9]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cam_instance|current_row\(3));

-- Location: FF_X60_Y3_N21
\cam_instance|vertical_size[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GPIO[9]~input_o\,
	asdata => \cam_instance|current_row\(3),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cam_instance|vertical_size\(3));

-- Location: FF_X60_Y3_N11
\cam_instance|vertical_size[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GPIO[9]~input_o\,
	asdata => \cam_instance|current_row\(1),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cam_instance|vertical_size\(1));

-- Location: LCCOMB_X70_Y3_N16
\hex0decoder|segments_out[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex0decoder|segments_out[0]~0_combout\ = (\cam_instance|vertical_size\(2) & (!\cam_instance|vertical_size\(1) & (\cam_instance|vertical_size\(0) $ (!\cam_instance|vertical_size\(3))))) # (!\cam_instance|vertical_size\(2) & 
-- (\cam_instance|vertical_size\(0) & (\cam_instance|vertical_size\(3) $ (!\cam_instance|vertical_size\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cam_instance|vertical_size\(2),
	datab => \cam_instance|vertical_size\(0),
	datac => \cam_instance|vertical_size\(3),
	datad => \cam_instance|vertical_size\(1),
	combout => \hex0decoder|segments_out[0]~0_combout\);

-- Location: LCCOMB_X70_Y3_N30
\hex0decoder|segments_out[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex0decoder|segments_out[1]~1_combout\ = (\cam_instance|vertical_size\(3) & ((\cam_instance|vertical_size\(0) & ((\cam_instance|vertical_size\(1)))) # (!\cam_instance|vertical_size\(0) & (\cam_instance|vertical_size\(2))))) # 
-- (!\cam_instance|vertical_size\(3) & (\cam_instance|vertical_size\(2) & (\cam_instance|vertical_size\(0) $ (\cam_instance|vertical_size\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cam_instance|vertical_size\(2),
	datab => \cam_instance|vertical_size\(0),
	datac => \cam_instance|vertical_size\(3),
	datad => \cam_instance|vertical_size\(1),
	combout => \hex0decoder|segments_out[1]~1_combout\);

-- Location: LCCOMB_X70_Y3_N8
\hex0decoder|segments_out[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex0decoder|segments_out[2]~2_combout\ = (\cam_instance|vertical_size\(2) & (\cam_instance|vertical_size\(3) & ((\cam_instance|vertical_size\(1)) # (!\cam_instance|vertical_size\(0))))) # (!\cam_instance|vertical_size\(2) & 
-- (!\cam_instance|vertical_size\(0) & (!\cam_instance|vertical_size\(3) & \cam_instance|vertical_size\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cam_instance|vertical_size\(2),
	datab => \cam_instance|vertical_size\(0),
	datac => \cam_instance|vertical_size\(3),
	datad => \cam_instance|vertical_size\(1),
	combout => \hex0decoder|segments_out[2]~2_combout\);

-- Location: LCCOMB_X70_Y3_N6
\hex0decoder|segments_out[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex0decoder|segments_out[3]~3_combout\ = (\cam_instance|vertical_size\(1) & ((\cam_instance|vertical_size\(2) & (\cam_instance|vertical_size\(0))) # (!\cam_instance|vertical_size\(2) & (!\cam_instance|vertical_size\(0) & 
-- \cam_instance|vertical_size\(3))))) # (!\cam_instance|vertical_size\(1) & (!\cam_instance|vertical_size\(3) & (\cam_instance|vertical_size\(2) $ (\cam_instance|vertical_size\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cam_instance|vertical_size\(2),
	datab => \cam_instance|vertical_size\(0),
	datac => \cam_instance|vertical_size\(3),
	datad => \cam_instance|vertical_size\(1),
	combout => \hex0decoder|segments_out[3]~3_combout\);

-- Location: LCCOMB_X70_Y3_N20
\hex0decoder|segments_out[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex0decoder|segments_out[4]~4_combout\ = (\cam_instance|vertical_size\(1) & (((\cam_instance|vertical_size\(0) & !\cam_instance|vertical_size\(3))))) # (!\cam_instance|vertical_size\(1) & ((\cam_instance|vertical_size\(2) & 
-- ((!\cam_instance|vertical_size\(3)))) # (!\cam_instance|vertical_size\(2) & (\cam_instance|vertical_size\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110001001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cam_instance|vertical_size\(2),
	datab => \cam_instance|vertical_size\(0),
	datac => \cam_instance|vertical_size\(3),
	datad => \cam_instance|vertical_size\(1),
	combout => \hex0decoder|segments_out[4]~4_combout\);

-- Location: LCCOMB_X70_Y3_N26
\hex0decoder|segments_out[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex0decoder|segments_out[5]~5_combout\ = (\cam_instance|vertical_size\(2) & (\cam_instance|vertical_size\(0) & (\cam_instance|vertical_size\(3) $ (\cam_instance|vertical_size\(1))))) # (!\cam_instance|vertical_size\(2) & (!\cam_instance|vertical_size\(3) 
-- & ((\cam_instance|vertical_size\(0)) # (\cam_instance|vertical_size\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cam_instance|vertical_size\(2),
	datab => \cam_instance|vertical_size\(0),
	datac => \cam_instance|vertical_size\(3),
	datad => \cam_instance|vertical_size\(1),
	combout => \hex0decoder|segments_out[5]~5_combout\);

-- Location: LCCOMB_X70_Y3_N12
\hex0decoder|segments_out[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex0decoder|segments_out[6]~6_combout\ = (\cam_instance|vertical_size\(0) & (!\cam_instance|vertical_size\(3) & (\cam_instance|vertical_size\(2) $ (!\cam_instance|vertical_size\(1))))) # (!\cam_instance|vertical_size\(0) & 
-- (!\cam_instance|vertical_size\(1) & (\cam_instance|vertical_size\(2) $ (!\cam_instance|vertical_size\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cam_instance|vertical_size\(2),
	datab => \cam_instance|vertical_size\(0),
	datac => \cam_instance|vertical_size\(3),
	datad => \cam_instance|vertical_size\(1),
	combout => \hex0decoder|segments_out[6]~6_combout\);

-- Location: LCCOMB_X59_Y3_N8
\cam_instance|current_row[4]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \cam_instance|current_row[4]~21_combout\ = (\cam_instance|current_row\(4) & (!\cam_instance|current_row[3]~20\)) # (!\cam_instance|current_row\(4) & ((\cam_instance|current_row[3]~20\) # (GND)))
-- \cam_instance|current_row[4]~22\ = CARRY((!\cam_instance|current_row[3]~20\) # (!\cam_instance|current_row\(4)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cam_instance|current_row\(4),
	datad => VCC,
	cin => \cam_instance|current_row[3]~20\,
	combout => \cam_instance|current_row[4]~21_combout\,
	cout => \cam_instance|current_row[4]~22\);

-- Location: FF_X59_Y3_N9
\cam_instance|current_row[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GPIO[8]~input_o\,
	d => \cam_instance|current_row[4]~21_combout\,
	clrn => \ALT_INV_GPIO[9]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cam_instance|current_row\(4));

-- Location: LCCOMB_X59_Y3_N10
\cam_instance|current_row[5]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \cam_instance|current_row[5]~23_combout\ = (\cam_instance|current_row\(5) & (\cam_instance|current_row[4]~22\ $ (GND))) # (!\cam_instance|current_row\(5) & (!\cam_instance|current_row[4]~22\ & VCC))
-- \cam_instance|current_row[5]~24\ = CARRY((\cam_instance|current_row\(5) & !\cam_instance|current_row[4]~22\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cam_instance|current_row\(5),
	datad => VCC,
	cin => \cam_instance|current_row[4]~22\,
	combout => \cam_instance|current_row[5]~23_combout\,
	cout => \cam_instance|current_row[5]~24\);

-- Location: FF_X59_Y3_N11
\cam_instance|current_row[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GPIO[8]~input_o\,
	d => \cam_instance|current_row[5]~23_combout\,
	clrn => \ALT_INV_GPIO[9]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cam_instance|current_row\(5));

-- Location: LCCOMB_X59_Y3_N12
\cam_instance|current_row[6]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \cam_instance|current_row[6]~25_combout\ = (\cam_instance|current_row\(6) & (!\cam_instance|current_row[5]~24\)) # (!\cam_instance|current_row\(6) & ((\cam_instance|current_row[5]~24\) # (GND)))
-- \cam_instance|current_row[6]~26\ = CARRY((!\cam_instance|current_row[5]~24\) # (!\cam_instance|current_row\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cam_instance|current_row\(6),
	datad => VCC,
	cin => \cam_instance|current_row[5]~24\,
	combout => \cam_instance|current_row[6]~25_combout\,
	cout => \cam_instance|current_row[6]~26\);

-- Location: FF_X59_Y3_N13
\cam_instance|current_row[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GPIO[8]~input_o\,
	d => \cam_instance|current_row[6]~25_combout\,
	clrn => \ALT_INV_GPIO[9]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cam_instance|current_row\(6));

-- Location: FF_X60_Y3_N3
\cam_instance|vertical_size[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GPIO[9]~input_o\,
	asdata => \cam_instance|current_row\(6),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cam_instance|vertical_size\(6));

-- Location: LCCOMB_X60_Y3_N22
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

-- Location: FF_X60_Y3_N23
\cam_instance|vertical_size[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GPIO[9]~input_o\,
	d => \cam_instance|vertical_size[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cam_instance|vertical_size\(4));

-- Location: FF_X60_Y3_N5
\cam_instance|vertical_size[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GPIO[9]~input_o\,
	asdata => \cam_instance|current_row\(5),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cam_instance|vertical_size\(5));

-- Location: LCCOMB_X59_Y3_N14
\cam_instance|current_row[7]~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \cam_instance|current_row[7]~27_combout\ = (\cam_instance|current_row\(7) & (\cam_instance|current_row[6]~26\ $ (GND))) # (!\cam_instance|current_row\(7) & (!\cam_instance|current_row[6]~26\ & VCC))
-- \cam_instance|current_row[7]~28\ = CARRY((\cam_instance|current_row\(7) & !\cam_instance|current_row[6]~26\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cam_instance|current_row\(7),
	datad => VCC,
	cin => \cam_instance|current_row[6]~26\,
	combout => \cam_instance|current_row[7]~27_combout\,
	cout => \cam_instance|current_row[7]~28\);

-- Location: FF_X59_Y3_N15
\cam_instance|current_row[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GPIO[8]~input_o\,
	d => \cam_instance|current_row[7]~27_combout\,
	clrn => \ALT_INV_GPIO[9]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cam_instance|current_row\(7));

-- Location: FF_X60_Y3_N1
\cam_instance|vertical_size[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GPIO[9]~input_o\,
	asdata => \cam_instance|current_row\(7),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cam_instance|vertical_size\(7));

-- Location: LCCOMB_X114_Y19_N12
\hex1decoder|segments_out[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex1decoder|segments_out[0]~0_combout\ = (\cam_instance|vertical_size\(6) & (!\cam_instance|vertical_size\(5) & (\cam_instance|vertical_size\(4) $ (!\cam_instance|vertical_size\(7))))) # (!\cam_instance|vertical_size\(6) & 
-- (\cam_instance|vertical_size\(4) & (\cam_instance|vertical_size\(5) $ (!\cam_instance|vertical_size\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cam_instance|vertical_size\(6),
	datab => \cam_instance|vertical_size\(4),
	datac => \cam_instance|vertical_size\(5),
	datad => \cam_instance|vertical_size\(7),
	combout => \hex1decoder|segments_out[0]~0_combout\);

-- Location: LCCOMB_X114_Y19_N10
\hex1decoder|segments_out[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex1decoder|segments_out[1]~1_combout\ = (\cam_instance|vertical_size\(5) & ((\cam_instance|vertical_size\(4) & ((\cam_instance|vertical_size\(7)))) # (!\cam_instance|vertical_size\(4) & (\cam_instance|vertical_size\(6))))) # 
-- (!\cam_instance|vertical_size\(5) & (\cam_instance|vertical_size\(6) & (\cam_instance|vertical_size\(4) $ (\cam_instance|vertical_size\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001000101000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cam_instance|vertical_size\(6),
	datab => \cam_instance|vertical_size\(4),
	datac => \cam_instance|vertical_size\(5),
	datad => \cam_instance|vertical_size\(7),
	combout => \hex1decoder|segments_out[1]~1_combout\);

-- Location: LCCOMB_X114_Y19_N28
\hex1decoder|segments_out[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex1decoder|segments_out[2]~2_combout\ = (\cam_instance|vertical_size\(6) & (\cam_instance|vertical_size\(7) & ((\cam_instance|vertical_size\(5)) # (!\cam_instance|vertical_size\(4))))) # (!\cam_instance|vertical_size\(6) & 
-- (!\cam_instance|vertical_size\(4) & (\cam_instance|vertical_size\(5) & !\cam_instance|vertical_size\(7))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010001000010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cam_instance|vertical_size\(6),
	datab => \cam_instance|vertical_size\(4),
	datac => \cam_instance|vertical_size\(5),
	datad => \cam_instance|vertical_size\(7),
	combout => \hex1decoder|segments_out[2]~2_combout\);

-- Location: LCCOMB_X114_Y19_N26
\hex1decoder|segments_out[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex1decoder|segments_out[3]~3_combout\ = (\cam_instance|vertical_size\(5) & ((\cam_instance|vertical_size\(6) & (\cam_instance|vertical_size\(4))) # (!\cam_instance|vertical_size\(6) & (!\cam_instance|vertical_size\(4) & 
-- \cam_instance|vertical_size\(7))))) # (!\cam_instance|vertical_size\(5) & (!\cam_instance|vertical_size\(7) & (\cam_instance|vertical_size\(6) $ (\cam_instance|vertical_size\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001000010000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cam_instance|vertical_size\(6),
	datab => \cam_instance|vertical_size\(4),
	datac => \cam_instance|vertical_size\(5),
	datad => \cam_instance|vertical_size\(7),
	combout => \hex1decoder|segments_out[3]~3_combout\);

-- Location: LCCOMB_X114_Y19_N0
\hex1decoder|segments_out[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex1decoder|segments_out[4]~4_combout\ = (\cam_instance|vertical_size\(5) & (((\cam_instance|vertical_size\(4) & !\cam_instance|vertical_size\(7))))) # (!\cam_instance|vertical_size\(5) & ((\cam_instance|vertical_size\(6) & 
-- ((!\cam_instance|vertical_size\(7)))) # (!\cam_instance|vertical_size\(6) & (\cam_instance|vertical_size\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cam_instance|vertical_size\(6),
	datab => \cam_instance|vertical_size\(4),
	datac => \cam_instance|vertical_size\(5),
	datad => \cam_instance|vertical_size\(7),
	combout => \hex1decoder|segments_out[4]~4_combout\);

-- Location: LCCOMB_X114_Y19_N22
\hex1decoder|segments_out[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex1decoder|segments_out[5]~5_combout\ = (\cam_instance|vertical_size\(6) & (\cam_instance|vertical_size\(4) & (\cam_instance|vertical_size\(5) $ (\cam_instance|vertical_size\(7))))) # (!\cam_instance|vertical_size\(6) & (!\cam_instance|vertical_size\(7) 
-- & ((\cam_instance|vertical_size\(4)) # (\cam_instance|vertical_size\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100011010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cam_instance|vertical_size\(6),
	datab => \cam_instance|vertical_size\(4),
	datac => \cam_instance|vertical_size\(5),
	datad => \cam_instance|vertical_size\(7),
	combout => \hex1decoder|segments_out[5]~5_combout\);

-- Location: LCCOMB_X114_Y19_N4
\hex1decoder|segments_out[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex1decoder|segments_out[6]~6_combout\ = (\cam_instance|vertical_size\(4) & (!\cam_instance|vertical_size\(7) & (\cam_instance|vertical_size\(6) $ (!\cam_instance|vertical_size\(5))))) # (!\cam_instance|vertical_size\(4) & 
-- (!\cam_instance|vertical_size\(5) & (\cam_instance|vertical_size\(6) $ (!\cam_instance|vertical_size\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000001010000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cam_instance|vertical_size\(6),
	datab => \cam_instance|vertical_size\(4),
	datac => \cam_instance|vertical_size\(5),
	datad => \cam_instance|vertical_size\(7),
	combout => \hex1decoder|segments_out[6]~6_combout\);

-- Location: LCCOMB_X59_Y3_N16
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

-- Location: FF_X59_Y3_N17
\cam_instance|current_row[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GPIO[8]~input_o\,
	d => \cam_instance|current_row[8]~29_combout\,
	clrn => \ALT_INV_GPIO[9]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cam_instance|current_row\(8));

-- Location: LCCOMB_X59_Y3_N18
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

-- Location: FF_X59_Y3_N19
\cam_instance|current_row[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GPIO[8]~input_o\,
	d => \cam_instance|current_row[9]~31_combout\,
	clrn => \ALT_INV_GPIO[9]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cam_instance|current_row\(9));

-- Location: FF_X60_Y3_N13
\cam_instance|vertical_size[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GPIO[9]~input_o\,
	asdata => \cam_instance|current_row\(9),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cam_instance|vertical_size\(9));

-- Location: LCCOMB_X59_Y3_N20
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

-- Location: FF_X59_Y3_N21
\cam_instance|current_row[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GPIO[8]~input_o\,
	d => \cam_instance|current_row[10]~33_combout\,
	clrn => \ALT_INV_GPIO[9]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cam_instance|current_row\(10));

-- Location: LCCOMB_X59_Y3_N22
\cam_instance|current_row[11]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \cam_instance|current_row[11]~35_combout\ = (\cam_instance|current_row\(11) & (\cam_instance|current_row[10]~34\ $ (GND))) # (!\cam_instance|current_row\(11) & (!\cam_instance|current_row[10]~34\ & VCC))
-- \cam_instance|current_row[11]~36\ = CARRY((\cam_instance|current_row\(11) & !\cam_instance|current_row[10]~34\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cam_instance|current_row\(11),
	datad => VCC,
	cin => \cam_instance|current_row[10]~34\,
	combout => \cam_instance|current_row[11]~35_combout\,
	cout => \cam_instance|current_row[11]~36\);

-- Location: FF_X59_Y3_N23
\cam_instance|current_row[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GPIO[8]~input_o\,
	d => \cam_instance|current_row[11]~35_combout\,
	clrn => \ALT_INV_GPIO[9]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cam_instance|current_row\(11));

-- Location: FF_X60_Y3_N9
\cam_instance|vertical_size[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GPIO[9]~input_o\,
	asdata => \cam_instance|current_row\(11),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cam_instance|vertical_size\(11));

-- Location: LCCOMB_X60_Y3_N28
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

-- Location: FF_X60_Y3_N29
\cam_instance|vertical_size[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GPIO[9]~input_o\,
	d => \cam_instance|vertical_size[10]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cam_instance|vertical_size\(10));

-- Location: FF_X60_Y3_N7
\cam_instance|vertical_size[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GPIO[9]~input_o\,
	asdata => \cam_instance|current_row\(8),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cam_instance|vertical_size\(8));

-- Location: LCCOMB_X114_Y7_N28
\hex2decoder|segments_out[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex2decoder|segments_out[0]~0_combout\ = (\cam_instance|vertical_size\(11) & (\cam_instance|vertical_size\(8) & (\cam_instance|vertical_size\(9) $ (\cam_instance|vertical_size\(10))))) # (!\cam_instance|vertical_size\(11) & 
-- (!\cam_instance|vertical_size\(9) & (\cam_instance|vertical_size\(10) $ (\cam_instance|vertical_size\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cam_instance|vertical_size\(9),
	datab => \cam_instance|vertical_size\(11),
	datac => \cam_instance|vertical_size\(10),
	datad => \cam_instance|vertical_size\(8),
	combout => \hex2decoder|segments_out[0]~0_combout\);

-- Location: LCCOMB_X114_Y7_N10
\hex2decoder|segments_out[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex2decoder|segments_out[1]~1_combout\ = (\cam_instance|vertical_size\(9) & ((\cam_instance|vertical_size\(8) & (\cam_instance|vertical_size\(11))) # (!\cam_instance|vertical_size\(8) & ((\cam_instance|vertical_size\(10)))))) # 
-- (!\cam_instance|vertical_size\(9) & (\cam_instance|vertical_size\(10) & (\cam_instance|vertical_size\(11) $ (\cam_instance|vertical_size\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cam_instance|vertical_size\(9),
	datab => \cam_instance|vertical_size\(11),
	datac => \cam_instance|vertical_size\(10),
	datad => \cam_instance|vertical_size\(8),
	combout => \hex2decoder|segments_out[1]~1_combout\);

-- Location: LCCOMB_X114_Y7_N16
\hex2decoder|segments_out[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex2decoder|segments_out[2]~2_combout\ = (\cam_instance|vertical_size\(11) & (\cam_instance|vertical_size\(10) & ((\cam_instance|vertical_size\(9)) # (!\cam_instance|vertical_size\(8))))) # (!\cam_instance|vertical_size\(11) & 
-- (\cam_instance|vertical_size\(9) & (!\cam_instance|vertical_size\(10) & !\cam_instance|vertical_size\(8))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000000011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cam_instance|vertical_size\(9),
	datab => \cam_instance|vertical_size\(11),
	datac => \cam_instance|vertical_size\(10),
	datad => \cam_instance|vertical_size\(8),
	combout => \hex2decoder|segments_out[2]~2_combout\);

-- Location: LCCOMB_X114_Y7_N26
\hex2decoder|segments_out[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex2decoder|segments_out[3]~3_combout\ = (\cam_instance|vertical_size\(9) & ((\cam_instance|vertical_size\(10) & ((\cam_instance|vertical_size\(8)))) # (!\cam_instance|vertical_size\(10) & (\cam_instance|vertical_size\(11) & 
-- !\cam_instance|vertical_size\(8))))) # (!\cam_instance|vertical_size\(9) & (!\cam_instance|vertical_size\(11) & (\cam_instance|vertical_size\(10) $ (\cam_instance|vertical_size\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000100011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cam_instance|vertical_size\(9),
	datab => \cam_instance|vertical_size\(11),
	datac => \cam_instance|vertical_size\(10),
	datad => \cam_instance|vertical_size\(8),
	combout => \hex2decoder|segments_out[3]~3_combout\);

-- Location: LCCOMB_X114_Y7_N4
\hex2decoder|segments_out[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex2decoder|segments_out[4]~4_combout\ = (\cam_instance|vertical_size\(9) & (!\cam_instance|vertical_size\(11) & ((\cam_instance|vertical_size\(8))))) # (!\cam_instance|vertical_size\(9) & ((\cam_instance|vertical_size\(10) & 
-- (!\cam_instance|vertical_size\(11))) # (!\cam_instance|vertical_size\(10) & ((\cam_instance|vertical_size\(8))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011011100010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cam_instance|vertical_size\(9),
	datab => \cam_instance|vertical_size\(11),
	datac => \cam_instance|vertical_size\(10),
	datad => \cam_instance|vertical_size\(8),
	combout => \hex2decoder|segments_out[4]~4_combout\);

-- Location: LCCOMB_X114_Y7_N22
\hex2decoder|segments_out[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex2decoder|segments_out[5]~5_combout\ = (\cam_instance|vertical_size\(9) & (!\cam_instance|vertical_size\(11) & ((\cam_instance|vertical_size\(8)) # (!\cam_instance|vertical_size\(10))))) # (!\cam_instance|vertical_size\(9) & 
-- (\cam_instance|vertical_size\(8) & (\cam_instance|vertical_size\(11) $ (!\cam_instance|vertical_size\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110001100000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cam_instance|vertical_size\(9),
	datab => \cam_instance|vertical_size\(11),
	datac => \cam_instance|vertical_size\(10),
	datad => \cam_instance|vertical_size\(8),
	combout => \hex2decoder|segments_out[5]~5_combout\);

-- Location: LCCOMB_X114_Y7_N20
\hex2decoder|segments_out[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex2decoder|segments_out[6]~6_combout\ = (\cam_instance|vertical_size\(8) & (!\cam_instance|vertical_size\(11) & (\cam_instance|vertical_size\(9) $ (!\cam_instance|vertical_size\(10))))) # (!\cam_instance|vertical_size\(8) & 
-- (!\cam_instance|vertical_size\(9) & (\cam_instance|vertical_size\(11) $ (!\cam_instance|vertical_size\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000101000001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cam_instance|vertical_size\(9),
	datab => \cam_instance|vertical_size\(11),
	datac => \cam_instance|vertical_size\(10),
	datad => \cam_instance|vertical_size\(8),
	combout => \hex2decoder|segments_out[6]~6_combout\);

-- Location: LCCOMB_X59_Y3_N24
\cam_instance|current_row[12]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \cam_instance|current_row[12]~37_combout\ = (\cam_instance|current_row\(12) & (!\cam_instance|current_row[11]~36\)) # (!\cam_instance|current_row\(12) & ((\cam_instance|current_row[11]~36\) # (GND)))
-- \cam_instance|current_row[12]~38\ = CARRY((!\cam_instance|current_row[11]~36\) # (!\cam_instance|current_row\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cam_instance|current_row\(12),
	datad => VCC,
	cin => \cam_instance|current_row[11]~36\,
	combout => \cam_instance|current_row[12]~37_combout\,
	cout => \cam_instance|current_row[12]~38\);

-- Location: FF_X59_Y3_N25
\cam_instance|current_row[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GPIO[8]~input_o\,
	d => \cam_instance|current_row[12]~37_combout\,
	clrn => \ALT_INV_GPIO[9]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cam_instance|current_row\(12));

-- Location: LCCOMB_X59_Y3_N26
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

-- Location: FF_X59_Y3_N27
\cam_instance|current_row[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GPIO[8]~input_o\,
	d => \cam_instance|current_row[13]~39_combout\,
	clrn => \ALT_INV_GPIO[9]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cam_instance|current_row\(13));

-- Location: FF_X60_Y3_N19
\cam_instance|vertical_size[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GPIO[9]~input_o\,
	asdata => \cam_instance|current_row\(13),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cam_instance|vertical_size\(13));

-- Location: LCCOMB_X59_Y3_N28
\cam_instance|current_row[14]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \cam_instance|current_row[14]~41_combout\ = (\cam_instance|current_row\(14) & (!\cam_instance|current_row[13]~40\)) # (!\cam_instance|current_row\(14) & ((\cam_instance|current_row[13]~40\) # (GND)))
-- \cam_instance|current_row[14]~42\ = CARRY((!\cam_instance|current_row[13]~40\) # (!\cam_instance|current_row\(14)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cam_instance|current_row\(14),
	datad => VCC,
	cin => \cam_instance|current_row[13]~40\,
	combout => \cam_instance|current_row[14]~41_combout\,
	cout => \cam_instance|current_row[14]~42\);

-- Location: FF_X59_Y3_N29
\cam_instance|current_row[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GPIO[8]~input_o\,
	d => \cam_instance|current_row[14]~41_combout\,
	clrn => \ALT_INV_GPIO[9]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cam_instance|current_row\(14));

-- Location: FF_X60_Y3_N17
\cam_instance|vertical_size[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GPIO[9]~input_o\,
	asdata => \cam_instance|current_row\(14),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cam_instance|vertical_size\(14));

-- Location: LCCOMB_X60_Y3_N30
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

-- Location: FF_X60_Y3_N31
\cam_instance|vertical_size[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GPIO[9]~input_o\,
	d => \cam_instance|vertical_size[12]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cam_instance|vertical_size\(12));

-- Location: LCCOMB_X59_Y3_N30
\cam_instance|current_row[15]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \cam_instance|current_row[15]~43_combout\ = \cam_instance|current_row\(15) $ (!\cam_instance|current_row[14]~42\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cam_instance|current_row\(15),
	cin => \cam_instance|current_row[14]~42\,
	combout => \cam_instance|current_row[15]~43_combout\);

-- Location: FF_X59_Y3_N31
\cam_instance|current_row[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GPIO[8]~input_o\,
	d => \cam_instance|current_row[15]~43_combout\,
	clrn => \ALT_INV_GPIO[9]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cam_instance|current_row\(15));

-- Location: FF_X60_Y3_N15
\cam_instance|vertical_size[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GPIO[9]~input_o\,
	asdata => \cam_instance|current_row\(15),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cam_instance|vertical_size\(15));

-- Location: LCCOMB_X70_Y3_N18
\hex3decoder|segments_out[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex3decoder|segments_out[0]~0_combout\ = (\cam_instance|vertical_size\(14) & (!\cam_instance|vertical_size\(13) & (\cam_instance|vertical_size\(12) $ (!\cam_instance|vertical_size\(15))))) # (!\cam_instance|vertical_size\(14) & 
-- (\cam_instance|vertical_size\(12) & (\cam_instance|vertical_size\(13) $ (!\cam_instance|vertical_size\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110000000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cam_instance|vertical_size\(13),
	datab => \cam_instance|vertical_size\(14),
	datac => \cam_instance|vertical_size\(12),
	datad => \cam_instance|vertical_size\(15),
	combout => \hex3decoder|segments_out[0]~0_combout\);

-- Location: LCCOMB_X70_Y3_N24
\hex3decoder|segments_out[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex3decoder|segments_out[1]~1_combout\ = (\cam_instance|vertical_size\(13) & ((\cam_instance|vertical_size\(12) & ((\cam_instance|vertical_size\(15)))) # (!\cam_instance|vertical_size\(12) & (\cam_instance|vertical_size\(14))))) # 
-- (!\cam_instance|vertical_size\(13) & (\cam_instance|vertical_size\(14) & (\cam_instance|vertical_size\(12) $ (\cam_instance|vertical_size\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cam_instance|vertical_size\(13),
	datab => \cam_instance|vertical_size\(14),
	datac => \cam_instance|vertical_size\(12),
	datad => \cam_instance|vertical_size\(15),
	combout => \hex3decoder|segments_out[1]~1_combout\);

-- Location: LCCOMB_X70_Y3_N14
\hex3decoder|segments_out[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex3decoder|segments_out[2]~2_combout\ = (\cam_instance|vertical_size\(14) & (\cam_instance|vertical_size\(15) & ((\cam_instance|vertical_size\(13)) # (!\cam_instance|vertical_size\(12))))) # (!\cam_instance|vertical_size\(14) & 
-- (\cam_instance|vertical_size\(13) & (!\cam_instance|vertical_size\(12) & !\cam_instance|vertical_size\(15))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000110000000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cam_instance|vertical_size\(13),
	datab => \cam_instance|vertical_size\(14),
	datac => \cam_instance|vertical_size\(12),
	datad => \cam_instance|vertical_size\(15),
	combout => \hex3decoder|segments_out[2]~2_combout\);

-- Location: LCCOMB_X70_Y3_N28
\hex3decoder|segments_out[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex3decoder|segments_out[3]~3_combout\ = (\cam_instance|vertical_size\(13) & ((\cam_instance|vertical_size\(14) & (\cam_instance|vertical_size\(12))) # (!\cam_instance|vertical_size\(14) & (!\cam_instance|vertical_size\(12) & 
-- \cam_instance|vertical_size\(15))))) # (!\cam_instance|vertical_size\(13) & (!\cam_instance|vertical_size\(15) & (\cam_instance|vertical_size\(14) $ (\cam_instance|vertical_size\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000001010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cam_instance|vertical_size\(13),
	datab => \cam_instance|vertical_size\(14),
	datac => \cam_instance|vertical_size\(12),
	datad => \cam_instance|vertical_size\(15),
	combout => \hex3decoder|segments_out[3]~3_combout\);

-- Location: LCCOMB_X70_Y3_N2
\hex3decoder|segments_out[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex3decoder|segments_out[4]~4_combout\ = (\cam_instance|vertical_size\(13) & (((\cam_instance|vertical_size\(12) & !\cam_instance|vertical_size\(15))))) # (!\cam_instance|vertical_size\(13) & ((\cam_instance|vertical_size\(14) & 
-- ((!\cam_instance|vertical_size\(15)))) # (!\cam_instance|vertical_size\(14) & (\cam_instance|vertical_size\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000011110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cam_instance|vertical_size\(13),
	datab => \cam_instance|vertical_size\(14),
	datac => \cam_instance|vertical_size\(12),
	datad => \cam_instance|vertical_size\(15),
	combout => \hex3decoder|segments_out[4]~4_combout\);

-- Location: LCCOMB_X70_Y3_N0
\hex3decoder|segments_out[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex3decoder|segments_out[5]~5_combout\ = (\cam_instance|vertical_size\(13) & (!\cam_instance|vertical_size\(15) & ((\cam_instance|vertical_size\(12)) # (!\cam_instance|vertical_size\(14))))) # (!\cam_instance|vertical_size\(13) & 
-- (\cam_instance|vertical_size\(12) & (\cam_instance|vertical_size\(14) $ (!\cam_instance|vertical_size\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010110010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cam_instance|vertical_size\(13),
	datab => \cam_instance|vertical_size\(14),
	datac => \cam_instance|vertical_size\(12),
	datad => \cam_instance|vertical_size\(15),
	combout => \hex3decoder|segments_out[5]~5_combout\);

-- Location: LCCOMB_X70_Y3_N10
\hex3decoder|segments_out[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex3decoder|segments_out[6]~6_combout\ = (\cam_instance|vertical_size\(12) & (!\cam_instance|vertical_size\(15) & (\cam_instance|vertical_size\(13) $ (!\cam_instance|vertical_size\(14))))) # (!\cam_instance|vertical_size\(12) & 
-- (!\cam_instance|vertical_size\(13) & (\cam_instance|vertical_size\(14) $ (!\cam_instance|vertical_size\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000010010010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cam_instance|vertical_size\(13),
	datab => \cam_instance|vertical_size\(14),
	datac => \cam_instance|vertical_size\(12),
	datad => \cam_instance|vertical_size\(15),
	combout => \hex3decoder|segments_out[6]~6_combout\);

-- Location: LCCOMB_X60_Y1_N0
\cam_instance|current_column[0]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \cam_instance|current_column[0]~19_combout\ = \cam_instance|current_column\(0) $ (!\cam_instance|second_byte~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cam_instance|current_column\(0),
	datad => \cam_instance|second_byte~q\,
	combout => \cam_instance|current_column[0]~19_combout\);

-- Location: FF_X60_Y1_N1
\cam_instance|current_column[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GPIO[11]~input_o\,
	d => \cam_instance|current_column[0]~19_combout\,
	clrn => \GPIO[8]~input_o\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cam_instance|current_column\(0));

-- Location: LCCOMB_X61_Y2_N14
\cam_instance|current_column[1]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \cam_instance|current_column[1]~20_combout\ = (\cam_instance|current_column\(1) & (\cam_instance|current_column\(0) $ (VCC))) # (!\cam_instance|current_column\(1) & (\cam_instance|current_column\(0) & VCC))
-- \cam_instance|current_column[1]~21\ = CARRY((\cam_instance|current_column\(1) & \cam_instance|current_column\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cam_instance|current_column\(1),
	datab => \cam_instance|current_column\(0),
	datad => VCC,
	combout => \cam_instance|current_column[1]~20_combout\,
	cout => \cam_instance|current_column[1]~21\);

-- Location: FF_X61_Y2_N15
\cam_instance|current_column[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GPIO[11]~input_o\,
	d => \cam_instance|current_column[1]~20_combout\,
	clrn => \GPIO[8]~input_o\,
	ena => \cam_instance|ALT_INV_second_byte~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cam_instance|current_column\(1));

-- Location: LCCOMB_X61_Y2_N12
\cam_instance|horizontal_size[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \cam_instance|horizontal_size[1]~feeder_combout\ = \cam_instance|current_column\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cam_instance|current_column\(1),
	combout => \cam_instance|horizontal_size[1]~feeder_combout\);

-- Location: FF_X61_Y2_N13
\cam_instance|horizontal_size[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_GPIO[8]~input_o\,
	d => \cam_instance|horizontal_size[1]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cam_instance|horizontal_size\(1));

-- Location: LCCOMB_X60_Y1_N4
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

-- Location: FF_X60_Y1_N5
\cam_instance|horizontal_size[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_GPIO[8]~input_o\,
	d => \cam_instance|horizontal_size[0]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cam_instance|horizontal_size\(0));

-- Location: LCCOMB_X61_Y2_N16
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

-- Location: FF_X61_Y2_N17
\cam_instance|current_column[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GPIO[11]~input_o\,
	d => \cam_instance|current_column[2]~22_combout\,
	clrn => \GPIO[8]~input_o\,
	ena => \cam_instance|ALT_INV_second_byte~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cam_instance|current_column\(2));

-- Location: LCCOMB_X61_Y2_N2
\cam_instance|horizontal_size[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \cam_instance|horizontal_size[2]~feeder_combout\ = \cam_instance|current_column\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cam_instance|current_column\(2),
	combout => \cam_instance|horizontal_size[2]~feeder_combout\);

-- Location: FF_X61_Y2_N3
\cam_instance|horizontal_size[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_GPIO[8]~input_o\,
	d => \cam_instance|horizontal_size[2]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cam_instance|horizontal_size\(2));

-- Location: LCCOMB_X61_Y2_N18
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

-- Location: FF_X61_Y2_N19
\cam_instance|current_column[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GPIO[11]~input_o\,
	d => \cam_instance|current_column[3]~24_combout\,
	clrn => \GPIO[8]~input_o\,
	ena => \cam_instance|ALT_INV_second_byte~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cam_instance|current_column\(3));

-- Location: LCCOMB_X61_Y2_N8
\cam_instance|horizontal_size[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \cam_instance|horizontal_size[3]~feeder_combout\ = \cam_instance|current_column\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \cam_instance|current_column\(3),
	combout => \cam_instance|horizontal_size[3]~feeder_combout\);

-- Location: FF_X61_Y2_N9
\cam_instance|horizontal_size[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_GPIO[8]~input_o\,
	d => \cam_instance|horizontal_size[3]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cam_instance|horizontal_size\(3));

-- Location: LCCOMB_X60_Y1_N10
\hex4decoder|segments_out[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex4decoder|segments_out[0]~0_combout\ = (\cam_instance|horizontal_size\(2) & (!\cam_instance|horizontal_size\(1) & (\cam_instance|horizontal_size\(0) $ (!\cam_instance|horizontal_size\(3))))) # (!\cam_instance|horizontal_size\(2) & 
-- (\cam_instance|horizontal_size\(0) & (\cam_instance|horizontal_size\(1) $ (!\cam_instance|horizontal_size\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100100000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cam_instance|horizontal_size\(1),
	datab => \cam_instance|horizontal_size\(0),
	datac => \cam_instance|horizontal_size\(2),
	datad => \cam_instance|horizontal_size\(3),
	combout => \hex4decoder|segments_out[0]~0_combout\);

-- Location: LCCOMB_X60_Y1_N12
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

-- Location: LCCOMB_X60_Y1_N22
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

-- Location: LCCOMB_X60_Y1_N20
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

-- Location: LCCOMB_X60_Y1_N14
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

-- Location: LCCOMB_X60_Y1_N28
\hex4decoder|segments_out[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex4decoder|segments_out[5]~5_combout\ = (\cam_instance|horizontal_size\(1) & (!\cam_instance|horizontal_size\(3) & ((\cam_instance|horizontal_size\(0)) # (!\cam_instance|horizontal_size\(2))))) # (!\cam_instance|horizontal_size\(1) & 
-- (\cam_instance|horizontal_size\(0) & (\cam_instance|horizontal_size\(2) $ (!\cam_instance|horizontal_size\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000010001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cam_instance|horizontal_size\(1),
	datab => \cam_instance|horizontal_size\(0),
	datac => \cam_instance|horizontal_size\(2),
	datad => \cam_instance|horizontal_size\(3),
	combout => \hex4decoder|segments_out[5]~5_combout\);

-- Location: LCCOMB_X60_Y1_N2
\hex4decoder|segments_out[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex4decoder|segments_out[6]~6_combout\ = (\cam_instance|horizontal_size\(0) & (!\cam_instance|horizontal_size\(3) & (\cam_instance|horizontal_size\(1) $ (!\cam_instance|horizontal_size\(2))))) # (!\cam_instance|horizontal_size\(0) & 
-- (!\cam_instance|horizontal_size\(1) & (\cam_instance|horizontal_size\(2) $ (!\cam_instance|horizontal_size\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0001000010000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cam_instance|horizontal_size\(1),
	datab => \cam_instance|horizontal_size\(0),
	datac => \cam_instance|horizontal_size\(2),
	datad => \cam_instance|horizontal_size\(3),
	combout => \hex4decoder|segments_out[6]~6_combout\);

-- Location: LCCOMB_X61_Y2_N20
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

-- Location: FF_X61_Y2_N21
\cam_instance|current_column[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GPIO[11]~input_o\,
	d => \cam_instance|current_column[4]~26_combout\,
	clrn => \GPIO[8]~input_o\,
	ena => \cam_instance|ALT_INV_second_byte~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cam_instance|current_column\(4));

-- Location: LCCOMB_X61_Y2_N22
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

-- Location: FF_X61_Y2_N23
\cam_instance|current_column[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GPIO[11]~input_o\,
	d => \cam_instance|current_column[5]~28_combout\,
	clrn => \GPIO[8]~input_o\,
	ena => \cam_instance|ALT_INV_second_byte~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cam_instance|current_column\(5));

-- Location: LCCOMB_X61_Y2_N24
\cam_instance|current_column[6]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \cam_instance|current_column[6]~30_combout\ = (\cam_instance|current_column\(6) & (!\cam_instance|current_column[5]~29\)) # (!\cam_instance|current_column\(6) & ((\cam_instance|current_column[5]~29\) # (GND)))
-- \cam_instance|current_column[6]~31\ = CARRY((!\cam_instance|current_column[5]~29\) # (!\cam_instance|current_column\(6)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cam_instance|current_column\(6),
	datad => VCC,
	cin => \cam_instance|current_column[5]~29\,
	combout => \cam_instance|current_column[6]~30_combout\,
	cout => \cam_instance|current_column[6]~31\);

-- Location: FF_X61_Y2_N25
\cam_instance|current_column[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GPIO[11]~input_o\,
	d => \cam_instance|current_column[6]~30_combout\,
	clrn => \GPIO[8]~input_o\,
	ena => \cam_instance|ALT_INV_second_byte~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cam_instance|current_column\(6));

-- Location: LCCOMB_X61_Y2_N26
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

-- Location: FF_X61_Y2_N27
\cam_instance|current_column[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GPIO[11]~input_o\,
	d => \cam_instance|current_column[7]~32_combout\,
	clrn => \GPIO[8]~input_o\,
	ena => \cam_instance|ALT_INV_second_byte~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cam_instance|current_column\(7));

-- Location: LCCOMB_X61_Y2_N4
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

-- Location: FF_X61_Y2_N5
\cam_instance|horizontal_size[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_GPIO[8]~input_o\,
	d => \cam_instance|horizontal_size[7]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cam_instance|horizontal_size\(7));

-- Location: LCCOMB_X61_Y2_N10
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

-- Location: FF_X61_Y2_N11
\cam_instance|horizontal_size[6]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_GPIO[8]~input_o\,
	d => \cam_instance|horizontal_size[6]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cam_instance|horizontal_size\(6));

-- Location: LCCOMB_X61_Y2_N6
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

-- Location: FF_X61_Y2_N7
\cam_instance|horizontal_size[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_GPIO[8]~input_o\,
	d => \cam_instance|horizontal_size[4]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cam_instance|horizontal_size\(4));

-- Location: LCCOMB_X61_Y2_N0
\cam_instance|horizontal_size[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \cam_instance|horizontal_size[5]~feeder_combout\ = \cam_instance|current_column\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cam_instance|current_column\(5),
	combout => \cam_instance|horizontal_size[5]~feeder_combout\);

-- Location: FF_X61_Y2_N1
\cam_instance|horizontal_size[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_GPIO[8]~input_o\,
	d => \cam_instance|horizontal_size[5]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cam_instance|horizontal_size\(5));

-- Location: LCCOMB_X80_Y2_N24
\hex5decoder|segments_out[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex5decoder|segments_out[0]~0_combout\ = (\cam_instance|horizontal_size\(7) & (\cam_instance|horizontal_size\(4) & (\cam_instance|horizontal_size\(6) $ (\cam_instance|horizontal_size\(5))))) # (!\cam_instance|horizontal_size\(7) & 
-- (!\cam_instance|horizontal_size\(5) & (\cam_instance|horizontal_size\(6) $ (\cam_instance|horizontal_size\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000010010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cam_instance|horizontal_size\(7),
	datab => \cam_instance|horizontal_size\(6),
	datac => \cam_instance|horizontal_size\(4),
	datad => \cam_instance|horizontal_size\(5),
	combout => \hex5decoder|segments_out[0]~0_combout\);

-- Location: LCCOMB_X80_Y2_N26
\hex5decoder|segments_out[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex5decoder|segments_out[1]~1_combout\ = (\cam_instance|horizontal_size\(7) & ((\cam_instance|horizontal_size\(4) & ((\cam_instance|horizontal_size\(5)))) # (!\cam_instance|horizontal_size\(4) & (\cam_instance|horizontal_size\(6))))) # 
-- (!\cam_instance|horizontal_size\(7) & (\cam_instance|horizontal_size\(6) & (\cam_instance|horizontal_size\(4) $ (\cam_instance|horizontal_size\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110001001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cam_instance|horizontal_size\(7),
	datab => \cam_instance|horizontal_size\(6),
	datac => \cam_instance|horizontal_size\(4),
	datad => \cam_instance|horizontal_size\(5),
	combout => \hex5decoder|segments_out[1]~1_combout\);

-- Location: LCCOMB_X80_Y2_N12
\hex5decoder|segments_out[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex5decoder|segments_out[2]~2_combout\ = (\cam_instance|horizontal_size\(7) & (\cam_instance|horizontal_size\(6) & ((\cam_instance|horizontal_size\(5)) # (!\cam_instance|horizontal_size\(4))))) # (!\cam_instance|horizontal_size\(7) & 
-- (!\cam_instance|horizontal_size\(6) & (!\cam_instance|horizontal_size\(4) & \cam_instance|horizontal_size\(5))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100100001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cam_instance|horizontal_size\(7),
	datab => \cam_instance|horizontal_size\(6),
	datac => \cam_instance|horizontal_size\(4),
	datad => \cam_instance|horizontal_size\(5),
	combout => \hex5decoder|segments_out[2]~2_combout\);

-- Location: LCCOMB_X80_Y2_N14
\hex5decoder|segments_out[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex5decoder|segments_out[3]~3_combout\ = (\cam_instance|horizontal_size\(5) & ((\cam_instance|horizontal_size\(6) & ((\cam_instance|horizontal_size\(4)))) # (!\cam_instance|horizontal_size\(6) & (\cam_instance|horizontal_size\(7) & 
-- !\cam_instance|horizontal_size\(4))))) # (!\cam_instance|horizontal_size\(5) & (!\cam_instance|horizontal_size\(7) & (\cam_instance|horizontal_size\(6) $ (\cam_instance|horizontal_size\(4)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001000010100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cam_instance|horizontal_size\(7),
	datab => \cam_instance|horizontal_size\(6),
	datac => \cam_instance|horizontal_size\(4),
	datad => \cam_instance|horizontal_size\(5),
	combout => \hex5decoder|segments_out[3]~3_combout\);

-- Location: LCCOMB_X80_Y2_N28
\hex5decoder|segments_out[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex5decoder|segments_out[4]~4_combout\ = (\cam_instance|horizontal_size\(5) & (!\cam_instance|horizontal_size\(7) & ((\cam_instance|horizontal_size\(4))))) # (!\cam_instance|horizontal_size\(5) & ((\cam_instance|horizontal_size\(6) & 
-- (!\cam_instance|horizontal_size\(7))) # (!\cam_instance|horizontal_size\(6) & ((\cam_instance|horizontal_size\(4))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000001110100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cam_instance|horizontal_size\(7),
	datab => \cam_instance|horizontal_size\(6),
	datac => \cam_instance|horizontal_size\(4),
	datad => \cam_instance|horizontal_size\(5),
	combout => \hex5decoder|segments_out[4]~4_combout\);

-- Location: LCCOMB_X80_Y2_N30
\hex5decoder|segments_out[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex5decoder|segments_out[5]~5_combout\ = (\cam_instance|horizontal_size\(6) & (\cam_instance|horizontal_size\(4) & (\cam_instance|horizontal_size\(7) $ (\cam_instance|horizontal_size\(5))))) # (!\cam_instance|horizontal_size\(6) & 
-- (!\cam_instance|horizontal_size\(7) & ((\cam_instance|horizontal_size\(4)) # (\cam_instance|horizontal_size\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101000110010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cam_instance|horizontal_size\(7),
	datab => \cam_instance|horizontal_size\(6),
	datac => \cam_instance|horizontal_size\(4),
	datad => \cam_instance|horizontal_size\(5),
	combout => \hex5decoder|segments_out[5]~5_combout\);

-- Location: LCCOMB_X70_Y2_N16
\hex5decoder|segments_out[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex5decoder|segments_out[6]~6_combout\ = (\cam_instance|horizontal_size\(4) & (!\cam_instance|horizontal_size\(7) & (\cam_instance|horizontal_size\(5) $ (!\cam_instance|horizontal_size\(6))))) # (!\cam_instance|horizontal_size\(4) & 
-- (!\cam_instance|horizontal_size\(5) & (\cam_instance|horizontal_size\(7) $ (!\cam_instance|horizontal_size\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010010000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cam_instance|horizontal_size\(5),
	datab => \cam_instance|horizontal_size\(7),
	datac => \cam_instance|horizontal_size\(4),
	datad => \cam_instance|horizontal_size\(6),
	combout => \hex5decoder|segments_out[6]~6_combout\);

-- Location: LCCOMB_X61_Y2_N28
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

-- Location: FF_X61_Y2_N29
\cam_instance|current_column[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GPIO[11]~input_o\,
	d => \cam_instance|current_column[8]~34_combout\,
	clrn => \GPIO[8]~input_o\,
	ena => \cam_instance|ALT_INV_second_byte~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cam_instance|current_column\(8));

-- Location: LCCOMB_X61_Y2_N30
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

-- Location: FF_X61_Y2_N31
\cam_instance|current_column[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GPIO[11]~input_o\,
	d => \cam_instance|current_column[9]~36_combout\,
	clrn => \GPIO[8]~input_o\,
	ena => \cam_instance|ALT_INV_second_byte~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cam_instance|current_column\(9));

-- Location: LCCOMB_X60_Y2_N30
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

-- Location: FF_X60_Y2_N31
\cam_instance|horizontal_size[9]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_GPIO[8]~input_o\,
	d => \cam_instance|horizontal_size[9]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cam_instance|horizontal_size\(9));

-- Location: LCCOMB_X60_Y2_N8
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

-- Location: FF_X60_Y2_N9
\cam_instance|horizontal_size[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_GPIO[8]~input_o\,
	d => \cam_instance|horizontal_size[8]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cam_instance|horizontal_size\(8));

-- Location: LCCOMB_X61_Y1_N0
\cam_instance|current_column[10]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \cam_instance|current_column[10]~38_combout\ = (\cam_instance|current_column\(10) & (!\cam_instance|current_column[9]~37\)) # (!\cam_instance|current_column\(10) & ((\cam_instance|current_column[9]~37\) # (GND)))
-- \cam_instance|current_column[10]~39\ = CARRY((!\cam_instance|current_column[9]~37\) # (!\cam_instance|current_column\(10)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cam_instance|current_column\(10),
	datad => VCC,
	cin => \cam_instance|current_column[9]~37\,
	combout => \cam_instance|current_column[10]~38_combout\,
	cout => \cam_instance|current_column[10]~39\);

-- Location: FF_X61_Y1_N1
\cam_instance|current_column[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GPIO[11]~input_o\,
	d => \cam_instance|current_column[10]~38_combout\,
	clrn => \GPIO[8]~input_o\,
	ena => \cam_instance|ALT_INV_second_byte~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cam_instance|current_column\(10));

-- Location: LCCOMB_X61_Y1_N2
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

-- Location: FF_X61_Y1_N3
\cam_instance|current_column[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GPIO[11]~input_o\,
	d => \cam_instance|current_column[11]~40_combout\,
	clrn => \GPIO[8]~input_o\,
	ena => \cam_instance|ALT_INV_second_byte~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cam_instance|current_column\(11));

-- Location: FF_X61_Y1_N23
\cam_instance|horizontal_size[11]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_GPIO[8]~input_o\,
	asdata => \cam_instance|current_column\(11),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cam_instance|horizontal_size\(11));

-- Location: FF_X61_Y1_N25
\cam_instance|horizontal_size[10]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_GPIO[8]~input_o\,
	asdata => \cam_instance|current_column\(10),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cam_instance|horizontal_size\(10));

-- Location: LCCOMB_X61_Y1_N22
\hex6decoder|segments_out[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex6decoder|segments_out[0]~0_combout\ = (\cam_instance|horizontal_size\(11) & (\cam_instance|horizontal_size\(8) & (\cam_instance|horizontal_size\(9) $ (\cam_instance|horizontal_size\(10))))) # (!\cam_instance|horizontal_size\(11) & 
-- (!\cam_instance|horizontal_size\(9) & (\cam_instance|horizontal_size\(8) $ (\cam_instance|horizontal_size\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100000110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cam_instance|horizontal_size\(9),
	datab => \cam_instance|horizontal_size\(8),
	datac => \cam_instance|horizontal_size\(11),
	datad => \cam_instance|horizontal_size\(10),
	combout => \hex6decoder|segments_out[0]~0_combout\);

-- Location: LCCOMB_X61_Y1_N24
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

-- Location: LCCOMB_X60_Y2_N20
\hex6decoder|segments_out[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex6decoder|segments_out[2]~2_combout\ = (\cam_instance|horizontal_size\(10) & (\cam_instance|horizontal_size\(11) & ((\cam_instance|horizontal_size\(9)) # (!\cam_instance|horizontal_size\(8))))) # (!\cam_instance|horizontal_size\(10) & 
-- (!\cam_instance|horizontal_size\(8) & (!\cam_instance|horizontal_size\(11) & \cam_instance|horizontal_size\(9))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010000100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cam_instance|horizontal_size\(10),
	datab => \cam_instance|horizontal_size\(8),
	datac => \cam_instance|horizontal_size\(11),
	datad => \cam_instance|horizontal_size\(9),
	combout => \hex6decoder|segments_out[2]~2_combout\);

-- Location: LCCOMB_X60_Y2_N14
\hex6decoder|segments_out[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex6decoder|segments_out[3]~3_combout\ = (\cam_instance|horizontal_size\(9) & ((\cam_instance|horizontal_size\(10) & (\cam_instance|horizontal_size\(8))) # (!\cam_instance|horizontal_size\(10) & (!\cam_instance|horizontal_size\(8) & 
-- \cam_instance|horizontal_size\(11))))) # (!\cam_instance|horizontal_size\(9) & (!\cam_instance|horizontal_size\(11) & (\cam_instance|horizontal_size\(10) $ (\cam_instance|horizontal_size\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100000000110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cam_instance|horizontal_size\(10),
	datab => \cam_instance|horizontal_size\(8),
	datac => \cam_instance|horizontal_size\(11),
	datad => \cam_instance|horizontal_size\(9),
	combout => \hex6decoder|segments_out[3]~3_combout\);

-- Location: LCCOMB_X60_Y2_N24
\hex6decoder|segments_out[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex6decoder|segments_out[4]~4_combout\ = (\cam_instance|horizontal_size\(9) & (((\cam_instance|horizontal_size\(8) & !\cam_instance|horizontal_size\(11))))) # (!\cam_instance|horizontal_size\(9) & ((\cam_instance|horizontal_size\(10) & 
-- ((!\cam_instance|horizontal_size\(11)))) # (!\cam_instance|horizontal_size\(10) & (\cam_instance|horizontal_size\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110001001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cam_instance|horizontal_size\(10),
	datab => \cam_instance|horizontal_size\(8),
	datac => \cam_instance|horizontal_size\(11),
	datad => \cam_instance|horizontal_size\(9),
	combout => \hex6decoder|segments_out[4]~4_combout\);

-- Location: LCCOMB_X60_Y2_N6
\hex6decoder|segments_out[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex6decoder|segments_out[5]~5_combout\ = (\cam_instance|horizontal_size\(10) & (\cam_instance|horizontal_size\(8) & (\cam_instance|horizontal_size\(11) $ (\cam_instance|horizontal_size\(9))))) # (!\cam_instance|horizontal_size\(10) & 
-- (!\cam_instance|horizontal_size\(11) & ((\cam_instance|horizontal_size\(8)) # (\cam_instance|horizontal_size\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110110000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cam_instance|horizontal_size\(10),
	datab => \cam_instance|horizontal_size\(8),
	datac => \cam_instance|horizontal_size\(11),
	datad => \cam_instance|horizontal_size\(9),
	combout => \hex6decoder|segments_out[5]~5_combout\);

-- Location: LCCOMB_X60_Y2_N28
\hex6decoder|segments_out[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex6decoder|segments_out[6]~6_combout\ = (\cam_instance|horizontal_size\(8) & (!\cam_instance|horizontal_size\(11) & (\cam_instance|horizontal_size\(10) $ (!\cam_instance|horizontal_size\(9))))) # (!\cam_instance|horizontal_size\(8) & 
-- (!\cam_instance|horizontal_size\(9) & (\cam_instance|horizontal_size\(10) $ (!\cam_instance|horizontal_size\(11)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000100000100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cam_instance|horizontal_size\(10),
	datab => \cam_instance|horizontal_size\(8),
	datac => \cam_instance|horizontal_size\(11),
	datad => \cam_instance|horizontal_size\(9),
	combout => \hex6decoder|segments_out[6]~6_combout\);

-- Location: LCCOMB_X61_Y1_N4
\cam_instance|current_column[12]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \cam_instance|current_column[12]~42_combout\ = (\cam_instance|current_column\(12) & (!\cam_instance|current_column[11]~41\)) # (!\cam_instance|current_column\(12) & ((\cam_instance|current_column[11]~41\) # (GND)))
-- \cam_instance|current_column[12]~43\ = CARRY((!\cam_instance|current_column[11]~41\) # (!\cam_instance|current_column\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cam_instance|current_column\(12),
	datad => VCC,
	cin => \cam_instance|current_column[11]~41\,
	combout => \cam_instance|current_column[12]~42_combout\,
	cout => \cam_instance|current_column[12]~43\);

-- Location: FF_X61_Y1_N5
\cam_instance|current_column[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GPIO[11]~input_o\,
	d => \cam_instance|current_column[12]~42_combout\,
	clrn => \GPIO[8]~input_o\,
	ena => \cam_instance|ALT_INV_second_byte~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cam_instance|current_column\(12));

-- Location: FF_X61_Y1_N27
\cam_instance|horizontal_size[12]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_GPIO[8]~input_o\,
	asdata => \cam_instance|current_column\(12),
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cam_instance|horizontal_size\(12));

-- Location: LCCOMB_X61_Y1_N6
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

-- Location: FF_X61_Y1_N7
\cam_instance|current_column[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GPIO[11]~input_o\,
	d => \cam_instance|current_column[13]~44_combout\,
	clrn => \GPIO[8]~input_o\,
	ena => \cam_instance|ALT_INV_second_byte~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cam_instance|current_column\(13));

-- Location: LCCOMB_X61_Y1_N28
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

-- Location: FF_X61_Y1_N29
\cam_instance|horizontal_size[13]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_GPIO[8]~input_o\,
	d => \cam_instance|horizontal_size[13]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cam_instance|horizontal_size\(13));

-- Location: LCCOMB_X61_Y1_N8
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

-- Location: FF_X61_Y1_N9
\cam_instance|current_column[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GPIO[11]~input_o\,
	d => \cam_instance|current_column[14]~46_combout\,
	clrn => \GPIO[8]~input_o\,
	ena => \cam_instance|ALT_INV_second_byte~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cam_instance|current_column\(14));

-- Location: LCCOMB_X61_Y1_N10
\cam_instance|current_column[15]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \cam_instance|current_column[15]~48_combout\ = (\cam_instance|current_column\(15) & (\cam_instance|current_column[14]~47\ $ (GND))) # (!\cam_instance|current_column\(15) & (!\cam_instance|current_column[14]~47\ & VCC))
-- \cam_instance|current_column[15]~49\ = CARRY((\cam_instance|current_column\(15) & !\cam_instance|current_column[14]~47\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cam_instance|current_column\(15),
	datad => VCC,
	cin => \cam_instance|current_column[14]~47\,
	combout => \cam_instance|current_column[15]~48_combout\,
	cout => \cam_instance|current_column[15]~49\);

-- Location: FF_X61_Y1_N11
\cam_instance|current_column[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GPIO[11]~input_o\,
	d => \cam_instance|current_column[15]~48_combout\,
	clrn => \GPIO[8]~input_o\,
	ena => \cam_instance|ALT_INV_second_byte~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cam_instance|current_column\(15));

-- Location: LCCOMB_X61_Y1_N30
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

-- Location: FF_X61_Y1_N31
\cam_instance|horizontal_size[15]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_GPIO[8]~input_o\,
	d => \cam_instance|horizontal_size[15]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cam_instance|horizontal_size\(15));

-- Location: LCCOMB_X61_Y1_N20
\cam_instance|horizontal_size[14]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \cam_instance|horizontal_size[14]~feeder_combout\ = \cam_instance|current_column\(14)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \cam_instance|current_column\(14),
	combout => \cam_instance|horizontal_size[14]~feeder_combout\);

-- Location: FF_X61_Y1_N21
\cam_instance|horizontal_size[14]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_GPIO[8]~input_o\,
	d => \cam_instance|horizontal_size[14]~feeder_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cam_instance|horizontal_size\(14));

-- Location: LCCOMB_X62_Y1_N4
\hex7decoder|segments_out[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex7decoder|segments_out[0]~0_combout\ = (\cam_instance|horizontal_size\(15) & (\cam_instance|horizontal_size\(12) & (\cam_instance|horizontal_size\(13) $ (\cam_instance|horizontal_size\(14))))) # (!\cam_instance|horizontal_size\(15) & 
-- (!\cam_instance|horizontal_size\(13) & (\cam_instance|horizontal_size\(12) $ (\cam_instance|horizontal_size\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010000110000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cam_instance|horizontal_size\(12),
	datab => \cam_instance|horizontal_size\(13),
	datac => \cam_instance|horizontal_size\(15),
	datad => \cam_instance|horizontal_size\(14),
	combout => \hex7decoder|segments_out[0]~0_combout\);

-- Location: LCCOMB_X62_Y1_N30
\hex7decoder|segments_out[1]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex7decoder|segments_out[1]~1_combout\ = (\cam_instance|horizontal_size\(13) & ((\cam_instance|horizontal_size\(12) & (\cam_instance|horizontal_size\(15))) # (!\cam_instance|horizontal_size\(12) & ((\cam_instance|horizontal_size\(14)))))) # 
-- (!\cam_instance|horizontal_size\(13) & (\cam_instance|horizontal_size\(14) & (\cam_instance|horizontal_size\(12) $ (\cam_instance|horizontal_size\(15)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101011010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cam_instance|horizontal_size\(12),
	datab => \cam_instance|horizontal_size\(13),
	datac => \cam_instance|horizontal_size\(15),
	datad => \cam_instance|horizontal_size\(14),
	combout => \hex7decoder|segments_out[1]~1_combout\);

-- Location: LCCOMB_X62_Y1_N28
\hex7decoder|segments_out[2]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex7decoder|segments_out[2]~2_combout\ = (\cam_instance|horizontal_size\(15) & (\cam_instance|horizontal_size\(14) & ((\cam_instance|horizontal_size\(13)) # (!\cam_instance|horizontal_size\(12))))) # (!\cam_instance|horizontal_size\(15) & 
-- (!\cam_instance|horizontal_size\(12) & (\cam_instance|horizontal_size\(13) & !\cam_instance|horizontal_size\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101000000000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cam_instance|horizontal_size\(12),
	datab => \cam_instance|horizontal_size\(13),
	datac => \cam_instance|horizontal_size\(15),
	datad => \cam_instance|horizontal_size\(14),
	combout => \hex7decoder|segments_out[2]~2_combout\);

-- Location: LCCOMB_X62_Y1_N22
\hex7decoder|segments_out[3]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex7decoder|segments_out[3]~3_combout\ = (\cam_instance|horizontal_size\(13) & ((\cam_instance|horizontal_size\(12) & ((\cam_instance|horizontal_size\(14)))) # (!\cam_instance|horizontal_size\(12) & (\cam_instance|horizontal_size\(15) & 
-- !\cam_instance|horizontal_size\(14))))) # (!\cam_instance|horizontal_size\(13) & (!\cam_instance|horizontal_size\(15) & (\cam_instance|horizontal_size\(12) $ (\cam_instance|horizontal_size\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000100101000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cam_instance|horizontal_size\(12),
	datab => \cam_instance|horizontal_size\(13),
	datac => \cam_instance|horizontal_size\(15),
	datad => \cam_instance|horizontal_size\(14),
	combout => \hex7decoder|segments_out[3]~3_combout\);

-- Location: LCCOMB_X62_Y1_N12
\hex7decoder|segments_out[4]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex7decoder|segments_out[4]~4_combout\ = (\cam_instance|horizontal_size\(13) & (\cam_instance|horizontal_size\(12) & (!\cam_instance|horizontal_size\(15)))) # (!\cam_instance|horizontal_size\(13) & ((\cam_instance|horizontal_size\(14) & 
-- ((!\cam_instance|horizontal_size\(15)))) # (!\cam_instance|horizontal_size\(14) & (\cam_instance|horizontal_size\(12)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101100101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cam_instance|horizontal_size\(12),
	datab => \cam_instance|horizontal_size\(13),
	datac => \cam_instance|horizontal_size\(15),
	datad => \cam_instance|horizontal_size\(14),
	combout => \hex7decoder|segments_out[4]~4_combout\);

-- Location: LCCOMB_X62_Y1_N6
\hex7decoder|segments_out[5]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex7decoder|segments_out[5]~5_combout\ = (\cam_instance|horizontal_size\(12) & (\cam_instance|horizontal_size\(15) $ (((\cam_instance|horizontal_size\(13)) # (!\cam_instance|horizontal_size\(14)))))) # (!\cam_instance|horizontal_size\(12) & 
-- (\cam_instance|horizontal_size\(13) & (!\cam_instance|horizontal_size\(15) & !\cam_instance|horizontal_size\(14))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0010100000001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cam_instance|horizontal_size\(12),
	datab => \cam_instance|horizontal_size\(13),
	datac => \cam_instance|horizontal_size\(15),
	datad => \cam_instance|horizontal_size\(14),
	combout => \hex7decoder|segments_out[5]~5_combout\);

-- Location: LCCOMB_X61_Y1_N26
\hex7decoder|segments_out[6]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \hex7decoder|segments_out[6]~6_combout\ = (\cam_instance|horizontal_size\(12) & (!\cam_instance|horizontal_size\(15) & (\cam_instance|horizontal_size\(13) $ (!\cam_instance|horizontal_size\(14))))) # (!\cam_instance|horizontal_size\(12) & 
-- (!\cam_instance|horizontal_size\(13) & (\cam_instance|horizontal_size\(15) $ (!\cam_instance|horizontal_size\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100001000010001",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cam_instance|horizontal_size\(15),
	datab => \cam_instance|horizontal_size\(13),
	datac => \cam_instance|horizontal_size\(12),
	datad => \cam_instance|horizontal_size\(14),
	combout => \hex7decoder|segments_out[6]~6_combout\);

-- Location: LCCOMB_X38_Y24_N20
\VGA_R~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_R~0_combout\ = (\camstatemachine_instance|WideOr0~combout\ & \SRAM_DQ[8]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100000011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \camstatemachine_instance|WideOr0~combout\,
	datac => \SRAM_DQ[8]~input_o\,
	combout => \VGA_R~0_combout\);

-- Location: CLKCTRL_G18
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

-- Location: LCCOMB_X38_Y24_N22
\VGA_R[0]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_R[0]$latch~combout\ = (GLOBAL(\camstatemachine_instance|WideOr2~clkctrl_outclk\) & ((\VGA_R[0]$latch~combout\))) # (!GLOBAL(\camstatemachine_instance|WideOr2~clkctrl_outclk\) & (\VGA_R~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_R~0_combout\,
	datac => \VGA_R[0]$latch~combout\,
	datad => \camstatemachine_instance|WideOr2~clkctrl_outclk\,
	combout => \VGA_R[0]$latch~combout\);

-- Location: LCCOMB_X40_Y24_N0
\VGA_R~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_R~1_combout\ = (\SRAM_DQ[9]~input_o\ & \camstatemachine_instance|WideOr0~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SRAM_DQ[9]~input_o\,
	datad => \camstatemachine_instance|WideOr0~combout\,
	combout => \VGA_R~1_combout\);

-- Location: LCCOMB_X40_Y24_N4
\VGA_R[1]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_R[1]$latch~combout\ = (GLOBAL(\camstatemachine_instance|WideOr2~clkctrl_outclk\) & ((\VGA_R[1]$latch~combout\))) # (!GLOBAL(\camstatemachine_instance|WideOr2~clkctrl_outclk\) & (\VGA_R~1_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_R~1_combout\,
	datac => \VGA_R[1]$latch~combout\,
	datad => \camstatemachine_instance|WideOr2~clkctrl_outclk\,
	combout => \VGA_R[1]$latch~combout\);

-- Location: LCCOMB_X40_Y24_N22
\VGA_R~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_R~2_combout\ = (\SRAM_DQ[10]~input_o\ & \camstatemachine_instance|WideOr0~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SRAM_DQ[10]~input_o\,
	datad => \camstatemachine_instance|WideOr0~combout\,
	combout => \VGA_R~2_combout\);

-- Location: LCCOMB_X40_Y24_N26
\VGA_R[2]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_R[2]$latch~combout\ = (GLOBAL(\camstatemachine_instance|WideOr2~clkctrl_outclk\) & ((\VGA_R[2]$latch~combout\))) # (!GLOBAL(\camstatemachine_instance|WideOr2~clkctrl_outclk\) & (\VGA_R~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_R~2_combout\,
	datac => \VGA_R[2]$latch~combout\,
	datad => \camstatemachine_instance|WideOr2~clkctrl_outclk\,
	combout => \VGA_R[2]$latch~combout\);

-- Location: LCCOMB_X39_Y24_N8
\VGA_R~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_R~3_combout\ = (\camstatemachine_instance|WideOr0~combout\ & \SRAM_DQ[11]~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \camstatemachine_instance|WideOr0~combout\,
	datad => \SRAM_DQ[11]~input_o\,
	combout => \VGA_R~3_combout\);

-- Location: LCCOMB_X39_Y24_N10
\VGA_R[3]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_R[3]$latch~combout\ = (GLOBAL(\camstatemachine_instance|WideOr2~clkctrl_outclk\) & ((\VGA_R[3]$latch~combout\))) # (!GLOBAL(\camstatemachine_instance|WideOr2~clkctrl_outclk\) & (\VGA_R~3_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \VGA_R~3_combout\,
	datac => \camstatemachine_instance|WideOr2~clkctrl_outclk\,
	datad => \VGA_R[3]$latch~combout\,
	combout => \VGA_R[3]$latch~combout\);

-- Location: LCCOMB_X42_Y24_N12
\VGA_R~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_R~4_combout\ = (\SRAM_DQ[12]~input_o\ & \camstatemachine_instance|WideOr0~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SRAM_DQ[12]~input_o\,
	datad => \camstatemachine_instance|WideOr0~combout\,
	combout => \VGA_R~4_combout\);

-- Location: LCCOMB_X42_Y24_N8
\VGA_R[4]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_R[4]$latch~combout\ = (GLOBAL(\camstatemachine_instance|WideOr2~clkctrl_outclk\) & ((\VGA_R[4]$latch~combout\))) # (!GLOBAL(\camstatemachine_instance|WideOr2~clkctrl_outclk\) & (\VGA_R~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_R~4_combout\,
	datac => \VGA_R[4]$latch~combout\,
	datad => \camstatemachine_instance|WideOr2~clkctrl_outclk\,
	combout => \VGA_R[4]$latch~combout\);

-- Location: LCCOMB_X42_Y24_N30
\VGA_R~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_R~5_combout\ = (\SRAM_DQ[13]~input_o\ & \camstatemachine_instance|WideOr0~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SRAM_DQ[13]~input_o\,
	datad => \camstatemachine_instance|WideOr0~combout\,
	combout => \VGA_R~5_combout\);

-- Location: LCCOMB_X42_Y24_N26
\VGA_R[5]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_R[5]$latch~combout\ = (GLOBAL(\camstatemachine_instance|WideOr2~clkctrl_outclk\) & ((\VGA_R[5]$latch~combout\))) # (!GLOBAL(\camstatemachine_instance|WideOr2~clkctrl_outclk\) & (\VGA_R~5_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_R~5_combout\,
	datac => \VGA_R[5]$latch~combout\,
	datad => \camstatemachine_instance|WideOr2~clkctrl_outclk\,
	combout => \VGA_R[5]$latch~combout\);

-- Location: LCCOMB_X39_Y24_N26
\VGA_R~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_R~6_combout\ = (\camstatemachine_instance|current_state.read_foreground_pixel~q\) # (\camstatemachine_instance|current_state.display~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011101110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camstatemachine_instance|current_state.read_foreground_pixel~q\,
	datab => \camstatemachine_instance|current_state.display~q\,
	combout => \VGA_R~6_combout\);

-- Location: LCCOMB_X39_Y24_N24
\VGA_R~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_R~7_combout\ = (\SRAM_DQ[14]~input_o\ & ((\camstatemachine_instance|current_state.wait_for_display_end_pre_copy~2_combout\) # ((\VGA_R~6_combout\) # (\camstatemachine_instance|current_state.read_background_pixel~2_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camstatemachine_instance|current_state.wait_for_display_end_pre_copy~2_combout\,
	datab => \VGA_R~6_combout\,
	datac => \camstatemachine_instance|current_state.read_background_pixel~2_combout\,
	datad => \SRAM_DQ[14]~input_o\,
	combout => \VGA_R~7_combout\);

-- Location: LCCOMB_X39_Y24_N20
\VGA_R[6]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_R[6]$latch~combout\ = (GLOBAL(\camstatemachine_instance|WideOr2~clkctrl_outclk\) & (\VGA_R[6]$latch~combout\)) # (!GLOBAL(\camstatemachine_instance|WideOr2~clkctrl_outclk\) & ((\VGA_R~7_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_R[6]$latch~combout\,
	datac => \camstatemachine_instance|WideOr2~clkctrl_outclk\,
	datad => \VGA_R~7_combout\,
	combout => \VGA_R[6]$latch~combout\);

-- Location: LCCOMB_X40_Y24_N28
\VGA_R~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_R~8_combout\ = (\SRAM_DQ[15]~input_o\ & \camstatemachine_instance|WideOr0~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \SRAM_DQ[15]~input_o\,
	datad => \camstatemachine_instance|WideOr0~combout\,
	combout => \VGA_R~8_combout\);

-- Location: LCCOMB_X40_Y24_N8
\VGA_R[7]$latch\ : cycloneive_lcell_comb
-- Equation(s):
-- \VGA_R[7]$latch~combout\ = (GLOBAL(\camstatemachine_instance|WideOr2~clkctrl_outclk\) & ((\VGA_R[7]$latch~combout\))) # (!GLOBAL(\camstatemachine_instance|WideOr2~clkctrl_outclk\) & (\VGA_R~8_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \VGA_R~8_combout\,
	datac => \VGA_R[7]$latch~combout\,
	datad => \camstatemachine_instance|WideOr2~clkctrl_outclk\,
	combout => \VGA_R[7]$latch~combout\);

-- Location: DDIOOUTCELL_X47_Y73_N4
\camera_clock~_Duplicate_1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "high")
-- pragma translate_on
PORT MAP (
	clk => \CLOCK_50~inputclkctrl_outclk\,
	d => \camera_clock~_Duplicate_2_q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \camera_clock~_Duplicate_1_q\);

-- Location: LCCOMB_X62_Y23_N26
\vga_sync_instance|LessThan5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_sync_instance|LessThan5~0_combout\ = ((!\vga_sync_instance|h_count\(7) & !\vga_sync_instance|h_count\(8))) # (!\vga_sync_instance|h_count\(9))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111101011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_sync_instance|h_count\(7),
	datac => \vga_sync_instance|h_count\(9),
	datad => \vga_sync_instance|h_count\(8),
	combout => \vga_sync_instance|LessThan5~0_combout\);

-- Location: FF_X61_Y23_N31
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

-- Location: LCCOMB_X61_Y26_N0
\vga_sync_instance|video_on\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_sync_instance|video_on~combout\ = (\vga_sync_instance|video_on_h~q\ & !\vga_sync_instance|eof~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_sync_instance|video_on_h~q\,
	datac => \vga_sync_instance|eof~q\,
	combout => \vga_sync_instance|video_on~combout\);

-- Location: LCCOMB_X62_Y23_N30
\vga_sync_instance|process_0~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_sync_instance|process_0~5_combout\ = (\vga_sync_instance|h_count\(5) & ((\vga_sync_instance|h_count\(1)) # ((\vga_sync_instance|h_count\(2)) # (\vga_sync_instance|h_count\(0)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_sync_instance|h_count\(1),
	datab => \vga_sync_instance|h_count\(5),
	datac => \vga_sync_instance|h_count\(2),
	datad => \vga_sync_instance|h_count\(0),
	combout => \vga_sync_instance|process_0~5_combout\);

-- Location: LCCOMB_X62_Y23_N0
\vga_sync_instance|process_0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_sync_instance|process_0~4_combout\ = ((\vga_sync_instance|process_0~1_combout\) # ((\vga_sync_instance|h_count\(8)) # (!\vga_sync_instance|h_count\(9)))) # (!\vga_sync_instance|h_count\(7))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111011111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_sync_instance|h_count\(7),
	datab => \vga_sync_instance|process_0~1_combout\,
	datac => \vga_sync_instance|h_count\(9),
	datad => \vga_sync_instance|h_count\(8),
	combout => \vga_sync_instance|process_0~4_combout\);

-- Location: LCCOMB_X62_Y23_N20
\vga_sync_instance|process_0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_sync_instance|process_0~6_combout\ = (\vga_sync_instance|process_0~4_combout\) # ((\vga_sync_instance|h_count\(6) & (\vga_sync_instance|process_0~3_combout\ & \vga_sync_instance|process_0~5_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111110000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_sync_instance|h_count\(6),
	datab => \vga_sync_instance|process_0~3_combout\,
	datac => \vga_sync_instance|process_0~5_combout\,
	datad => \vga_sync_instance|process_0~4_combout\,
	combout => \vga_sync_instance|process_0~6_combout\);

-- Location: FF_X62_Y23_N21
\vga_sync_instance|horiz_sync\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_camera_clock~clkctrl_outclk\,
	d => \vga_sync_instance|process_0~6_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_sync_instance|horiz_sync~q\);

-- Location: DDIOOUTCELL_X38_Y73_N18
\vga_sync_instance|horiz_sync_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_camera_clock~clkctrl_outclk\,
	d => \vga_sync_instance|horiz_sync~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_sync_instance|horiz_sync_out~q\);

-- Location: LCCOMB_X59_Y23_N0
\vga_sync_instance|process_0~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_sync_instance|process_0~7_combout\ = ((\vga_sync_instance|v_count\(1) & ((\vga_sync_instance|v_count\(2)) # (!\vga_sync_instance|v_count\(0)))) # (!\vga_sync_instance|v_count\(1) & ((!\vga_sync_instance|v_count\(2))))) # 
-- (!\vga_sync_instance|v_count\(3))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010101111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_sync_instance|v_count\(3),
	datab => \vga_sync_instance|v_count\(0),
	datac => \vga_sync_instance|v_count\(1),
	datad => \vga_sync_instance|v_count\(2),
	combout => \vga_sync_instance|process_0~7_combout\);

-- Location: LCCOMB_X59_Y23_N30
\vga_sync_instance|process_0~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_sync_instance|process_0~8_combout\ = ((\vga_sync_instance|v_count\(9)) # ((\vga_sync_instance|v_count\(4)) # (\vga_sync_instance|process_0~7_combout\))) # (!\vga_sync_instance|LessThan6~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_sync_instance|LessThan6~0_combout\,
	datab => \vga_sync_instance|v_count\(9),
	datac => \vga_sync_instance|v_count\(4),
	datad => \vga_sync_instance|process_0~7_combout\,
	combout => \vga_sync_instance|process_0~8_combout\);

-- Location: FF_X59_Y23_N31
\vga_sync_instance|vert_sync\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_camera_clock~clkctrl_outclk\,
	d => \vga_sync_instance|process_0~8_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_sync_instance|vert_sync~q\);

-- Location: DDIOOUTCELL_X54_Y73_N4
\vga_sync_instance|vert_sync_out\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_camera_clock~clkctrl_outclk\,
	d => \vga_sync_instance|vert_sync~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_sync_instance|vert_sync_out~q\);

-- Location: FF_X58_Y23_N1
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

-- Location: LCCOMB_X58_Y23_N0
\SRAM_ADDR[0]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAM_ADDR[0]~2_combout\ = (\camstatemachine_instance|WideOr0~combout\ & (((\vga_sync_instance|pixel_column\(0))))) # (!\camstatemachine_instance|WideOr0~combout\ & (\cam_instance|current_column\(0) & (\camstatemachine_instance|WideOr1~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cam_instance|current_column\(0),
	datab => \camstatemachine_instance|WideOr1~combout\,
	datac => \vga_sync_instance|pixel_column\(0),
	datad => \camstatemachine_instance|WideOr0~combout\,
	combout => \SRAM_ADDR[0]~2_combout\);

-- Location: LCCOMB_X58_Y23_N14
\SRAM_ADDR[0]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAM_ADDR[0]~3_combout\ = (\camstatemachine_instance|WideOr2~combout\ & (pixel_counter(0))) # (!\camstatemachine_instance|WideOr2~combout\ & ((\SRAM_ADDR[0]~2_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pixel_counter(0),
	datac => \camstatemachine_instance|WideOr2~combout\,
	datad => \SRAM_ADDR[0]~2_combout\,
	combout => \SRAM_ADDR[0]~3_combout\);

-- Location: FF_X62_Y23_N29
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

-- Location: LCCOMB_X62_Y23_N28
\SRAM_ADDR[1]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAM_ADDR[1]~4_combout\ = (\camstatemachine_instance|WideOr0~combout\ & (((\vga_sync_instance|pixel_column\(1))))) # (!\camstatemachine_instance|WideOr0~combout\ & (\cam_instance|current_column\(1) & ((\camstatemachine_instance|WideOr1~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cam_instance|current_column\(1),
	datab => \camstatemachine_instance|WideOr0~combout\,
	datac => \vga_sync_instance|pixel_column\(1),
	datad => \camstatemachine_instance|WideOr1~combout\,
	combout => \SRAM_ADDR[1]~4_combout\);

-- Location: LCCOMB_X58_Y23_N10
\SRAM_ADDR[1]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAM_ADDR[1]~5_combout\ = (\camstatemachine_instance|WideOr2~combout\ & (pixel_counter(1))) # (!\camstatemachine_instance|WideOr2~combout\ & ((\SRAM_ADDR[1]~4_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => pixel_counter(1),
	datac => \camstatemachine_instance|WideOr2~combout\,
	datad => \SRAM_ADDR[1]~4_combout\,
	combout => \SRAM_ADDR[1]~5_combout\);

-- Location: FF_X62_Y23_N3
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

-- Location: LCCOMB_X62_Y23_N2
\SRAM_ADDR[2]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAM_ADDR[2]~6_combout\ = (\camstatemachine_instance|WideOr0~combout\ & (((\vga_sync_instance|pixel_column\(2))))) # (!\camstatemachine_instance|WideOr0~combout\ & (\camstatemachine_instance|WideOr1~combout\ & ((\cam_instance|current_column\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camstatemachine_instance|WideOr1~combout\,
	datab => \camstatemachine_instance|WideOr0~combout\,
	datac => \vga_sync_instance|pixel_column\(2),
	datad => \cam_instance|current_column\(2),
	combout => \SRAM_ADDR[2]~6_combout\);

-- Location: LCCOMB_X58_Y23_N28
\SRAM_ADDR[2]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAM_ADDR[2]~7_combout\ = (\camstatemachine_instance|WideOr2~combout\ & ((pixel_counter(2)))) # (!\camstatemachine_instance|WideOr2~combout\ & (\SRAM_ADDR[2]~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \camstatemachine_instance|WideOr2~combout\,
	datac => \SRAM_ADDR[2]~6_combout\,
	datad => pixel_counter(2),
	combout => \SRAM_ADDR[2]~7_combout\);

-- Location: FF_X62_Y23_N9
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

-- Location: LCCOMB_X62_Y23_N8
\SRAM_ADDR[3]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAM_ADDR[3]~8_combout\ = (\camstatemachine_instance|WideOr0~combout\ & (((\vga_sync_instance|pixel_column\(3))))) # (!\camstatemachine_instance|WideOr0~combout\ & (\cam_instance|current_column\(3) & ((\camstatemachine_instance|WideOr1~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cam_instance|current_column\(3),
	datab => \camstatemachine_instance|WideOr0~combout\,
	datac => \vga_sync_instance|pixel_column\(3),
	datad => \camstatemachine_instance|WideOr1~combout\,
	combout => \SRAM_ADDR[3]~8_combout\);

-- Location: LCCOMB_X58_Y23_N8
\SRAM_ADDR[3]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAM_ADDR[3]~9_combout\ = (\camstatemachine_instance|WideOr2~combout\ & (pixel_counter(3))) # (!\camstatemachine_instance|WideOr2~combout\ & ((\SRAM_ADDR[3]~8_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \camstatemachine_instance|WideOr2~combout\,
	datac => pixel_counter(3),
	datad => \SRAM_ADDR[3]~8_combout\,
	combout => \SRAM_ADDR[3]~9_combout\);

-- Location: FF_X62_Y23_N19
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

-- Location: LCCOMB_X62_Y23_N18
\SRAM_ADDR[4]~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAM_ADDR[4]~10_combout\ = (\camstatemachine_instance|WideOr0~combout\ & (((\vga_sync_instance|pixel_column\(4))))) # (!\camstatemachine_instance|WideOr0~combout\ & (\cam_instance|current_column\(4) & ((\camstatemachine_instance|WideOr1~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cam_instance|current_column\(4),
	datab => \camstatemachine_instance|WideOr0~combout\,
	datac => \vga_sync_instance|pixel_column\(4),
	datad => \camstatemachine_instance|WideOr1~combout\,
	combout => \SRAM_ADDR[4]~10_combout\);

-- Location: LCCOMB_X58_Y23_N18
\SRAM_ADDR[4]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAM_ADDR[4]~11_combout\ = (\camstatemachine_instance|WideOr2~combout\ & (pixel_counter(4))) # (!\camstatemachine_instance|WideOr2~combout\ & ((\SRAM_ADDR[4]~10_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pixel_counter(4),
	datac => \camstatemachine_instance|WideOr2~combout\,
	datad => \SRAM_ADDR[4]~10_combout\,
	combout => \SRAM_ADDR[4]~11_combout\);

-- Location: FF_X58_Y23_N25
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

-- Location: LCCOMB_X58_Y23_N24
\SRAM_ADDR[5]~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAM_ADDR[5]~12_combout\ = (\camstatemachine_instance|WideOr0~combout\ & (((\vga_sync_instance|pixel_column\(5))))) # (!\camstatemachine_instance|WideOr0~combout\ & (\cam_instance|current_column\(5) & (\camstatemachine_instance|WideOr1~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cam_instance|current_column\(5),
	datab => \camstatemachine_instance|WideOr1~combout\,
	datac => \vga_sync_instance|pixel_column\(5),
	datad => \camstatemachine_instance|WideOr0~combout\,
	combout => \SRAM_ADDR[5]~12_combout\);

-- Location: LCCOMB_X58_Y23_N20
\SRAM_ADDR[5]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAM_ADDR[5]~13_combout\ = (\camstatemachine_instance|WideOr2~combout\ & (pixel_counter(5))) # (!\camstatemachine_instance|WideOr2~combout\ & ((\SRAM_ADDR[5]~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \camstatemachine_instance|WideOr2~combout\,
	datac => pixel_counter(5),
	datad => \SRAM_ADDR[5]~12_combout\,
	combout => \SRAM_ADDR[5]~13_combout\);

-- Location: FF_X62_Y23_N17
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

-- Location: LCCOMB_X62_Y23_N16
\SRAM_ADDR[6]~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAM_ADDR[6]~14_combout\ = (\camstatemachine_instance|WideOr0~combout\ & (((\vga_sync_instance|pixel_column\(6))))) # (!\camstatemachine_instance|WideOr0~combout\ & (\camstatemachine_instance|WideOr1~combout\ & ((\cam_instance|current_column\(6)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camstatemachine_instance|WideOr1~combout\,
	datab => \camstatemachine_instance|WideOr0~combout\,
	datac => \vga_sync_instance|pixel_column\(6),
	datad => \cam_instance|current_column\(6),
	combout => \SRAM_ADDR[6]~14_combout\);

-- Location: LCCOMB_X58_Y23_N22
\SRAM_ADDR[6]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAM_ADDR[6]~15_combout\ = (\camstatemachine_instance|WideOr2~combout\ & ((pixel_counter(6)))) # (!\camstatemachine_instance|WideOr2~combout\ & (\SRAM_ADDR[6]~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_ADDR[6]~14_combout\,
	datab => pixel_counter(6),
	datac => \camstatemachine_instance|WideOr2~combout\,
	combout => \SRAM_ADDR[6]~15_combout\);

-- Location: LCCOMB_X61_Y3_N6
\Add10~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~0_combout\ = (\cam_instance|current_column\(7) & (\cam_instance|current_row\(0) $ (VCC))) # (!\cam_instance|current_column\(7) & (\cam_instance|current_row\(0) & VCC))
-- \Add10~1\ = CARRY((\cam_instance|current_column\(7) & \cam_instance|current_row\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cam_instance|current_column\(7),
	datab => \cam_instance|current_row\(0),
	datad => VCC,
	combout => \Add10~0_combout\,
	cout => \Add10~1\);

-- Location: LCCOMB_X61_Y26_N30
\vga_sync_instance|pixel_row[0]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_sync_instance|pixel_row[0]~feeder_combout\ = \vga_sync_instance|v_count\(0)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \vga_sync_instance|v_count\(0),
	combout => \vga_sync_instance|pixel_row[0]~feeder_combout\);

-- Location: FF_X61_Y26_N31
\vga_sync_instance|pixel_row[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_camera_clock~clkctrl_outclk\,
	d => \vga_sync_instance|pixel_row[0]~feeder_combout\,
	ena => \vga_sync_instance|ALT_INV_LessThan6~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_sync_instance|pixel_row\(0));

-- Location: FF_X61_Y23_N23
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

-- Location: LCCOMB_X57_Y23_N4
\Add7~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~0_combout\ = (\vga_sync_instance|pixel_row\(0) & (\vga_sync_instance|pixel_column\(7) $ (VCC))) # (!\vga_sync_instance|pixel_row\(0) & (\vga_sync_instance|pixel_column\(7) & VCC))
-- \Add7~1\ = CARRY((\vga_sync_instance|pixel_row\(0) & \vga_sync_instance|pixel_column\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_sync_instance|pixel_row\(0),
	datab => \vga_sync_instance|pixel_column\(7),
	datad => VCC,
	combout => \Add7~0_combout\,
	cout => \Add7~1\);

-- Location: LCCOMB_X58_Y23_N16
\SRAM_ADDR[7]~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAM_ADDR[7]~16_combout\ = (\camstatemachine_instance|WideOr0~combout\ & (((\Add7~0_combout\)))) # (!\camstatemachine_instance|WideOr0~combout\ & (\Add10~0_combout\ & (\camstatemachine_instance|WideOr1~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add10~0_combout\,
	datab => \camstatemachine_instance|WideOr1~combout\,
	datac => \Add7~0_combout\,
	datad => \camstatemachine_instance|WideOr0~combout\,
	combout => \SRAM_ADDR[7]~16_combout\);

-- Location: LCCOMB_X57_Y27_N28
\SRAM_ADDR[7]~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAM_ADDR[7]~17_combout\ = (\camstatemachine_instance|WideOr2~combout\ & (pixel_counter(7))) # (!\camstatemachine_instance|WideOr2~combout\ & ((\SRAM_ADDR[7]~16_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camstatemachine_instance|WideOr2~combout\,
	datac => pixel_counter(7),
	datad => \SRAM_ADDR[7]~16_combout\,
	combout => \SRAM_ADDR[7]~17_combout\);

-- Location: LCCOMB_X61_Y3_N8
\Add10~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~2_combout\ = (\cam_instance|current_column\(8) & ((\cam_instance|current_row\(1) & (\Add10~1\ & VCC)) # (!\cam_instance|current_row\(1) & (!\Add10~1\)))) # (!\cam_instance|current_column\(8) & ((\cam_instance|current_row\(1) & (!\Add10~1\)) # 
-- (!\cam_instance|current_row\(1) & ((\Add10~1\) # (GND)))))
-- \Add10~3\ = CARRY((\cam_instance|current_column\(8) & (!\cam_instance|current_row\(1) & !\Add10~1\)) # (!\cam_instance|current_column\(8) & ((!\Add10~1\) # (!\cam_instance|current_row\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cam_instance|current_column\(8),
	datab => \cam_instance|current_row\(1),
	datad => VCC,
	cin => \Add10~1\,
	combout => \Add10~2_combout\,
	cout => \Add10~3\);

-- Location: LCCOMB_X61_Y26_N12
\vga_sync_instance|pixel_row[1]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_sync_instance|pixel_row[1]~feeder_combout\ = \vga_sync_instance|v_count\(1)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \vga_sync_instance|v_count\(1),
	combout => \vga_sync_instance|pixel_row[1]~feeder_combout\);

-- Location: FF_X61_Y26_N13
\vga_sync_instance|pixel_row[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_camera_clock~clkctrl_outclk\,
	d => \vga_sync_instance|pixel_row[1]~feeder_combout\,
	ena => \vga_sync_instance|ALT_INV_LessThan6~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_sync_instance|pixel_row\(1));

-- Location: FF_X61_Y23_N29
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

-- Location: LCCOMB_X57_Y23_N6
\Add7~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~2_combout\ = (\vga_sync_instance|pixel_row\(1) & ((\vga_sync_instance|pixel_column\(8) & (\Add7~1\ & VCC)) # (!\vga_sync_instance|pixel_column\(8) & (!\Add7~1\)))) # (!\vga_sync_instance|pixel_row\(1) & ((\vga_sync_instance|pixel_column\(8) & 
-- (!\Add7~1\)) # (!\vga_sync_instance|pixel_column\(8) & ((\Add7~1\) # (GND)))))
-- \Add7~3\ = CARRY((\vga_sync_instance|pixel_row\(1) & (!\vga_sync_instance|pixel_column\(8) & !\Add7~1\)) # (!\vga_sync_instance|pixel_row\(1) & ((!\Add7~1\) # (!\vga_sync_instance|pixel_column\(8)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_sync_instance|pixel_row\(1),
	datab => \vga_sync_instance|pixel_column\(8),
	datad => VCC,
	cin => \Add7~1\,
	combout => \Add7~2_combout\,
	cout => \Add7~3\);

-- Location: LCCOMB_X58_Y23_N6
\SRAM_ADDR[8]~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAM_ADDR[8]~18_combout\ = (\camstatemachine_instance|WideOr0~combout\ & (((\Add7~2_combout\)))) # (!\camstatemachine_instance|WideOr0~combout\ & (\Add10~2_combout\ & ((\camstatemachine_instance|WideOr1~combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add10~2_combout\,
	datab => \camstatemachine_instance|WideOr0~combout\,
	datac => \Add7~2_combout\,
	datad => \camstatemachine_instance|WideOr1~combout\,
	combout => \SRAM_ADDR[8]~18_combout\);

-- Location: LCCOMB_X58_Y23_N12
\SRAM_ADDR[8]~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAM_ADDR[8]~19_combout\ = (\camstatemachine_instance|WideOr2~combout\ & ((pixel_counter(8)))) # (!\camstatemachine_instance|WideOr2~combout\ & (\SRAM_ADDR[8]~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_ADDR[8]~18_combout\,
	datac => \camstatemachine_instance|WideOr2~combout\,
	datad => pixel_counter(8),
	combout => \SRAM_ADDR[8]~19_combout\);

-- Location: LCCOMB_X60_Y3_N0
\Add9~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~0_combout\ = (\cam_instance|current_row\(0) & (\cam_instance|current_row\(2) $ (VCC))) # (!\cam_instance|current_row\(0) & (\cam_instance|current_row\(2) & VCC))
-- \Add9~1\ = CARRY((\cam_instance|current_row\(0) & \cam_instance|current_row\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \cam_instance|current_row\(0),
	datab => \cam_instance|current_row\(2),
	datad => VCC,
	combout => \Add9~0_combout\,
	cout => \Add9~1\);

-- Location: LCCOMB_X61_Y3_N10
\Add10~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~4_combout\ = ((\Add9~0_combout\ $ (\cam_instance|current_column\(9) $ (!\Add10~3\)))) # (GND)
-- \Add10~5\ = CARRY((\Add9~0_combout\ & ((\cam_instance|current_column\(9)) # (!\Add10~3\))) # (!\Add9~0_combout\ & (\cam_instance|current_column\(9) & !\Add10~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~0_combout\,
	datab => \cam_instance|current_column\(9),
	datad => VCC,
	cin => \Add10~3\,
	combout => \Add10~4_combout\,
	cout => \Add10~5\);

-- Location: FF_X61_Y23_N3
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

-- Location: LCCOMB_X61_Y26_N14
\vga_sync_instance|pixel_row[2]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_sync_instance|pixel_row[2]~feeder_combout\ = \vga_sync_instance|v_count\(2)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vga_sync_instance|v_count\(2),
	combout => \vga_sync_instance|pixel_row[2]~feeder_combout\);

-- Location: FF_X61_Y26_N15
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

-- Location: LCCOMB_X57_Y26_N12
\Add6~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~0_combout\ = (\vga_sync_instance|pixel_row\(0) & (\vga_sync_instance|pixel_row\(2) $ (VCC))) # (!\vga_sync_instance|pixel_row\(0) & (\vga_sync_instance|pixel_row\(2) & VCC))
-- \Add6~1\ = CARRY((\vga_sync_instance|pixel_row\(0) & \vga_sync_instance|pixel_row\(2)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \vga_sync_instance|pixel_row\(0),
	datab => \vga_sync_instance|pixel_row\(2),
	datad => VCC,
	combout => \Add6~0_combout\,
	cout => \Add6~1\);

-- Location: LCCOMB_X57_Y23_N8
\Add7~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~4_combout\ = ((\vga_sync_instance|pixel_column\(9) $ (\Add6~0_combout\ $ (!\Add7~3\)))) # (GND)
-- \Add7~5\ = CARRY((\vga_sync_instance|pixel_column\(9) & ((\Add6~0_combout\) # (!\Add7~3\))) # (!\vga_sync_instance|pixel_column\(9) & (\Add6~0_combout\ & !\Add7~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_sync_instance|pixel_column\(9),
	datab => \Add6~0_combout\,
	datad => VCC,
	cin => \Add7~3\,
	combout => \Add7~4_combout\,
	cout => \Add7~5\);

-- Location: LCCOMB_X57_Y23_N28
\SRAM_ADDR[9]~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAM_ADDR[9]~20_combout\ = (\camstatemachine_instance|WideOr0~combout\ & ((\Add7~4_combout\) # ((\Add10~4_combout\ & \SRAM_ADDR[13]~71_combout\)))) # (!\camstatemachine_instance|WideOr0~combout\ & (\Add10~4_combout\ & ((\SRAM_ADDR[13]~71_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camstatemachine_instance|WideOr0~combout\,
	datab => \Add10~4_combout\,
	datac => \Add7~4_combout\,
	datad => \SRAM_ADDR[13]~71_combout\,
	combout => \SRAM_ADDR[9]~20_combout\);

-- Location: LCCOMB_X57_Y27_N30
\SRAM_ADDR[9]~21\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAM_ADDR[9]~21_combout\ = (\camstatemachine_instance|WideOr2~combout\ & ((pixel_counter(9)))) # (!\camstatemachine_instance|WideOr2~combout\ & (\SRAM_ADDR[9]~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110010101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_ADDR[9]~20_combout\,
	datab => pixel_counter(9),
	datad => \camstatemachine_instance|WideOr2~combout\,
	combout => \SRAM_ADDR[9]~21_combout\);

-- Location: LCCOMB_X61_Y26_N24
\vga_sync_instance|pixel_row[3]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_sync_instance|pixel_row[3]~feeder_combout\ = \vga_sync_instance|v_count\(3)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vga_sync_instance|v_count\(3),
	combout => \vga_sync_instance|pixel_row[3]~feeder_combout\);

-- Location: FF_X61_Y26_N25
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

-- Location: LCCOMB_X57_Y26_N14
\Add6~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~2_combout\ = (\vga_sync_instance|pixel_row\(3) & ((\vga_sync_instance|pixel_row\(1) & (\Add6~1\ & VCC)) # (!\vga_sync_instance|pixel_row\(1) & (!\Add6~1\)))) # (!\vga_sync_instance|pixel_row\(3) & ((\vga_sync_instance|pixel_row\(1) & (!\Add6~1\)) # 
-- (!\vga_sync_instance|pixel_row\(1) & ((\Add6~1\) # (GND)))))
-- \Add6~3\ = CARRY((\vga_sync_instance|pixel_row\(3) & (!\vga_sync_instance|pixel_row\(1) & !\Add6~1\)) # (!\vga_sync_instance|pixel_row\(3) & ((!\Add6~1\) # (!\vga_sync_instance|pixel_row\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_sync_instance|pixel_row\(3),
	datab => \vga_sync_instance|pixel_row\(1),
	datad => VCC,
	cin => \Add6~1\,
	combout => \Add6~2_combout\,
	cout => \Add6~3\);

-- Location: LCCOMB_X57_Y23_N10
\Add7~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~6_combout\ = (\Add6~2_combout\ & (!\Add7~5\)) # (!\Add6~2_combout\ & ((\Add7~5\) # (GND)))
-- \Add7~7\ = CARRY((!\Add7~5\) # (!\Add6~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~2_combout\,
	datad => VCC,
	cin => \Add7~5\,
	combout => \Add7~6_combout\,
	cout => \Add7~7\);

-- Location: LCCOMB_X60_Y3_N2
\Add9~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~2_combout\ = (\cam_instance|current_row\(1) & ((\cam_instance|current_row\(3) & (\Add9~1\ & VCC)) # (!\cam_instance|current_row\(3) & (!\Add9~1\)))) # (!\cam_instance|current_row\(1) & ((\cam_instance|current_row\(3) & (!\Add9~1\)) # 
-- (!\cam_instance|current_row\(3) & ((\Add9~1\) # (GND)))))
-- \Add9~3\ = CARRY((\cam_instance|current_row\(1) & (!\cam_instance|current_row\(3) & !\Add9~1\)) # (!\cam_instance|current_row\(1) & ((!\Add9~1\) # (!\cam_instance|current_row\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cam_instance|current_row\(1),
	datab => \cam_instance|current_row\(3),
	datad => VCC,
	cin => \Add9~1\,
	combout => \Add9~2_combout\,
	cout => \Add9~3\);

-- Location: LCCOMB_X61_Y3_N12
\Add10~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~6_combout\ = (\Add9~2_combout\ & ((\cam_instance|current_column\(10) & (\Add10~5\ & VCC)) # (!\cam_instance|current_column\(10) & (!\Add10~5\)))) # (!\Add9~2_combout\ & ((\cam_instance|current_column\(10) & (!\Add10~5\)) # 
-- (!\cam_instance|current_column\(10) & ((\Add10~5\) # (GND)))))
-- \Add10~7\ = CARRY((\Add9~2_combout\ & (!\cam_instance|current_column\(10) & !\Add10~5\)) # (!\Add9~2_combout\ & ((!\Add10~5\) # (!\cam_instance|current_column\(10)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~2_combout\,
	datab => \cam_instance|current_column\(10),
	datad => VCC,
	cin => \Add10~5\,
	combout => \Add10~6_combout\,
	cout => \Add10~7\);

-- Location: LCCOMB_X57_Y23_N2
\SRAM_ADDR[10]~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAM_ADDR[10]~22_combout\ = (\Add7~6_combout\ & ((\camstatemachine_instance|WideOr0~combout\) # ((\Add10~6_combout\ & \SRAM_ADDR[13]~71_combout\)))) # (!\Add7~6_combout\ & (\Add10~6_combout\ & ((\SRAM_ADDR[13]~71_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~6_combout\,
	datab => \Add10~6_combout\,
	datac => \camstatemachine_instance|WideOr0~combout\,
	datad => \SRAM_ADDR[13]~71_combout\,
	combout => \SRAM_ADDR[10]~22_combout\);

-- Location: LCCOMB_X60_Y26_N14
\SRAM_ADDR[10]~23\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAM_ADDR[10]~23_combout\ = (\camstatemachine_instance|WideOr2~combout\ & (pixel_counter(10))) # (!\camstatemachine_instance|WideOr2~combout\ & ((\SRAM_ADDR[10]~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101110110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camstatemachine_instance|WideOr2~combout\,
	datab => pixel_counter(10),
	datad => \SRAM_ADDR[10]~22_combout\,
	combout => \SRAM_ADDR[10]~23_combout\);

-- Location: LCCOMB_X60_Y3_N4
\Add9~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~4_combout\ = ((\cam_instance|current_row\(4) $ (\cam_instance|current_row\(2) $ (!\Add9~3\)))) # (GND)
-- \Add9~5\ = CARRY((\cam_instance|current_row\(4) & ((\cam_instance|current_row\(2)) # (!\Add9~3\))) # (!\cam_instance|current_row\(4) & (\cam_instance|current_row\(2) & !\Add9~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cam_instance|current_row\(4),
	datab => \cam_instance|current_row\(2),
	datad => VCC,
	cin => \Add9~3\,
	combout => \Add9~4_combout\,
	cout => \Add9~5\);

-- Location: LCCOMB_X61_Y3_N14
\Add10~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~8_combout\ = ((\cam_instance|current_column\(11) $ (\Add9~4_combout\ $ (!\Add10~7\)))) # (GND)
-- \Add10~9\ = CARRY((\cam_instance|current_column\(11) & ((\Add9~4_combout\) # (!\Add10~7\))) # (!\cam_instance|current_column\(11) & (\Add9~4_combout\ & !\Add10~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cam_instance|current_column\(11),
	datab => \Add9~4_combout\,
	datad => VCC,
	cin => \Add10~7\,
	combout => \Add10~8_combout\,
	cout => \Add10~9\);

-- Location: LCCOMB_X61_Y26_N18
\vga_sync_instance|pixel_row[4]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_sync_instance|pixel_row[4]~feeder_combout\ = \vga_sync_instance|v_count\(4)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \vga_sync_instance|v_count\(4),
	combout => \vga_sync_instance|pixel_row[4]~feeder_combout\);

-- Location: FF_X61_Y26_N19
\vga_sync_instance|pixel_row[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_camera_clock~clkctrl_outclk\,
	d => \vga_sync_instance|pixel_row[4]~feeder_combout\,
	ena => \vga_sync_instance|ALT_INV_LessThan6~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_sync_instance|pixel_row\(4));

-- Location: LCCOMB_X57_Y26_N16
\Add6~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~4_combout\ = ((\vga_sync_instance|pixel_row\(4) $ (\vga_sync_instance|pixel_row\(2) $ (!\Add6~3\)))) # (GND)
-- \Add6~5\ = CARRY((\vga_sync_instance|pixel_row\(4) & ((\vga_sync_instance|pixel_row\(2)) # (!\Add6~3\))) # (!\vga_sync_instance|pixel_row\(4) & (\vga_sync_instance|pixel_row\(2) & !\Add6~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_sync_instance|pixel_row\(4),
	datab => \vga_sync_instance|pixel_row\(2),
	datad => VCC,
	cin => \Add6~3\,
	combout => \Add6~4_combout\,
	cout => \Add6~5\);

-- Location: LCCOMB_X57_Y23_N12
\Add7~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~8_combout\ = (\Add6~4_combout\ & (\Add7~7\ $ (GND))) # (!\Add6~4_combout\ & (!\Add7~7\ & VCC))
-- \Add7~9\ = CARRY((\Add6~4_combout\ & !\Add7~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add6~4_combout\,
	datad => VCC,
	cin => \Add7~7\,
	combout => \Add7~8_combout\,
	cout => \Add7~9\);

-- Location: LCCOMB_X58_Y23_N26
\SRAM_ADDR[11]~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAM_ADDR[11]~24_combout\ = (\Add10~8_combout\ & ((\SRAM_ADDR[13]~71_combout\) # ((\camstatemachine_instance|WideOr0~combout\ & \Add7~8_combout\)))) # (!\Add10~8_combout\ & (\camstatemachine_instance|WideOr0~combout\ & ((\Add7~8_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110110010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add10~8_combout\,
	datab => \camstatemachine_instance|WideOr0~combout\,
	datac => \SRAM_ADDR[13]~71_combout\,
	datad => \Add7~8_combout\,
	combout => \SRAM_ADDR[11]~24_combout\);

-- Location: LCCOMB_X58_Y23_N30
\SRAM_ADDR[11]~25\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAM_ADDR[11]~25_combout\ = (\camstatemachine_instance|WideOr2~combout\ & ((pixel_counter(11)))) # (!\camstatemachine_instance|WideOr2~combout\ & (\SRAM_ADDR[11]~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \camstatemachine_instance|WideOr2~combout\,
	datac => \SRAM_ADDR[11]~24_combout\,
	datad => pixel_counter(11),
	combout => \SRAM_ADDR[11]~25_combout\);

-- Location: LCCOMB_X60_Y3_N6
\Add9~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~6_combout\ = (\cam_instance|current_row\(5) & ((\cam_instance|current_row\(3) & (\Add9~5\ & VCC)) # (!\cam_instance|current_row\(3) & (!\Add9~5\)))) # (!\cam_instance|current_row\(5) & ((\cam_instance|current_row\(3) & (!\Add9~5\)) # 
-- (!\cam_instance|current_row\(3) & ((\Add9~5\) # (GND)))))
-- \Add9~7\ = CARRY((\cam_instance|current_row\(5) & (!\cam_instance|current_row\(3) & !\Add9~5\)) # (!\cam_instance|current_row\(5) & ((!\Add9~5\) # (!\cam_instance|current_row\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cam_instance|current_row\(5),
	datab => \cam_instance|current_row\(3),
	datad => VCC,
	cin => \Add9~5\,
	combout => \Add9~6_combout\,
	cout => \Add9~7\);

-- Location: LCCOMB_X61_Y3_N16
\Add10~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~10_combout\ = (\cam_instance|current_column\(12) & ((\Add9~6_combout\ & (\Add10~9\ & VCC)) # (!\Add9~6_combout\ & (!\Add10~9\)))) # (!\cam_instance|current_column\(12) & ((\Add9~6_combout\ & (!\Add10~9\)) # (!\Add9~6_combout\ & ((\Add10~9\) # 
-- (GND)))))
-- \Add10~11\ = CARRY((\cam_instance|current_column\(12) & (!\Add9~6_combout\ & !\Add10~9\)) # (!\cam_instance|current_column\(12) & ((!\Add10~9\) # (!\Add9~6_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cam_instance|current_column\(12),
	datab => \Add9~6_combout\,
	datad => VCC,
	cin => \Add10~9\,
	combout => \Add10~10_combout\,
	cout => \Add10~11\);

-- Location: LCCOMB_X57_Y19_N8
\Add11~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add11~0_combout\ = \Add10~10_combout\ $ (VCC)
-- \Add11~1\ = CARRY(\Add10~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add10~10_combout\,
	datad => VCC,
	combout => \Add11~0_combout\,
	cout => \Add11~1\);

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

-- Location: LCCOMB_X56_Y18_N18
\SRAM_ADDR~27\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAM_ADDR~27_combout\ = (\camstatemachine_instance|WideOr1~combout\ & ((\SW[0]~input_o\ & (\Add11~0_combout\)) # (!\SW[0]~input_o\ & ((\Add10~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010110000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add11~0_combout\,
	datab => \Add10~10_combout\,
	datac => \SW[0]~input_o\,
	datad => \camstatemachine_instance|WideOr1~combout\,
	combout => \SRAM_ADDR~27_combout\);

-- Location: LCCOMB_X56_Y18_N12
\SRAM_ADDR[12]~28\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAM_ADDR[12]~28_combout\ = (\camstatemachine_instance|WideOr2~combout\ & ((pixel_counter(12)) # ((\camstatemachine_instance|WideOr0~combout\)))) # (!\camstatemachine_instance|WideOr2~combout\ & (((!\camstatemachine_instance|WideOr0~combout\ & 
-- \SRAM_ADDR~27_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pixel_counter(12),
	datab => \camstatemachine_instance|WideOr2~combout\,
	datac => \camstatemachine_instance|WideOr0~combout\,
	datad => \SRAM_ADDR~27_combout\,
	combout => \SRAM_ADDR[12]~28_combout\);

-- Location: LCCOMB_X57_Y18_N16
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

-- Location: LCCOMB_X56_Y18_N14
\SRAM_ADDR~29\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAM_ADDR~29_combout\ = (\camstatemachine_instance|image_select~combout\ & ((\Add0~0_combout\))) # (!\camstatemachine_instance|image_select~combout\ & (pixel_counter(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \camstatemachine_instance|image_select~combout\,
	datac => pixel_counter(12),
	datad => \Add0~0_combout\,
	combout => \SRAM_ADDR~29_combout\);

-- Location: LCCOMB_X61_Y26_N20
\vga_sync_instance|pixel_row[5]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_sync_instance|pixel_row[5]~feeder_combout\ = \vga_sync_instance|v_count\(5)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vga_sync_instance|v_count\(5),
	combout => \vga_sync_instance|pixel_row[5]~feeder_combout\);

-- Location: FF_X61_Y26_N21
\vga_sync_instance|pixel_row[5]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_camera_clock~clkctrl_outclk\,
	d => \vga_sync_instance|pixel_row[5]~feeder_combout\,
	ena => \vga_sync_instance|ALT_INV_LessThan6~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_sync_instance|pixel_row\(5));

-- Location: LCCOMB_X57_Y26_N18
\Add6~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~6_combout\ = (\vga_sync_instance|pixel_row\(3) & ((\vga_sync_instance|pixel_row\(5) & (\Add6~5\ & VCC)) # (!\vga_sync_instance|pixel_row\(5) & (!\Add6~5\)))) # (!\vga_sync_instance|pixel_row\(3) & ((\vga_sync_instance|pixel_row\(5) & (!\Add6~5\)) # 
-- (!\vga_sync_instance|pixel_row\(5) & ((\Add6~5\) # (GND)))))
-- \Add6~7\ = CARRY((\vga_sync_instance|pixel_row\(3) & (!\vga_sync_instance|pixel_row\(5) & !\Add6~5\)) # (!\vga_sync_instance|pixel_row\(3) & ((!\Add6~5\) # (!\vga_sync_instance|pixel_row\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_sync_instance|pixel_row\(3),
	datab => \vga_sync_instance|pixel_row\(5),
	datad => VCC,
	cin => \Add6~5\,
	combout => \Add6~6_combout\,
	cout => \Add6~7\);

-- Location: LCCOMB_X57_Y23_N14
\Add7~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~10_combout\ = (\Add6~6_combout\ & (!\Add7~9\)) # (!\Add6~6_combout\ & ((\Add7~9\) # (GND)))
-- \Add7~11\ = CARRY((!\Add7~9\) # (!\Add6~6_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~6_combout\,
	datad => VCC,
	cin => \Add7~9\,
	combout => \Add7~10_combout\,
	cout => \Add7~11\);

-- Location: LCCOMB_X57_Y20_N14
\Add5~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~0_combout\ = \Add7~10_combout\ $ (VCC)
-- \Add5~1\ = CARRY(\Add7~10_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~10_combout\,
	datad => VCC,
	combout => \Add5~0_combout\,
	cout => \Add5~1\);

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

-- Location: LCCOMB_X56_Y18_N20
\SRAM_ADDR~26\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAM_ADDR~26_combout\ = (\SW[1]~input_o\ & (((\Add7~10_combout\)))) # (!\SW[1]~input_o\ & ((\SW[0]~input_o\ & (\Add5~0_combout\)) # (!\SW[0]~input_o\ & ((\Add7~10_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111100100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~0_combout\,
	datab => \SW[1]~input_o\,
	datac => \SW[0]~input_o\,
	datad => \Add7~10_combout\,
	combout => \SRAM_ADDR~26_combout\);

-- Location: LCCOMB_X56_Y18_N28
\SRAM_ADDR[12]~30\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAM_ADDR[12]~30_combout\ = (\SRAM_ADDR[12]~28_combout\ & ((\SRAM_ADDR~29_combout\) # ((!\camstatemachine_instance|WideOr0~combout\)))) # (!\SRAM_ADDR[12]~28_combout\ & (((\camstatemachine_instance|WideOr0~combout\ & \SRAM_ADDR~26_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_ADDR[12]~28_combout\,
	datab => \SRAM_ADDR~29_combout\,
	datac => \camstatemachine_instance|WideOr0~combout\,
	datad => \SRAM_ADDR~26_combout\,
	combout => \SRAM_ADDR[12]~30_combout\);

-- Location: LCCOMB_X56_Y18_N6
\SRAM_ADDR[13]~31\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAM_ADDR[13]~31_combout\ = (\camstatemachine_instance|WideOr2~combout\ & ((!\camstatemachine_instance|image_select~combout\) # (!\camstatemachine_instance|WideOr0~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000110011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \camstatemachine_instance|WideOr2~combout\,
	datac => \camstatemachine_instance|WideOr0~combout\,
	datad => \camstatemachine_instance|image_select~combout\,
	combout => \SRAM_ADDR[13]~31_combout\);

-- Location: LCCOMB_X61_Y26_N22
\vga_sync_instance|pixel_row[6]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_sync_instance|pixel_row[6]~feeder_combout\ = \vga_sync_instance|v_count\(6)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \vga_sync_instance|v_count\(6),
	combout => \vga_sync_instance|pixel_row[6]~feeder_combout\);

-- Location: FF_X61_Y26_N23
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

-- Location: LCCOMB_X57_Y26_N20
\Add6~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~8_combout\ = ((\vga_sync_instance|pixel_row\(4) $ (\vga_sync_instance|pixel_row\(6) $ (!\Add6~7\)))) # (GND)
-- \Add6~9\ = CARRY((\vga_sync_instance|pixel_row\(4) & ((\vga_sync_instance|pixel_row\(6)) # (!\Add6~7\))) # (!\vga_sync_instance|pixel_row\(4) & (\vga_sync_instance|pixel_row\(6) & !\Add6~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_sync_instance|pixel_row\(4),
	datab => \vga_sync_instance|pixel_row\(6),
	datad => VCC,
	cin => \Add6~7\,
	combout => \Add6~8_combout\,
	cout => \Add6~9\);

-- Location: LCCOMB_X57_Y23_N16
\Add7~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~12_combout\ = (\Add6~8_combout\ & (\Add7~11\ $ (GND))) # (!\Add6~8_combout\ & (!\Add7~11\ & VCC))
-- \Add7~13\ = CARRY((\Add6~8_combout\ & !\Add7~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add6~8_combout\,
	datad => VCC,
	cin => \Add7~11\,
	combout => \Add7~12_combout\,
	cout => \Add7~13\);

-- Location: LCCOMB_X56_Y19_N10
\Add8~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~0_combout\ = \Add7~12_combout\ $ (VCC)
-- \Add8~1\ = CARRY(\Add7~12_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add7~12_combout\,
	datad => VCC,
	combout => \Add8~0_combout\,
	cout => \Add8~1\);

-- Location: LCCOMB_X56_Y18_N10
\SRAM_ADDR[13]~34\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAM_ADDR[13]~34_combout\ = (\camstatemachine_instance|WideOr0~combout\ & ((\SW[1]~input_o\) # (!\SW[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1000101010001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camstatemachine_instance|WideOr0~combout\,
	datab => \SW[1]~input_o\,
	datac => \SW[0]~input_o\,
	combout => \SRAM_ADDR[13]~34_combout\);

-- Location: LCCOMB_X60_Y3_N8
\Add9~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~8_combout\ = ((\cam_instance|current_row\(4) $ (\cam_instance|current_row\(6) $ (!\Add9~7\)))) # (GND)
-- \Add9~9\ = CARRY((\cam_instance|current_row\(4) & ((\cam_instance|current_row\(6)) # (!\Add9~7\))) # (!\cam_instance|current_row\(4) & (\cam_instance|current_row\(6) & !\Add9~7\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cam_instance|current_row\(4),
	datab => \cam_instance|current_row\(6),
	datad => VCC,
	cin => \Add9~7\,
	combout => \Add9~8_combout\,
	cout => \Add9~9\);

-- Location: LCCOMB_X61_Y3_N18
\Add10~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~12_combout\ = ((\Add9~8_combout\ $ (\cam_instance|current_column\(13) $ (!\Add10~11\)))) # (GND)
-- \Add10~13\ = CARRY((\Add9~8_combout\ & ((\cam_instance|current_column\(13)) # (!\Add10~11\))) # (!\Add9~8_combout\ & (\cam_instance|current_column\(13) & !\Add10~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~8_combout\,
	datab => \cam_instance|current_column\(13),
	datad => VCC,
	cin => \Add10~11\,
	combout => \Add10~12_combout\,
	cout => \Add10~13\);

-- Location: LCCOMB_X57_Y19_N10
\Add11~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add11~2_combout\ = (\Add10~12_combout\ & (\Add11~1\ & VCC)) # (!\Add10~12_combout\ & (!\Add11~1\))
-- \Add11~3\ = CARRY((!\Add10~12_combout\ & !\Add11~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add10~12_combout\,
	datad => VCC,
	cin => \Add11~1\,
	combout => \Add11~2_combout\,
	cout => \Add11~3\);

-- Location: LCCOMB_X56_Y18_N0
\SRAM_ADDR[13]~33\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAM_ADDR[13]~33_combout\ = (\camstatemachine_instance|WideOr0~combout\ & ((\SW[1]~input_o\))) # (!\camstatemachine_instance|WideOr0~combout\ & (\camstatemachine_instance|WideOr1~combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \camstatemachine_instance|WideOr1~combout\,
	datac => \camstatemachine_instance|WideOr0~combout\,
	datad => \SW[1]~input_o\,
	combout => \SRAM_ADDR[13]~33_combout\);

-- Location: LCCOMB_X56_Y19_N4
\SRAM_ADDR[13]~35\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAM_ADDR[13]~35_combout\ = (\SRAM_ADDR[13]~34_combout\ & ((\Add8~0_combout\) # ((!\SRAM_ADDR[13]~33_combout\)))) # (!\SRAM_ADDR[13]~34_combout\ & (((\Add11~2_combout\ & \SRAM_ADDR[13]~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~0_combout\,
	datab => \SRAM_ADDR[13]~34_combout\,
	datac => \Add11~2_combout\,
	datad => \SRAM_ADDR[13]~33_combout\,
	combout => \SRAM_ADDR[13]~35_combout\);

-- Location: LCCOMB_X57_Y20_N16
\Add5~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~2_combout\ = (\Add7~12_combout\ & (\Add5~1\ & VCC)) # (!\Add7~12_combout\ & (!\Add5~1\))
-- \Add5~3\ = CARRY((!\Add7~12_combout\ & !\Add5~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add7~12_combout\,
	datad => VCC,
	cin => \Add5~1\,
	combout => \Add5~2_combout\,
	cout => \Add5~3\);

-- Location: LCCOMB_X58_Y20_N16
\SRAM_ADDR[13]~32\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAM_ADDR[13]~32_combout\ = (\SW[1]~input_o\) # (!\camstatemachine_instance|WideOr0~combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100001111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \camstatemachine_instance|WideOr0~combout\,
	datad => \SW[1]~input_o\,
	combout => \SRAM_ADDR[13]~32_combout\);

-- Location: LCCOMB_X57_Y20_N12
\SRAM_ADDR[13]~36\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAM_ADDR[13]~36_combout\ = (\SRAM_ADDR[13]~35_combout\ & ((\Add7~12_combout\) # ((\SRAM_ADDR[13]~32_combout\)))) # (!\SRAM_ADDR[13]~35_combout\ & (((\Add5~2_combout\ & !\SRAM_ADDR[13]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_ADDR[13]~35_combout\,
	datab => \Add7~12_combout\,
	datac => \Add5~2_combout\,
	datad => \SRAM_ADDR[13]~32_combout\,
	combout => \SRAM_ADDR[13]~36_combout\);

-- Location: LCCOMB_X58_Y24_N16
\bpixel[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \bpixel[0]~0_combout\ = (\camstatemachine_instance|WideOr0~combout\ & ((\camstatemachine_instance|current_state.read_foreground_pixel~q\) # ((\camstatemachine_instance|current_state.read_background_pixel~2_combout\) # 
-- (\camstatemachine_instance|current_state.write_processed_pixel~q\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camstatemachine_instance|current_state.read_foreground_pixel~q\,
	datab => \camstatemachine_instance|current_state.read_background_pixel~2_combout\,
	datac => \camstatemachine_instance|WideOr0~combout\,
	datad => \camstatemachine_instance|current_state.write_processed_pixel~q\,
	combout => \bpixel[0]~0_combout\);

-- Location: LCCOMB_X57_Y18_N18
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

-- Location: LCCOMB_X58_Y18_N28
\SRAM_ADDR[13]~37\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAM_ADDR[13]~37_combout\ = (\SRAM_ADDR[13]~31_combout\ & (((\bpixel[0]~0_combout\)))) # (!\SRAM_ADDR[13]~31_combout\ & ((\bpixel[0]~0_combout\ & ((\Add0~2_combout\))) # (!\bpixel[0]~0_combout\ & (\SRAM_ADDR[13]~36_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_ADDR[13]~31_combout\,
	datab => \SRAM_ADDR[13]~36_combout\,
	datac => \bpixel[0]~0_combout\,
	datad => \Add0~2_combout\,
	combout => \SRAM_ADDR[13]~37_combout\);

-- Location: LCCOMB_X58_Y18_N4
\Add4~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~0_combout\ = pixel_counter(13) $ (VCC)
-- \Add4~1\ = CARRY(pixel_counter(13))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101010110101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pixel_counter(13),
	datad => VCC,
	combout => \Add4~0_combout\,
	cout => \Add4~1\);

-- Location: LCCOMB_X58_Y18_N22
\SRAM_ADDR[13]~38\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAM_ADDR[13]~38_combout\ = (\SRAM_ADDR[13]~37_combout\ & ((pixel_counter(13)) # ((!\SRAM_ADDR[13]~31_combout\)))) # (!\SRAM_ADDR[13]~37_combout\ & (((\Add4~0_combout\ & \SRAM_ADDR[13]~31_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pixel_counter(13),
	datab => \SRAM_ADDR[13]~37_combout\,
	datac => \Add4~0_combout\,
	datad => \SRAM_ADDR[13]~31_combout\,
	combout => \SRAM_ADDR[13]~38_combout\);

-- Location: LCCOMB_X56_Y18_N4
\SRAM_ADDR[13]~39\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAM_ADDR[13]~39_combout\ = (\camstatemachine_instance|WideOr0~combout\) # ((\camstatemachine_instance|WideOr2~combout\) # ((\SW[0]~input_o\) # (!\camstatemachine_instance|WideOr1~combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camstatemachine_instance|WideOr0~combout\,
	datab => \camstatemachine_instance|WideOr2~combout\,
	datac => \SW[0]~input_o\,
	datad => \camstatemachine_instance|WideOr1~combout\,
	combout => \SRAM_ADDR[13]~39_combout\);

-- Location: LCCOMB_X57_Y19_N24
\SRAM_ADDR[13]~40\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAM_ADDR[13]~40_combout\ = (\SRAM_ADDR[13]~39_combout\ & (\SRAM_ADDR[13]~38_combout\)) # (!\SRAM_ADDR[13]~39_combout\ & ((\Add10~12_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \SRAM_ADDR[13]~38_combout\,
	datac => \Add10~12_combout\,
	datad => \SRAM_ADDR[13]~39_combout\,
	combout => \SRAM_ADDR[13]~40_combout\);

-- Location: LCCOMB_X58_Y18_N6
\Add4~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~2_combout\ = (pixel_counter(14) & (\Add4~1\ & VCC)) # (!pixel_counter(14) & (!\Add4~1\))
-- \Add4~3\ = CARRY((!pixel_counter(14) & !\Add4~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => pixel_counter(14),
	datad => VCC,
	cin => \Add4~1\,
	combout => \Add4~2_combout\,
	cout => \Add4~3\);

-- Location: LCCOMB_X61_Y26_N28
\vga_sync_instance|pixel_row[7]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_sync_instance|pixel_row[7]~feeder_combout\ = \vga_sync_instance|v_count\(7)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \vga_sync_instance|v_count\(7),
	combout => \vga_sync_instance|pixel_row[7]~feeder_combout\);

-- Location: FF_X61_Y26_N29
\vga_sync_instance|pixel_row[7]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_camera_clock~clkctrl_outclk\,
	d => \vga_sync_instance|pixel_row[7]~feeder_combout\,
	ena => \vga_sync_instance|ALT_INV_LessThan6~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_sync_instance|pixel_row\(7));

-- Location: LCCOMB_X57_Y26_N22
\Add6~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~10_combout\ = (\vga_sync_instance|pixel_row\(7) & ((\vga_sync_instance|pixel_row\(5) & (\Add6~9\ & VCC)) # (!\vga_sync_instance|pixel_row\(5) & (!\Add6~9\)))) # (!\vga_sync_instance|pixel_row\(7) & ((\vga_sync_instance|pixel_row\(5) & (!\Add6~9\)) # 
-- (!\vga_sync_instance|pixel_row\(5) & ((\Add6~9\) # (GND)))))
-- \Add6~11\ = CARRY((\vga_sync_instance|pixel_row\(7) & (!\vga_sync_instance|pixel_row\(5) & !\Add6~9\)) # (!\vga_sync_instance|pixel_row\(7) & ((!\Add6~9\) # (!\vga_sync_instance|pixel_row\(5)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_sync_instance|pixel_row\(7),
	datab => \vga_sync_instance|pixel_row\(5),
	datad => VCC,
	cin => \Add6~9\,
	combout => \Add6~10_combout\,
	cout => \Add6~11\);

-- Location: LCCOMB_X57_Y23_N18
\Add7~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~14_combout\ = (\Add6~10_combout\ & (!\Add7~13\)) # (!\Add6~10_combout\ & ((\Add7~13\) # (GND)))
-- \Add7~15\ = CARRY((!\Add7~13\) # (!\Add6~10_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add6~10_combout\,
	datad => VCC,
	cin => \Add7~13\,
	combout => \Add7~14_combout\,
	cout => \Add7~15\);

-- Location: LCCOMB_X57_Y20_N18
\Add5~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~4_combout\ = (\Add7~14_combout\ & (\Add5~3\ $ (GND))) # (!\Add7~14_combout\ & (!\Add5~3\ & VCC))
-- \Add5~5\ = CARRY((\Add7~14_combout\ & !\Add5~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~14_combout\,
	datad => VCC,
	cin => \Add5~3\,
	combout => \Add5~4_combout\,
	cout => \Add5~5\);

-- Location: LCCOMB_X56_Y19_N12
\Add8~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~2_combout\ = (\Add7~14_combout\ & (\Add8~1\ & VCC)) # (!\Add7~14_combout\ & (!\Add8~1\))
-- \Add8~3\ = CARRY((!\Add7~14_combout\ & !\Add8~1\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add7~14_combout\,
	datad => VCC,
	cin => \Add8~1\,
	combout => \Add8~2_combout\,
	cout => \Add8~3\);

-- Location: LCCOMB_X60_Y3_N10
\Add9~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~10_combout\ = (\cam_instance|current_row\(5) & ((\cam_instance|current_row\(7) & (\Add9~9\ & VCC)) # (!\cam_instance|current_row\(7) & (!\Add9~9\)))) # (!\cam_instance|current_row\(5) & ((\cam_instance|current_row\(7) & (!\Add9~9\)) # 
-- (!\cam_instance|current_row\(7) & ((\Add9~9\) # (GND)))))
-- \Add9~11\ = CARRY((\cam_instance|current_row\(5) & (!\cam_instance|current_row\(7) & !\Add9~9\)) # (!\cam_instance|current_row\(5) & ((!\Add9~9\) # (!\cam_instance|current_row\(7)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cam_instance|current_row\(5),
	datab => \cam_instance|current_row\(7),
	datad => VCC,
	cin => \Add9~9\,
	combout => \Add9~10_combout\,
	cout => \Add9~11\);

-- Location: LCCOMB_X61_Y3_N20
\Add10~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~14_combout\ = (\Add9~10_combout\ & ((\cam_instance|current_column\(14) & (\Add10~13\ & VCC)) # (!\cam_instance|current_column\(14) & (!\Add10~13\)))) # (!\Add9~10_combout\ & ((\cam_instance|current_column\(14) & (!\Add10~13\)) # 
-- (!\cam_instance|current_column\(14) & ((\Add10~13\) # (GND)))))
-- \Add10~15\ = CARRY((\Add9~10_combout\ & (!\cam_instance|current_column\(14) & !\Add10~13\)) # (!\Add9~10_combout\ & ((!\Add10~13\) # (!\cam_instance|current_column\(14)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~10_combout\,
	datab => \cam_instance|current_column\(14),
	datad => VCC,
	cin => \Add10~13\,
	combout => \Add10~14_combout\,
	cout => \Add10~15\);

-- Location: LCCOMB_X57_Y19_N12
\Add11~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add11~4_combout\ = (\Add10~14_combout\ & (\Add11~3\ $ (GND))) # (!\Add10~14_combout\ & (!\Add11~3\ & VCC))
-- \Add11~5\ = CARRY((\Add10~14_combout\ & !\Add11~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add10~14_combout\,
	datad => VCC,
	cin => \Add11~3\,
	combout => \Add11~4_combout\,
	cout => \Add11~5\);

-- Location: LCCOMB_X56_Y19_N2
\SRAM_ADDR[14]~41\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAM_ADDR[14]~41_combout\ = (\SRAM_ADDR[13]~34_combout\ & ((\Add8~2_combout\) # ((!\SRAM_ADDR[13]~33_combout\)))) # (!\SRAM_ADDR[13]~34_combout\ & (((\Add11~4_combout\ & \SRAM_ADDR[13]~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011100011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add8~2_combout\,
	datab => \SRAM_ADDR[13]~34_combout\,
	datac => \Add11~4_combout\,
	datad => \SRAM_ADDR[13]~33_combout\,
	combout => \SRAM_ADDR[14]~41_combout\);

-- Location: LCCOMB_X57_Y20_N10
\SRAM_ADDR[14]~42\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAM_ADDR[14]~42_combout\ = (\SRAM_ADDR[14]~41_combout\ & ((\Add7~14_combout\) # ((\SRAM_ADDR[13]~32_combout\)))) # (!\SRAM_ADDR[14]~41_combout\ & (((\Add5~4_combout\ & !\SRAM_ADDR[13]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~14_combout\,
	datab => \Add5~4_combout\,
	datac => \SRAM_ADDR[14]~41_combout\,
	datad => \SRAM_ADDR[13]~32_combout\,
	combout => \SRAM_ADDR[14]~42_combout\);

-- Location: LCCOMB_X57_Y18_N8
\SRAM_ADDR[14]~43\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAM_ADDR[14]~43_combout\ = (\bpixel[0]~0_combout\ & (((\SRAM_ADDR[13]~31_combout\)))) # (!\bpixel[0]~0_combout\ & ((\SRAM_ADDR[13]~31_combout\ & (\Add4~2_combout\)) # (!\SRAM_ADDR[13]~31_combout\ & ((\SRAM_ADDR[14]~42_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add4~2_combout\,
	datab => \bpixel[0]~0_combout\,
	datac => \SRAM_ADDR[13]~31_combout\,
	datad => \SRAM_ADDR[14]~42_combout\,
	combout => \SRAM_ADDR[14]~43_combout\);

-- Location: LCCOMB_X57_Y18_N20
\Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~4_combout\ = (pixel_counter(14) & (\Add0~3\ $ (GND))) # (!pixel_counter(14) & (!\Add0~3\ & VCC))
-- \Add0~5\ = CARRY((pixel_counter(14) & !\Add0~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => pixel_counter(14),
	datad => VCC,
	cin => \Add0~3\,
	combout => \Add0~4_combout\,
	cout => \Add0~5\);

-- Location: LCCOMB_X57_Y18_N10
\SRAM_ADDR[14]~44\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAM_ADDR[14]~44_combout\ = (\bpixel[0]~0_combout\ & ((\SRAM_ADDR[14]~43_combout\ & (pixel_counter(14))) # (!\SRAM_ADDR[14]~43_combout\ & ((\Add0~4_combout\))))) # (!\bpixel[0]~0_combout\ & (((\SRAM_ADDR[14]~43_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pixel_counter(14),
	datab => \bpixel[0]~0_combout\,
	datac => \SRAM_ADDR[14]~43_combout\,
	datad => \Add0~4_combout\,
	combout => \SRAM_ADDR[14]~44_combout\);

-- Location: LCCOMB_X57_Y19_N6
\SRAM_ADDR[14]~45\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAM_ADDR[14]~45_combout\ = (\SRAM_ADDR[13]~39_combout\ & (\SRAM_ADDR[14]~44_combout\)) # (!\SRAM_ADDR[13]~39_combout\ & ((\Add10~14_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_ADDR[14]~44_combout\,
	datab => \Add10~14_combout\,
	datad => \SRAM_ADDR[13]~39_combout\,
	combout => \SRAM_ADDR[14]~45_combout\);

-- Location: LCCOMB_X60_Y3_N12
\Add9~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~12_combout\ = ((\cam_instance|current_row\(8) $ (\cam_instance|current_row\(6) $ (!\Add9~11\)))) # (GND)
-- \Add9~13\ = CARRY((\cam_instance|current_row\(8) & ((\cam_instance|current_row\(6)) # (!\Add9~11\))) # (!\cam_instance|current_row\(8) & (\cam_instance|current_row\(6) & !\Add9~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cam_instance|current_row\(8),
	datab => \cam_instance|current_row\(6),
	datad => VCC,
	cin => \Add9~11\,
	combout => \Add9~12_combout\,
	cout => \Add9~13\);

-- Location: LCCOMB_X61_Y3_N22
\Add10~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~16_combout\ = ((\Add9~12_combout\ $ (\cam_instance|current_column\(15) $ (!\Add10~15\)))) # (GND)
-- \Add10~17\ = CARRY((\Add9~12_combout\ & ((\cam_instance|current_column\(15)) # (!\Add10~15\))) # (!\Add9~12_combout\ & (\cam_instance|current_column\(15) & !\Add10~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~12_combout\,
	datab => \cam_instance|current_column\(15),
	datad => VCC,
	cin => \Add10~15\,
	combout => \Add10~16_combout\,
	cout => \Add10~17\);

-- Location: LCCOMB_X58_Y18_N8
\Add4~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~4_combout\ = (pixel_counter(15) & (\Add4~3\ $ (GND))) # (!pixel_counter(15) & (!\Add4~3\ & VCC))
-- \Add4~5\ = CARRY((pixel_counter(15) & !\Add4~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => pixel_counter(15),
	datad => VCC,
	cin => \Add4~3\,
	combout => \Add4~4_combout\,
	cout => \Add4~5\);

-- Location: LCCOMB_X57_Y18_N22
\Add0~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~6_combout\ = (pixel_counter(15) & (\Add0~5\ & VCC)) # (!pixel_counter(15) & (!\Add0~5\))
-- \Add0~7\ = CARRY((!pixel_counter(15) & !\Add0~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => pixel_counter(15),
	datad => VCC,
	cin => \Add0~5\,
	combout => \Add0~6_combout\,
	cout => \Add0~7\);

-- Location: LCCOMB_X61_Y26_N26
\vga_sync_instance|pixel_row[8]~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \vga_sync_instance|pixel_row[8]~feeder_combout\ = \vga_sync_instance|v_count\(8)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \vga_sync_instance|v_count\(8),
	combout => \vga_sync_instance|pixel_row[8]~feeder_combout\);

-- Location: FF_X61_Y26_N27
\vga_sync_instance|pixel_row[8]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \ALT_INV_camera_clock~clkctrl_outclk\,
	d => \vga_sync_instance|pixel_row[8]~feeder_combout\,
	ena => \vga_sync_instance|ALT_INV_LessThan6~2_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \vga_sync_instance|pixel_row\(8));

-- Location: LCCOMB_X57_Y26_N24
\Add6~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~12_combout\ = ((\vga_sync_instance|pixel_row\(8) $ (\vga_sync_instance|pixel_row\(6) $ (!\Add6~11\)))) # (GND)
-- \Add6~13\ = CARRY((\vga_sync_instance|pixel_row\(8) & ((\vga_sync_instance|pixel_row\(6)) # (!\Add6~11\))) # (!\vga_sync_instance|pixel_row\(8) & (\vga_sync_instance|pixel_row\(6) & !\Add6~11\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_sync_instance|pixel_row\(8),
	datab => \vga_sync_instance|pixel_row\(6),
	datad => VCC,
	cin => \Add6~11\,
	combout => \Add6~12_combout\,
	cout => \Add6~13\);

-- Location: LCCOMB_X57_Y23_N20
\Add7~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~16_combout\ = (\Add6~12_combout\ & (\Add7~15\ $ (GND))) # (!\Add6~12_combout\ & (!\Add7~15\ & VCC))
-- \Add7~17\ = CARRY((\Add6~12_combout\ & !\Add7~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add6~12_combout\,
	datad => VCC,
	cin => \Add7~15\,
	combout => \Add7~16_combout\,
	cout => \Add7~17\);

-- Location: LCCOMB_X57_Y20_N20
\Add5~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~6_combout\ = (\Add7~16_combout\ & (\Add5~5\ & VCC)) # (!\Add7~16_combout\ & (!\Add5~5\))
-- \Add5~7\ = CARRY((!\Add7~16_combout\ & !\Add5~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~16_combout\,
	datad => VCC,
	cin => \Add5~5\,
	combout => \Add5~6_combout\,
	cout => \Add5~7\);

-- Location: LCCOMB_X57_Y19_N14
\Add11~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add11~6_combout\ = (\Add10~16_combout\ & (\Add11~5\ & VCC)) # (!\Add10~16_combout\ & (!\Add11~5\))
-- \Add11~7\ = CARRY((!\Add10~16_combout\ & !\Add11~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add10~16_combout\,
	datad => VCC,
	cin => \Add11~5\,
	combout => \Add11~6_combout\,
	cout => \Add11~7\);

-- Location: LCCOMB_X56_Y19_N14
\Add8~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~4_combout\ = (\Add7~16_combout\ & (\Add8~3\ $ (GND))) # (!\Add7~16_combout\ & (!\Add8~3\ & VCC))
-- \Add8~5\ = CARRY((\Add7~16_combout\ & !\Add8~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~16_combout\,
	datad => VCC,
	cin => \Add8~3\,
	combout => \Add8~4_combout\,
	cout => \Add8~5\);

-- Location: LCCOMB_X56_Y19_N8
\SRAM_ADDR[15]~46\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAM_ADDR[15]~46_combout\ = (\SRAM_ADDR[13]~34_combout\ & (((\Add8~4_combout\) # (!\SRAM_ADDR[13]~33_combout\)))) # (!\SRAM_ADDR[13]~34_combout\ & (\Add11~6_combout\ & ((\SRAM_ADDR[13]~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add11~6_combout\,
	datab => \Add8~4_combout\,
	datac => \SRAM_ADDR[13]~34_combout\,
	datad => \SRAM_ADDR[13]~33_combout\,
	combout => \SRAM_ADDR[15]~46_combout\);

-- Location: LCCOMB_X57_Y20_N4
\SRAM_ADDR[15]~47\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAM_ADDR[15]~47_combout\ = (\SRAM_ADDR[15]~46_combout\ & ((\Add7~16_combout\) # ((\SRAM_ADDR[13]~32_combout\)))) # (!\SRAM_ADDR[15]~46_combout\ & (((\Add5~6_combout\ & !\SRAM_ADDR[13]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~16_combout\,
	datab => \Add5~6_combout\,
	datac => \SRAM_ADDR[15]~46_combout\,
	datad => \SRAM_ADDR[13]~32_combout\,
	combout => \SRAM_ADDR[15]~47_combout\);

-- Location: LCCOMB_X57_Y18_N12
\SRAM_ADDR[15]~48\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAM_ADDR[15]~48_combout\ = (\bpixel[0]~0_combout\ & ((\Add0~6_combout\) # ((\SRAM_ADDR[13]~31_combout\)))) # (!\bpixel[0]~0_combout\ & (((!\SRAM_ADDR[13]~31_combout\ & \SRAM_ADDR[15]~47_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101111001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~6_combout\,
	datab => \bpixel[0]~0_combout\,
	datac => \SRAM_ADDR[13]~31_combout\,
	datad => \SRAM_ADDR[15]~47_combout\,
	combout => \SRAM_ADDR[15]~48_combout\);

-- Location: LCCOMB_X58_Y18_N26
\SRAM_ADDR[15]~49\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAM_ADDR[15]~49_combout\ = (\SRAM_ADDR[13]~31_combout\ & ((\SRAM_ADDR[15]~48_combout\ & ((pixel_counter(15)))) # (!\SRAM_ADDR[15]~48_combout\ & (\Add4~4_combout\)))) # (!\SRAM_ADDR[13]~31_combout\ & (((\SRAM_ADDR[15]~48_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_ADDR[13]~31_combout\,
	datab => \Add4~4_combout\,
	datac => pixel_counter(15),
	datad => \SRAM_ADDR[15]~48_combout\,
	combout => \SRAM_ADDR[15]~49_combout\);

-- Location: LCCOMB_X57_Y19_N4
\SRAM_ADDR[15]~50\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAM_ADDR[15]~50_combout\ = (\SRAM_ADDR[13]~39_combout\ & ((\SRAM_ADDR[15]~49_combout\))) # (!\SRAM_ADDR[13]~39_combout\ & (\Add10~16_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Add10~16_combout\,
	datac => \SRAM_ADDR[15]~49_combout\,
	datad => \SRAM_ADDR[13]~39_combout\,
	combout => \SRAM_ADDR[15]~50_combout\);

-- Location: LCCOMB_X61_Y1_N12
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

-- Location: FF_X61_Y1_N13
\cam_instance|current_column[16]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GPIO[11]~input_o\,
	d => \cam_instance|current_column[16]~50_combout\,
	clrn => \GPIO[8]~input_o\,
	ena => \cam_instance|ALT_INV_second_byte~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cam_instance|current_column\(16));

-- Location: LCCOMB_X60_Y3_N14
\Add9~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~14_combout\ = (\cam_instance|current_row\(7) & ((\cam_instance|current_row\(9) & (\Add9~13\ & VCC)) # (!\cam_instance|current_row\(9) & (!\Add9~13\)))) # (!\cam_instance|current_row\(7) & ((\cam_instance|current_row\(9) & (!\Add9~13\)) # 
-- (!\cam_instance|current_row\(9) & ((\Add9~13\) # (GND)))))
-- \Add9~15\ = CARRY((\cam_instance|current_row\(7) & (!\cam_instance|current_row\(9) & !\Add9~13\)) # (!\cam_instance|current_row\(7) & ((!\Add9~13\) # (!\cam_instance|current_row\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cam_instance|current_row\(7),
	datab => \cam_instance|current_row\(9),
	datad => VCC,
	cin => \Add9~13\,
	combout => \Add9~14_combout\,
	cout => \Add9~15\);

-- Location: LCCOMB_X61_Y3_N24
\Add10~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~18_combout\ = (\cam_instance|current_column\(16) & ((\Add9~14_combout\ & (\Add10~17\ & VCC)) # (!\Add9~14_combout\ & (!\Add10~17\)))) # (!\cam_instance|current_column\(16) & ((\Add9~14_combout\ & (!\Add10~17\)) # (!\Add9~14_combout\ & ((\Add10~17\) 
-- # (GND)))))
-- \Add10~19\ = CARRY((\cam_instance|current_column\(16) & (!\Add9~14_combout\ & !\Add10~17\)) # (!\cam_instance|current_column\(16) & ((!\Add10~17\) # (!\Add9~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cam_instance|current_column\(16),
	datab => \Add9~14_combout\,
	datad => VCC,
	cin => \Add10~17\,
	combout => \Add10~18_combout\,
	cout => \Add10~19\);

-- Location: LCCOMB_X57_Y18_N24
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

-- Location: LCCOMB_X57_Y26_N26
\Add6~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~14_combout\ = (\vga_sync_instance|pixel_row\(7) & (!\Add6~13\)) # (!\vga_sync_instance|pixel_row\(7) & ((\Add6~13\) # (GND)))
-- \Add6~15\ = CARRY((!\Add6~13\) # (!\vga_sync_instance|pixel_row\(7)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \vga_sync_instance|pixel_row\(7),
	datad => VCC,
	cin => \Add6~13\,
	combout => \Add6~14_combout\,
	cout => \Add6~15\);

-- Location: LCCOMB_X57_Y23_N22
\Add7~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~18_combout\ = (\Add6~14_combout\ & (!\Add7~17\)) # (!\Add6~14_combout\ & ((\Add7~17\) # (GND)))
-- \Add7~19\ = CARRY((!\Add7~17\) # (!\Add6~14_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add6~14_combout\,
	datad => VCC,
	cin => \Add7~17\,
	combout => \Add7~18_combout\,
	cout => \Add7~19\);

-- Location: LCCOMB_X57_Y20_N22
\Add5~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~8_combout\ = (\Add7~18_combout\ & (\Add5~7\ $ (GND))) # (!\Add7~18_combout\ & (!\Add5~7\ & VCC))
-- \Add5~9\ = CARRY((\Add7~18_combout\ & !\Add5~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add7~18_combout\,
	datad => VCC,
	cin => \Add5~7\,
	combout => \Add5~8_combout\,
	cout => \Add5~9\);

-- Location: LCCOMB_X57_Y19_N16
\Add11~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add11~8_combout\ = (\Add10~18_combout\ & (\Add11~7\ $ (GND))) # (!\Add10~18_combout\ & (!\Add11~7\ & VCC))
-- \Add11~9\ = CARRY((\Add10~18_combout\ & !\Add11~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add10~18_combout\,
	datad => VCC,
	cin => \Add11~7\,
	combout => \Add11~8_combout\,
	cout => \Add11~9\);

-- Location: LCCOMB_X56_Y19_N16
\Add8~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~6_combout\ = (\Add7~18_combout\ & (\Add8~5\ & VCC)) # (!\Add7~18_combout\ & (!\Add8~5\))
-- \Add8~7\ = CARRY((!\Add7~18_combout\ & !\Add8~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add7~18_combout\,
	datad => VCC,
	cin => \Add8~5\,
	combout => \Add8~6_combout\,
	cout => \Add8~7\);

-- Location: LCCOMB_X56_Y19_N26
\SRAM_ADDR[16]~51\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAM_ADDR[16]~51_combout\ = (\SRAM_ADDR[13]~34_combout\ & (((\Add8~6_combout\) # (!\SRAM_ADDR[13]~33_combout\)))) # (!\SRAM_ADDR[13]~34_combout\ & (\Add11~8_combout\ & ((\SRAM_ADDR[13]~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add11~8_combout\,
	datab => \Add8~6_combout\,
	datac => \SRAM_ADDR[13]~34_combout\,
	datad => \SRAM_ADDR[13]~33_combout\,
	combout => \SRAM_ADDR[16]~51_combout\);

-- Location: LCCOMB_X57_Y20_N6
\SRAM_ADDR[16]~52\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAM_ADDR[16]~52_combout\ = (\SRAM_ADDR[16]~51_combout\ & (((\Add7~18_combout\) # (\SRAM_ADDR[13]~32_combout\)))) # (!\SRAM_ADDR[16]~51_combout\ & (\Add5~8_combout\ & ((!\SRAM_ADDR[13]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add5~8_combout\,
	datab => \Add7~18_combout\,
	datac => \SRAM_ADDR[16]~51_combout\,
	datad => \SRAM_ADDR[13]~32_combout\,
	combout => \SRAM_ADDR[16]~52_combout\);

-- Location: LCCOMB_X58_Y18_N10
\Add4~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~6_combout\ = (pixel_counter(16) & (\Add4~5\ & VCC)) # (!pixel_counter(16) & (!\Add4~5\))
-- \Add4~7\ = CARRY((!pixel_counter(16) & !\Add4~5\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => pixel_counter(16),
	datad => VCC,
	cin => \Add4~5\,
	combout => \Add4~6_combout\,
	cout => \Add4~7\);

-- Location: LCCOMB_X57_Y18_N2
\SRAM_ADDR[16]~53\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAM_ADDR[16]~53_combout\ = (\SRAM_ADDR[13]~31_combout\ & (((\bpixel[0]~0_combout\) # (\Add4~6_combout\)))) # (!\SRAM_ADDR[13]~31_combout\ & (\SRAM_ADDR[16]~52_combout\ & (!\bpixel[0]~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100111011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_ADDR[16]~52_combout\,
	datab => \SRAM_ADDR[13]~31_combout\,
	datac => \bpixel[0]~0_combout\,
	datad => \Add4~6_combout\,
	combout => \SRAM_ADDR[16]~53_combout\);

-- Location: LCCOMB_X57_Y18_N0
\SRAM_ADDR[16]~54\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAM_ADDR[16]~54_combout\ = (\bpixel[0]~0_combout\ & ((\SRAM_ADDR[16]~53_combout\ & (pixel_counter(16))) # (!\SRAM_ADDR[16]~53_combout\ & ((\Add0~8_combout\))))) # (!\bpixel[0]~0_combout\ & (((\SRAM_ADDR[16]~53_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010111111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pixel_counter(16),
	datab => \Add0~8_combout\,
	datac => \bpixel[0]~0_combout\,
	datad => \SRAM_ADDR[16]~53_combout\,
	combout => \SRAM_ADDR[16]~54_combout\);

-- Location: LCCOMB_X57_Y19_N26
\SRAM_ADDR[16]~55\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAM_ADDR[16]~55_combout\ = (\SRAM_ADDR[13]~39_combout\ & ((\SRAM_ADDR[16]~54_combout\))) # (!\SRAM_ADDR[13]~39_combout\ & (\Add10~18_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111001000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_ADDR[13]~39_combout\,
	datab => \Add10~18_combout\,
	datad => \SRAM_ADDR[16]~54_combout\,
	combout => \SRAM_ADDR[16]~55_combout\);

-- Location: LCCOMB_X57_Y18_N26
\Add0~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add0~10_combout\ = (pixel_counter(17) & (!\Add0~9\)) # (!pixel_counter(17) & ((\Add0~9\) # (GND)))
-- \Add0~11\ = CARRY((!\Add0~9\) # (!pixel_counter(17)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => pixel_counter(17),
	datad => VCC,
	cin => \Add0~9\,
	combout => \Add0~10_combout\,
	cout => \Add0~11\);

-- Location: LCCOMB_X57_Y26_N28
\Add6~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~16_combout\ = (\vga_sync_instance|pixel_row\(8) & (\Add6~15\ $ (GND))) # (!\vga_sync_instance|pixel_row\(8) & (!\Add6~15\ & VCC))
-- \Add6~17\ = CARRY((\vga_sync_instance|pixel_row\(8) & !\Add6~15\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010100001010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \vga_sync_instance|pixel_row\(8),
	datad => VCC,
	cin => \Add6~15\,
	combout => \Add6~16_combout\,
	cout => \Add6~17\);

-- Location: LCCOMB_X57_Y23_N24
\Add7~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~20_combout\ = (\Add6~16_combout\ & (\Add7~19\ $ (GND))) # (!\Add6~16_combout\ & (!\Add7~19\ & VCC))
-- \Add7~21\ = CARRY((\Add6~16_combout\ & !\Add7~19\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add6~16_combout\,
	datad => VCC,
	cin => \Add7~19\,
	combout => \Add7~20_combout\,
	cout => \Add7~21\);

-- Location: LCCOMB_X57_Y20_N24
\Add5~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~10_combout\ = (\Add7~20_combout\ & (!\Add5~9\)) # (!\Add7~20_combout\ & ((\Add5~9\) # (GND)))
-- \Add5~11\ = CARRY((!\Add5~9\) # (!\Add7~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~20_combout\,
	datad => VCC,
	cin => \Add5~9\,
	combout => \Add5~10_combout\,
	cout => \Add5~11\);

-- Location: LCCOMB_X60_Y3_N16
\Add9~16\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~16_combout\ = ((\cam_instance|current_row\(8) $ (\cam_instance|current_row\(10) $ (!\Add9~15\)))) # (GND)
-- \Add9~17\ = CARRY((\cam_instance|current_row\(8) & ((\cam_instance|current_row\(10)) # (!\Add9~15\))) # (!\cam_instance|current_row\(8) & (\cam_instance|current_row\(10) & !\Add9~15\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cam_instance|current_row\(8),
	datab => \cam_instance|current_row\(10),
	datad => VCC,
	cin => \Add9~15\,
	combout => \Add9~16_combout\,
	cout => \Add9~17\);

-- Location: LCCOMB_X61_Y1_N14
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

-- Location: FF_X61_Y1_N15
\cam_instance|current_column[17]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GPIO[11]~input_o\,
	d => \cam_instance|current_column[17]~52_combout\,
	clrn => \GPIO[8]~input_o\,
	ena => \cam_instance|ALT_INV_second_byte~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cam_instance|current_column\(17));

-- Location: LCCOMB_X61_Y3_N26
\Add10~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~20_combout\ = ((\Add9~16_combout\ $ (\cam_instance|current_column\(17) $ (!\Add10~19\)))) # (GND)
-- \Add10~21\ = CARRY((\Add9~16_combout\ & ((\cam_instance|current_column\(17)) # (!\Add10~19\))) # (!\Add9~16_combout\ & (\cam_instance|current_column\(17) & !\Add10~19\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add9~16_combout\,
	datab => \cam_instance|current_column\(17),
	datad => VCC,
	cin => \Add10~19\,
	combout => \Add10~20_combout\,
	cout => \Add10~21\);

-- Location: LCCOMB_X57_Y19_N18
\Add11~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add11~10_combout\ = (\Add10~20_combout\ & (!\Add11~9\)) # (!\Add10~20_combout\ & ((\Add11~9\) # (GND)))
-- \Add11~11\ = CARRY((!\Add11~9\) # (!\Add10~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add10~20_combout\,
	datad => VCC,
	cin => \Add11~9\,
	combout => \Add11~10_combout\,
	cout => \Add11~11\);

-- Location: LCCOMB_X56_Y19_N18
\Add8~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~8_combout\ = (\Add7~20_combout\ & (\Add8~7\ $ (GND))) # (!\Add7~20_combout\ & (!\Add8~7\ & VCC))
-- \Add8~9\ = CARRY((\Add7~20_combout\ & !\Add8~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add7~20_combout\,
	datad => VCC,
	cin => \Add8~7\,
	combout => \Add8~8_combout\,
	cout => \Add8~9\);

-- Location: LCCOMB_X56_Y19_N0
\SRAM_ADDR[17]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAM_ADDR[17]~56_combout\ = (\SRAM_ADDR[13]~34_combout\ & (((\Add8~8_combout\) # (!\SRAM_ADDR[13]~33_combout\)))) # (!\SRAM_ADDR[13]~34_combout\ & (\Add11~10_combout\ & ((\SRAM_ADDR[13]~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add11~10_combout\,
	datab => \Add8~8_combout\,
	datac => \SRAM_ADDR[13]~34_combout\,
	datad => \SRAM_ADDR[13]~33_combout\,
	combout => \SRAM_ADDR[17]~56_combout\);

-- Location: LCCOMB_X57_Y20_N8
\SRAM_ADDR[17]~57\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAM_ADDR[17]~57_combout\ = (\SRAM_ADDR[17]~56_combout\ & ((\Add7~20_combout\) # ((\SRAM_ADDR[13]~32_combout\)))) # (!\SRAM_ADDR[17]~56_combout\ & (((\Add5~10_combout\ & !\SRAM_ADDR[13]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000010101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add7~20_combout\,
	datab => \Add5~10_combout\,
	datac => \SRAM_ADDR[17]~56_combout\,
	datad => \SRAM_ADDR[13]~32_combout\,
	combout => \SRAM_ADDR[17]~57_combout\);

-- Location: LCCOMB_X57_Y18_N14
\SRAM_ADDR[17]~58\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAM_ADDR[17]~58_combout\ = (\SRAM_ADDR[13]~31_combout\ & (((\bpixel[0]~0_combout\)))) # (!\SRAM_ADDR[13]~31_combout\ & ((\bpixel[0]~0_combout\ & (\Add0~10_combout\)) # (!\bpixel[0]~0_combout\ & ((\SRAM_ADDR[17]~57_combout\)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001111100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add0~10_combout\,
	datab => \SRAM_ADDR[13]~31_combout\,
	datac => \bpixel[0]~0_combout\,
	datad => \SRAM_ADDR[17]~57_combout\,
	combout => \SRAM_ADDR[17]~58_combout\);

-- Location: LCCOMB_X58_Y18_N12
\Add4~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~8_combout\ = (pixel_counter(17) & (\Add4~7\ $ (GND))) # (!pixel_counter(17) & (!\Add4~7\ & VCC))
-- \Add4~9\ = CARRY((pixel_counter(17) & !\Add4~7\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => pixel_counter(17),
	datad => VCC,
	cin => \Add4~7\,
	combout => \Add4~8_combout\,
	cout => \Add4~9\);

-- Location: LCCOMB_X58_Y18_N0
\SRAM_ADDR[17]~59\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAM_ADDR[17]~59_combout\ = (\SRAM_ADDR[13]~31_combout\ & ((\SRAM_ADDR[17]~58_combout\ & (pixel_counter(17))) # (!\SRAM_ADDR[17]~58_combout\ & ((\Add4~8_combout\))))) # (!\SRAM_ADDR[13]~31_combout\ & (\SRAM_ADDR[17]~58_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_ADDR[13]~31_combout\,
	datab => \SRAM_ADDR[17]~58_combout\,
	datac => pixel_counter(17),
	datad => \Add4~8_combout\,
	combout => \SRAM_ADDR[17]~59_combout\);

-- Location: LCCOMB_X57_Y19_N0
\SRAM_ADDR[17]~60\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAM_ADDR[17]~60_combout\ = (\SRAM_ADDR[13]~39_combout\ & (\SRAM_ADDR[17]~59_combout\)) # (!\SRAM_ADDR[13]~39_combout\ & ((\Add10~20_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1101100011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_ADDR[13]~39_combout\,
	datab => \SRAM_ADDR[17]~59_combout\,
	datac => \Add10~20_combout\,
	combout => \SRAM_ADDR[17]~60_combout\);

-- Location: LCCOMB_X61_Y1_N16
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

-- Location: FF_X61_Y1_N17
\cam_instance|current_column[18]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GPIO[11]~input_o\,
	d => \cam_instance|current_column[18]~54_combout\,
	clrn => \GPIO[8]~input_o\,
	ena => \cam_instance|ALT_INV_second_byte~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cam_instance|current_column\(18));

-- Location: LCCOMB_X60_Y3_N18
\Add9~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~18_combout\ = (\cam_instance|current_row\(11) & ((\cam_instance|current_row\(9) & (\Add9~17\ & VCC)) # (!\cam_instance|current_row\(9) & (!\Add9~17\)))) # (!\cam_instance|current_row\(11) & ((\cam_instance|current_row\(9) & (!\Add9~17\)) # 
-- (!\cam_instance|current_row\(9) & ((\Add9~17\) # (GND)))))
-- \Add9~19\ = CARRY((\cam_instance|current_row\(11) & (!\cam_instance|current_row\(9) & !\Add9~17\)) # (!\cam_instance|current_row\(11) & ((!\Add9~17\) # (!\cam_instance|current_row\(9)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cam_instance|current_row\(11),
	datab => \cam_instance|current_row\(9),
	datad => VCC,
	cin => \Add9~17\,
	combout => \Add9~18_combout\,
	cout => \Add9~19\);

-- Location: LCCOMB_X61_Y3_N28
\Add10~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~22_combout\ = (\cam_instance|current_column\(18) & ((\Add9~18_combout\ & (\Add10~21\ & VCC)) # (!\Add9~18_combout\ & (!\Add10~21\)))) # (!\cam_instance|current_column\(18) & ((\Add9~18_combout\ & (!\Add10~21\)) # (!\Add9~18_combout\ & ((\Add10~21\) 
-- # (GND)))))
-- \Add10~23\ = CARRY((\cam_instance|current_column\(18) & (!\Add9~18_combout\ & !\Add10~21\)) # (!\cam_instance|current_column\(18) & ((!\Add10~21\) # (!\Add9~18_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \cam_instance|current_column\(18),
	datab => \Add9~18_combout\,
	datad => VCC,
	cin => \Add10~21\,
	combout => \Add10~22_combout\,
	cout => \Add10~23\);

-- Location: LCCOMB_X57_Y19_N20
\Add11~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add11~12_combout\ = (\Add10~22_combout\ & ((GND) # (!\Add11~11\))) # (!\Add10~22_combout\ & (\Add11~11\ $ (GND)))
-- \Add11~13\ = CARRY((\Add10~22_combout\) # (!\Add11~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add10~22_combout\,
	datad => VCC,
	cin => \Add11~11\,
	combout => \Add11~12_combout\,
	cout => \Add11~13\);

-- Location: LCCOMB_X57_Y26_N30
\Add6~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add6~18_combout\ = \Add6~17\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Add6~17\,
	combout => \Add6~18_combout\);

-- Location: LCCOMB_X57_Y23_N26
\Add7~22\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add7~22_combout\ = \Add7~21\ $ (\Add6~18_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \Add6~18_combout\,
	cin => \Add7~21\,
	combout => \Add7~22_combout\);

-- Location: LCCOMB_X56_Y19_N20
\Add8~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~10_combout\ = (\Add7~22_combout\ & (!\Add8~9\)) # (!\Add7~22_combout\ & ((\Add8~9\) # (GND)))
-- \Add8~11\ = CARRY((!\Add8~9\) # (!\Add7~22_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add7~22_combout\,
	datad => VCC,
	cin => \Add8~9\,
	combout => \Add8~10_combout\,
	cout => \Add8~11\);

-- Location: LCCOMB_X56_Y19_N24
\SRAM_ADDR[18]~61\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAM_ADDR[18]~61_combout\ = (\SRAM_ADDR[13]~33_combout\ & ((\SRAM_ADDR[13]~34_combout\ & ((\Add8~10_combout\))) # (!\SRAM_ADDR[13]~34_combout\ & (\Add11~12_combout\)))) # (!\SRAM_ADDR[13]~33_combout\ & (((\SRAM_ADDR[13]~34_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111100000111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add11~12_combout\,
	datab => \SRAM_ADDR[13]~33_combout\,
	datac => \SRAM_ADDR[13]~34_combout\,
	datad => \Add8~10_combout\,
	combout => \SRAM_ADDR[18]~61_combout\);

-- Location: LCCOMB_X57_Y20_N26
\Add5~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~12_combout\ = (\Add7~22_combout\ & ((GND) # (!\Add5~11\))) # (!\Add7~22_combout\ & (\Add5~11\ $ (GND)))
-- \Add5~13\ = CARRY((\Add7~22_combout\) # (!\Add5~11\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \Add7~22_combout\,
	datad => VCC,
	cin => \Add5~11\,
	combout => \Add5~12_combout\,
	cout => \Add5~13\);

-- Location: LCCOMB_X57_Y20_N30
\SRAM_ADDR[18]~62\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAM_ADDR[18]~62_combout\ = (\SRAM_ADDR[18]~61_combout\ & ((\Add7~22_combout\) # ((\SRAM_ADDR[13]~32_combout\)))) # (!\SRAM_ADDR[18]~61_combout\ & (((\Add5~12_combout\ & !\SRAM_ADDR[13]~32_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011011000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_ADDR[18]~61_combout\,
	datab => \Add7~22_combout\,
	datac => \Add5~12_combout\,
	datad => \SRAM_ADDR[13]~32_combout\,
	combout => \SRAM_ADDR[18]~62_combout\);

-- Location: LCCOMB_X58_Y18_N14
\Add4~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~10_combout\ = (pixel_counter(18) & (!\Add4~9\)) # (!pixel_counter(18) & ((\Add4~9\) # (GND)))
-- \Add4~11\ = CARRY((!\Add4~9\) # (!pixel_counter(18)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => pixel_counter(18),
	datad => VCC,
	cin => \Add4~9\,
	combout => \Add4~10_combout\,
	cout => \Add4~11\);

-- Location: LCCOMB_X57_Y18_N4
\SRAM_ADDR[18]~63\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAM_ADDR[18]~63_combout\ = (\bpixel[0]~0_combout\ & (((\SRAM_ADDR[13]~31_combout\)))) # (!\bpixel[0]~0_combout\ & ((\SRAM_ADDR[13]~31_combout\ & ((\Add4~10_combout\))) # (!\SRAM_ADDR[13]~31_combout\ & (\SRAM_ADDR[18]~62_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001011000010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_ADDR[18]~62_combout\,
	datab => \bpixel[0]~0_combout\,
	datac => \SRAM_ADDR[13]~31_combout\,
	datad => \Add4~10_combout\,
	combout => \SRAM_ADDR[18]~63_combout\);

-- Location: LCCOMB_X57_Y18_N28
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

-- Location: LCCOMB_X57_Y18_N6
\SRAM_ADDR[18]~64\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAM_ADDR[18]~64_combout\ = (\bpixel[0]~0_combout\ & ((\SRAM_ADDR[18]~63_combout\ & (pixel_counter(18))) # (!\SRAM_ADDR[18]~63_combout\ & ((\Add0~12_combout\))))) # (!\bpixel[0]~0_combout\ & (((\SRAM_ADDR[18]~63_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011110010110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => pixel_counter(18),
	datab => \bpixel[0]~0_combout\,
	datac => \SRAM_ADDR[18]~63_combout\,
	datad => \Add0~12_combout\,
	combout => \SRAM_ADDR[18]~64_combout\);

-- Location: LCCOMB_X57_Y19_N2
\SRAM_ADDR[18]~65\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAM_ADDR[18]~65_combout\ = (\SRAM_ADDR[13]~39_combout\ & (\SRAM_ADDR[18]~64_combout\)) # (!\SRAM_ADDR[13]~39_combout\ & ((\Add10~22_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_ADDR[18]~64_combout\,
	datab => \Add10~22_combout\,
	datad => \SRAM_ADDR[13]~39_combout\,
	combout => \SRAM_ADDR[18]~65_combout\);

-- Location: LCCOMB_X61_Y1_N18
\cam_instance|current_column[19]~56\ : cycloneive_lcell_comb
-- Equation(s):
-- \cam_instance|current_column[19]~56_combout\ = \cam_instance|current_column\(19) $ (!\cam_instance|current_column[18]~55\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cam_instance|current_column\(19),
	cin => \cam_instance|current_column[18]~55\,
	combout => \cam_instance|current_column[19]~56_combout\);

-- Location: FF_X61_Y1_N19
\cam_instance|current_column[19]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \GPIO[11]~input_o\,
	d => \cam_instance|current_column[19]~56_combout\,
	clrn => \GPIO[8]~input_o\,
	ena => \cam_instance|ALT_INV_second_byte~q\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \cam_instance|current_column\(19));

-- Location: LCCOMB_X60_Y3_N20
\Add9~20\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add9~20_combout\ = \cam_instance|current_row\(10) $ (\Add9~19\ $ (!\cam_instance|current_row\(12)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cam_instance|current_row\(10),
	datad => \cam_instance|current_row\(12),
	cin => \Add9~19\,
	combout => \Add9~20_combout\);

-- Location: LCCOMB_X61_Y3_N30
\Add10~24\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add10~24_combout\ = \cam_instance|current_column\(19) $ (\Add10~23\ $ (!\Add9~20_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \cam_instance|current_column\(19),
	datad => \Add9~20_combout\,
	cin => \Add10~23\,
	combout => \Add10~24_combout\);

-- Location: LCCOMB_X57_Y19_N22
\Add11~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add11~14_combout\ = \Add10~24_combout\ $ (\Add11~13\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011010",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \Add10~24_combout\,
	cin => \Add11~13\,
	combout => \Add11~14_combout\);

-- Location: LCCOMB_X56_Y19_N22
\Add8~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add8~12_combout\ = \Add8~11\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Add8~11\,
	combout => \Add8~12_combout\);

-- Location: LCCOMB_X56_Y19_N6
\SRAM_ADDR[19]~66\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAM_ADDR[19]~66_combout\ = (\SRAM_ADDR[13]~34_combout\ & (((\Add8~12_combout\) # (!\SRAM_ADDR[13]~33_combout\)))) # (!\SRAM_ADDR[13]~34_combout\ & (\Add11~14_combout\ & ((\SRAM_ADDR[13]~33_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110001011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \Add11~14_combout\,
	datab => \SRAM_ADDR[13]~34_combout\,
	datac => \Add8~12_combout\,
	datad => \SRAM_ADDR[13]~33_combout\,
	combout => \SRAM_ADDR[19]~66_combout\);

-- Location: LCCOMB_X57_Y20_N28
\Add5~14\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add5~14_combout\ = \Add5~13\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011110000",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	cin => \Add5~13\,
	combout => \Add5~14_combout\);

-- Location: LCCOMB_X58_Y20_N10
\SRAM_ADDR[19]~67\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAM_ADDR[19]~67_combout\ = (\SW[1]~input_o\ & (\SRAM_ADDR[19]~66_combout\)) # (!\SW[1]~input_o\ & ((\SRAM_ADDR[19]~66_combout\ & (!\camstatemachine_instance|WideOr0~combout\)) # (!\SRAM_ADDR[19]~66_combout\ & (\camstatemachine_instance|WideOr0~combout\ 
-- & \Add5~14_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001110010001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SW[1]~input_o\,
	datab => \SRAM_ADDR[19]~66_combout\,
	datac => \camstatemachine_instance|WideOr0~combout\,
	datad => \Add5~14_combout\,
	combout => \SRAM_ADDR[19]~67_combout\);

-- Location: LCCOMB_X57_Y18_N30
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

-- Location: LCCOMB_X58_Y18_N2
\SRAM_ADDR[19]~68\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAM_ADDR[19]~68_combout\ = (\SRAM_ADDR[13]~31_combout\ & (((\bpixel[0]~0_combout\)))) # (!\SRAM_ADDR[13]~31_combout\ & ((\bpixel[0]~0_combout\ & ((\Add0~14_combout\))) # (!\bpixel[0]~0_combout\ & (\SRAM_ADDR[19]~67_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111010010100100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_ADDR[13]~31_combout\,
	datab => \SRAM_ADDR[19]~67_combout\,
	datac => \bpixel[0]~0_combout\,
	datad => \Add0~14_combout\,
	combout => \SRAM_ADDR[19]~68_combout\);

-- Location: LCCOMB_X58_Y18_N16
\Add4~12\ : cycloneive_lcell_comb
-- Equation(s):
-- \Add4~12_combout\ = pixel_counter(19) $ (\Add4~11\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => pixel_counter(19),
	cin => \Add4~11\,
	combout => \Add4~12_combout\);

-- Location: LCCOMB_X58_Y18_N20
\SRAM_ADDR[19]~69\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAM_ADDR[19]~69_combout\ = (\SRAM_ADDR[13]~31_combout\ & ((\SRAM_ADDR[19]~68_combout\ & (pixel_counter(19))) # (!\SRAM_ADDR[19]~68_combout\ & ((\Add4~12_combout\))))) # (!\SRAM_ADDR[13]~31_combout\ & (\SRAM_ADDR[19]~68_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110011011000100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_ADDR[13]~31_combout\,
	datab => \SRAM_ADDR[19]~68_combout\,
	datac => pixel_counter(19),
	datad => \Add4~12_combout\,
	combout => \SRAM_ADDR[19]~69_combout\);

-- Location: LCCOMB_X57_Y19_N28
\SRAM_ADDR[19]~70\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAM_ADDR[19]~70_combout\ = (\SRAM_ADDR[13]~39_combout\ & ((\SRAM_ADDR[19]~69_combout\))) # (!\SRAM_ADDR[13]~39_combout\ & (\Add10~24_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101001010000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \SRAM_ADDR[13]~39_combout\,
	datac => \Add10~24_combout\,
	datad => \SRAM_ADDR[19]~69_combout\,
	combout => \SRAM_ADDR[19]~70_combout\);

-- Location: LCCOMB_X60_Y1_N6
\SRAM_WE_N~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \SRAM_WE_N~0_combout\ = (\camstatemachine_instance|WideOr1~combout\ & (\GPIO[11]~input_o\ & (\GPIO[8]~input_o\ & !\cam_instance|second_byte~q\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000010000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \camstatemachine_instance|WideOr1~combout\,
	datab => \GPIO[11]~input_o\,
	datac => \GPIO[8]~input_o\,
	datad => \cam_instance|second_byte~q\,
	combout => \SRAM_WE_N~0_combout\);

-- Location: IOIBUF_X115_Y35_N22
\KEY[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_KEY(3),
	o => \KEY[3]~input_o\);

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

-- Location: IOIBUF_X115_Y11_N8
\SW[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(5),
	o => \SW[5]~input_o\);

-- Location: IOIBUF_X115_Y10_N1
\SW[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(6),
	o => \SW[6]~input_o\);

-- Location: IOIBUF_X115_Y15_N1
\SW[7]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(7),
	o => \SW[7]~input_o\);

-- Location: IOIBUF_X115_Y4_N22
\SW[8]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(8),
	o => \SW[8]~input_o\);

-- Location: IOIBUF_X115_Y16_N8
\SW[9]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(9),
	o => \SW[9]~input_o\);

-- Location: IOIBUF_X115_Y4_N15
\SW[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(10),
	o => \SW[10]~input_o\);

-- Location: IOIBUF_X115_Y5_N15
\SW[11]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(11),
	o => \SW[11]~input_o\);

-- Location: IOIBUF_X115_Y7_N15
\SW[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(12),
	o => \SW[12]~input_o\);

-- Location: IOIBUF_X115_Y9_N22
\SW[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(13),
	o => \SW[13]~input_o\);

-- Location: IOIBUF_X115_Y10_N8
\SW[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(14),
	o => \SW[14]~input_o\);

-- Location: IOIBUF_X115_Y6_N15
\SW[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(15),
	o => \SW[15]~input_o\);

-- Location: IOIBUF_X115_Y13_N1
\SW[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(16),
	o => \SW[16]~input_o\);

-- Location: IOIBUF_X115_Y14_N8
\SW[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_SW(17),
	o => \SW[17]~input_o\);

-- Location: IOIBUF_X60_Y0_N1
\GPIO[13]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(13),
	o => \GPIO[13]~input_o\);

-- Location: IOIBUF_X83_Y0_N8
\GPIO[14]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(14),
	o => \GPIO[14]~input_o\);

-- Location: IOIBUF_X85_Y0_N1
\GPIO[15]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(15),
	o => \GPIO[15]~input_o\);

-- Location: IOIBUF_X83_Y0_N1
\GPIO[16]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(16),
	o => \GPIO[16]~input_o\);

-- Location: IOIBUF_X109_Y0_N1
\GPIO[17]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(17),
	o => \GPIO[17]~input_o\);

-- Location: IOIBUF_X96_Y0_N8
\GPIO[18]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(18),
	o => \GPIO[18]~input_o\);

-- Location: IOIBUF_X87_Y0_N22
\GPIO[19]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(19),
	o => \GPIO[19]~input_o\);

-- Location: IOIBUF_X96_Y0_N1
\GPIO[20]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(20),
	o => \GPIO[20]~input_o\);

-- Location: IOIBUF_X111_Y0_N8
\GPIO[21]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(21),
	o => \GPIO[21]~input_o\);

-- Location: IOIBUF_X91_Y0_N22
\GPIO[22]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(22),
	o => \GPIO[22]~input_o\);

-- Location: IOIBUF_X100_Y0_N22
\GPIO[23]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(23),
	o => \GPIO[23]~input_o\);

-- Location: IOIBUF_X91_Y0_N15
\GPIO[24]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(24),
	o => \GPIO[24]~input_o\);

-- Location: IOIBUF_X89_Y0_N8
\GPIO[25]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(25),
	o => \GPIO[25]~input_o\);

-- Location: IOIBUF_X79_Y0_N8
\GPIO[26]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(26),
	o => \GPIO[26]~input_o\);

-- Location: IOIBUF_X100_Y0_N15
\GPIO[27]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(27),
	o => \GPIO[27]~input_o\);

-- Location: IOIBUF_X79_Y0_N1
\GPIO[28]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(28),
	o => \GPIO[28]~input_o\);

-- Location: IOIBUF_X89_Y0_N1
\GPIO[29]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(29),
	o => \GPIO[29]~input_o\);

-- Location: IOIBUF_X85_Y0_N22
\GPIO[30]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(30),
	o => \GPIO[30]~input_o\);

-- Location: IOIBUF_X81_Y0_N22
\GPIO[31]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(31),
	o => \GPIO[31]~input_o\);

-- Location: IOIBUF_X85_Y0_N15
\GPIO[32]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(32),
	o => \GPIO[32]~input_o\);

-- Location: IOIBUF_X113_Y0_N1
\GPIO[33]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(33),
	o => \GPIO[33]~input_o\);

-- Location: IOIBUF_X81_Y0_N15
\GPIO[34]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(34),
	o => \GPIO[34]~input_o\);

-- Location: IOIBUF_X94_Y0_N8
\GPIO[10]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(10),
	o => \GPIO[10]~input_o\);

-- Location: IOIBUF_X94_Y0_N1
\GPIO[12]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(12),
	o => \GPIO[12]~input_o\);

-- Location: IOIBUF_X113_Y0_N8
\GPIO[35]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => GPIO(35),
	o => \GPIO[35]~input_o\);

-- Location: IOIBUF_X5_Y0_N8
\SRAM_DQ[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SRAM_DQ(0),
	o => \SRAM_DQ[0]~input_o\);

-- Location: IOIBUF_X1_Y0_N1
\SRAM_DQ[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SRAM_DQ(1),
	o => \SRAM_DQ[1]~input_o\);

-- Location: IOIBUF_X9_Y0_N22
\SRAM_DQ[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SRAM_DQ(2),
	o => \SRAM_DQ[2]~input_o\);

-- Location: IOIBUF_X9_Y0_N15
\SRAM_DQ[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SRAM_DQ(3),
	o => \SRAM_DQ[3]~input_o\);

-- Location: IOIBUF_X7_Y0_N15
\SRAM_DQ[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SRAM_DQ(4),
	o => \SRAM_DQ[4]~input_o\);

-- Location: IOIBUF_X11_Y0_N22
\SRAM_DQ[5]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SRAM_DQ(5),
	o => \SRAM_DQ[5]~input_o\);

-- Location: IOIBUF_X11_Y0_N15
\SRAM_DQ[6]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => SRAM_DQ(6),
	o => \SRAM_DQ[6]~input_o\);

-- Location: IOIBUF_X20_Y0_N8
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

ww_LEDR(0) <= \LEDR[0]~output_o\;

ww_LEDR(1) <= \LEDR[1]~output_o\;

ww_LEDR(2) <= \LEDR[2]~output_o\;

ww_LEDR(3) <= \LEDR[3]~output_o\;

ww_LEDR(4) <= \LEDR[4]~output_o\;

ww_LEDR(5) <= \LEDR[5]~output_o\;

ww_LEDR(6) <= \LEDR[6]~output_o\;

ww_LEDR(7) <= \LEDR[7]~output_o\;

ww_LEDR(8) <= \LEDR[8]~output_o\;

ww_LEDR(9) <= \LEDR[9]~output_o\;

ww_LEDR(10) <= \LEDR[10]~output_o\;

ww_LEDR(11) <= \LEDR[11]~output_o\;

ww_LEDR(12) <= \LEDR[12]~output_o\;

ww_LEDR(13) <= \LEDR[13]~output_o\;

ww_LEDR(14) <= \LEDR[14]~output_o\;

ww_LEDR(15) <= \LEDR[15]~output_o\;

ww_LEDR(16) <= \LEDR[16]~output_o\;

ww_LEDR(17) <= \LEDR[17]~output_o\;

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


