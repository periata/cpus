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
$Descr A4 8268 11693 portrait
encoding utf-8
Sheet 6 8
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
Text HLabel 1550 2600 0    60   Input ~ 0
d_valids1
Text HLabel 1550 2800 0    60   Input ~ 0
d_dsts1[0..3]
Text HLabel 1550 3200 0    60   Input ~ 0
d_isjmps1
Text HLabel 1550 3400 0    60   Input ~ 0
d_rbims1[0..5]
Text HLabel 1550 4200 0    60   Input ~ 0
d_rasrcs1[0..5]
Text HLabel 1550 5300 0    60   Input ~ 0
d_membases1[0..5]
Text HLabel 1550 6400 0    60   Input ~ 0
d_ravals1[0..5]
Text HLabel 1550 7000 0    60   Input ~ 0
d_insns1[0..2]
Text HLabel 1550 7800 0    60   Input ~ 0
d_exts1
Text HLabel 1550 8000 0    60   Input ~ 0
d_extmodes1
Text HLabel 1550 8200 0    60   Input ~ 0
d_extsels1
Text HLabel 1550 8400 0    60   Input ~ 0
d_extops1[0..1]
Text HLabel 1550 8600 0    60   Input ~ 0
d_extcarrys1
Text GLabel 1550 2300 0    60   Input ~ 0
clk1
$Comp
L 74LS574 U25
U 1 1 5B60325B
P 4350 3100
F 0 "U25" H 4350 3100 50  0000 C CNN
F 1 "74HC574" H 4400 2750 50  0000 C CNN
F 2 "Housings_SOIC:SOIC-16W_7.5x10.3mm_Pitch1.27mm" H 4350 3100 50  0001 C CNN
F 3 "" H 4350 3100 50  0001 C CNN
	1    4350 3100
	1    0    0    -1  
$EndComp
Text GLabel 1550 2050 0    60   Input ~ 0
3V3
Text GLabel 1550 8950 0    60   Input ~ 0
GND
Wire Wire Line
	1550 2300 3500 2300
Wire Wire Line
	3500 2300 3500 8700
Wire Wire Line
	3500 3500 3650 3500
Wire Wire Line
	1550 2050 4950 2050
Wire Wire Line
	4350 2050 4350 2550
Wire Wire Line
	1550 8950 4350 8950
Wire Wire Line
	3550 3600 3550 8950
Wire Wire Line
	3550 3600 3650 3600
Wire Wire Line
	3550 3750 4350 3750
Wire Wire Line
	4350 3750 4350 3650
Connection ~ 3550 3750
Wire Wire Line
	1550 2600 3650 2600
Entry Wire Line
	3050 2800 2950 2900
Entry Wire Line
	3050 2700 2950 2800
Entry Wire Line
	3050 2900 2950 3000
Entry Wire Line
	3050 3000 2950 3100
Wire Wire Line
	3050 2700 3650 2700
Wire Wire Line
	3050 2800 3650 2800
Wire Wire Line
	3050 2900 3650 2900
Wire Wire Line
	3050 3000 3650 3000
Wire Bus Line
	1550 2800 2950 2800
Wire Bus Line
	2950 2800 2950 3100
Text Label 3050 2700 0    60   ~ 0
d_dsts10
Text Label 3050 2800 0    60   ~ 0
d_dsts11
Text Label 3050 2900 0    60   ~ 0
d_dsts12
Text Label 3050 3000 0    60   ~ 0
d_dsts13
Wire Wire Line
	1550 3200 3100 3200
Wire Wire Line
	3100 3200 3100 3100
Wire Wire Line
	3100 3100 3650 3100
Entry Wire Line
	3200 3300 3100 3400
Entry Wire Line
	3200 3200 3100 3300
Entry Wire Line
	3100 3800 3200 3900
Entry Wire Line
	3100 3900 3200 4000
Wire Bus Line
	1550 3400 3100 3400
Wire Bus Line
	3100 3300 3100 4100
Wire Wire Line
	3200 3200 3650 3200
Wire Wire Line
	3200 3300 3650 3300
Text Label 3250 3200 0    60   ~ 0
d_rbims10
Text Label 3250 3300 0    60   ~ 0
d_rbims11
$Comp
L 74LS574 U26
U 1 1 5B603563
P 4350 4400
F 0 "U26" H 4350 4400 50  0000 C CNN
F 1 "74HC574" H 4400 4050 50  0000 C CNN
F 2 "Housings_SOIC:SOIC-16W_7.5x10.3mm_Pitch1.27mm" H 4350 4400 50  0001 C CNN
F 3 "" H 4350 4400 50  0001 C CNN
	1    4350 4400
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 3900 3650 3900
Wire Wire Line
	3200 4000 3650 4000
