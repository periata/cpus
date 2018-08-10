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
Sheet 7 8
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
L EPM3064ATC44-ALU6 U30
U 1 1 5B676976
P 4800 3950
F 0 "U30" V 4700 3950 60  0000 C CNN
F 1 "EPM3064ATC44-ALU6" V 4900 3950 60  0000 C CNN
F 2 "Package_QFP:TQFP-44_10x10mm_P0.8mm" H 5300 3850 60  0001 C CNN
F 3 "" H 5300 3850 60  0001 C CNN
	1    4800 3950
	1    0    0    -1  
$EndComp
Text HLabel 1400 3650 0    60   Input ~ 0
q_rbims1[0..5]
Entry Wire Line
	2300 3650 2400 3750
Entry Wire Line
	2300 3750 2400 3850
Entry Wire Line
	2300 3850 2400 3950
Entry Wire Line
	2300 3950 2400 4050
Entry Wire Line
	2300 4050 2400 4150
Entry Wire Line
	2300 4150 2400 4250
Text Label 2950 3750 2    60   ~ 0
q_rbims10
Text Label 2950 3850 2    60   ~ 0
q_rbims11
Text Label 2950 3950 2    60   ~ 0
q_rbims12
Text Label 2950 4050 2    60   ~ 0
q_rbims13
Text Label 2950 4150 2    60   ~ 0
q_rbims14
Text Label 2950 4250 2    60   ~ 0
q_rbims15
Text HLabel 1400 2950 0    60   Input ~ 0
q_ravals1[0..5]
Entry Wire Line
	2300 2950 2400 3050
Entry Wire Line
	2300 3050 2400 3150
Entry Wire Line
	2300 3150 2400 3250
Entry Wire Line
	2300 3250 2400 3350
Entry Wire Line
	2300 3350 2400 3450
Entry Wire Line
	2300 3450 2400 3550
Text Label 3000 3050 2    60   ~ 0
q_ravals10
Text Label 3000 3150 2    60   ~ 0
q_ravals11
Text Label 3000 3250 2    60   ~ 0
q_ravals12
Text Label 3000 3350 2    60   ~ 0
q_ravals13
Text Label 3000 3450 2    60   ~ 0
q_ravals14
Text Label 3000 3550 2    60   ~ 0
q_ravals15
Text HLabel 1400 4450 0    60   Input ~ 0
op_subcmp
Text HLabel 1400 4650 0    60   Input ~ 0
~op_xor
Text HLabel 1400 4850 0    60   Input ~ 0
~op_mov
Text HLabel 1400 5350 0    60   Input ~ 0
op_invert
$Comp
L GND #PWR2
U 1 1 5B677193
P 2800 6400
F 0 "#PWR2" H 2800 6150 50  0001 C CNN
F 1 "GND" H 2800 6250 50  0000 C CNN
F 2 "" H 2800 6400 50  0001 C CNN
F 3 "" H 2800 6400 50  0001 C CNN
	1    2800 6400
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR1
U 1 1 5B67737C
P 2600 950
F 0 "#PWR1" H 2600 800 50  0001 C CNN
F 1 "+3.3V" H 2600 1090 50  0000 C CNN
F 2 "" H 2600 950 50  0001 C CNN
F 3 "" H 2600 950 50  0001 C CNN
	1    2600 950 
	1    0    0    -1  
$EndComp
$Comp
L CONN_02X05 J4
U 1 1 5B677E93
P 6750 1000
F 0 "J4" H 6750 1300 50  0000 C CNN
F 1 "CONN_02X05" H 6750 700 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x05_Pitch2.54mm" H 6750 -200 50  0001 C CNN
F 3 "" H 6750 -200 50  0001 C CNN
	1    6750 1000
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR4
U 1 1 5B677E9A
P 7200 2900
F 0 "#PWR4" H 7200 2650 50  0001 C CNN
F 1 "GND" H 7200 2750 50  0000 C CNN
F 2 "" H 7200 2900 50  0001 C CNN
F 3 "" H 7200 2900 50  0001 C CNN
	1    7200 2900
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR3
U 1 1 5B677EA0
P 7100 750
F 0 "#PWR3" H 7100 600 50  0001 C CNN
F 1 "+3V3" H 7100 890 50  0000 C CNN
F 2 "" H 7100 750 50  0001 C CNN
F 3 "" H 7100 750 50  0001 C CNN
	1    7100 750 
	1    0    0    -1  
