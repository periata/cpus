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
Sheet 4 8
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 1050 1200 0    60   Input ~ 0
ra[0..2]
Text HLabel 1050 700  0    60   Input ~ 0
ra_set
Text HLabel 1050 2250 0    60   Input ~ 0
rb[0..2]
Text HLabel 1150 4150 0    60   Input ~ 0
op_ext
$Comp
L EPM240T100C5_REGFILE8X6_V1 U12
U 1 1 5B32A762
P 4900 3750
F 0 "U12" H 4900 3850 60  0000 C CNN
F 1 "EPM240T100C5_REGFILE8X6_V1" H 4950 3650 60  0000 C CNN
F 2 "Package_QFP:TQFP-100_14x14mm_P0.5mm" H 4900 3750 60  0001 C CNN
F 3 "" H 4900 3750 60  0001 C CNN
	1    4900 3750
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR12
U 1 1 5B32A842
P 2350 1300
F 0 "#PWR12" H 2350 1150 50  0001 C CNN
F 1 "+3V3" H 2350 1440 50  0000 C CNN
F 2 "" H 2350 1300 50  0001 C CNN
F 3 "" H 2350 1300 50  0001 C CNN
	1    2350 1300
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR14
U 1 1 5B32A8D0
P 5800 1700
F 0 "#PWR14" H 5800 1450 50  0001 C CNN
F 1 "GND" H 5800 1550 50  0000 C CNN
F 2 "" H 5800 1700 50  0001 C CNN
F 3 "" H 5800 1700 50  0001 C CNN
	1    5800 1700
	1    0    0    -1  
$EndComp
$Comp
L CONN_02X05 J3
U 1 1 5B32AD56
P 4600 6600
F 0 "J3" H 4600 6900 50  0000 C CNN
F 1 "CONN_02X05" H 4600 6300 50  0000 C CNN
F 2 "Pin_Headers:Pin_Header_Straight_2x05_Pitch2.54mm" H 4600 5400 50  0001 C CNN
F 3 "" H 4600 5400 50  0001 C CNN
	1    4600 6600
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR18
U 1 1 5B32AEBB
P 5050 7050
F 0 "#PWR18" H 5050 6800 50  0001 C CNN
F 1 "GND" H 5050 6900 50  0000 C CNN
F 2 "" H 5050 7050 50  0001 C CNN
F 3 "" H 5050 7050 50  0001 C CNN
	1    5050 7050
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR17
U 1 1 5B32AF3C
P 4950 6200
F 0 "#PWR17" H 4950 6050 50  0001 C CNN
F 1 "+3V3" H 4950 6340 50  0000 C CNN
F 2 "" H 4950 6200 50  0001 C CNN
F 3 "" H 4950 6200 50  0001 C CNN
	1    4950 6200
	1    0    0    -1  
$EndComp
Entry Bus Bus
	2050 2250 2150 2350
Entry Bus Bus
	2050 2350 2150 2450
Entry Bus Bus
	2050 2450 2150 2550
Text HLabel 1050 850  0    60   Input ~ 0
ra_set_inv
Entry Wire Line
	1850 2550 1950 2650
Entry Wire Line
	1850 2650 1950 2750
Entry Wire Line
	1850 2750 1950 2850
Text Label 2100 2750 0    60   ~ 0
rb1
Text Label 2100 2850 0    60   ~ 0
rb2
Text GLabel 950  3050 0    60   Input ~ 0
clk0del
Text GLabel 3550 1750 0    60   Input ~ 0
clk_edge
$Comp
L C_Small C12
U 1 1 5B33339F
P 4950 1500
F 0 "C12" H 4960 1570 50  0000 L CNN
F 1 "100n" H 4960 1420 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 4950 1500 50  0001 C CNN
F 3 "" H 4950 1500 50  0001 C CNN
	1    4950 1500
	0    1    1    0   
$EndComp
$Comp
L C_Small C10
U 1 1 5B333738
P 4500 1450
F 0 "C10" H 4510 1520 50  0000 L CNN
F 1 "100n" H 4510 1370 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 4500 1450 50  0001 C CNN
F 3 "" H 4500 1450 50  0001 C CNN
	1    4500 1450
	0    1    1    0   
