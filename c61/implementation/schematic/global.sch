EESchema Schematic File Version 2
LIBS:power
LIBS:device
LIBS:transistors
LIBS:conn
LIBS:linear
LIBS:regul
LIBS:74xx
LIBS:cmos4000
LIBS:adc-dac
LIBS:memory
LIBS:xilinx
LIBS:microcontrollers
LIBS:dsp
LIBS:microchip
LIBS:analog_switches
LIBS:motorola
LIBS:texas
LIBS:intel
LIBS:audio
LIBS:interface
LIBS:digital-audio
LIBS:philips
LIBS:display
LIBS:cypress
LIBS:siliconi
LIBS:opto
LIBS:atmel
LIBS:contrib
LIBS:valves
LIBS:local
LIBS:schematic-cache
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 8
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L CONN_02X03_PWR J1
U 1 1 5B2C3325
P 1600 1350
F 0 "J1" H 1600 1550 50  0000 C CNN
F 1 "CONN_02X03_PWR" H 1600 1150 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x03_Pitch2.54mm" H 1600 150 50  0001 C CNN
F 3 "" H 1600 150 50  0001 C CNN
	1    1600 1350
	1    0    0    -1  
$EndComp
$Comp
L CP C2
U 1 1 5B2C3503
P 2700 1700
F 0 "C2" H 2725 1800 50  0000 L CNN
F 1 "22u" H 2725 1600 50  0000 L CNN
F 2 "Capacitors_THT:CP_Radial_D6.3mm_P2.50mm" H 2738 1550 50  0001 C CNN
F 3 "" H 2700 1700 50  0001 C CNN
	1    2700 1700
	1    0    0    -1  
$EndComp
$Comp
L LED D3
U 1 1 5B2C361D
P 3200 1600
F 0 "D3" H 3200 1700 50  0000 C CNN
F 1 "LED" H 3200 1500 50  0000 C CNN
F 2 "LEDs:LED_D3.0mm" H 3200 1600 50  0001 C CNN
F 3 "" H 3200 1600 50  0001 C CNN
F 4 "Red, 2-2.2v, >12mA" H 3200 1600 60  0001 C CNN "Notes"
	1    3200 1600
	0    -1   -1   0   
$EndComp
$Comp
L R R3
U 1 1 5B2C36D4
P 3200 2000
F 0 "R3" V 3280 2000 50  0000 C CNN
F 1 "100R" V 3200 2000 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 3130 2000 50  0001 C CNN
F 3 "" H 3200 2000 50  0001 C CNN
	1    3200 2000
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR1
U 1 1 5B2CC05E
P 3000 1200
F 0 "#PWR1" H 3000 1050 50  0001 C CNN
F 1 "+3V3" H 3000 1340 50  0000 C CNN
F 2 "" H 3000 1200 50  0001 C CNN
F 3 "" H 3000 1200 50  0001 C CNN
	1    3000 1200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR2
U 1 1 5B2CC07C
P 1350 2200
F 0 "#PWR2" H 1350 1950 50  0001 C CNN
F 1 "GND" H 1350 2050 50  0000 C CNN
F 2 "" H 1350 2200 50  0001 C CNN
F 3 "" H 1350 2200 50  0001 C CNN
	1    1350 2200
	1    0    0    -1  
$EndComp
$Comp
L Crystal Y1
U 1 1 5B2CC0C7
P 3050 3350
F 0 "Y1" H 3050 3500 50  0000 C CNN
F 1 "24MHz" H 3050 3200 50  0000 C CNN
F 2 "Crystals:Crystal_HC50_Vertical" H 3050 3350 50  0001 C CNN
F 3 "" H 3050 3350 50  0001 C CNN
	1    3050 3350
	1    0    0    -1  
$EndComp
$Comp
L Q_NPN_CBE Q1
U 1 1 5B2CC1C0
P 3350 3900
F 0 "Q1" H 3550 3950 50  0000 L CNN
F 1 "BC548A" H 3550 3850 50  0000 L CNN
F 2 "TO_SOT_Packages_THT:TO-92_Inline_Narrow_Oval" H 3550 4000 50  0001 C CNN
F 3 "" H 3350 3900 50  0001 C CNN
	1    3350 3900
	1    0    0    -1  
$EndComp
$Comp
L R R4
U 1 1 5B2CC39C
P 3450 3050
F 0 "R4" V 3530 3050 50  0000 C CNN
F 1 "1K" V 3450 3050 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 3380 3050 50  0001 C CNN
F 3 "" H 3450 3050 50  0001 C CNN
	1    3450 3050
	1    0    0    -1  
