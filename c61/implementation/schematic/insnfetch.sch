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
Sheet 3 8
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 10600 900  2    60   Input ~ 0
insn_addr[0..5]
Text HLabel 1100 1100 0    60   Input ~ 0
insn_data[0..15]
Text GLabel 1100 700  0    60   Input ~ 0
clk0
$Comp
L 74LS574 U5
U 1 1 5B31DD46
P 2850 1800
F 0 "U5" H 2850 1800 50  0000 C CNN
F 1 "74HC574" H 2900 1450 50  0000 C CNN
F 2 "Housings_DIP:DIP-20_W7.62mm_LongPads" H 2850 1800 50  0001 C CNN
F 3 "" H 2850 1800 50  0001 C CNN
	1    2850 1800
	1    0    0    -1  
$EndComp
$Comp
L 74LS574 U6
U 1 1 5B31DDA0
P 2850 3150
F 0 "U6" H 2850 3150 50  0000 C CNN
F 1 "74HC574" H 2900 2800 50  0000 C CNN
F 2 "Housings_DIP:DIP-20_W7.62mm_LongPads" H 2850 3150 50  0001 C CNN
F 3 "" H 2850 3150 50  0001 C CNN
	1    2850 3150
	1    0    0    -1  
$EndComp
$Comp
L 74LS574 U8
U 1 1 5B31EE02
P 2850 4600
F 0 "U8" H 2850 4600 50  0000 C CNN
F 1 "74HC574" H 2900 4250 50  0000 C CNN
F 2 "Housings_DIP:DIP-20_W7.62mm_LongPads" H 2850 4600 50  0001 C CNN
F 3 "" H 2850 4600 50  0001 C CNN
	1    2850 4600
	1    0    0    -1  
$EndComp
Wire Wire Line
	1100 700  1350 700 
Wire Wire Line
	1350 700  1350 5000
Wire Wire Line
	1350 2200 2150 2200
Wire Wire Line
	1350 3550 2150 3550
Connection ~ 1350 2200
Wire Wire Line
	1350 5000 2150 5000
Connection ~ 1350 3550
Wire Bus Line
	10600 900  1250 900 
Wire Bus Line
	1250 900  1250 3450
Wire Bus Line
	1450 3450 1450 4500
Wire Bus Line
	1100 1100 1450 1100
Entry Wire Line
	1450 1200 1550 1300
Entry Wire Line
	1450 1300 1550 1400
Entry Wire Line
	1450 1400 1550 1500
Entry Wire Line
	1450 1500 1550 1600
Entry Wire Line
	1450 1600 1550 1700
Entry Wire Line
	1450 1700 1550 1800
Entry Wire Line
	1450 1800 1550 1900
Entry Wire Line
	1450 1900 1550 2000
Wire Wire Line
	1550 1300 2150 1300
Wire Wire Line
	1550 1400 2150 1400
Wire Wire Line
	1550 1500 2150 1500
Wire Wire Line
	1550 1600 2150 1600
Wire Wire Line
	1550 1700 2150 1700
Wire Wire Line
	1550 1800 2150 1800
Wire Wire Line
	1550 1900 2150 1900
Wire Wire Line
	1550 2000 2150 2000
Text Label 1600 1300 0    60   ~ 0
insn_data_0
Text Label 1600 1400 0    60   ~ 0
insn_data_1
Text Label 1600 1500 0    60   ~ 0
insn_data_2
Text Label 1600 1600 0    60   ~ 0
insn_data_3
Text Label 1600 1700 0    60   ~ 0
insn_data_4
Text Label 1600 1800 0    60   ~ 0
insn_data_5
Text Label 1600 1900 0    60   ~ 0
insn_data_6
Text Label 1600 2000 0    60   ~ 0
insn_data_7
Wire Wire Line
	1150 2300 1150 6500
Wire Wire Line
	1150 2300 2150 2300
Wire Wire Line
	1150 3650 2150 3650
Wire Wire Line
	1150 5100 2150 5100
Connection ~ 1150 3650
Entry Wire Line
	1450 2550 1550 2650
Entry Wire Line
	1450 2650 1550 2750
Entry Wire Line
	1450 2750 1550 2850
Entry Wire Line
	1450 2850 1550 2950
Entry Wire Line
	1450 2950 1550 3050
Entry Wire Line
	1450 3050 1550 3150
Entry Wire Line
	1450 3150 1550 3250