$EndComp
$Comp
L C_Small C11
U 1 1 5B3337C4
P 5400 1450
F 0 "C11" H 5410 1520 50  0000 L CNN
F 1 "100n" H 5410 1370 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 5400 1450 50  0001 C CNN
F 3 "" H 5400 1450 50  0001 C CNN
	1    5400 1450
	0    1    1    0   
$EndComp
$Comp
L C_Small C9
U 1 1 5B33382D
P 4750 1400
F 0 "C9" H 4760 1470 50  0000 L CNN
F 1 "100n" H 4760 1320 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 4750 1400 50  0001 C CNN
F 3 "" H 4750 1400 50  0001 C CNN
	1    4750 1400
	0    1    1    0   
$EndComp
$Comp
L C_Small C8
U 1 1 5B33389D
P 5150 1350
F 0 "C8" H 5160 1420 50  0000 L CNN
F 1 "100n" H 5160 1270 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 5150 1350 50  0001 C CNN
F 3 "" H 5150 1350 50  0001 C CNN
	1    5150 1350
	0    1    1    0   
$EndComp
$Comp
L C_Small C7
U 1 1 5B333902
P 4950 1300
F 0 "C7" H 4960 1370 50  0000 L CNN
F 1 "100n" H 4960 1220 50  0000 L CNN
F 2 "Capacitors_SMD:C_0805_HandSoldering" H 4950 1300 50  0001 C CNN
F 3 "" H 4950 1300 50  0001 C CNN
	1    4950 1300
	0    1    1    0   
$EndComp
$Comp
L 74HC365 U11
U 1 1 5B3432F0
P 8350 2550
F 0 "U11" H 8350 2550 50  0000 C CNN
F 1 "74HC365" H 8400 2350 50  0000 C CNN
F 2 "Housings_SOIC:SOIC-16_3.9x9.9mm_Pitch1.27mm" H 8350 2550 50  0001 C CNN
F 3 "" H 8350 2550 50  0001 C CNN
	1    8350 2550
	1    0    0    -1  
$EndComp
$Comp
L 74HC365 U13
U 1 1 5B34339A
P 8350 4650
F 0 "U13" H 8350 4650 50  0000 C CNN
F 1 "74HC365" H 8400 4450 50  0000 C CNN
F 2 "Housings_SOIC:SOIC-16_3.9x9.9mm_Pitch1.27mm" H 8350 4650 50  0001 C CNN
F 3 "" H 8350 4650 50  0001 C CNN
	1    8350 4650
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR16
U 1 1 5B345ABE
P 7500 5200
F 0 "#PWR16" H 7500 4950 50  0001 C CNN
F 1 "GND" H 7500 5050 50  0000 C CNN
F 2 "" H 7500 5200 50  0001 C CNN
F 3 "" H 7500 5200 50  0001 C CNN
	1    7500 5200
	1    0    0    -1  
$EndComp
$Comp
L GND #PWR15
U 1 1 5B345E24
P 7550 3100
F 0 "#PWR15" H 7550 2850 50  0001 C CNN
F 1 "GND" H 7550 2950 50  0000 C CNN
F 2 "" H 7550 3100 50  0001 C CNN
F 3 "" H 7550 3100 50  0001 C CNN
	1    7550 3100
	1    0    0    -1  
$EndComp
Entry Wire Line
	9350 2150 9450 2050
Entry Wire Line
	9350 2250 9450 2150
Entry Wire Line
	9350 2350 9450 2250
Entry Wire Line
	9350 2450 9450 2350
Entry Wire Line
	9350 2550 9450 2450
Entry Wire Line
	9350 2650 9450 2550
Entry Wire Line
	9350 4250 9450 4150
Entry Wire Line
	9350 4350 9450 4250
Entry Wire Line
	9350 4450 9450 4350
Entry Wire Line
	9350 4550 9450 4450
Entry Wire Line
	9350 4650 9450 4550
Entry Wire Line
	9350 4750 9450 4650
Text Label 9100 2150 0    60   ~ 0
raq0
Text Label 9100 2250 0    60   ~ 0
raq1
Text Label 9100 2350 0    60   ~ 0
raq2
Text Label 9100 2450 0    60   ~ 0
raq3
Text Label 9100 2550 0    60   ~ 0
raq4
Text Label 9100 2650 0    60   ~ 0
raq5
Text Label 9100 4250 0    60   ~ 0
raq0
Text Label 9100 4350 0    60   ~ 0
raq1
Text Label 9100 4450 0    60   ~ 0
raq2
Text Label 9100 4550 0    60   ~ 0
raq3
Text Label 9100 4650 0    60   ~ 0
raq4
Text Label 9100 4750 0    60   ~ 0
raq5
Entry Wire Line
	7000 4950 7100 5050