$EndComp
NoConn ~ 7000 1000
NoConn ~ 7000 1100
NoConn ~ 6500 1100
$Comp
L +3.3V #PWR5
U 1 1 5B678879
P 8700 1300
F 0 "#PWR5" H 8700 1150 50  0001 C CNN
F 1 "+3.3V" H 8700 1440 50  0000 C CNN
F 2 "" H 8700 1300 50  0001 C CNN
F 3 "" H 8700 1300 50  0001 C CNN
	1    8700 1300
	1    0    0    -1  
$EndComp
$Comp
L C_Small C1
U 1 1 5B6789BD
P 8150 1550
F 0 "C1" H 8160 1620 50  0000 L CNN
F 1 "100n" H 8160 1470 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 8150 1550 50  0001 C CNN
F 3 "" H 8150 1550 50  0001 C CNN
	1    8150 1550
	1    0    0    -1  
$EndComp
$Comp
L C_Small C13
U 1 1 5B678A2A
P 8350 1550
F 0 "C13" H 8360 1620 50  0000 L CNN
F 1 "100n" H 8360 1470 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 8350 1550 50  0001 C CNN
F 3 "" H 8350 1550 50  0001 C CNN
	1    8350 1550
	1    0    0    -1  
$EndComp
$Comp
L C_Small C14
U 1 1 5B678AA1
P 8550 1550
F 0 "C14" H 8560 1620 50  0000 L CNN
F 1 "100n" H 8560 1470 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 8550 1550 50  0001 C CNN
F 3 "" H 8550 1550 50  0001 C CNN
	1    8550 1550
	1    0    0    -1  
$EndComp
$Comp
L C_Small C15
U 1 1 5B678ACE
P 8750 1550
F 0 "C15" H 8760 1620 50  0000 L CNN
F 1 "100n" H 8760 1470 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 8750 1550 50  0001 C CNN
F 3 "" H 8750 1550 50  0001 C CNN
	1    8750 1550
	1    0    0    -1  
$EndComp
$Comp
L C_Small C16
U 1 1 5B678AF7
P 8950 1550
F 0 "C16" H 8960 1620 50  0000 L CNN
F 1 "100n" H 8960 1470 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 8950 1550 50  0001 C CNN
F 3 "" H 8950 1550 50  0001 C CNN
	1    8950 1550
	1    0    0    -1  
$EndComp
$Comp
L C_Small C17
U 1 1 5B678B20
P 9150 1550
F 0 "C17" H 9160 1620 50  0000 L CNN
F 1 "100n" H 9160 1470 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 9150 1550 50  0001 C CNN
F 3 "" H 9150 1550 50  0001 C CNN
	1    9150 1550
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR6
U 1 1 5B678C21
P 8700 1750
F 0 "#PWR6" H 8700 1500 50  0001 C CNN
F 1 "GND" H 8700 1600 50  0000 C CNN
F 2 "" H 8700 1750 50  0001 C CNN
F 3 "" H 8700 1750 50  0001 C CNN
	1    8700 1750
	1    0    0    -1  
$EndComp
$Comp
L 74LVC1G99 U3
U 1 1 5B6B9071
P 8400 3350
F 0 "U3" H 8400 3450 60  0000 C CNN
F 1 "74LVC1G99" H 8400 3250 60  0000 C CNN
F 2 "" H 8400 3350 60  0001 C CNN
F 3 "" H 8400 3350 60  0001 C CNN
	1    8400 3350
	1    0    0    -1  
$EndComp
$Comp
L 74LVC1G99 U4
U 1 1 5B6B912E
P 8400 4400
F 0 "U4" H 8400 4500 60  0000 C CNN
F 1 "74LVC1G99" H 8400 4300 60  0000 C CNN
F 2 "" H 8400 4400 60  0001 C CNN
F 3 "" H 8400 4400 60  0001 C CNN
	1    8400 4400
	1    0    0    -1  
