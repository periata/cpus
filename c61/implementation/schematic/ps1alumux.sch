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
$Descr User 11693 10630
encoding utf-8
Sheet 5 9
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 1500 5850 0    60   Input ~ 0
raq[0..5]
Text HLabel 1500 5950 0    60   Input ~ 0
raqi[0..5]
Text HLabel 1500 7050 0    60   Input ~ 0
rb1q[0..5]
Text HLabel 1500 2700 0    60   Input ~ 0
imm[0..5]
Text HLabel 1500 4100 0    60   Input ~ 0
op_ext
$Comp
L 74LS283 U14
U 1 1 5B5EBE22
P 4400 1800
F 0 "U14" H 4400 1800 50  0000 C CNN
F 1 "74HC283" H 4450 1450 50  0000 C CNN
F 2 "Housings_DIP:DIP-16_W7.62mm_LongPads" H 4400 1800 50  0001 C CNN
F 3 "" H 4400 1800 50  0001 C CNN
	1    4400 1800
	1    0    0    -1  
$EndComp
$Comp
L 74LS283 U16
U 1 1 5B5EBEDD
P 4400 3200
F 0 "U16" H 4400 3200 50  0000 C CNN
F 1 "74HC283" H 4450 2850 50  0000 C CNN
F 2 "Housings_DIP:DIP-16_W7.62mm_LongPads" H 4400 3200 50  0001 C CNN
F 3 "" H 4400 3200 50  0001 C CNN
	1    4400 3200
	1    0    0    -1  
$EndComp
$Comp
L +3.3V #PWR19
U 1 1 5B5EBF87
P 1100 700
F 0 "#PWR19" H 1100 550 50  0001 C CNN
F 1 "+3.3V" H 1100 840 50  0000 C CNN
F 2 "" H 1100 700 50  0001 C CNN
F 3 "" H 1100 700 50  0001 C CNN
	1    1100 700 
	1    0    0    -1  
$EndComp
Text HLabel 1500 2000 0    60   Input ~ 0
rb0q[0..5]
Entry Wire Line
	3050 1600 3150 1500
Entry Wire Line
	3050 1700 3150 1600
Entry Wire Line
	3050 1800 3150 1700
Entry Wire Line
	3050 1900 3150 1800
Entry Wire Line
	2800 2050 2900 1950
Entry Wire Line
	2800 2150 2900 2050
Entry Wire Line
	2800 2250 2900 2150
Entry Wire Line
	2800 2350 2900 2250
Text Label 3200 1500 0    60   ~ 0
rb0q0
Text Label 3200 1600 0    60   ~ 0
rb0q1
Text Label 3200 1700 0    60   ~ 0
rb0q2
Text Label 3200 1800 0    60   ~ 0
rb0q3
Text Label 3150 1950 0    60   ~ 0
imm0
Text Label 3150 2050 0    60   ~ 0
imm1
Text Label 3150 2150 0    60   ~ 0
imm2
Text Label 3150 2250 0    60   ~ 0
imm3
Entry Wire Line
	3050 2800 3150 2900
Entry Wire Line
	3050 2900 3150 3000
Text Label 3200 2900 0    60   ~ 0
rb0q4
Text Label 3200 3000 0    60   ~ 0
rb0q5
Entry Wire Line
	2800 3250 2900 3350
Entry Wire Line
	2800 3350 2900 3450
Text Label 3050 3350 0    60   ~ 0
imm4
Text Label 3050 3450 0    60   ~ 0
imm5
$Comp
L GND #PWR21
U 1 1 5B5EC30E
P 1450 8950
F 0 "#PWR21" H 1450 8700 50  0001 C CNN
F 1 "GND" H 1450 8800 50  0000 C CNN
F 2 "" H 1450 8950 50  0001 C CNN
F 3 "" H 1450 8950 50  0001 C CNN
	1    1450 8950
	1    0    0    -1  