Entry Wire Line
	1450 3250 1550 3350
Wire Wire Line
	1550 2650 2150 2650
Wire Wire Line
	1550 2750 2150 2750
Wire Wire Line
	1550 2850 2150 2850
Wire Wire Line
	1550 2950 2150 2950
Wire Wire Line
	1550 3050 2150 3050
Wire Wire Line
	1550 3150 2150 3150
Wire Wire Line
	1550 3250 2150 3250
Wire Wire Line
	1550 3350 2150 3350
Text Label 1600 2650 0    60   ~ 0
insn_data_8
Text Label 1600 2750 0    60   ~ 0
insn_data_9
Text Label 1600 2850 0    60   ~ 0
insn_data_10
Text Label 1600 2950 0    60   ~ 0
insn_data_11
Text Label 1600 3050 0    60   ~ 0
insn_data_12
Text Label 1600 3150 0    60   ~ 0
insn_data_13
Text Label 1600 3250 0    60   ~ 0
insn_data_14
Text Label 1600 3350 0    60   ~ 0
insn_data_15
Wire Bus Line
	1450 1100 1450 3250
Wire Bus Line
	1250 3450 1450 3450
Entry Wire Line
	1450 4000 1550 4100
Entry Wire Line
	1450 4100 1550 4200
Entry Wire Line
	1450 4200 1550 4300
Entry Wire Line
	1450 4300 1550 4400
Entry Wire Line
	1450 4400 1550 4500
Entry Wire Line
	1450 4500 1550 4600
Wire Wire Line
	1550 4100 2150 4100
Wire Wire Line
	1550 4200 2150 4200
Wire Wire Line
	1550 4300 2150 4300
Wire Wire Line
	1550 4400 2150 4400
Wire Wire Line
	1550 4500 2150 4500
Wire Wire Line
	1550 4600 2150 4600
Text Label 1600 4100 0    60   ~ 0
insn_addr_0
Text Label 1600 4200 0    60   ~ 0
insn_addr_1
Text Label 1600 4300 0    60   ~ 0
insn_addr_2
Text Label 1600 4400 0    60   ~ 0
insn_addr_3
Text Label 1600 4500 0    60   ~ 0
insn_addr_4
Text Label 1600 4600 0    60   ~ 0
insn_addr_5
Wire Wire Line
	2000 4700 2000 5100
Wire Wire Line
	2000 4800 2150 4800
Connection ~ 2000 5100
Wire Wire Line
	2000 4700 2150 4700
Connection ~ 2000 4800
Entry Wire Line
	4050 1300 4150 1400
Entry Wire Line
	4050 1400 4150 1500
Entry Wire Line
	4050 1500 4150 1600
Entry Wire Line
	4050 1600 4150 1700
Entry Wire Line
	4050 1700 4150 1800
Wire Wire Line
	3550 1300 4050 1300
Wire Wire Line
	3550 1400 4050 1400
Wire Wire Line
	3550 1500 4050 1500
Wire Wire Line
	3550 1600 4050 1600
Wire Wire Line
	3550 1700 4050 1700
Text Label 3650 1300 0    60   ~ 0
imm_0
Text Label 3650 1400 0    60   ~ 0
imm_1
Text Label 3650 1500 0    60   ~ 0
imm_2
Text Label 3650 1600 0    60   ~ 0
imm_3
Text Label 3650 1700 0    60   ~ 0
imm_4
Wire Bus Line
	4150 1400 4150 1900
Entry Wire Line
	4050 1800 4150 1900
Entry Wire Line
	4050 1900 4150 2000
Entry Wire Line
	4050 2000 4150 2100
Wire Wire Line
	3550 1800 4050 1800
Wire Wire Line
	3550 1900 4050 1900
Wire Wire Line
	3550 2000 4050 2000
Text Label 3650 1800 0    60   ~ 0
imm_5
Text Label 3650 1900 0    60   ~ 0
rb0
Text Label 3650 2000 0    60   ~ 0
rb1
Wire Bus Line
	4150 2000 4150 2750
Entry Wire Line
	4050 2650 4150 2750
Wire Bus Line
	4150 2750 10600 2750
Wire Wire Line
	3550 2650 4050 2650
Text Label 3650 2650 0    60   ~ 0
rb2
Wire Bus Line
	4150 2850 4150 3050
Entry Wire Line
	4050 2750 4150 2850
