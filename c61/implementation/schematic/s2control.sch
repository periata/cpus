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
Sheet 8 9
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 1150 950  0    60   Input ~ 0
insn_s1
Text HLabel 1150 2450 0    60   Input ~ 0
ext_s1
Text HLabel 1150 2750 0    60   Input ~ 0
extmode_s1
Text HLabel 1150 3050 0    60   Input ~ 0
extsel_s1
Text HLabel 1150 3350 0    60   Input ~ 0
extop_s1
Text HLabel 1150 3650 0    60   Input ~ 0
extcarry_s1
$Comp
L 74LS137 U?
U 1 1 5B9329D3
P 2850 1500
F 0 "U?" H 2850 1700 50  0000 C CNN
F 1 "74HC137" H 2800 1500 50  0000 C CNN
F 2 "" H 2850 1500 50  0001 C CNN
F 3 "" H 2850 1500 50  0001 C CNN
	1    2850 1500
	1    0    0    -1  
$EndComp
$Comp
L +3V3 #PWR?
U 1 1 5B932A3B
P 2450 750
F 0 "#PWR?" H 2450 600 50  0001 C CNN
F 1 "+3V3" H 2450 890 50  0000 C CNN
F 2 "" H 2450 750 50  0001 C CNN
F 3 "" H 2450 750 50  0001 C CNN
	1    2450 750 
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 750  2450 900 
$Comp
L GND #PWR?
U 1 1 5B932A93
P 2450 2200
F 0 "#PWR?" H 2450 1950 50  0001 C CNN
F 1 "GND" H 2450 2050 50  0000 C CNN
F 2 "" H 2450 2200 50  0001 C CNN
F 3 "" H 2450 2200 50  0001 C CNN
	1    2450 2200
	1    0    0    -1  
$EndComp
Wire Wire Line
	2450 2200 2450 2100
Wire Bus Line
	1150 950  1550 950 
Wire Bus Line
	1550 950  1550 1250
Entry Wire Line
	1550 950  1650 1050
Entry Wire Line
	1550 1100 1650 1200
Entry Wire Line
	1550 1250 1650 1350
Wire Wire Line
	1650 1050 2050 1050
Wire Wire Line
	1650 1200 2050 1200
Wire Wire Line
	2050 1350 1650 1350
Text Label 1650 1050 0    60   ~ 0
insn_s10
Text Label 1650 1200 0    60   ~ 0
insn_s11
Text Label 1650 1350 0    60   ~ 0
insn_s12
Wire Wire Line
	1950 2150 2450 2150
Wire Wire Line
	1950 1650 1950 2150
Wire Wire Line
	1950 1800 2050 1800
Connection ~ 2450 2150
Wire Wire Line
	1950 1650 2050 1650
Connection ~ 1950 1800
Wire Wire Line
	2450 800  1850 800 
Wire Wire Line
	1850 800  1850 1950
Wire Wire Line
	1850 1950 2050 1950
Connection ~ 2450 800 
Text HLabel 10450 1250 2    60   Output ~ 0
op_subcmp
Text HLabel 10450 1550 2    60   Output ~ 0
~op_xor
Text HLabel 10450 1850 2    60   Output ~ 0
~op_mov
Text HLabel 10450 2150 2    60   Output ~ 0
~op_andor
Text HLabel 10450 2450 2    60   Output ~ 0
op_invert
Text HLabel 10450 2750 2    60   Output ~ 0
op_or
Text HLabel 10450 3050 2    60   Output ~ 0
op_postinvert
Text HLabel 10450 3350 2    60   Output ~ 0
~alu_enable
Text HLabel 10450 3650 2    60   Output ~ 0
~op_store
Text HLabel 10450 3950 2    60   Output ~ 0
~op_load
Text HLabel 10450 4250 2    60   Output ~ 0
~op_ifeq
Text HLabel 10450 4550 2    60   Output ~ 0
~op_ifxxx
$EndSCHEMATC