Entry Wire Line
	7000 5050 7100 5150
Entry Wire Line
	7000 5150 7100 5250
Entry Wire Line
	7000 5250 7100 5350
Entry Wire Line
	7000 5350 7100 5450
Entry Wire Line
	7000 5450 7100 5550
Text Label 6750 2850 0    60   ~ 0
raqi0
Text Label 6750 2950 0    60   ~ 0
raqi1
Text Label 6750 3050 0    60   ~ 0
raqi2
Text Label 6750 3150 0    60   ~ 0
raqi3
Text Label 6750 3250 0    60   ~ 0
raqi4
Text Label 6750 3350 0    60   ~ 0
raqi5
Entry Wire Line
	7050 3550 7150 3650
Entry Wire Line
	7050 3650 7150 3750
Entry Wire Line
	7050 3750 7150 3850
Entry Wire Line
	7050 3850 7150 3950
Entry Wire Line
	7050 3950 7150 4050
Entry Wire Line
	7050 4050 7150 4150
Text Label 6750 3550 0    60   ~ 0
rb0q0
Text Label 6750 3650 0    60   ~ 0
rb0q1
Text Label 6750 3750 0    60   ~ 0
rb0q2
Text Label 6750 3850 0    60   ~ 0
rb0q3
Text Label 6750 3950 0    60   ~ 0
rb0q4
Text Label 6750 4050 0    60   ~ 0
rb0q5
Entry Wire Line
	7050 2850 7150 2950
Entry Wire Line
	7050 2950 7150 3050
Entry Wire Line
	7050 3050 7150 3150
Entry Wire Line
	7050 3150 7150 3250
Entry Wire Line
	7050 3250 7150 3350
Entry Wire Line
	7050 3350 7150 3450
Text Label 6750 4950 0    60   ~ 0
rb1q0
Text Label 6750 5050 0    60   ~ 0
rb1q1
Text Label 6750 5150 0    60   ~ 0
rb1q2
Text Label 6750 5250 0    60   ~ 0
rb1q3
Text Label 6750 5350 0    60   ~ 0
rb1q4
Text Label 6750 5450 0    60   ~ 0
rb1q5
Text HLabel 10650 2050 2    60   Output ~ 0
raq[0..5]
Text HLabel 10650 3500 2    60   Output ~ 0
raqi[0..5]
Text HLabel 10650 3750 2    60   Output ~ 0
rb0q[0..5]
Text HLabel 10650 5600 2    60   Output ~ 0
rb1q[0..5]
Entry Wire Line
	1200 2050 1300 2150
Entry Wire Line
	1200 1950 1300 2050
Entry Wire Line
	1200 1850 1300 1950
Text Label 1700 1950 2    60   ~ 0
rw0_0
Text Label 1700 2050 2    60   ~ 0
rw0_1
Text Label 1700 2150 2    60   ~ 0
rw0_2
Text Label 2150 2350 2    60   ~ 0
ra0
Text Label 2150 2450 2    60   ~ 0
ra1
Text Label 2150 2550 2    60   ~ 0
ra2
Entry Wire Line
	1150 4650 1250 4750
Entry Wire Line
	1150 4550 1250 4650
Entry Wire Line
	1150 4450 1250 4550
Text Label 1550 4550 2    60   ~ 0
rw1_0
Text Label 1550 4650 2    60   ~ 0
rw1_1
Text Label 1550 4750 2    60   ~ 0
rw1_2
Text HLabel 1100 4350 0    60   Input ~ 0
rw1[0..2]
Text HLabel 1000 1650 0    60   Input ~ 0
rw0[0..2]
Text HLabel 1100 5050 0    60   Input ~ 0
we0
Text HLabel 1100 5150 0    60   Input ~ 0
we1
Entry Wire Line
	1150 6050 1250 6150
Entry Wire Line
	1150 5950 1250 6050
Entry Wire Line
	1150 5850 1250 5950
