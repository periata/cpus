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
EELAYER 25 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 2 2
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
L CONN_02X03 J1
U 1 1 5B2C3325
P 1600 1350
F 0 "J1" H 1600 1550 50  0000 C CNN
F 1 "CONN_02X03" H 1600 1150 50  0000 C CNN
F 2 "" H 1600 150 50  0001 C CNN
F 3 "" H 1600 150 50  0001 C CNN
	1    1600 1350
	1    0    0    -1  
$EndComp
Text GLabel 3900 1250 2    60   Output ~ 0
+5V
Text GLabel 3900 1500 2    60   Output ~ 0
+3V3
Text GLabel 3900 2200 2    60   Output ~ 0
GND
$Comp
L CP C1
U 1 1 5B2C348C
P 2400 1700
F 0 "C1" H 2425 1800 50  0000 L CNN
F 1 "22u" H 2425 1600 50  0000 L CNN
F 2 "" H 2438 1550 50  0001 C CNN
F 3 "" H 2400 1700 50  0001 C CNN
	1    2400 1700
	1    0    0    -1  
$EndComp
$Comp
L CP C2
U 1 1 5B2C3503
P 2700 1700
F 0 "C2" H 2725 1800 50  0000 L CNN
F 1 "22u" H 2725 1600 50  0000 L CNN
F 2 "" H 2738 1550 50  0001 C CNN
F 3 "" H 2700 1700 50  0001 C CNN
	1    2700 1700
	1    0    0    -1  
$EndComp
Wire Wire Line
	1850 1250 3900 1250
Wire Wire Line
	1850 1350 3600 1350
Wire Wire Line
	3600 1350 3600 1500
Wire Wire Line
	3600 1500 3900 1500
Wire Wire Line
	1850 1450 2000 1450
Wire Wire Line
	2000 1450 2000 2200
Wire Wire Line
	1350 2200 3900 2200
Wire Wire Line
	1350 1450 1350 2200
Connection ~ 2000 2200
Wire Wire Line
	2400 1250 2400 1550
Connection ~ 2400 1250
Wire Wire Line
	2400 1850 2400 2200
Connection ~ 2400 2200
Wire Wire Line
	2700 1350 2700 1550
Connection ~ 2700 1350
Wire Wire Line
	2700 1850 2700 2200
Connection ~ 2700 2200
$Comp
L LED D?
U 1 1 5B2C361D
P 3200 1650
F 0 "D?" H 3200 1750 50  0000 C CNN
F 1 "LED" H 3200 1550 50  0000 C CNN
F 2 "" H 3200 1650 50  0001 C CNN
F 3 "" H 3200 1650 50  0001 C CNN
	1    3200 1650
	0    -1   -1   0   
$EndComp
$Comp
L R R?
U 1 1 5B2C36D4
P 3200 2000
F 0 "R?" V 3280 2000 50  0000 C CNN
F 1 "R" V 3200 2000 50  0000 C CNN
F 2 "" V 3130 2000 50  0001 C CNN
F 3 "" H 3200 2000 50  0001 C CNN
	1    3200 2000
	1    0    0    -1  
$EndComp
$EndSCHEMATC