$EndComp
$Comp
L 74LVC1G99 U5
U 1 1 5B6B9187
P 8400 5400
F 0 "U5" H 8400 5500 60  0000 C CNN
F 1 "74LVC1G99" H 8400 5300 60  0000 C CNN
F 2 "" H 8400 5400 60  0001 C CNN
F 3 "" H 8400 5400 60  0001 C CNN
	1    8400 5400
	1    0    0    -1  
$EndComp
$Comp
L 74LVC1G99 U6
U 1 1 5B6B9392
P 9850 3900
F 0 "U6" H 9850 4000 60  0000 C CNN
F 1 "74LVC1G99" H 9850 3800 60  0000 C CNN
F 2 "" H 9850 3900 60  0001 C CNN
F 3 "" H 9850 3900 60  0001 C CNN
	1    9850 3900
	1    0    0    -1  
$EndComp
$Comp
L 74LVC1G99 U7
U 1 1 5B6B93E7
P 9850 4900
F 0 "U7" H 9850 5000 60  0000 C CNN
F 1 "74LVC1G99" H 9850 4800 60  0000 C CNN
F 2 "" H 9850 4900 60  0001 C CNN
F 3 "" H 9850 4900 60  0001 C CNN
	1    9850 4900
	1    0    0    -1  
$EndComp
$Comp
L 74LVC1G99 U8
U 1 1 5B6B942C
P 9850 5900
F 0 "U8" H 9850 6000 60  0000 C CNN
F 1 "74LVC1G99" H 9850 5800 60  0000 C CNN
F 2 "" H 9850 5900 60  0001 C CNN
F 3 "" H 9850 5900 60  0001 C CNN
	1    9850 5900
	1    0    0    -1  
$EndComp
Text HLabel 1400 2750 0    60   Input ~ 0
~op_andor
$Comp
L 74LS32 U1
U 1 1 5B6BA745
P 2550 1950
F 0 "U1" H 2550 2000 50  0000 C CNN
F 1 "74LS32" H 2550 1900 50  0000 C CNN
F 2 "" H 2550 1950 50  0001 C CNN
F 3 "" H 2550 1950 50  0001 C CNN
	1    2550 1950
	0    -1   -1   0   
$EndComp
$Comp
L 74LS32 U1
U 2 1 5B6BA826
P 2950 2100
F 0 "U1" H 2950 2150 50  0000 C CNN
F 1 "74LS32" H 2950 2050 50  0000 C CNN
F 2 "" H 2950 2100 50  0001 C CNN
F 3 "" H 2950 2100 50  0001 C CNN
	2    2950 2100
	0    -1   -1   0   
$EndComp
$Comp
L 74LS32 U1
U 4 1 5B6BA867
P 3350 2000
F 0 "U1" H 3350 2050 50  0000 C CNN
F 1 "74LS32" H 3350 1950 50  0000 C CNN
F 2 "" H 3350 2000 50  0001 C CNN
F 3 "" H 3350 2000 50  0001 C CNN
	4    3350 2000
	0    -1   -1   0   
$EndComp
$Comp
L 74LS32 U2
U 1 1 5B6BA8B2
P 3750 2100
F 0 "U2" H 3750 2150 50  0000 C CNN
F 1 "74LS32" H 3750 2050 50  0000 C CNN
F 2 "" H 3750 2100 50  0001 C CNN
F 3 "" H 3750 2100 50  0001 C CNN
	1    3750 2100
	0    -1   -1   0   
$EndComp
$Comp
L 74LS32 U2
U 2 1 5B6BA8F5
P 6100 2100
F 0 "U2" H 6100 2150 50  0000 C CNN
F 1 "74LS32" H 6100 2050 50  0000 C CNN
F 2 "" H 6100 2100 50  0001 C CNN
F 3 "" H 6100 2100 50  0001 C CNN
	2    6100 2100
	1    0    0    -1  
$EndComp
$Comp
L 74LS32 U2
U 3 1 5B6BA9E2
P 6100 2600
F 0 "U2" H 6100 2650 50  0000 C CNN
F 1 "74LS32" H 6100 2550 50  0000 C CNN
F 2 "" H 6100 2600 50  0001 C CNN
F 3 "" H 6100 2600 50  0001 C CNN
	3    6100 2600
	1    0    0    -1  