$EndComp
$Comp
L 74HC365 U15
U 1 1 5B5EC52A
P 6650 1900
F 0 "U15" H 6650 1900 50  0000 C CNN
F 1 "74HC365" H 6700 1700 50  0000 C CNN
F 2 "Housings_SOIC:SOIC-16_3.9x9.9mm_Pitch1.27mm" H 6650 1900 50  0001 C CNN
F 3 "" H 6650 1900 50  0001 C CNN
	1    6650 1900
	1    0    0    -1  
$EndComp
Text Label 5500 3100 0    60   ~ 0
carry_incr
$Comp
L 74HC365 U17
U 1 1 5B5EC8D9
P 7500 3200
F 0 "U17" H 7500 3200 50  0000 C CNN
F 1 "74HC365" H 7550 3000 50  0000 C CNN
F 2 "Housings_SOIC:SOIC-16_3.9x9.9mm_Pitch1.27mm" H 7500 3200 50  0001 C CNN
F 3 "" H 7500 3200 50  0001 C CNN
	1    7500 3200
	1    0    0    -1  
$EndComp
Entry Wire Line
	6500 2900 6600 2800
Entry Wire Line
	6500 3000 6600 2900
Entry Wire Line
	6500 3100 6600 3000
Entry Wire Line
	6500 3200 6600 3100
Entry Wire Line
	6500 3300 6600 3200
Entry Wire Line
	6500 3400 6600 3300
Text Label 6600 2800 0    60   ~ 0
imm0
Text Label 6600 2900 0    60   ~ 0
imm1
Text Label 6600 3000 0    60   ~ 0
imm2
Text Label 6600 3100 0    60   ~ 0
imm3
Text Label 6600 3200 0    60   ~ 0
imm4
Text Label 6600 3300 0    60   ~ 0
imm5
$Comp
L 74HC04 U2
U 5 1 5B5ED2CB
P 2000 4400
F 0 "U2" H 2150 4500 50  0000 C CNN
F 1 "74HC04" H 2200 4300 50  0000 C CNN
F 2 "Housings_DIP:DIP-14_W7.62mm_LongPads" H 2000 4400 50  0001 C CNN
F 3 "" H 2000 4400 50  0001 C CNN
	5    2000 4400
	1    0    0    -1  
$EndComp
Text HLabel 10600 1200 2    60   Output ~ 0
rbim[0..5]
Entry Wire Line
	8600 3300 8700 3200
Entry Wire Line
	8600 3200 8700 3100
Entry Wire Line
	8600 3100 8700 3000
Entry Wire Line
	8600 3000 8700 2900
Entry Wire Line
	8600 2900 8700 2800
Entry Wire Line
	8600 2800 8700 2700
Entry Wire Line
	8600 2000 8700 1900
Entry Wire Line
	8600 1900 8700 1800
Entry Wire Line
	8600 1800 8700 1700
Entry Wire Line
	8600 1700 8700 1600
Entry Wire Line
	8600 1600 8700 1500
Entry Wire Line
	8600 1500 8700 1400
Text Label 7700 1500 2    60   ~ 0
rbim0
Text Label 7700 1600 2    60   ~ 0
rbim1
Text Label 7700 1700 2    60   ~ 0
rbim2
Text Label 7700 1800 2    60   ~ 0
rbim3
Text Label 7700 1900 2    60   ~ 0
rbim4
Text Label 7700 2000 2    60   ~ 0
rbim5
Text Label 8500 2800 2    60   ~ 0
rbim0
Text Label 8500 2900 2    60   ~ 0
rbim1
Text Label 8500 3000 2    60   ~ 0
rbim2
Text Label 8500 3100 2    60   ~ 0
rbim3
Text Label 8500 3200 2    60   ~ 0
rbim4
Text Label 8500 3300 2    60   ~ 0
rbim5
$Comp
L +3.3V #PWR20
U 1 1 5B5EE0BF
P 1950 3950
F 0 "#PWR20" H 1950 3800 50  0001 C CNN
F 1 "+3.3V" H 1950 4090 50  0000 C CNN
F 2 "" H 1950 3950 50  0001 C CNN
F 3 "" H 1950 3950 50  0001 C CNN
	1    1950 3950
	1    0    0    -1  