$EndComp
$Comp
L R R2
U 1 1 5B2CC43B
P 2400 3900
F 0 "R2" V 2480 3900 50  0000 C CNN
F 1 "36K" V 2400 3900 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 2330 3900 50  0001 C CNN
F 3 "" H 2400 3900 50  0001 C CNN
	1    2400 3900
	0    1    1    0   
$EndComp
$Comp
L R R1
U 1 1 5B2CC4D4
P 2150 3600
F 0 "R1" V 2230 3600 50  0000 C CNN
F 1 "2K2" V 2150 3600 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 2080 3600 50  0001 C CNN
F 3 "" H 2150 3600 50  0001 C CNN
	1    2150 3600
	1    0    0    -1  
$EndComp
$Comp
L D D1
U 1 1 5B2CC57D
P 2150 4250
F 0 "D1" H 2150 4350 50  0000 C CNN
F 1 "1N4148" H 2150 4150 50  0000 C CNN
F 2 "Diodes_SMD:D_0805" H 2150 4250 50  0001 C CNN
F 3 "" H 2150 4250 50  0001 C CNN
	1    2150 4250
	0    -1   -1   0   
$EndComp
$Comp
L D D2
U 1 1 5B2CC634
P 2150 4650
F 0 "D2" H 2150 4750 50  0000 C CNN
F 1 "1N4148" H 2150 4550 50  0000 C CNN
F 2 "Diodes_SMD:D_0805" H 2150 4650 50  0001 C CNN
F 3 "" H 2150 4650 50  0001 C CNN
	1    2150 4650
	0    -1   -1   0   
$EndComp
$Comp
L C C3
U 1 1 5B2CCC13
P 1650 3900
F 0 "C3" H 1675 4000 50  0000 L CNN
F 1 "100n" H 1675 3800 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 1688 3750 50  0001 C CNN
F 3 "" H 1650 3900 50  0001 C CNN
	1    1650 3900
	1    0    0    -1  
$EndComp
$Comp
L C C4
U 1 1 5B2CCCA2
P 2650 4450
F 0 "C4" H 2675 4550 50  0000 L CNN
F 1 "47p" H 2675 4350 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 2688 4300 50  0001 C CNN
F 3 "" H 2650 4450 50  0001 C CNN
	1    2650 4450
	1    0    0    -1  
$EndComp
$Comp
L C C5
U 1 1 5B2CCD45
P 4100 3750
F 0 "C5" H 4125 3850 50  0000 L CNN
F 1 "22p" H 4125 3650 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 4138 3600 50  0001 C CNN
F 3 "" H 4100 3750 50  0001 C CNN
	1    4100 3750
	1    0    0    -1  
$EndComp
$Comp
L 74HC93 U1
U 1 1 5B2CE15E
P 5450 4400
F 0 "U1" H 5500 4250 50  0000 C CNN
F 1 "74HC93" H 5450 4150 50  0000 C CNN
F 2 "Housings_DIP:DIP-14_W7.62mm_LongPads" H 5450 4400 50  0001 C CNN
F 3 "" H 5450 4400 50  0001 C CNN
	1    5450 4400
	1    0    0    -1  
$EndComp
$Comp
L 74LS85 U3
U 1 1 5B2CE31C
P 7750 4500
F 0 "U3" H 7800 4600 50  0000 C CNN
F 1 "74LS85" H 7800 4450 50  0000 C CNN
F 2 "Housings_DIP:DIP-16_W7.62mm_LongPads" H 7750 4500 50  0001 C CNN
F 3 "" H 7750 4500 50  0001 C CNN
	1    7750 4500
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR6
U 1 1 5B2CEE7C
P 6900 5150
F 0 "#PWR6" H 6900 4900 50  0001 C CNN
F 1 "GND" H 6900 5000 50  0000 C CNN
F 2 "" H 6900 5150 50  0001 C CNN
F 3 "" H 6900 5150 50  0001 C CNN
	1    6900 5150
	1    0    0    -1  
$EndComp
$Comp
L jumperblock_4 J2
U 1 1 5B2D0922
P 6400 4850
F 0 "J2" H 6400 5150 60  0000 C CNN
F 1 "jumperblock_4" V 6200 4850 60  0000 C CNN
F 2 "local:JPArray-03x04-Connected" H 6200 4850 60  0001 C CNN
F 3 "" H 6200 4850 60  0001 C CNN
	1    6400 4850
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 1250 3450 1250
Wire Wire Line
	1850 1450 2000 1450
Wire Wire Line
	2000 1450 2000 2200
Wire Wire Line
	1350 2200 3200 2200
Wire Wire Line
	1350 1450 1350 2200
Connection ~ 2000 2200
Wire Wire Line
	2700 1250 2700 1550
Wire Wire Line
	2700 1850 2700 2200