Text Label 1550 5950 2    60   ~ 0
wd0_0
Text Label 1550 6050 2    60   ~ 0
wd0_1
Text Label 1550 6150 2    60   ~ 0
wd0_2
Entry Wire Line
	1150 6350 1250 6450
Entry Wire Line
	1150 6250 1250 6350
Entry Wire Line
	1150 6150 1250 6250
Text Label 1550 6250 2    60   ~ 0
wd0_3
Text Label 1550 6350 2    60   ~ 0
wd0_4
Text Label 1550 6450 2    60   ~ 0
wd0_5
Entry Wire Line
	1150 7200 1250 7300
Entry Wire Line
	1150 7100 1250 7200
Entry Wire Line
	1150 7000 1250 7100
Text Label 1550 7100 2    60   ~ 0
wd1_0
Text Label 1550 7200 2    60   ~ 0
wd1_1
Text Label 1550 7300 2    60   ~ 0
wd1_2
Text HLabel 1100 6900 0    60   Input ~ 0
wd1[0..5]
Entry Wire Line
	1150 7500 1250 7600
Entry Wire Line
	1150 7400 1250 7500
Entry Wire Line
	1150 7300 1250 7400
Text Label 1550 7400 2    60   ~ 0
wd1_3
Text Label 1550 7500 2    60   ~ 0
wd1_4
Text Label 1550 7600 2    60   ~ 0
wd1_5
Text Label 1850 2450 1    60   ~ 0
rb
Text Label 2050 1450 1    60   ~ 0
ra
$Comp
L +3V3 #PWR13
U 1 1 5B35B72D
P 8000 1450
F 0 "#PWR13" H 8000 1300 50  0001 C CNN
F 1 "+3V3" H 8000 1590 50  0000 C CNN
F 2 "" H 8000 1450 50  0001 C CNN
F 3 "" H 8000 1450 50  0001 C CNN
	1    8000 1450
	1    0    0    -1  
$EndComp
NoConn ~ 4850 6600
NoConn ~ 4850 6700
NoConn ~ 4350 6700
Text HLabel 10650 950  2    60   Output ~ 0
ra0q[0..5]
Entry Wire Line
	7350 950  7450 1050
Entry Wire Line
	7450 950  7550 1050
Entry Wire Line
	7300 950  7400 1050
Entry Wire Line
	7400 950  7500 1050
Entry Wire Line
	7500 950  7600 1050
Entry Wire Line
	7250 950  7350 1050
Wire Wire Line
	4200 1350 4200 1850
Wire Wire Line
	700  1300 4850 1300
Wire Wire Line
	4100 1650 4900 1650
Wire Wire Line
	4900 1650 4900 1850
Wire Wire Line
	4800 1450 4800 1850
Connection ~ 4800 1650
Wire Wire Line
	4700 1650 4700 1850
Connection ~ 4700 1650
Wire Wire Line
	4600 1400 4600 1850
Connection ~ 4600 1650
Wire Wire Line
	4500 1650 4500 1850
Connection ~ 4500 1650
Wire Wire Line
	4400 1650 4400 1850
Connection ~ 4400 1650
Wire Wire Line
	4300 1450 4300 1850
Connection ~ 4300 1650
Wire Wire Line
	5000 1850 5000 1650
Wire Wire Line
	5000 1650 5800 1650
Wire Wire Line
	5100 1500 5100 1850
Connection ~ 5100 1650
Wire Wire Line
	5200 1550 5200 1850
Connection ~ 5200 1650
Wire Wire Line
	5350 1650 5300 1650
Wire Wire Line
	5300 1400 5300 1850
Connection ~ 5350 1650
Wire Wire Line
	5400 1650 5400 1850
Connection ~ 5400 1650
Wire Wire Line
	5500 1650 5500 1850
Connection ~ 5500 1650
Wire Wire Line
	5600 1450 5600 1850
Connection ~ 5600 1650
Wire Wire Line
	5700 1350 5700 1850
Connection ~ 5700 1650
Wire Wire Line
	4100 5750 4100 6400
Wire Wire Line
	4100 6400 4350 6400
Wire Wire Line
	4200 5750 4200 6500
Wire Wire Line
	4200 6500 4350 6500
Wire Wire Line
	3900 5750 3900 6600