$EndComp
Text Label 2900 4400 2    60   ~ 0
/op_ext
Text Label 6750 4100 1    60   ~ 0
/op_ext
$Comp
L 74LS32 U19
U 1 1 5B5EE4C1
P 3650 4800
F 0 "U19" H 3650 4850 50  0000 C CNN
F 1 "74HC32" H 3650 4750 50  0000 C CNN
F 2 "Housings_DIP:DIP-14_W7.62mm_LongPads" H 3650 4800 50  0001 C CNN
F 3 "" H 3650 4800 50  0001 C CNN
	1    3650 4800
	1    0    0    -1  
$EndComp
Entry Wire Line
	2800 4600 2900 4700
Text Label 2950 4700 0    60   ~ 0
imm0
Entry Wire Line
	2800 5300 2900 5400
Text Label 3200 5400 2    60   ~ 0
imm1
$Comp
L 74LS08 U22
U 1 1 5B5EE966
P 4000 5500
F 0 "U22" H 4000 5550 50  0000 C CNN
F 1 "74HC08" H 4000 5450 50  0000 C CNN
F 2 "Housings_DIP:DIP-14_W7.62mm_LongPads" H 4000 5500 50  0001 C CNN
F 3 "" H 4000 5500 50  0001 C CNN
	1    4000 5500
	1    0    0    -1  
$EndComp
Wire Wire Line
	1100 700  1100 850 
Wire Wire Line
	1100 850  9950 850 
Wire Wire Line
	4100 850  4100 1300
Wire Wire Line
	4100 2700 4100 2550
Wire Wire Line
	4100 2550 3600 2550
Wire Wire Line
	3600 2550 3600 850 
Connection ~ 3600 850 
Wire Bus Line
	2800 2050 2800 5300
Wire Bus Line
	2800 2700 1500 2700
Wire Bus Line
	3050 1600 3050 2900
Wire Bus Line
	3050 2000 1500 2000
Wire Wire Line
	3150 1500 3700 1500
Wire Wire Line
	3150 1600 3700 1600
Wire Wire Line
	3150 1700 3700 1700
Wire Wire Line
	3150 1800 3700 1800
Wire Wire Line
	2900 1950 3700 1950
Wire Wire Line
	2900 2050 3700 2050
Wire Wire Line
	2900 2150 3700 2150
Wire Wire Line
	2900 2250 3700 2250
Wire Wire Line
	5100 2000 5100 2500
Wire Wire Line
	5100 2500 3650 2500
Wire Wire Line
	3650 2500 3650 2750
Wire Wire Line
	3650 2750 3700 2750
Wire Wire Line
	3150 2900 3700 2900
Wire Wire Line
	3150 3000 3700 3000
Wire Wire Line
	2900 3350 3700 3350
Wire Wire Line
	2900 3450 3700 3450
Wire Wire Line
	1450 8950 1450 8800
Wire Wire Line
	1450 8800 10550 8800
Wire Wire Line
	4100 8800 4100 3700
Wire Wire Line
	5400 2400 5400 8800
Wire Wire Line
	5400 2400 4100 2400
Wire Wire Line
	4100 2400 4100 2300
Connection ~ 4100 8800
Wire Wire Line
	3600 3650 3700 3650
Wire Wire Line
	3600 3100 3600 8800
Connection ~ 3600 8800
Wire Wire Line
	3600 3550 3700 3550
Connection ~ 3600 3650
Wire Wire Line
	3600 3200 3700 3200
Connection ~ 3600 3550
Wire Wire Line
	3550 3100 3700 3100
Connection ~ 3600 3200
Wire Wire Line
	3550 3100 3550 1350
Wire Wire Line
	3550 1350 3700 1350