$EndComp
$Comp
L 74LS32 U1
U 3 1 5B6BBCEA
P 3050 5250
F 0 "U1" H 3050 5300 50  0000 C CNN
F 1 "74LS32" H 3050 5200 50  0000 C CNN
F 2 "" H 3050 5250 50  0001 C CNN
F 3 "" H 3050 5250 50  0001 C CNN
	3    3050 5250
	1    0    0    -1  
$EndComp
Text HLabel 1400 6100 0    60   Input ~ 0
op_postinvert
Text HLabel 1400 5800 0    60   Input ~ 0
op_or
Text HLabel 1400 6250 0    60   Input ~ 0
~enable
Wire Bus Line
	1400 3650 2300 3650
Wire Bus Line
	2300 3650 2300 3750
Wire Bus Line
	2300 3750 2300 3850
Wire Bus Line
	2300 3850 2300 3950
Wire Bus Line
	2300 3950 2300 4050
Wire Bus Line
	2300 4050 2300 4150
Wire Wire Line
	2400 3750 3900 3750
Wire Wire Line
	2400 3850 3900 3850
Wire Wire Line
	2400 3950 3900 3950
Wire Wire Line
	2400 4050 3900 4050
Wire Wire Line
	2400 4150 3900 4150
Wire Wire Line
	2400 4250 3900 4250
Wire Bus Line
	1400 2950 2300 2950
Wire Bus Line
	2300 2950 2300 3050
Wire Bus Line
	2300 3050 2300 3150
Wire Bus Line
	2300 3150 2300 3250
Wire Bus Line
	2300 3250 2300 3350
Wire Bus Line
	2300 3350 2300 3450
Wire Wire Line
	2400 3050 2450 3050
Wire Wire Line
	2450 3050 3900 3050
Wire Wire Line
	2400 3150 2850 3150
Wire Wire Line
	2850 3150 3900 3150
Wire Wire Line
	2400 3250 3250 3250
Wire Wire Line
	3250 3250 3900 3250
Wire Wire Line
	2400 3350 3650 3350
Wire Wire Line
	3650 3350 3900 3350
Wire Wire Line
	2400 3450 3750 3450
Wire Wire Line
	3750 3450 3900 3450
Wire Wire Line
	2400 3550 3800 3550
Wire Wire Line
	3800 3550 3900 3550
Wire Wire Line
	1400 4450 2200 4450
Wire Wire Line
	2200 4450 3900 4450
Wire Wire Line
	1400 4650 3900 4650
Wire Wire Line
	1400 4850 3900 4850
Wire Wire Line
	1400 5350 2450 5350
Wire Wire Line
	2800 5450 2800 6350
Wire Wire Line
	2800 6350 2800 6400
Wire Wire Line
	2800 6350 4500 6350
Wire Wire Line
	4500 6350 4600 6350
Wire Wire Line
	4600 6350 4700 6350
Wire Wire Line
	4700 6350 4800 6350
Wire Wire Line
	4800 6350 4900 6350
Wire Wire Line
	4900 6350 5000 6350
Wire Wire Line
	5000 6350 5100 6350
Wire Wire Line
	5100 6350 8650 6350
Wire Wire Line
	8650 6350 8750 6350
Wire Wire Line
	8750 6350 10100 6350
Wire Wire Line
	10100 6350 10200 6350
Wire Wire Line
	5100 6350 5100 5150
Wire Wire Line
	4500 5150 4500 6350
Connection ~ 4500 6350
Wire Wire Line
	4600 5150 4600 6350
Connection ~ 4600 6350
Wire Wire Line
	4700 5150 4700 6350
Connection ~ 4700 6350
Wire Wire Line
	4800 5150 4800 6350
Connection ~ 4800 6350
Wire Wire Line
	4900 5150 4900 6350
Connection ~ 4900 6350
Wire Wire Line
	5000 5150 5000 6350
Connection ~ 5000 6350
Wire Wire Line
	2600 950  2600 1050
Wire Wire Line
	2600 1050 4400 1050
Wire Wire Line
	4400 1050 4500 1050
Wire Wire Line
	4500 1050 4600 1050
Wire Wire Line
	4600 1050 4700 1050
Wire Wire Line
	4700 1050 4700 2750
Wire Wire Line
	4600 1050 4600 2750