Connection ~ 2700 2200
Wire Wire Line
	3200 1250 3200 1450
Wire Wire Line
	3200 1750 3200 1850
Wire Wire Line
	3200 2200 3200 2150
Wire Wire Line
	3200 3350 3450 3350
Wire Wire Line
	3450 3200 3450 3700
Wire Wire Line
	2650 3350 2650 4300
Wire Wire Line
	2650 3350 2900 3350
Wire Wire Line
	2150 3450 2150 2800
Wire Wire Line
	1650 2800 5300 2800
Wire Wire Line
	3450 2800 3450 2900
Connection ~ 3250 2800
Connection ~ 3450 3350
Connection ~ 2650 3900
Wire Wire Line
	2150 3750 2150 4100
Wire Wire Line
	2150 3900 2250 3900
Connection ~ 2150 3900
Wire Wire Line
	2150 4400 2150 4500
Wire Wire Line
	2150 4800 2150 5050
Wire Wire Line
	1450 5050 4100 5050
Wire Wire Line
	3450 5050 3450 4100
Wire Wire Line
	4100 3500 4100 3600
Connection ~ 3450 3500
Wire Wire Line
	4100 5050 4100 3900
Connection ~ 3450 5050
Wire Wire Line
	2650 4600 2650 5050
Wire Wire Line
	2550 3900 3150 3900
Connection ~ 4100 3500
Wire Wire Line
	1650 2800 1650 3750
Connection ~ 2150 2800
Wire Wire Line
	1650 4050 1650 5050
Connection ~ 2150 5050
Wire Wire Line
	4600 4200 4750 4200
Wire Wire Line
	6200 4200 7050 4200
Wire Wire Line
	6200 4300 7050 4300
Wire Wire Line
	6200 4400 7050 4400
Wire Wire Line
	4600 3500 4600 4200
Wire Wire Line
	3450 3500 4600 3500
Wire Wire Line
	6900 4100 6900 5150
Wire Wire Line
	6900 4600 7050 4600
Wire Wire Line
	6900 4100 7050 4100
Connection ~ 6900 4600
Wire Wire Line
	6200 900  6200 4100
Wire Wire Line
	6200 3100 7050 3100
Wire Wire Line
	6700 4700 7050 4700
Wire Wire Line
	7050 4800 6700 4800
Wire Wire Line
	7050 4900 6700 4900
Wire Wire Line
	5200 5150 7450 5150
$Comp
L +3V3 #PWR3
U 1 1 5B2D0E4B
P 6500 3800
F 0 "#PWR3" H 6500 3650 50  0001 C CNN
F 1 "+3V3" H 6500 3940 50  0000 C CNN
F 2 "" H 6500 3800 50  0001 C CNN
F 3 "" H 6500 3800 50  0001 C CNN
	1    6500 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	6500 3800 6500 4550
$Comp
L +3V3 #PWR4
U 1 1 5B2D0EDA
P 8700 3900
F 0 "#PWR4" H 8700 3750 50  0001 C CNN
F 1 "+3V3" H 8700 4040 50  0000 C CNN
F 2 "" H 8700 3900 50  0001 C CNN
F 3 "" H 8700 3900 50  0001 C CNN
	1    8700 3900
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR5
U 1 1 5B2D0F12
P 8600 4550
F 0 "#PWR5" H 8600 4300 50  0001 C CNN
F 1 "GND" H 8600 4400 50  0000 C CNN
F 2 "" H 8600 4550 50  0001 C CNN
F 3 "" H 8600 4550 50  0001 C CNN
	1    8600 4550
	1    0    0    -1  
$EndComp
Wire Wire Line
	8700 3900 8700 4300
Wire Wire Line
	8700 4300 8450 4300
Wire Wire Line
	8600 3650 8600 4550
Wire Wire Line
	8450 4200 8600 4200
Wire Wire Line
	8600 4100 8450 4100
Connection ~ 8600 4200
Wire Wire Line
	8450 4900 8450 5400
Wire Wire Line
	8450 5400 4600 5400
Wire Wire Line
	4600 5400 4600 4350
Wire Wire Line
	4600 4350 4750 4350
Wire Wire Line
	4600 4450 4750 4450
Connection ~ 4600 4450
Wire Wire Line
	4650 4350 4650 4100
Wire Wire Line
	4650 4100 4750 4100
Connection ~ 4650 4350
$Comp
L 74HC04 U2
U 1 1 5B2D20A2
P 7500 3100
F 0 "U2" H 7650 3200 50  0000 C CNN
F 1 "74HC04" H 7700 3000 50  0000 C CNN
F 2 "Housings_DIP:DIP-14_W7.62mm_LongPads" H 7500 3100 50  0001 C CNN
F 3 "" H 7500 3100 50  0001 C CNN
	1    7500 3100
	1    0    0    -1  