Entry Wire Line
	3100 4000 3200 4100
Entry Wire Line
	3100 4100 3200 4200
Wire Wire Line
	3200 4100 3650 4100
Wire Wire Line
	3200 4200 3650 4200
Text Label 3200 3900 0    60   ~ 0
d_rbims12
Text Label 3200 4000 0    60   ~ 0
d_rbims13
Text Label 3200 4100 0    60   ~ 0
d_rbims14
Text Label 3200 4200 0    60   ~ 0
d_rbims15
Wire Wire Line
	3500 4800 3650 4800
Connection ~ 3500 3500
Wire Wire Line
	3550 4900 3650 4900
Connection ~ 3550 4900
Wire Wire Line
	4350 4950 4350 5050
Wire Wire Line
	4350 5050 3550 5050
Connection ~ 3550 5050
Wire Wire Line
	4950 2050 4950 7700
Wire Wire Line
	4950 3800 4350 3800
Wire Wire Line
	4350 3800 4350 3850
Connection ~ 4350 2050
Wire Bus Line
	1550 4200 3100 4200
Wire Bus Line
	3100 4200 3100 5200
Entry Wire Line
	3100 4200 3200 4300
Entry Wire Line
	3100 4300 3200 4400
Entry Wire Line
	3100 4400 3200 4500
Entry Wire Line
	3100 4500 3200 4600
Wire Wire Line
	3200 4300 3650 4300
Wire Wire Line
	3200 4400 3650 4400
Wire Wire Line
	3200 4500 3650 4500
Wire Wire Line
	3200 4600 3650 4600
Text Label 3200 4300 0    60   ~ 0
d_rasrcs10
Text Label 3200 4400 0    60   ~ 0
d_rasrcs11
Text Label 3200 4500 0    60   ~ 0
d_rasrcs12
Text Label 3200 4600 0    60   ~ 0
d_rasrcs13
$Comp
L 74LS574 U27
U 1 1 5B6039CF
P 4350 5700
F 0 "U27" H 4350 5700 50  0000 C CNN
F 1 "74HC574" H 4400 5350 50  0000 C CNN
F 2 "Housings_SOIC:SOIC-16W_7.5x10.3mm_Pitch1.27mm" H 4350 5700 50  0001 C CNN
F 3 "" H 4350 5700 50  0001 C CNN
	1    4350 5700
	1    0    0    -1  
$EndComp
Wire Wire Line
	4950 5100 4350 5100
Wire Wire Line
	4350 5100 4350 5150
Connection ~ 4950 3800
Wire Wire Line
	3550 6200 3650 6200
Connection ~ 3550 6200
Wire Wire Line
	3550 6350 4350 6350
Wire Wire Line
	4350 6350 4350 6250
Connection ~ 3550 6350
Entry Wire Line
	3100 5100 3200 5200
Entry Wire Line
	3100 5200 3200 5300
Wire Wire Line
	3200 5200 3650 5200
Wire Wire Line
	3200 5300 3650 5300
Text Label 3200 5200 0    60   ~ 0
d_rasrcs14
Text Label 3200 5300 0    60   ~ 0
d_rasrcs15
Wire Bus Line
	1550 5300 2950 5300
Wire Bus Line
	2950 5300 2950 5800
Entry Wire Line
	2950 5300 3050 5400
Entry Wire Line
	2950 5400 3050 5500
Entry Wire Line
	2950 5500 3050 5600
Entry Wire Line
	2950 5600 3050 5700
Entry Wire Line
	2950 5700 3050 5800
Entry Wire Line
	2950 5800 3050 5900
Wire Wire Line
	3050 5400 3650 5400
Wire Wire Line
	3050 5500 3650 5500
Wire Wire Line
	3050 5600 3650 5600
Wire Wire Line
	3050 5700 3650 5700
Wire Wire Line
	3050 5800 3650 5800
Wire Wire Line
	3050 5900 3650 5900
Text Label 3050 5400 0    60   ~ 0
d_membases10
Text Label 3050 5500 0    60   ~ 0
d_membases11
Text Label 3050 5600 0    60   ~ 0
d_membases12
Text Label 3050 5700 0    60   ~ 0
d_membases13
Text Label 3050 5800 0    60   ~ 0
d_membases14
Text Label 3050 5900 0    60   ~ 0
d_membases15
Wire Wire Line
	3500 6100 3650 6100