Connection ~ 4600 1050
Wire Wire Line
	4500 1050 4500 2750
Connection ~ 4500 1050
Wire Wire Line
	4400 1050 4400 2750
Connection ~ 4400 1050
Wire Wire Line
	5100 800  6500 800 
Wire Wire Line
	5200 900  6500 900 
Wire Wire Line
	5000 1000 6500 1000
Wire Wire Line
	6150 1200 6500 1200
Wire Wire Line
	7000 800  7200 800 
Wire Wire Line
	7200 800  7200 1200
Wire Wire Line
	7200 1200 7200 2850
Wire Wire Line
	7200 2850 7200 2900
Wire Wire Line
	7000 1200 7200 1200
Connection ~ 7200 1200
Wire Wire Line
	7000 900  7100 900 
Wire Wire Line
	7100 900  7550 900 
Wire Wire Line
	7100 900  7100 750 
Wire Wire Line
	5000 1000 5000 2750
Wire Wire Line
	6150 1100 4900 1100
Wire Wire Line
	4900 1100 4900 2750
Wire Wire Line
	5100 800  5100 2750
Wire Wire Line
	5200 900  5200 2750
Wire Wire Line
	6150 1100 6150 1200
Wire Wire Line
	8700 1300 8700 1450
Wire Wire Line
	8150 1450 8700 1450
Wire Wire Line
	8700 1450 9150 1450
Connection ~ 8700 1450
Wire Wire Line
	8150 1650 8700 1650
Wire Wire Line
	8700 1650 9150 1650
Wire Wire Line
	8700 1650 8700 1750
Connection ~ 8700 1650
Wire Wire Line
	5700 3150 6800 3150
Wire Wire Line
	6800 3150 6800 3450
Wire Wire Line
	6800 3450 7700 3450
Wire Wire Line
	5700 3250 6700 3250
Wire Wire Line
	6700 3250 6700 4000
Wire Wire Line
	6700 4000 9150 4000
Wire Wire Line
	5700 3350 6600 3350
Wire Wire Line
	6600 3350 6600 4500
Wire Wire Line
	6600 4500 7700 4500
Wire Wire Line
	5700 3450 6500 3450
Wire Wire Line
	6500 3450 6500 5000
Wire Wire Line
	6500 5000 9150 5000
Wire Wire Line
	5700 3550 6400 3550
Wire Wire Line
	6400 3550 6400 5500
Wire Wire Line
	6400 5500 7700 5500
Wire Wire Line
	5700 3650 6300 3650
Wire Wire Line
	6300 3650 6300 6000
Wire Wire Line
	6300 6000 9150 6000
Wire Wire Line
	2450 2550 2450 3050
Connection ~ 2450 3050
Wire Wire Line
	5450 2750 3850 2750
Wire Wire Line
	3850 2750 3450 2750
Wire Wire Line
	3450 2750 3050 2750
Wire Wire Line
	3050 2750 2650 2750
Wire Wire Line
	2650 2750 1400 2750
Wire Wire Line
	2650 2550 2650 2750
Wire Wire Line
	2850 2700 2850 3150
Connection ~ 2850 3150
Wire Wire Line
	3650 2700 3650 3350
Connection ~ 3650 3350
Wire Wire Line
	3250 2600 3250 3250
Connection ~ 3250 3250
Wire Wire Line
	3750 3450 3750 2800
Wire Wire Line
	3750 2800 5300 2800
Wire Wire Line
	5300 2800 5300 2000
Wire Wire Line
	5300 2000 5500 2000
Connection ~ 3750 3450
Wire Wire Line
	3800 3550 3800 2850
Wire Wire Line
	3800 2850 5400 2850
Wire Wire Line
	5400 2850 5400 2500
Wire Wire Line
	5400 2500 5500 2500
Connection ~ 3800 3550
Wire Wire Line
	3050 2750 3050 2700
Connection ~ 2650 2750
Wire Wire Line
	3450 2600 3450 2750
Connection ~ 3050 2750
Wire Wire Line
	3850 2700 3850 2750
Connection ~ 3450 2750
Wire Wire Line
	5450 2200 5450 2700
Wire Wire Line
	5450 2700 5450 2750
Wire Wire Line
	5450 2700 5500 2700