$EndComp
$Comp
L C C6
U 1 1 5B2EC701
P 8600 3500
F 0 "C6" H 8625 3600 50  0000 L CNN
F 1 "10p" H 8625 3400 50  0000 L CNN
F 2 "Capacitors_THT:C_Disc_D4.3mm_W1.9mm_P5.00mm" H 8638 3350 50  0001 C CNN
F 3 "" H 8600 3500 50  0001 C CNN
	1    8600 3500
	1    0    0    -1  
$EndComp
Connection ~ 8600 4100
Wire Wire Line
	8600 3100 8600 3350
$Comp
L 74HC04 U2
U 2 1 5B2ECB92
P 9200 3100
F 0 "U2" H 9350 3200 50  0000 C CNN
F 1 "74HC04" H 9400 3000 50  0000 C CNN
F 2 "Housings_DIP:DIP-14_W7.62mm_LongPads" H 9200 3100 50  0001 C CNN
F 3 "" H 9200 3100 50  0001 C CNN
	2    9200 3100
	1    0    0    -1  
$EndComp
Connection ~ 8600 3100
$Comp
L 74HC86 U4
U 1 1 5B2ECC75
P 9750 2100
F 0 "U4" H 9800 2150 50  0000 C CNN
F 1 "74HC86" H 9800 2050 50  0000 C CNN
F 2 "Housings_DIP:DIP-14_W7.62mm_LongPads" H 9750 2100 50  0001 C CNN
F 3 "" H 9750 2100 50  0001 C CNN
	1    9750 2100
	1    0    0    -1  
$EndComp
Wire Wire Line
	9650 3100 10700 3100
Wire Wire Line
	9800 3100 9800 2500
Wire Wire Line
	9800 2500 8950 2500
Wire Wire Line
	8950 2500 8950 2200
Wire Wire Line
	8950 2200 9150 2200
Wire Wire Line
	6200 2000 9150 2000
Connection ~ 6200 3100
$Comp
L 74HC04 U2
U 3 1 5B2ECECC
P 7550 1400
F 0 "U2" H 7700 1500 50  0000 C CNN
F 1 "74HC04" H 7750 1300 50  0000 C CNN
F 2 "Housings_DIP:DIP-14_W7.62mm_LongPads" H 7550 1400 50  0001 C CNN
F 3 "" H 7550 1400 50  0001 C CNN
	3    7550 1400
	1    0    0    -1  
$EndComp
Wire Wire Line
	6200 1400 7100 1400
Connection ~ 6200 2000
Wire Wire Line
	6200 900  10700 900 
Connection ~ 6200 1400
Text GLabel 10700 900  2    60   Output ~ 0
clk0
Text GLabel 10700 1400 2    60   Output ~ 0
clk1
Text GLabel 10700 2100 2    60   Output ~ 0
clk_edge
Text GLabel 10700 3100 2    60   Output ~ 0
clk0del
Connection ~ 9800 3100
Wire Wire Line
	10350 2100 10700 2100
Wire Wire Line
	8000 1400 10700 1400
$Comp
L R R5
U 1 1 5B2F409A
P 8250 3100
F 0 "R5" V 8330 3100 50  0000 C CNN
F 1 "1K3" V 8250 3100 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 8180 3100 50  0001 C CNN
F 3 "" H 8250 3100 50  0001 C CNN
	1    8250 3100
	0    1    1    0   
$EndComp
Wire Wire Line
	7950 3100 8100 3100
Wire Wire Line
	8400 3100 8750 3100
Connection ~ 2650 5050
Wire Wire Line
	5300 2800 5300 4050
Wire Wire Line
	5300 4050 5350 4050
Connection ~ 3450 2800
Wire Wire Line
	7450 4050 7450 3950
Wire Wire Line
	7450 3950 6500 3950
Connection ~ 6500 3950
Wire Wire Line
	3250 2800 3250 2450
Wire Wire Line
	3250 2450 3450 2450
Wire Wire Line
	3450 2450 3450 1250
Wire Wire Line
	1450 2200 1450 5050
Connection ~ 1650 5050
Connection ~ 1450 2200
Wire Wire Line
	7450 5150 7450 4950
Connection ~ 6900 5150
Wire Wire Line
	5200 4750 5200 5150
Connection ~ 6300 5150
NoConn ~ 8450 4700
NoConn ~ 8450 4800
NoConn ~ 6700 5000
Connection ~ 2700 1250
Wire Wire Line
	1850 1350 2000 1350
Wire Wire Line
	2000 1350 2000 1250
Connection ~ 2000 1250
Connection ~ 3200 1250
$EndSCHEMATC