Connection ~ 3600 3100
Wire Wire Line
	5100 1500 5950 1500
Wire Wire Line
	5100 1600 5950 1600
Wire Wire Line
	5100 1700 5950 1700
Wire Wire Line
	5100 1800 5950 1800
Wire Wire Line
	5100 2900 5200 2900
Wire Wire Line
	5200 2900 5200 1900
Wire Wire Line
	5200 1900 5950 1900
Wire Wire Line
	5100 3000 5300 3000
Wire Wire Line
	5300 3000 5300 2000
Wire Wire Line
	5300 2000 5950 2000
Wire Wire Line
	5100 3100 5700 3100
Wire Wire Line
	5800 4100 5800 2200
Wire Wire Line
	5800 2200 5950 2200
Wire Wire Line
	5800 2300 5950 2300
Wire Wire Line
	6350 850  6350 1450
Connection ~ 4100 850 
Wire Wire Line
	6350 8800 6350 2350
Connection ~ 5400 8800
Wire Wire Line
	7200 8800 7200 3650
Connection ~ 6350 8800
Wire Wire Line
	7200 850  7200 2750
Connection ~ 6350 850 
Wire Bus Line
	6500 3900 2800 3900
Wire Bus Line
	6500 2900 6500 3900
Wire Wire Line
	6600 2800 6800 2800
Wire Wire Line
	6600 2900 6800 2900
Wire Wire Line
	6600 3000 6800 3000
Wire Wire Line
	6600 3100 6800 3100
Wire Wire Line
	6600 3200 6800 3200
Wire Wire Line
	6600 3300 6800 3300
Wire Wire Line
	6750 3500 6750 4100
Wire Wire Line
	6750 3600 6800 3600
Wire Wire Line
	6800 3500 6750 3500
Connection ~ 6750 3600
Connection ~ 6250 8800
Connection ~ 7200 2450
Wire Bus Line
	10600 1200 8700 1200
Wire Bus Line
	8700 1200 8700 3200
Wire Wire Line
	7350 1500 8600 1500
Wire Wire Line
	7350 1600 8600 1600
Wire Wire Line
	7350 1700 8600 1700
Wire Wire Line
	7350 1800 8600 1800
Wire Wire Line
	7350 1900 8600 1900
Wire Wire Line
	7350 2000 8600 2000
Wire Wire Line
	8200 2800 8600 2800
Wire Wire Line
	8200 2900 8600 2900
Wire Wire Line
	8200 3000 8600 3000
Wire Wire Line
	8200 3100 8600 3100
Wire Wire Line
	8200 3200 8600 3200
Wire Wire Line
	8200 3300 8600 3300
Wire Wire Line
	1950 4500 1950 8800
Connection ~ 1950 8800
Wire Wire Line
	1950 3950 1950 4300
Wire Wire Line
	1550 4100 1550 4900
Wire Wire Line
	1500 4100 5800 4100
Connection ~ 1550 4100
Connection ~ 5800 2300
Wire Wire Line
	2450 4400 3000 4400
Wire Wire Line
	1550 4900 3050 4900
Connection ~ 1550 4400
Wire Wire Line
	2900 4700 3050 4700
Wire Wire Line
	2900 5400 3400 5400
Wire Wire Line
	3000 4400 3000 5600
Wire Wire Line
	3000 5600 3400 5600
Wire Wire Line
	1950 4200 5600 4200
Wire Wire Line
	3450 4200 3450 4600
Connection ~ 1950 4200
Wire Wire Line
	2350 4200 2350 5150
Wire Wire Line
	2350 5150 3800 5150
Wire Wire Line
	3800 5150 3800 5300
Connection ~ 2350 4200
Wire Wire Line
	3450 5000 3450 5100
Wire Wire Line
	3450 5100 3600 5100
Connection ~ 3600 5100
Wire Wire Line
	3800 5700 3700 5800
Wire Wire Line
	3700 5800 3600 5800