Wire Wire Line
	3900 6600 4350 6600
Wire Wire Line
	4000 5750 4000 6800
Wire Wire Line
	4000 6800 4350 6800
Wire Wire Line
	4850 6400 5050 6400
Wire Wire Line
	5050 6400 5050 7050
Wire Wire Line
	4850 6800 5050 6800
Connection ~ 5050 6800
Wire Wire Line
	4850 6500 4950 6500
Wire Wire Line
	4950 6500 4950 6200
Wire Bus Line
	1050 1200 2050 1200
Wire Bus Line
	2050 1200 2050 2450
Wire Wire Line
	2150 2350 3100 2350
Wire Wire Line
	2150 2450 3100 2450
Wire Wire Line
	2150 2550 3100 2550
Wire Bus Line
	1050 2250 1850 2250
Wire Bus Line
	1850 2250 1850 2750
Wire Wire Line
	1950 2650 3100 2650
Wire Wire Line
	1950 2750 3100 2750
Wire Wire Line
	1950 2850 3100 2850
Connection ~ 4200 1650
Connection ~ 2450 2350
Wire Wire Line
	2450 1350 2450 1300
Connection ~ 2450 1300
Connection ~ 2550 1300
Connection ~ 2550 2450
Wire Wire Line
	2650 1300 2650 1350
Connection ~ 2650 1300
Connection ~ 2650 2550
Connection ~ 2750 2650
Connection ~ 2750 1300
Connection ~ 2850 2750
Wire Wire Line
	2850 1350 2850 1300
Connection ~ 2850 1300
Connection ~ 2950 2850
Connection ~ 2950 1300
Wire Wire Line
	2800 2350 2800 3850
Wire Wire Line
	2800 3850 3100 3850
Connection ~ 2800 2350
Wire Wire Line
	2900 2450 2900 3950
Wire Wire Line
	2900 3950 3100 3950
Connection ~ 2900 2450
Wire Wire Line
	3000 2550 3000 4050
Wire Wire Line
	3000 4050 3100 4050
Connection ~ 3000 2550
Wire Wire Line
	2750 4250 3100 4250
Wire Wire Line
	2850 4350 3100 4350
Wire Wire Line
	2950 4450 3100 4450
Connection ~ 2350 1300
Wire Wire Line
	950  3050 3100 3050
Wire Wire Line
	4100 1300 4100 1650
Wire Wire Line
	3550 1750 4050 1750
Connection ~ 3900 1300
Wire Wire Line
	4050 1750 4050 1850
Connection ~ 3900 1750
Wire Wire Line
	5800 1300 5800 1700
Connection ~ 1400 1300
Connection ~ 1400 3050
Wire Wire Line
	2700 3050 2700 3750
Wire Wire Line
	2700 3750 3100 3750
Connection ~ 2700 3050
Wire Wire Line
	1150 4150 3100 4150
Connection ~ 1500 4150
Wire Wire Line
	4300 1450 4400 1450
Wire Wire Line
	4600 1450 4700 1450
Wire Wire Line
	4700 1450 4700 1550
Wire Wire Line
	4700 1550 5200 1550
Wire Wire Line
	5600 1450 5500 1450
Wire Wire Line
	5300 1450 4800 1450
Wire Wire Line
	5050 1500 5100 1500
Wire Wire Line
	4850 1500 4850 1650
Connection ~ 4850 1650
Wire Wire Line
	4650 1400 4600 1400
Wire Wire Line
	4850 1400 5300 1400
Connection ~ 5300 1650
Wire Wire Line
	5250 1350 5700 1350
Wire Wire Line
	5050 1350 4200 1350
Connection ~ 4100 1300
Wire Wire Line
	5050 1300 5800 1300
Connection ~ 5800 1650
Wire Wire Line
	1050 700  7200 700 
Wire Wire Line
	7200 2850 7650 2850
Wire Wire Line
	1050 850  7100 850 
Wire Wire Line
	7100 850  7100 4950
Wire Wire Line
	7100 4950 7650 4950
Wire Wire Line
	7200 700  7200 2850
Wire Wire Line
	7500 5200 7500 5050
Wire Wire Line
	7500 5050 7650 5050
Wire Wire Line
	7550 3100 7550 2950
Wire Wire Line
	7550 2950 7650 2950