Connection ~ 3850 2750
Wire Wire Line
	5450 2200 5500 2200
Connection ~ 5450 2700
Wire Wire Line
	2550 1350 2550 1250
Wire Wire Line
	2550 1250 6000 1250
Wire Wire Line
	6000 1250 6000 1550
Wire Wire Line
	6000 1550 7100 1550
Wire Wire Line
	7100 1550 7100 3350
Wire Wire Line
	7100 3350 7700 3350
Wire Wire Line
	2950 1300 2950 1500
Wire Wire Line
	2950 1300 5950 1300
Wire Wire Line
	5950 1300 5950 1600
Wire Wire Line
	5950 1600 7050 1600
Wire Wire Line
	7050 1600 7050 3900
Wire Wire Line
	7050 3900 9150 3900
Wire Wire Line
	3350 1400 3350 1350
Wire Wire Line
	3350 1350 5900 1350
Wire Wire Line
	5900 1350 5900 1650
Wire Wire Line
	5900 1650 7000 1650
Wire Wire Line
	7000 1650 7000 4400
Wire Wire Line
	7000 4400 7700 4400
Wire Wire Line
	3750 1500 3750 1400
Wire Wire Line
	3750 1400 5850 1400
Wire Wire Line
	5850 1400 5850 1700
Wire Wire Line
	5850 1700 6950 1700
Wire Wire Line
	6950 1700 6950 4900
Wire Wire Line
	6950 4900 9150 4900
Wire Wire Line
	6700 2100 6900 2100
Wire Wire Line
	6900 2100 6900 5400
Wire Wire Line
	6900 5400 7700 5400
Wire Wire Line
	6700 2600 6850 2600
Wire Wire Line
	6850 2600 6850 5900
Wire Wire Line
	6850 5900 9150 5900
Wire Wire Line
	3650 5250 3750 5250
Wire Wire Line
	3750 5250 3750 4750
Wire Wire Line
	3750 4750 3900 4750
Wire Wire Line
	2200 4450 2200 5150
Wire Wire Line
	2200 5150 2450 5150
Connection ~ 2200 4450
Wire Wire Line
	1400 6100 7600 6100
Wire Wire Line
	7600 6100 9050 6100
Wire Wire Line
	9050 6100 9150 6100
Wire Wire Line
	9050 4100 9050 5100
Wire Wire Line
	9050 5100 9050 6100
Wire Wire Line
	9050 5100 9150 5100
Connection ~ 9050 6100
Wire Wire Line
	9050 4100 9150 4100
Connection ~ 9050 5100
Wire Wire Line
	7600 3550 7600 4600
Wire Wire Line
	7600 4600 7600 5600
Wire Wire Line
	7600 5600 7600 6100
Wire Wire Line
	7600 5600 7700 5600
Connection ~ 7600 6100
Wire Wire Line
	7600 4600 7700 4600
Connection ~ 7600 5600
Wire Wire Line
	7600 3550 7700 3550
Connection ~ 7600 4600
Wire Wire Line
	1400 5800 7500 5800
Wire Wire Line
	7500 5800 9000 5800
Wire Wire Line
	9000 5800 9150 5800
Wire Wire Line
	7500 3250 7500 4300
Wire Wire Line
	7500 4300 7500 5300
Wire Wire Line
	7500 5300 7500 5800
Wire Wire Line
	7500 5300 7700 5300
Connection ~ 7500 5800
Wire Wire Line
	7500 4300 7700 4300
Connection ~ 7500 5300
Wire Wire Line
	7500 3250 7700 3250
Connection ~ 7500 4300
Wire Wire Line
	9000 3800 9000 4800
Wire Wire Line
	9000 4800 9000 5800
Wire Wire Line
	9000 4800 9150 4800
Connection ~ 9000 5800
Wire Wire Line
	9000 3800 9150 3800
Connection ~ 9000 4800
Wire Wire Line
	8950 5700 9150 5700
Wire Wire Line
	8950 3700 8950 4700
Wire Wire Line
	8950 4700 8950 5700
Wire Wire Line
	8950 5700 8950 6250
Wire Wire Line
	8950 6250 1400 6250
Wire Wire Line
	8950 4700 9150 4700