Connection ~ 3600 5800
$Comp
L 74HC244 U18
U 1 1 5B5EEEE4
P 9950 3550
F 0 "U18" H 10050 4200 50  0000 L CNN
F 1 "74HC244" H 10000 2900 50  0000 L CNN
F 2 "Package_SO:SO-20_12.8x7.5mm_P1.27mm" H 9950 3550 50  0001 C CNN
F 3 "" H 9950 3550 50  0000 C CNN
	1    9950 3550
	1    0    0    -1  
$EndComp
$Comp
L 74LS139 U20
U 1 1 5B5EF13D
P 6050 5050
F 0 "U20" H 6050 5150 50  0000 C CNN
F 1 "74LS139" H 6050 4950 50  0000 C CNN
F 2 "Housings_DIP:DIP-16_W7.62mm_LongPads" H 6050 5050 50  0001 C CNN
F 3 "" H 6050 5050 50  0001 C CNN
	1    6050 5050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5600 4200 5600 4650
Connection ~ 3450 4200
Wire Wire Line
	5600 5600 5600 5450
Wire Wire Line
	5200 5600 5600 5600
Connection ~ 5400 5600
Wire Wire Line
	4250 4800 4800 4800
Wire Wire Line
	4800 4800 4800 4950
Wire Wire Line
	4800 4950 5200 4950
Wire Wire Line
	4600 5500 5000 5500
Wire Wire Line
	5000 5500 5000 4800
Wire Wire Line
	5000 4800 5200 4800
Wire Wire Line
	5200 5300 5200 5600
$Comp
L 74HC244 U21
U 1 1 5B5EF8FC
P 9700 5050
F 0 "U21" H 9800 5700 50  0000 L CNN
F 1 "74HC244" H 9750 4400 50  0000 L CNN
F 2 "Package_SO:SO-20_12.8x7.5mm_P1.27mm" H 9700 5050 50  0001 C CNN
F 3 "" H 9700 5050 50  0000 C CNN
	1    9700 5050
	1    0    0    -1  
$EndComp
$Comp
L 74HC244 U23
U 1 1 5B5EF9C4
P 9950 6550
F 0 "U23" H 10050 7200 50  0000 L CNN
F 1 "74HC244" H 10000 5900 50  0000 L CNN
F 2 "Package_SO:SO-20_12.8x7.5mm_P1.27mm" H 9950 6550 50  0001 C CNN
F 3 "" H 9950 6550 50  0000 C CNN
	1    9950 6550
	1    0    0    -1  
$EndComp
$Comp
L 74HC244 U24
U 1 1 5B5EFA40
P 9700 8050
F 0 "U24" H 9800 8700 50  0000 L CNN
F 1 "74HC244" H 9750 7400 50  0000 L CNN
F 2 "Package_SO:SO-20_12.8x7.5mm_P1.27mm" H 9700 8050 50  0001 C CNN
F 3 "" H 9700 8050 50  0000 C CNN
	1    9700 8050
	1    0    0    -1  
$EndComp
Wire Wire Line
	9700 8800 9700 8750
Connection ~ 7200 8800
Wire Wire Line
	9950 7250 9950 7400
Wire Wire Line
	9950 7400 10550 7400
Wire Wire Line
	10550 8800 10550 4250
Connection ~ 9700 8800
Wire Wire Line
	9000 5750 10550 5750
Connection ~ 10550 7400
Wire Wire Line
	10550 4250 9150 4250
Connection ~ 10550 5750
Wire Wire Line
	9950 850  9950 2850
Connection ~ 7200 850 
Wire Wire Line
	8900 850  8900 7350
Wire Wire Line
	8900 4350 9700 4350
Connection ~ 8900 850 
Wire Wire Line
	8900 5850 9950 5850
Connection ~ 8900 4350
Wire Wire Line
	8900 7350 9700 7350
Connection ~ 8900 5850
Wire Wire Line
	9450 6650 8900 6650
Connection ~ 8900 6650
Wire Wire Line
	6900 4750 7100 4750