Connection ~ 3500 4800
$Comp
L 74LS574 U28
U 1 1 5B603FB9
P 4350 7000
F 0 "U28" H 4350 7000 50  0000 C CNN
F 1 "74HC574" H 4400 6650 50  0000 C CNN
F 2 "Housings_SOIC:SOIC-16W_7.5x10.3mm_Pitch1.27mm" H 4350 7000 50  0001 C CNN
F 3 "" H 4350 7000 50  0001 C CNN
	1    4350 7000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4950 6400 4350 6400
Wire Wire Line
	4350 6400 4350 6450
Connection ~ 4950 5100
Wire Bus Line
	1550 6400 2950 6400
Wire Bus Line
	2950 6400 2950 6900
Entry Wire Line
	2950 6400 3050 6500
Entry Wire Line
	2950 6500 3050 6600
Entry Wire Line
	2950 6600 3050 6700
Entry Wire Line
	2950 6700 3050 6800
Entry Wire Line
	2950 6800 3050 6900
Entry Wire Line
	2950 6900 3050 7000
Wire Wire Line
	3050 6500 3650 6500
Wire Wire Line
	3050 6600 3650 6600
Wire Wire Line
	3050 6700 3650 6700
Wire Wire Line
	3050 6800 3650 6800
Wire Wire Line
	3050 6900 3650 6900
Wire Wire Line
	3050 7000 3650 7000
Text Label 3050 6500 0    60   ~ 0
d_ravals10
Text Label 3050 6600 0    60   ~ 0
d_ravals11
Text Label 3050 6700 0    60   ~ 0
d_ravals12
Text Label 3050 6800 0    60   ~ 0
d_ravals13
Text Label 3050 6900 0    60   ~ 0
d_ravals14
Text Label 3050 7000 0    60   ~ 0
d_ravals15
Wire Bus Line
	1550 7000 2950 7000
Wire Bus Line
	2950 7000 2950 7700
Entry Wire Line
	2950 7000 3050 7100
Entry Wire Line
	2950 7100 3050 7200
Wire Wire Line
	3050 7100 3650 7100
Wire Wire Line
	3050 7200 3650 7200
Text Label 3050 7100 0    60   ~ 0
d_insns10
Text Label 3050 7200 0    60   ~ 0
d_insns11
Wire Wire Line
	3500 7400 3650 7400
Connection ~ 3500 6100
Wire Wire Line
	3550 7500 3650 7500
Connection ~ 3550 7500
Wire Wire Line
	3550 7650 4350 7650
Wire Wire Line
	4350 7650 4350 7550
Connection ~ 3550 7650
$Comp
L 74LS574 U29
U 1 1 5B604565
P 4350 8300
F 0 "U29" H 4350 8300 50  0000 C CNN
F 1 "74HC574" H 4400 7950 50  0000 C CNN
F 2 "Housings_SOIC:SOIC-16W_7.5x10.3mm_Pitch1.27mm" H 4350 8300 50  0001 C CNN
F 3 "" H 4350 8300 50  0001 C CNN
	1    4350 8300
	1    0    0    -1  
$EndComp
Wire Wire Line
	4950 7700 4350 7700
Wire Wire Line
	4350 7700 4350 7750
Connection ~ 4950 6400
Wire Wire Line
	3550 8800 3650 8800
Connection ~ 3550 8800
Wire Wire Line
	4350 8950 4350 8850
Connection ~ 3550 8950
Wire Wire Line
	3500 8700 3650 8700
Connection ~ 3500 7400
Entry Wire Line
	2950 7700 3050 7800
Wire Wire Line
	3050 7800 3650 7800
Text Label 3050 7800 0    60   ~ 0
d_insns12
Wire Wire Line
	1550 7800 2950 7800
Wire Wire Line
	2950 7800 3050 7900
Wire Wire Line
	3050 7900 3650 7900
Wire Wire Line
	1550 8000 3650 8000
Wire Wire Line
	1550 8200 2950 8200
Wire Wire Line
	2950 8200 3050 8100
Wire Wire Line
	3050 8100 3650 8100
Wire Bus Line
	1550 8400 2950 8400
Wire Bus Line
	2950 8400 2950 8300
Entry Wire Line
	3050 8200 2950 8300
Entry Wire Line
	3050 8300 2950 8400