Wire Wire Line
	6700 2150 7650 2150
Wire Wire Line
	6700 2250 7650 2250
Wire Wire Line
	6700 2350 7650 2350
Wire Wire Line
	6700 2450 7650 2450
Wire Wire Line
	6700 2550 7650 2550
Wire Wire Line
	6700 2650 7650 2650
Wire Wire Line
	6700 4250 7650 4250
Wire Wire Line
	6700 4350 7650 4350
Wire Wire Line
	6700 4450 7650 4450
Wire Wire Line
	6700 4550 7650 4550
Wire Wire Line
	6700 4650 7650 4650
Wire Wire Line
	6700 4750 7650 4750
Wire Bus Line
	9450 4650 9450 2050
Wire Bus Line
	9450 2050 10650 2050
Wire Wire Line
	9050 4250 9350 4250
Wire Wire Line
	9050 4350 9350 4350
Wire Wire Line
	9050 4450 9350 4450
Wire Wire Line
	9050 4550 9350 4550
Wire Wire Line
	9050 4650 9350 4650
Wire Wire Line
	9050 4750 9350 4750
Wire Wire Line
	9050 2150 9350 2150
Wire Wire Line
	9050 2250 9350 2250
Wire Wire Line
	9050 2350 9350 2350
Wire Wire Line
	9050 2450 9350 2450
Wire Wire Line
	9050 2550 9350 2550
Wire Wire Line
	9050 2650 9350 2650
Wire Bus Line
	7100 5050 7100 5600
Wire Bus Line
	7100 5600 10650 5600
Wire Wire Line
	6700 2850 7050 2850
Wire Wire Line
	6700 2950 7050 2950
Wire Wire Line
	6700 3050 7050 3050
Wire Wire Line
	6700 3150 7050 3150
Wire Wire Line
	6700 3250 7050 3250
Wire Wire Line
	6700 3350 7050 3350
Wire Bus Line
	7150 3600 7150 4150
Wire Bus Line
	7150 3600 8150 3600
Wire Wire Line
	6700 3550 7050 3550
Wire Wire Line
	6700 3650 7050 3650
Wire Wire Line
	6700 3750 7050 3750
Wire Wire Line
	6700 3850 7050 3850
Wire Wire Line
	6700 3950 7050 3950
Wire Wire Line
	6700 4050 7050 4050
Wire Wire Line
	6700 4950 7000 4950
Wire Wire Line
	6700 5050 7000 5050
Wire Wire Line
	6700 5150 7000 5150
Wire Wire Line
	6700 5250 7000 5250
Wire Wire Line
	6700 5350 7000 5350
Wire Wire Line
	6700 5450 7000 5450
Wire Bus Line
	7150 2950 7150 3500
Wire Bus Line
	7150 3500 10650 3500
Wire Bus Line
	8150 3600 8150 3750
Wire Bus Line
	8150 3750 10650 3750
Wire Wire Line
	3000 1950 3100 2050
Wire Wire Line
	1300 1950 3000 1950
Wire Wire Line
	1300 2050 3000 2050
Wire Wire Line
	1300 2150 3000 2150
Wire Wire Line
	3000 2050 3100 2150
Wire Wire Line
	3000 2150 3100 2250
Connection ~ 2100 1950
Connection ~ 2100 1300
Connection ~ 2200 2050
Wire Wire Line
	2200 1350 2200 1300
Connection ~ 2200 1300
Connection ~ 2300 2150
Connection ~ 2300 1300
Wire Bus Line
	1200 2050 1200 1650
Wire Bus Line
	1200 1650 1000 1650
Wire Bus Line
	1150 4350 1150 4650
Wire Wire Line
	1250 4550 3100 4550
Wire Wire Line
	1250 4650 3100 4650
Wire Wire Line
	1250 4750 3100 4750
Connection ~ 1900 4650
Connection ~ 2000 4750
Connection ~ 1800 4550
Wire Bus Line
	1100 4350 1150 4350
Wire Wire Line
	1100 5050 2100 5050
Wire Wire Line
	2100 5050 2100 2950
Wire Wire Line
	2100 2950 3100 2950
Connection ~ 1850 5050
Wire Wire Line
	1100 5150 2150 5150
Wire Wire Line
	2150 5150 2150 4850