Text Label 7100 4750 2    60   ~ 0
oas_ra
Wire Wire Line
	6900 4950 7100 4950
Wire Wire Line
	6900 5150 7100 5150
Wire Wire Line
	6900 5350 7100 5350
Text Label 7100 4950 2    60   ~ 0
oas_ra0i
Text Label 7100 5150 2    60   ~ 0
oas_rb1
Text Label 7100 5350 2    60   ~ 0
oas_rash
Wire Wire Line
	9350 4000 9350 4300
Wire Wire Line
	9350 3950 9350 4050
Text Label 9350 4300 1    60   ~ 0
oas_ra
Wire Bus Line
	8750 5850 1500 5850
Wire Bus Line
	8750 3150 8750 5850
Entry Wire Line
	8750 3150 8850 3050
Entry Wire Line
	8750 3250 8850 3150
Entry Wire Line
	8750 3350 8850 3250
Entry Wire Line
	8750 3450 8850 3350
Entry Wire Line
	8750 3550 8850 3450
Entry Wire Line
	8750 3650 8850 3550
Entry Wire Line
	8750 4650 8850 4550
Entry Wire Line
	8750 4750 8850 4650
Entry Wire Line
	8750 4850 8850 4750
Entry Wire Line
	8750 4950 8850 4850
Entry Wire Line
	8750 5050 8850 4950
Wire Wire Line
	8850 3050 9450 3050
Wire Wire Line
	8850 3150 9450 3150
Wire Wire Line
	8850 3250 9450 3250
Wire Wire Line
	8850 3350 9450 3350
Wire Wire Line
	8850 3450 9450 3450
Wire Wire Line
	8850 3550 9450 3550
Text Label 9000 3050 0    60   ~ 0
raq0
Text Label 9000 3150 0    60   ~ 0
raq1
Text Label 9000 3250 0    60   ~ 0
raq2
Text Label 9000 3350 0    60   ~ 0
raq3
Text Label 9000 3450 0    60   ~ 0
raq4
Text Label 9000 3550 0    60   ~ 0
raq5
Wire Wire Line
	8850 4550 9200 4550
Wire Wire Line
	8850 4650 9200 4650
Wire Wire Line
	8850 4750 9200 4750
Wire Wire Line
	8850 4850 9200 4850
Wire Wire Line
	8850 4950 9200 4950
Text Label 8950 4550 0    60   ~ 0
raq1
Text Label 8950 4650 0    60   ~ 0
raq2
Text Label 8950 4750 0    60   ~ 0
raq3
Text Label 8950 4850 0    60   ~ 0
raq4
Text Label 8950 4950 0    60   ~ 0
raq5
Wire Wire Line
	9200 5050 9000 5050
Wire Wire Line
	9000 5050 9000 5750
Connection ~ 9700 5750
Wire Wire Line
	9000 5150 9200 5150
Connection ~ 9000 5150
Entry Wire Line
	8750 5350 8850 5250
Wire Wire Line
	8850 5250 9200 5250
Text Label 8950 5250 0    60   ~ 0
raq0
Wire Wire Line
	9200 5450 9150 5450
Wire Wire Line
	9150 5450 9150 5700
Wire Wire Line
	9200 5550 9150 5550
Connection ~ 9150 5550
Text Label 9150 5700 1    60   ~ 0
oas_rash
Wire Wire Line
	9350 3950 9450 3950
Wire Wire Line
	9350 4050 9450 4050
Connection ~ 9350 4050
Wire Wire Line
	9150 4250 9150 3650
Wire Wire Line
	9150 3650 9450 3650
Connection ~ 9950 4250
Wire Wire Line
	9150 3750 9450 3750
Connection ~ 9150 3750
Wire Bus Line
	1500 5950 8750 5950
Wire Bus Line
	8750 5950 8750 6450
Entry Wire Line
	8750 5950 8850 6050
Entry Wire Line
	8750 6050 8850 6150
Entry Wire Line
	8750 6150 8850 6250