Wire Wire Line
	3050 8200 3650 8200
Wire Wire Line
	3050 8300 3650 8300
Text Label 3050 8200 0    60   ~ 0
d_extops10
Text Label 3050 8300 0    60   ~ 0
d_extops11
Wire Wire Line
	1550 8600 2950 8600
Wire Wire Line
	2950 8600 3150 8400
Wire Wire Line
	3150 8400 3650 8400
Wire Wire Line
	3550 8500 3650 8500
Connection ~ 3550 8500
Text HLabel 6700 2600 2    60   Output ~ 0
q_valids1
Wire Wire Line
	5050 2600 6700 2600
Entry Wire Line
	6300 2700 6400 2800
Entry Wire Line
	6300 2800 6400 2900
Entry Wire Line
	6300 2900 6400 3000
Entry Wire Line
	6300 3000 6400 3100
Wire Wire Line
	5050 2700 6300 2700
Wire Wire Line
	5050 2800 6300 2800
Wire Wire Line
	5050 2900 6300 2900
Wire Wire Line
	5050 3000 6300 3000
Text Label 5650 2700 2    60   ~ 0
q_dsts10
Text Label 5650 2800 2    60   ~ 0
q_dsts11
Text Label 5650 2900 2    60   ~ 0
q_dsts12
Text Label 5650 3000 2    60   ~ 0
q_dsts13
Wire Bus Line
	6400 2800 6400 3100
Wire Bus Line
	6400 3100 6700 3100
Text HLabel 6700 3100 2    60   Output ~ 0
q_dsts1[0..3]
Entry Wire Line
	6300 3200 6400 3300
Entry Wire Line
	6300 3300 6400 3400
Wire Wire Line
	6300 3100 5050 3100
Wire Wire Line
	6300 3200 5050 3200
Wire Wire Line
	6300 3300 5050 3300
Wire Wire Line
	6300 3100 6400 3200
Wire Wire Line
	6400 3200 6700 3200
Text HLabel 6700 3200 2    60   Output ~ 0
q_isjmps1
Text Label 5800 3200 2    60   ~ 0
q_rbims10
Text Label 5800 3300 2    60   ~ 0
q_rbims11
Entry Wire Line
	6300 3900 6400 4000
Entry Wire Line
	6300 4000 6400 4100
Entry Wire Line
	6300 4100 6400 4200
Entry Wire Line
	6300 4200 6400 4300
Entry Wire Line
	6300 4300 6400 4400
Entry Wire Line
	6300 4400 6400 4500
Entry Wire Line
	6300 4500 6400 4600
Entry Wire Line
	6300 4600 6400 4700
Wire Wire Line
	5050 3900 6300 3900
Wire Wire Line
	5050 4000 6300 4000
Wire Wire Line
	5050 4100 6300 4100
Wire Wire Line
	5050 4200 6300 4200
Wire Wire Line
	5050 4300 6300 4300
Wire Wire Line
	5050 4400 6300 4400
Wire Wire Line
	5050 4500 6300 4500
Wire Wire Line
	5050 4600 6300 4600
Text Label 5800 3900 2    60   ~ 0
q_rbims12
Text Label 5800 4000 2    60   ~ 0
q_rbims13
Text Label 5800 4100 2    60   ~ 0
q_rbims14
Text Label 5800 4200 2    60   ~ 0
q_rbims15
Text Label 5750 4300 2    60   ~ 0
q_rasrcs10
Text Label 5750 4400 2    60   ~ 0
q_rasrcs11
Text Label 5750 4500 2    60   ~ 0
q_rasrcs12
Text Label 5750 4600 2    60   ~ 0
q_rasrcs13
Wire Bus Line
	6400 3300 6400 4300
Wire Bus Line
	6400 4300 6700 4300
Text HLabel 6700 4300 2    60   Output ~ 0
q_rbims1[0..5]
Entry Wire Line
	6300 5200 6400 5300
Entry Wire Line
	6300 5300 6400 5400
Entry Wire Line
	6300 5400 6400 5500
Entry Wire Line
	6300 5500 6400 5600
Entry Wire Line
	6300 5600 6400 5700
Entry Wire Line
	6300 5700 6400 5800
Entry Wire Line
	6300 5800 6400 5900
Entry Wire Line
	6300 5900 6400 6000
Entry Wire Line
	6300 6500 6400 6600
Entry Wire Line
	6300 6600 6400 6700
Entry Wire Line
	6300 6700 6400 6800
Entry Wire Line
	6300 6800 6400 6900