Wire Wire Line
	2150 4850 3100 4850
Connection ~ 1950 5150
Wire Wire Line
	1250 5950 2400 5950
Wire Wire Line
	1250 6050 2450 6050
Wire Wire Line
	1250 6150 2500 6150
Wire Wire Line
	1250 6250 2550 6250
Wire Wire Line
	1250 6350 2600 6350
Wire Wire Line
	1250 6450 2650 6450
Connection ~ 1850 5950
Connection ~ 1950 6050
Connection ~ 2050 6150
Connection ~ 2150 6250
Connection ~ 2250 6350
Wire Wire Line
	2350 6450 2300 6450
Connection ~ 2300 6450
Wire Wire Line
	2400 5950 2400 3150
Wire Wire Line
	2400 3150 3100 3150
Wire Wire Line
	2450 6050 2450 3250
Wire Wire Line
	2450 3250 3100 3250
Wire Wire Line
	2500 6150 2500 3350
Wire Wire Line
	2500 3350 3100 3350
Wire Wire Line
	2550 6250 2550 3450
Wire Wire Line
	2550 3450 3100 3450
Wire Wire Line
	2600 6350 2600 3550
Wire Wire Line
	2600 3550 3100 3550
Wire Wire Line
	2650 6450 2650 3650
Wire Wire Line
	2650 3650 3100 3650
Wire Bus Line
	1150 6900 1150 7500
Wire Wire Line
	1250 7100 2700 7100
Wire Wire Line
	1250 7200 2750 7200
Wire Wire Line
	1250 7300 2800 7300
Wire Bus Line
	1100 6900 1150 6900
Wire Wire Line
	1250 7400 2850 7400
Wire Wire Line
	1250 7500 2900 7500
Wire Wire Line
	1250 7600 2950 7600
Connection ~ 1850 7100
Connection ~ 1950 7200
Connection ~ 2050 7300
Connection ~ 2150 7400
Connection ~ 2250 7500
Wire Wire Line
	2350 7600 2300 7600
Connection ~ 2300 7600
Wire Wire Line
	2700 7100 2700 4950
Wire Wire Line
	2700 4950 3100 4950
Wire Wire Line
	2750 7200 2750 5050
Wire Wire Line
	2750 5050 3100 5050
Wire Wire Line
	2800 7300 2800 5150
Wire Wire Line
	2800 5150 3100 5150
Wire Wire Line
	2850 7400 2850 5250
Wire Wire Line
	2850 5250 3100 5250
Wire Wire Line
	2900 7500 2900 5350
Wire Wire Line
	2900 5350 3100 5350
Wire Wire Line
	2950 7600 2950 5450
Wire Wire Line
	2950 5450 3100 5450
Wire Wire Line
	8000 1450 10000 1450
Wire Wire Line
	10000 1450 10000 3900
Wire Wire Line
	8050 2100 8050 1450
Connection ~ 8050 1450
Wire Wire Line
	10000 3900 8050 3900
Wire Wire Line
	8050 3900 8050 4200
Wire Wire Line
	7500 5150 8050 5150
Wire Wire Line
	8050 5150 8050 5100
Connection ~ 7500 5150
Wire Wire Line
	7550 3050 8050 3050
Wire Wire Line
	8050 3050 8050 3000
Connection ~ 7550 3050
Wire Bus Line
	7250 950  10650 950 
Wire Wire Line
	7350 1050 7350 2150
Connection ~ 7350 2150
Wire Wire Line
	7400 1050 7400 2250
Connection ~ 7400 2250
Wire Wire Line
	7450 1050 7450 2350
Connection ~ 7450 2350
Wire Wire Line
	7500 1050 7500 2450
Connection ~ 7500 2450
Wire Wire Line
	7550 1050 7550 2550
Connection ~ 7550 2550
Wire Wire Line
	7600 1050 7600 2650
Connection ~ 7600 2650
Text Label 6750 2150 0    60   ~ 0
ra0q0
Text Label 6750 2250 0    60   ~ 0
ra0q1
Text Label 6750 2350 0    60   ~ 0
ra0q2
Text Label 6750 2450 0    60   ~ 0
ra0q3
Text Label 6750 2550 0    60   ~ 0
ra0q4
Text Label 6750 2650 0    60   ~ 0
ra0q5
$EndSCHEMATC