Entry Wire Line
	8750 6250 8850 6350
Entry Wire Line
	8750 6350 8850 6450
Entry Wire Line
	8750 6450 8850 6550
Wire Wire Line
	8850 6050 9450 6050
Wire Wire Line
	8850 6150 9450 6150
Wire Wire Line
	8850 6250 9450 6250
Wire Wire Line
	8850 6350 9450 6350
Wire Wire Line
	8850 6450 9450 6450
Wire Wire Line
	8850 6550 9450 6550
Text Label 9000 6050 0    60   ~ 0
raqi0
Text Label 9000 6150 0    60   ~ 0
raqi1
Text Label 9000 6250 0    60   ~ 0
raqi2
Text Label 9000 6350 0    60   ~ 0
raqi3
Text Label 9000 6450 0    60   ~ 0
raqi4
Text Label 9000 6550 0    60   ~ 0
raqi5
Wire Wire Line
	9450 6950 9350 6950
Wire Wire Line
	9350 6950 9350 7300
Wire Wire Line
	9450 7050 9350 7050
Connection ~ 9350 7050
Text Label 9350 7300 1    60   ~ 0
oas_ra0i
Wire Wire Line
	9450 6750 9000 6750
Text Label 9000 6750 0    60   ~ 0
carry_incr
Wire Bus Line
	1500 7050 8700 7050
Wire Bus Line
	8700 7050 8700 7950
Entry Wire Line
	8700 7450 8800 7550
Entry Wire Line
	8700 7550 8800 7650
Entry Wire Line
	8700 7650 8800 7750
Entry Wire Line
	8700 7750 8800 7850
Entry Wire Line
	8700 7850 8800 7950
Entry Wire Line
	8700 7950 8800 8050
Wire Wire Line
	8800 7550 9200 7550
Wire Wire Line
	8800 7650 9200 7650
Wire Wire Line
	8800 7750 9200 7750
Wire Wire Line
	8800 7850 9200 7850
Wire Wire Line
	8800 7950 9200 7950
Wire Wire Line
	8800 8050 9200 8050
Text Label 8850 7550 0    60   ~ 0
rb1q0
Text Label 8850 7650 0    60   ~ 0
rb1q1
Text Label 8850 7750 0    60   ~ 0
rb1q2
Text Label 8850 7850 0    60   ~ 0
rb1q3
Text Label 8850 7950 0    60   ~ 0
rb1q4
Text Label 8850 8050 0    60   ~ 0
rb1q5
Wire Wire Line
	9200 8150 8900 8150
Wire Wire Line
	8900 8150 8900 8800
Connection ~ 8900 8800
Wire Wire Line
	9200 8250 8900 8250
Connection ~ 8900 8250
Wire Wire Line
	9200 8450 9100 8450
Wire Wire Line
	9100 8450 9100 8750
Wire Wire Line
	9200 8550 9100 8550
Connection ~ 9100 8550
Text Label 9100 8750 1    60   ~ 0
oas_rb1
Entry Wire Line
	10750 3050 10850 3150
Entry Wire Line
	10750 3150 10850 3250
Entry Wire Line
	10750 3250 10850 3350
Entry Wire Line
	10750 3350 10850 3450
Entry Wire Line
	10750 3450 10850 3550
Entry Wire Line
	10750 3550 10850 3650
Wire Bus Line
	10850 3150 10850 8400
Text HLabel 10850 8400 3    60   Output ~ 0
rasrc[0..5]
Wire Wire Line
	10450 3050 10750 3050
Wire Wire Line
	10450 3150 10750 3150
Wire Wire Line
	10450 3250 10750 3250
Wire Wire Line
	10450 3350 10750 3350
Wire Wire Line
	10450 3450 10750 3450
Wire Wire Line
	10450 3550 10750 3550