Connection ~ 8950 5700
Wire Wire Line
	8950 3700 9150 3700
Connection ~ 8950 4700
Wire Wire Line
	7400 3150 7400 4200
Wire Wire Line
	7400 4200 7400 5200
Wire Wire Line
	7400 5200 7400 6200
Wire Wire Line
	7400 5200 7700 5200
Wire Wire Line
	7400 4200 7700 4200
Connection ~ 7400 5200
Wire Wire Line
	7400 3150 7700 3150
Connection ~ 7400 4200
Connection ~ 2800 6350
Connection ~ 5100 6350
Wire Wire Line
	8750 5850 8750 6350
Connection ~ 8750 6350
Wire Wire Line
	10100 4350 10100 5350
Wire Wire Line
	10100 5350 10100 6350
Wire Wire Line
	10100 5350 10200 5350
Connection ~ 10100 6350
Wire Wire Line
	10100 4350 10200 4350
Connection ~ 10100 5350
Wire Wire Line
	8650 3800 8650 4850
Wire Wire Line
	8650 4850 8650 6350
Wire Wire Line
	8650 4850 8750 4850
Connection ~ 8650 6350
Wire Wire Line
	8650 3800 8750 3800
Connection ~ 8650 4850
Wire Wire Line
	7550 900  7550 1800
Wire Wire Line
	7550 1800 7550 2900
Wire Wire Line
	7550 2900 8050 2900
Wire Wire Line
	8050 2900 8150 2900
Wire Wire Line
	8150 2900 9500 2900
Wire Wire Line
	9500 2900 9600 2900
Connection ~ 7100 900 
Wire Wire Line
	8050 2900 8050 3950
Wire Wire Line
	8050 3950 8050 4950
Wire Wire Line
	8050 3950 8150 3950
Connection ~ 8050 2900
Wire Wire Line
	8050 4950 8150 4950
Connection ~ 8050 3950
Wire Wire Line
	9600 2900 9600 3450
Connection ~ 8150 2900
Wire Wire Line
	9500 2900 9500 4450
Wire Wire Line
	9500 4450 9500 5450
Wire Wire Line
	9500 4450 9600 4450
Connection ~ 9500 2900
Wire Wire Line
	9500 5450 9600 5450
Connection ~ 9500 4450
Wire Wire Line
	5900 2800 5900 2850
Wire Wire Line
	5900 2850 7200 2850
Connection ~ 7200 2850
Wire Wire Line
	5900 1900 5900 1800
Wire Wire Line
	5900 1800 7550 1800
Connection ~ 7550 1800
Text HLabel 11000 6050 3    60   3State ~ 0
out[0..5]
Entry Wire Line
	10900 5900 11000 6000
Wire Bus Line
	11000 6050 11000 6000
Wire Bus Line
	11000 6000 11000 5500
Wire Bus Line
	11000 5500 11000 5000
Wire Bus Line
	11000 5000 11000 4500
Wire Bus Line
	11000 4500 11000 4000
Wire Bus Line
	11000 4000 11000 3450
Entry Wire Line
	10900 3350 11000 3450
Wire Wire Line
	9100 3350 10900 3350
Entry Wire Line
	10900 3900 11000 4000
Entry Wire Line
	10900 4400 11000 4500
Entry Wire Line
	10900 4900 11000 5000
Entry Wire Line
	10900 5400 11000 5500
Wire Wire Line
	10550 3900 10900 3900
Wire Wire Line
	9100 4400 10900 4400
Wire Wire Line
	10550 4900 10900 4900
Wire Wire Line
	9100 5400 10900 5400
Wire Wire Line
	10550 5900 10750 5900
Wire Wire Line
	10750 5900 10900 5900
Text HLabel 10750 6050 3    60   3State ~ 0
negative
Wire Wire Line
	10750 6050 10750 5900
