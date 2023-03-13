EESchema Schematic File Version 5
EELAYER 43 0
EELAYER END
$Descr A4 11693 8268
encoding utf-8
Sheet 1 1
Title ""
Date ""
Rev ""
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
Comment5 ""
Comment6 ""
Comment7 ""
Comment8 ""
Comment9 ""
$EndDescr
Wire Wire Line
	4600 3700 4650 3700
Wire Wire Line
	4600 3750 4600 3700
Wire Wire Line
	5000 4200 5050 4200
Wire Wire Line
	5050 4200 5050 4250
Wire Wire Line
	5200 3700 5150 3700
Wire Wire Line
	5200 3750 5200 3700
Text GLabel 4650 3300 0    50   Input ~ 0
vdrive
Text GLabel 4650 3400 0    50   Input ~ 0
vdrive
Text GLabel 4650 3500 0    50   Input ~ 0
vdrive
Text GLabel 4650 3600 0    50   Input ~ 0
vdrive
Text GLabel 5000 4100 2    50   Input ~ 0
SPARE
Text GLabel 5150 3300 2    50   Input ~ 0
EN
Text GLabel 5150 3400 2    50   Input ~ 0
STEP
Text GLabel 5150 3500 2    50   Input ~ 0
DIR
Text GLabel 5450 3600 2    50   Input ~ 0
SPARE
Text GLabel 6300 3350 0    50   Input ~ 0
vdrive
Text GLabel 6300 3950 0    50   Input ~ 0
vdrive
Text GLabel 6500 3250 0    50   Input ~ 0
SPARE
Text GLabel 6500 3850 0    50   Input ~ 0
EN
Text GLabel 7300 3250 2    50   Input ~ 0
SPARE
Text GLabel 7300 3350 2    50   Input ~ 0
vdrive
Text GLabel 7300 3450 2    50   Input ~ 0
DIR
Text GLabel 7300 3550 2    50   Input ~ 0
vdrive
Text GLabel 7300 3650 2    50   Input ~ 0
STEP
Text GLabel 7300 3750 2    50   Input ~ 0
vdrive
Text GLabel 7300 3850 2    50   Input ~ 0
EN
Text GLabel 7300 3950 2    50   Input ~ 0
vdrive
$Comp
L power:GND #PWR0101
U 1 1 61888A3F
P 4600 3750
F 0 "#PWR0101" H 4600 3500 50  0001 C CNN
F 1 "GND" H 4605 3577 50  0001 C CNN
F 2 "" H 4600 3750 50  0001 C CNN
F 3 "" H 4600 3750 50  0001 C CNN
	1    4600 3750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0104
U 1 1 618B2BC6
P 5050 4250
F 0 "#PWR0104" H 5050 4000 50  0001 C CNN
F 1 "GND" H 5055 4077 50  0001 C CNN
F 2 "" H 5050 4250 50  0001 C CNN
F 3 "" H 5050 4250 50  0001 C CNN
	1    5050 4250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0102
U 1 1 61889D45
P 5200 3750
F 0 "#PWR0102" H 5200 3500 50  0001 C CNN
F 1 "GND" H 5205 3577 50  0001 C CNN
F 2 "" H 5200 3750 50  0001 C CNN
F 3 "" H 5200 3750 50  0001 C CNN
	1    5200 3750
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR0103
U 1 1 6189DEAD
P 6900 4150
F 0 "#PWR0103" H 6900 3900 50  0001 C CNN
F 1 "GND" H 6905 3977 50  0001 C CNN
F 2 "" H 6900 4150 50  0001 C CNN
F 3 "" H 6900 4150 50  0001 C CNN
	1    6900 4150
	1    0    0    -1  
$EndComp
$Comp
L Device:R_Small R1
U 1 1 618A15E4
P 6400 3350
F 0 "R1" V 6500 3350 50  0000 C CNN
F 1 "1k" V 6400 3350 31  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 6400 3350 50  0001 C CNN
F 3 "~" H 6400 3350 50  0001 C CNN
	1    6400 3350
	0    1    1    0   
$EndComp
$Comp
L Device:R_Small R2
U 1 1 618A340C
P 6400 3950
F 0 "R2" V 6500 3950 50  0000 C CNN
F 1 "1k" V 6400 3950 31  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric" H 6400 3950 50  0001 C CNN
F 3 "~" H 6400 3950 50  0001 C CNN
	1    6400 3950
	0    1    1    0   
$EndComp
$Comp
L Jumper:SolderJumper_2_Open JP1
U 1 1 618AD4CF
P 5300 3600
F 0 "JP1" H 5300 3500 50  0000 C CNN
F 1 "SolderJumper_2_Open" H 5300 3714 50  0001 C CNN
F 2 "Jumper:SolderJumper-2_P1.3mm_Open_TrianglePad1.0x1.5mm" H 5300 3600 50  0001 C CNN
F 3 "~" H 5300 3600 50  0001 C CNN
	1    5300 3600
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x02_Male J1
U 1 1 618B147B
P 4800 4100
F 0 "J1" H 4900 4300 50  0000 C CNN
F 1 "HLFB" H 4900 4200 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 4800 4100 50  0001 C CNN
F 3 "~" H 4800 4100 50  0001 C CNN
	1    4800 4100
	1    0    0    -1  
$EndComp
$Comp
L Connector_Generic:Conn_02x05_Odd_Even J2
U 1 1 6188279D
P 4850 3500
F 0 "J2" H 4900 3917 50  0000 C CNN
F 1 "MAINBOARD" H 4900 3826 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x05_P2.54mm_Horizontal" H 4850 3500 50  0001 C CNN
F 3 "~" H 4850 3500 50  0001 C CNN
	1    4850 3500
	1    0    0    -1  
$EndComp
$Comp
L Connector:RJ45_LED_Shielded_x2 J3
U 1 1 61899824
P 6900 3650
F 0 "J3" H 6900 4317 50  0000 C CNN
F 1 "RJ45_LED_Shielded_x2" H 6900 4226 50  0000 C CNN
F 2 "Connector_RJ:RJ45_Amphenol_RJHSE538X" V 6900 3675 50  0001 C CNN
F 3 "~" V 6900 3675 50  0001 C CNN
	1    6900 3650
	1    0    0    -1  
$EndComp
$EndSCHEMATC