Text Label 10500 3050 0    60   ~ 0
rasrc0
Text Label 10500 3150 0    60   ~ 0
rasrc1
Text Label 10500 3250 0    60   ~ 0
rasrc2
Text Label 10500 3350 0    60   ~ 0
rasrc3
Text Label 10500 3450 0    60   ~ 0
rasrc4
Text Label 10500 3550 0    60   ~ 0
rasrc5
Entry Wire Line
	10750 4550 10850 4650
Entry Wire Line
	10750 4650 10850 4750
Entry Wire Line
	10750 4750 10850 4850
Entry Wire Line
	10750 4850 10850 4950
Entry Wire Line
	10750 4950 10850 5050
Entry Wire Line
	10750 5050 10850 5150
Wire Wire Line
	10200 4550 10750 4550
Wire Wire Line
	10200 4650 10750 4650
Wire Wire Line
	10200 4750 10750 4750
Wire Wire Line
	10200 4850 10750 4850
Wire Wire Line
	10200 4950 10750 4950
Wire Wire Line
	10200 5050 10750 5050
Text Label 10350 4550 0    60   ~ 0
rasrc0
Text Label 10350 4650 0    60   ~ 0
rasrc1
Text Label 10350 4750 0    60   ~ 0
rasrc2
Text Label 10350 4850 0    60   ~ 0
rasrc3
Text Label 10350 4950 0    60   ~ 0
rasrc4
Text Label 10350 5050 0    60   ~ 0
rasrc5
Entry Wire Line
	10750 6050 10850 6150
Entry Wire Line
	10750 6150 10850 6250
Entry Wire Line
	10750 6250 10850 6350
Entry Wire Line
	10750 6350 10850 6450
Entry Wire Line
	10750 6450 10850 6550
Entry Wire Line
	10750 6550 10850 6650
Wire Wire Line
	10450 6050 10750 6050
Wire Wire Line
	10450 6150 10750 6150
Wire Wire Line
	10450 6250 10750 6250
Wire Wire Line
	10450 6350 10750 6350
Wire Wire Line
	10450 6450 10750 6450
Wire Wire Line
	10450 6550 10750 6550
Text Label 10500 6050 0    60   ~ 0
rasrc0
Text Label 10500 6150 0    60   ~ 0
rasrc1
Text Label 10500 6250 0    60   ~ 0
rasrc2
Text Label 10500 6350 0    60   ~ 0
rasrc3
Text Label 10500 6450 0    60   ~ 0
rasrc4
Text Label 10500 6550 0    60   ~ 0
rasrc5
Entry Wire Line
	10750 7550 10850 7650
Entry Wire Line
	10750 7650 10850 7750
Entry Wire Line
	10750 7750 10850 7850
Entry Wire Line
	10750 7850 10850 7950
Entry Wire Line
	10750 7950 10850 8050
Entry Wire Line
	10750 8050 10850 8150
Wire Wire Line
	10200 7550 10750 7550
Wire Wire Line
	10200 7650 10750 7650
Wire Wire Line
	10200 7750 10750 7750
Wire Wire Line
	10200 7850 10750 7850
Wire Wire Line
	10200 7950 10750 7950
Wire Wire Line
	10200 8050 10750 8050
Text Label 10350 7550 0    60   ~ 0
rasrc0
Text Label 10350 7650 0    60   ~ 0
rasrc1
Text Label 10350 7750 0    60   ~ 0
rasrc2
Text Label 10350 7850 0    60   ~ 0
rasrc3
Text Label 10350 7950 0    60   ~ 0
rasrc4
Text Label 10350 8050 0    60   ~ 0
rasrc5
Wire Wire Line
	10450 3750 11050 3750
Wire Wire Line
	11050 3750 11050 8400
Text HLabel 11050 8400 3    60   Output ~ 0
extcarry
Wire Wire Line
	10200 5250 11050 5250
Connection ~ 11050 5250
Wire Wire Line
	10450 6750 11050 6750
Connection ~ 11050 6750
Wire Wire Line
	10200 8250 11050 8250
Connection ~ 11050 8250
$EndSCHEMATC