Entry Wire Line
	6300 6900 6400 7000
Entry Wire Line
	6300 7000 6400 7100
Entry Wire Line
	6300 7100 6400 7200
Entry Wire Line
	6300 7200 6400 7300
Entry Wire Line
	6300 7800 6400 7700
Wire Wire Line
	5050 5200 6300 5200
Wire Wire Line
	5050 5300 6300 5300
Wire Wire Line
	5050 5400 6300 5400
Wire Wire Line
	5050 5500 6300 5500
Wire Wire Line
	5050 5600 6300 5600
Wire Wire Line
	5050 5700 6300 5700
Wire Wire Line
	5050 5800 6300 5800
Wire Wire Line
	5050 5900 6300 5900
Wire Wire Line
	5050 6500 6300 6500
Wire Wire Line
	5050 6600 6300 6600
Wire Wire Line
	5050 6700 6300 6700
Wire Wire Line
	5050 6800 6300 6800
Wire Wire Line
	5050 6900 6300 6900
Wire Wire Line
	5050 7000 6300 7000
Wire Wire Line
	5050 7100 6300 7100
Wire Wire Line
	5050 7200 6300 7200
Wire Wire Line
	5050 7800 6300 7800
Wire Bus Line
	6400 4400 6400 5400
Wire Bus Line
	6400 5400 6700 5400
Text HLabel 6700 5400 2    60   Output ~ 0
q_rasrcs1[0..5]
Text Label 5750 5200 2    60   ~ 0
q_rasrcs14
Text Label 5750 5300 2    60   ~ 0
q_rasrcs15
Text Label 5800 5400 2    60   ~ 0
q_membases10
Text Label 5800 5500 2    60   ~ 0
q_membases11
Text Label 5800 5600 2    60   ~ 0
q_membases12
Text Label 5800 5700 2    60   ~ 0
q_membases13
Text Label 5800 5800 2    60   ~ 0
q_membases14
Text Label 5800 5900 2    60   ~ 0
q_membases15
Wire Bus Line
	6400 5500 6400 6000
Wire Bus Line
	6400 6000 6700 6000
Text HLabel 6700 6000 2    60   Output ~ 0
q_membases1[0..5]
Text Label 5750 6500 2    60   ~ 0
q_ravals10
Text Label 5750 6600 2    60   ~ 0
q_ravals11
Text Label 5750 6700 2    60   ~ 0
q_ravals12
Text Label 5750 6800 2    60   ~ 0
q_ravals13
Text Label 5750 6900 2    60   ~ 0
q_ravals14
Text Label 5750 7000 2    60   ~ 0
q_ravals15
Text Label 5800 7100 2    60   ~ 0
q_insns10
Text Label 5800 7200 2    60   ~ 0
q_insns11
Text Label 5800 7800 2    60   ~ 0
q_insns12
Wire Bus Line
	6400 6600 6400 7100
Wire Bus Line
	6400 7100 6700 7100
Wire Bus Line
	6400 7200 6400 7700
Wire Bus Line
	6400 7700 6700 7700
Text HLabel 6700 7100 2    60   Output ~ 0
q_ravals1[0..5]
Text HLabel 6700 7700 2    60   Output ~ 0
q_insns1[0..2]
Text HLabel 6700 7900 2    60   Output ~ 0
q_exts1
Text HLabel 6700 8000 2    60   Output ~ 0
q_extmodes1
Text HLabel 6700 8100 2    60   Output ~ 0
q_extsels1
Wire Wire Line
	6700 7900 5050 7900
Wire Wire Line
	5050 8000 6700 8000
Wire Wire Line
	6700 8100 5050 8100
Entry Wire Line
	6300 8200 6400 8300
Entry Wire Line
	6300 8300 6400 8400
Wire Wire Line
	5050 8200 6300 8200
Wire Wire Line
	6300 8300 5050 8300
Wire Bus Line
	6400 8300 6700 8300
Wire Bus Line
	6400 8400 6400 8300
Text HLabel 6700 8300 2    60   Output ~ 0
q_extops1[0..1]
Wire Wire Line
	5050 8400 6300 8400
Wire Wire Line
	6300 8400 6400 8500
Wire Wire Line
	6400 8500 6700 8500
Text HLabel 6700 8500 2    60   Output ~ 0
q_extcarrys1
Text Label 5800 8200 2    60   ~ 0
q_extops10
Text Label 5800 8300 2    60   ~ 0
q_extops11
$EndSCHEMATC
