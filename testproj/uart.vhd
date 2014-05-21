library ieee;
use ieee.std_logic_1164.all;
use ieee.numeric_std.all;
 
ENTITY UART IS
PORT(
CLOCK_50: IN STD_LOGIC;
SW: IN STD_LOGIC_VECTOR(9 downto 0);
KEY: IN STD_LOGIC_VECTOR(3 downto 0);
LEDR:OUT STD_LOGIC_VECTOR(9 downto 0);
LEDG:OUT STD_LOGIC_VECTOR(7 downto 0);
UART_TXD:OUT STD_LOGIC;
HEX0 : out std_logic_vector(6 downto 0);
HEX1 : out std_logic_vector(6 downto 0);
UART_RXD:IN STD_LOGIC
);
END UART;
 
 
 
ARCHITECTURE MAIN OF UART IS
SIGNAL TX_DATA: STD_LOGIC_VECTOR(7  downto 0);
SIGNAL TX_START: STD_LOGIC:='0';
SIGNAL TX_BUSY: STD_LOGIC;
SIGNAL RX_DATA: STD_LOGIC_VECTOR(7 DOWNTO 0);
SIGNAL RX_BUSY: STD_LOGIC;
signal hex0num : std_logic_vector(3 downto 0);
	signal hex1num : std_logic_vector(3 downto 0);
	
	-------------------------------------------
	component leddcd is
	port(
		 data_in : in std_logic_vector(3 downto 0);
		 segments_out : out std_logic_vector(6 downto 0)
		);
end component;
----------------------------------------
COMPONENT TX
PORT(
CLK:IN STD_LOGIC;
START:IN STD_LOGIC;
BUSY:OUT STD_LOGIC;
DATA: IN STD_LOGIC_VECTOR(7 downto 0);
TX_LINE:OUT STD_LOGIC
);
END COMPONENT TX;
----------------------------------------
COMPONENT RX
PORT(
CLK:IN STD_LOGIC;
RX_LINE:IN STD_LOGIC;
DATA:OUT STD_LOGIC_VECTOR(7 downto 0);
BUSY:OUT STD_LOGIC
);
END COMPONENT RX;
------------------------------------------------------
BEGIN
hex0decoder : leddcd port map (hex0num, HEX0);
	hex1decoder : leddcd port map (hex1num, HEX1);
C1: TX PORT MAP (CLOCK_50,TX_START,TX_BUSY,TX_DATA,UART_TXD);
C2: RX PORT MAP (CLOCK_50,UART_RXD,RX_DATA,RX_BUSY);
 
 
PROCESS(RX_BUSY)
BEGIN
IF(RX_BUSY'EVENT AND RX_BUSY='0')THEN
LEDR(7 DOWNTO 0)<=RX_DATA;
hex1num <= RX_DATA(7 downto 4);
hex0num <= RX_DATA(3 downto 0);
END IF;
END PROCESS;
 
 
 
PROCESS(CLOCK_50)
BEGIN
IF(CLOCK_50'EVENT AND CLOCK_50='1')THEN
   IF(KEY(0)='0' AND TX_BUSY='0')THEN
	   TX_DATA<=SW(7 DOWNTO 0);
		TX_START<='1';
		LEDG<=TX_DATA;
	   ELSE
		TX_START<='0';
	END IF;
END IF;
END PROCESS;
END MAIN;