Connection ~ 10750 5900
Text Label 10800 3350 2    60   ~ 0
out0
Text Label 10800 3900 2    60   ~ 0
out1
Text Label 10800 4400 2    60   ~ 0
out2
Text Label 10800 4900 2    60   ~ 0
out3
Text Label 10800 5400 2    60   ~ 0
out4
Text Label 10800 5900 2    60   ~ 0
out5
Text Notes 950  7750 0    60   ~ 0
NOTES\n\n~op_andor~ enables the 'B' input to the output gates when low, taken from RAVAL. Operation defaults to 'AND'.  \nWhen op_or is high, output from ALU6 is inverted then ORed.  op_invert should be used to cause \nanother inversion first. op_postinvert applies a final inversion of the result if required.\n\nUseful operations (a = RAVAL, b = RBIN):\na + b: defaults\na - b: subcmp\na ^ b: ~xor~\nb: ~mov~\n~b~: ~mov~ + invert\na | b: ~mov~ + invert + ~andor~ + or\na & b: ~mov~ + ~andor~\n
Text HLabel 6200 7000 3    60   Output ~ 0
carry_out
Wire Wire Line
	5700 4450 6200 4450
Wire Wire Line
	6200 4450 6200 7000
$Comp
L +3.3V #PWR?
U 1 1 5B6C5F61
P 10250 1300
F 0 "#PWR?" H 10250 1150 50  0001 C CNN
F 1 "+3.3V" H 10250 1440 50  0000 C CNN
F 2 "" H 10250 1300 50  0001 C CNN
F 3 "" H 10250 1300 50  0001 C CNN
	1    10250 1300
	1    0    0    -1  
$EndComp
$Comp
L C_Small C?
U 1 1 5B6C5F67
P 9700 1550
F 0 "C?" H 9710 1620 50  0000 L CNN
F 1 "100n" H 9710 1470 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 9700 1550 50  0001 C CNN
F 3 "" H 9700 1550 50  0001 C CNN
	1    9700 1550
	1    0    0    -1  
$EndComp
$Comp
L C_Small C?
U 1 1 5B6C5F6D
P 9900 1550
F 0 "C?" H 9910 1620 50  0000 L CNN
F 1 "100n" H 9910 1470 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 9900 1550 50  0001 C CNN
F 3 "" H 9900 1550 50  0001 C CNN
	1    9900 1550
	1    0    0    -1  
$EndComp
$Comp
L C_Small C?
U 1 1 5B6C5F73
P 10100 1550
F 0 "C?" H 10110 1620 50  0000 L CNN
F 1 "100n" H 10110 1470 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 10100 1550 50  0001 C CNN
F 3 "" H 10100 1550 50  0001 C CNN
	1    10100 1550
	1    0    0    -1  
$EndComp
$Comp
L C_Small C?
U 1 1 5B6C5F79
P 10300 1550
F 0 "C?" H 10310 1620 50  0000 L CNN
F 1 "100n" H 10310 1470 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 10300 1550 50  0001 C CNN
F 3 "" H 10300 1550 50  0001 C CNN
	1    10300 1550
	1    0    0    -1  
$EndComp
$Comp
L C_Small C?
U 1 1 5B6C5F7F
P 10500 1550
F 0 "C?" H 10510 1620 50  0000 L CNN
F 1 "100n" H 10510 1470 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 10500 1550 50  0001 C CNN
F 3 "" H 10500 1550 50  0001 C CNN
	1    10500 1550
	1    0    0    -1  
$EndComp
$Comp
L C_Small C?
U 1 1 5B6C5F85
P 10700 1550
F 0 "C?" H 10710 1620 50  0000 L CNN
F 1 "100n" H 10710 1470 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 10700 1550 50  0001 C CNN
F 3 "" H 10700 1550 50  0001 C CNN
	1    10700 1550
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR?
U 1 1 5B6C5F8B
P 10250 1750
F 0 "#PWR?" H 10250 1500 50  0001 C CNN
F 1 "GND" H 10250 1600 50  0000 C CNN
F 2 "" H 10250 1750 50  0001 C CNN
F 3 "" H 10250 1750 50  0001 C CNN
	1    10250 1750
	1    0    0    -1  
$EndComp
Wire Wire Line
	10250 1300 10250 1450
Wire Wire Line
	9700 1450 10250 1450
Wire Wire Line
	10250 1450 10700 1450
Connection ~ 10250 1450
Wire Wire Line
	9700 1650 10250 1650
Wire Wire Line
	10250 1650 10700 1650
Wire Wire Line
	10250 1650 10250 1750
Connection ~ 10250 1650
$EndSCHEMATC