Entry Wire Line
	4050 2850 4150 2950
Entry Wire Line
	4050 2950 4150 3050
Wire Bus Line
	4150 3050 10600 3050
Wire Bus Line
	4150 1900 4650 1900
Wire Wire Line
	3550 2750 4050 2750
Wire Wire Line
	3550 2850 4050 2850
Wire Wire Line
	3550 2950 4050 2950
Text Label 3650 2750 0    60   ~ 0
ra0
Text Label 3650 2850 0    60   ~ 0
ra1
Text Label 3650 2950 0    60   ~ 0
ra2
Wire Wire Line
	3550 3050 4050 3050
Text Label 3650 3050 0    60   ~ 0
ra_set
Wire Wire Line
	4050 3050 4150 3150
Wire Wire Line
	4150 3150 10600 3150
Wire Bus Line
	4150 3250 4150 3450
Wire Bus Line
	4150 3450 10600 3450
Entry Wire Line
	4050 3150 4150 3250
Entry Wire Line
	4050 3250 4150 3350
Entry Wire Line
	4050 3350 4150 3450
Wire Wire Line
	3550 3150 4050 3150
Wire Wire Line
	3550 3250 4050 3250
Wire Wire Line
	3550 3350 4050 3350
Text Label 3650 3150 0    60   ~ 0
insn_0
Text Label 3650 3250 0    60   ~ 0
insn_1
Text Label 3650 3350 0    60   ~ 0
insn_2
Entry Wire Line
	4050 4100 4150 4200
Entry Wire Line
	4050 4200 4150 4300
Entry Wire Line
	4050 4300 4150 4400
Entry Wire Line
	4050 4400 4150 4500
Entry Wire Line
	4050 4500 4150 4600
Entry Wire Line
	4050 4600 4150 4700
Wire Wire Line
	3550 4100 4050 4100
Wire Wire Line
	3550 4200 4050 4200
Wire Wire Line
	3550 4300 4050 4300
Wire Wire Line
	3550 4400 4050 4400
Wire Wire Line
	3550 4500 4050 4500
Wire Wire Line
	3550 4600 4050 4600
Text Label 3550 4100 0    60   ~ 0
last_addr_0
Text Label 3550 4200 0    60   ~ 0
last_addr_1
Text Label 3550 4300 0    60   ~ 0
last_addr_2
Text Label 3550 4400 0    60   ~ 0
last_addr_3
Text Label 3550 4500 0    60   ~ 0
last_addr_4
Text Label 3550 4600 0    60   ~ 0
last_addr_5
Wire Bus Line
	4150 4200 4150 4700
Wire Bus Line
	4150 4700 10600 4700
Wire Bus Line
	4400 3450 4400 5500
Entry Wire Line
	4400 5300 4500 5400
Entry Wire Line
	4400 5400 4500 5500
Entry Wire Line
	4400 5500 4500 5600
Wire Wire Line
	4500 5400 4850 5400
Wire Wire Line
	4500 5500 4850 5500
Wire Wire Line
	4500 5600 4850 5600
Text Label 4500 5400 0    60   ~ 0
insn_0
Text Label 4500 5500 0    60   ~ 0
insn_1
Text Label 4500 5600 0    60   ~ 0
insn_2
Wire Wire Line
	6050 5450 10600 5450
Text HLabel 10600 5450 2    60   Output ~ 0
op_ext
$Comp
L 74LVC1G57 U9
U 1 1 5B321E97
P 6800 5850
F 0 "U9" H 6800 6050 60  0000 C CNN
F 1 "74LVC1G57" H 6800 5650 60  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-23-6_Handsoldering" H 6800 6050 60  0001 C CNN
F 3 "" H 6800 6050 60  0001 C CNN
	1    6800 5850
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR11
U 1 1 5B321F2F
P 5900 6500
F 0 "#PWR11" H 5900 6250 50  0001 C CNN
F 1 "GND" H 5900 6350 50  0000 C CNN
F 2 "" H 5900 6500 50  0001 C CNN
F 3 "" H 5900 6500 50  0001 C CNN
	1    5900 6500
	1    0    0    -1  
$EndComp
Wire Wire Line
	5900 5750 5900 6500
Wire Wire Line
	5900 5750 6450 5750
Wire Wire Line
	6200 5450 6200 6300
Wire Wire Line
	6200 5950 6450 5950
Connection ~ 6200 5450
Wire Bus Line
	4300 1900 4300 6100
Entry Wire Line
	4300 5750 4400 5850
Wire Wire Line
	4400 5850 6450 5850
$Comp
L 74LVC1G57 U10
U 1 1 5B32269F
P 7850 6200
F 0 "U10" H 7850 6400 60  0000 C CNN
F 1 "74LVC1G57" H 7850 6000 60  0000 C CNN
F 2 "TO_SOT_Packages_SMD:SOT-23-6_Handsoldering" H 7850 6400 60  0001 C CNN
F 3 "" H 7850 6400 60  0001 C CNN
	1    7850 6200
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR10
U 1 1 5B3226F6
P 7400 5200
F 0 "#PWR10" H 7400 5050 50  0001 C CNN
F 1 "+3V3" H 7400 5340 50  0000 C CNN
F 2 "" H 7400 5200 50  0001 C CNN
F 3 "" H 7400 5200 50  0001 C CNN
	1    7400 5200
	1    0    0    -1  
$EndComp
Wire Wire Line
	7400 5200 7400 6100
Wire Wire Line
	7400 6100 7500 6100
Wire Wire Line
	6200 6300 7500 6300
Connection ~ 6200 5950
Entry Wire Line
	4300 6100 4400 6200
Wire Wire Line
	4400 6200 7500 6200
Connection ~ 4300 1900
Connection ~ 4400 3450
Text Label 4800 5850 2    60   ~ 0
imm_0
Text Label 4800 6200 2    60   ~ 0
imm_1
Wire Wire Line
	7150 5850 8400 5850
Wire Wire Line
	8200 6200 8400 6200
Entry Wire Line
	8400 5850 8500 5950
Entry Wire Line
	8400 6200 8500 6300
Wire Bus Line
	8500 5950 8500 6300
Wire Bus Line
	8500 6300 10600 6300
Text Label 8400 5850 2    60   ~ 0
src_sel_0
Text Label 8500 6200 2    60   ~ 0
src_sel_1
Wire Bus Line
	4550 1900 10600 1900
Text HLabel 10600 1900 2    60   Output ~ 0
imm[0..5]
Text HLabel 10600 2750 2    60   Output ~ 0
rb[0..2]
Text HLabel 10600 3050 2    60   Output ~ 0
ra[0..2]
Text HLabel 10600 3150 2    60   Output ~ 0
ra_sel
Text HLabel 10600 3450 2    60   Output ~ 0
insn[0..2]
Text HLabel 10600 4700 2    60   Output ~ 0
last_addr[0..5]
Text HLabel 10600 6300 2    60   Output ~ 0
src_sel[0..1]
$Comp
L 74LS21 U7
U 1 1 5B32B2DF
P 7650 3950
F 0 "U7" H 7650 4050 50  0000 C CNN
F 1 "74LS21" H 7650 3850 50  0000 C CNN
F 2 "Housings_DIP:DIP-14_W7.62mm_LongPads" H 7650 3950 50  0001 C CNN
F 3 "" H 7650 3950 50  0001 C CNN
	1    7650 3950
	1    0    0    -1  
$EndComp
$Comp
L 74LS21 U7
U 2 1 5B32B3FC
P 5450 5450
F 0 "U7" H 5450 5550 50  0000 C CNN
F 1 "74LS21" H 5450 5350 50  0000 C CNN
F 2 "Housings_DIP:DIP-14_W7.62mm_LongPads" H 5450 5450 50  0001 C CNN
F 3 "" H 5450 5450 50  0001 C CNN
	2    5450 5450
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR9
U 1 1 5B32B4B4
P 4650 5000
F 0 "#PWR9" H 4650 4850 50  0001 C CNN
F 1 "+3V3" H 4650 5140 50  0000 C CNN
F 2 "" H 4650 5000 50  0001 C CNN
F 3 "" H 4650 5000 50  0001 C CNN
	1    4650 5000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4650 5000 4650 5300
Wire Wire Line
	4650 5300 4850 5300
$Comp
L 74HC04 U2
U 4 1 5B32B581
P 6250 4100
F 0 "U2" H 6400 4200 50  0000 C CNN
F 1 "74HC04" H 6450 4000 50  0000 C CNN
F 2 "Housings_DIP:DIP-14_W7.62mm_LongPads" H 6250 4100 50  0001 C CNN
F 3 "" H 6250 4100 50  0001 C CNN
	4    6250 4100
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR8
U 1 1 5B32B60A
P 5700 3650
F 0 "#PWR8" H 5700 3500 50  0001 C CNN
F 1 "+3V3" H 5700 3790 50  0000 C CNN
F 2 "" H 5700 3650 50  0001 C CNN
F 3 "" H 5700 3650 50  0001 C CNN
	1    5700 3650
	1    0    0    -1  
$EndComp
$Comp
L R R6
U 1 1 5B32B62E
P 5700 3850
F 0 "R6" V 5780 3850 50  0000 C CNN
F 1 "1K" V 5700 3850 50  0000 C CNN
F 2 "Resistors_THT:R_Axial_DIN0207_L6.3mm_D2.5mm_P7.62mm_Horizontal" V 5630 3850 50  0001 C CNN
F 3 "" H 5700 3850 50  0001 C CNN
	1    5700 3850
	1    0    0    -1  
$EndComp
Wire Wire Line
	5400 3150 5400 4100
Wire Wire Line
	5400 4100 5800 4100
Connection ~ 5400 3150
Wire Wire Line
	5700 4000 5700 4100
Connection ~ 5700 4100
Wire Wire Line
	5700 3650 5700 3700
Wire Wire Line
	6700 4100 7050 4100
Wire Bus Line
	6600 3050 6600 3900
Entry Wire Line
	6600 3700 6700 3800
Entry Wire Line
	6600 3800 6700 3900
Entry Wire Line
	6600 3900 6700 4000
Wire Wire Line
	6700 3800 7050 3800
Wire Wire Line
	6700 3900 7050 3900
Wire Wire Line
	6700 4000 7050 4000
Text Label 6750 3800 0    60   ~ 0
ra0
Text Label 6750 3900 0    60   ~ 0
ra1
Text Label 6750 4000 0    60   ~ 0
ra2
Text HLabel 10600 3950 2    60   Output ~ 0
is_jmp_s1
Wire Wire Line
	8250 3950 10600 3950
Text HLabel 10600 4300 2    60   Output ~ 0
ra_sel_inv
Wire Wire Line
	6850 4100 6850 4300
Wire Wire Line
	6850 4300 10600 4300
Connection ~ 6850 4100
NoConn ~ 3550 4700
NoConn ~ 3550 4800
Wire Wire Line
	7150 5750 8200 5750
Connection ~ 7400 5750
Wire Wire Line
	7150 5950 7150 6500
Wire Wire Line
	1150 6500 8200 6500
Wire Wire Line
	8200 6500 8200 6300
Connection ~ 7150 6500
Wire Wire Line
	8200 5750 8200 6100
Wire Wire Line
	5250 5650 5250 6500
Connection ~ 5900 6500
Wire Wire Line
	5250 5250 5250 5150
Wire Wire Line
	5250 5150 4650 5150
Connection ~ 4650 5150
Wire Wire Line
	2850 6500 2850 5150
Connection ~ 5250 6500
Wire Wire Line
	1050 3900 2850 3900
Wire Wire Line
	2850 3900 2850 4050
Wire Wire Line
	2850 3700 2850 3800
Wire Wire Line
	2850 2350 2850 2450
Wire Wire Line
	2850 2450 1150 2450
Connection ~ 1150 2450
Wire Wire Line
	2850 3800 1150 3800
Wire Wire Line
	1150 3800 1150 3750
Connection ~ 1150 3750
Wire Wire Line
	1050 3900 1050 1200
Wire Wire Line
	1050 1200 2850 1200
Wire Wire Line
	2850 1200 2850 1250
$Comp
L +3V3 #PWR7
U 1 1 5B35A0C9
P 2850 1200
F 0 "#PWR7" H 2850 1050 50  0001 C CNN
F 1 "+3V3" H 2850 1340 50  0000 C CNN
F 2 "" H 2850 1200 50  0001 C CNN
F 3 "" H 2850 1200 50  0001 C CNN
	1    2850 1200
	1    0    0    -1  
$EndComp
Connection ~ 1150 5100
Connection ~ 2850 6500
Wire Wire Line
	5700 3650 6200 3650
Wire Wire Line
	6200 3650 6200 4000
Wire Wire Line
	6200 4200 6200 5300
Wire Wire Line
	6200 5300 6100 5300
Wire Wire Line
	6100 5300 6100 5750
Connection ~ 6100 5750
$EndSCHEMATC
