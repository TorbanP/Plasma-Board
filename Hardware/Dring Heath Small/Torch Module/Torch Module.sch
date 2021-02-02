EESchema Schematic File Version 4
EELAYER 30 0
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
$EndDescr
Wire Notes Line
	2100 2750 6400 2750
Wire Notes Line
	6400 2750 6400 800 
Text Notes 4750 2700 0    118  ~ 24
Module#3 Torch
Wire Notes Line
	2100 800  2100 2750
Wire Wire Line
	3000 1650 2900 1650
Wire Wire Line
	5150 1200 5150 1350
Wire Wire Line
	5150 1000 5450 1000
Connection ~ 5150 1000
Wire Wire Line
	5450 1450 4900 1450
Wire Wire Line
	4900 1700 4850 1700
Wire Wire Line
	4900 1450 4900 1700
Connection ~ 4550 1700
Wire Wire Line
	4550 1000 4950 1000
Wire Wire Line
	4850 1550 5450 1550
Wire Wire Line
	4850 1300 4850 1550
Text Notes 6200 1550 2    39   ~ 0
Torch IO 36 THC
Connection ~ 4550 1000
Wire Wire Line
	2950 1750 2900 1750
Wire Wire Line
	2950 2600 2950 1750
Wire Wire Line
	3900 2600 2950 2600
Wire Wire Line
	3900 2550 3900 2600
Text Notes 6250 1750 2    39   ~ 0
TorchIO 22 Ready
Wire Wire Line
	4100 1500 3850 1500
Wire Wire Line
	4100 1300 4850 1300
Wire Wire Line
	4100 1500 4100 1300
Wire Wire Line
	4550 1000 4250 1000
Wire Wire Line
	4550 1400 4550 1000
Connection ~ 4250 1000
Wire Wire Line
	4250 1000 3850 1000
Wire Wire Line
	4250 1000 4250 1500
Wire Wire Line
	3250 1850 3250 1000
Wire Wire Line
	3000 1850 3250 1850
Wire Wire Line
	3000 2150 3000 1850
Wire Wire Line
	2900 2150 3000 2150
Wire Wire Line
	3050 2050 2900 2050
Wire Wire Line
	3050 1900 3050 2050
Wire Wire Line
	3450 1900 3050 1900
Wire Wire Line
	3450 1800 3450 1900
Wire Wire Line
	3450 1800 3500 1800
Connection ~ 4250 1900
Wire Wire Line
	4250 1900 3900 1900
Wire Wire Line
	4250 2100 4250 1900
Wire Wire Line
	4250 2550 3900 2550
Connection ~ 4250 2550
Wire Wire Line
	4250 2400 4250 2550
$Comp
L Device:D D?
U 1 1 61A672A6
P 4250 2250
AR Path="/61469ABE/61A672A6" Ref="D?"  Part="1" 
AR Path="/61A672A6" Ref="D1"  Part="1" 
F 0 "D1" V 4204 2330 50  0000 L CNN
F 1 "D" V 4295 2330 50  0000 L CNN
F 2 "Diode_SMD:D_SOD-123" H 4250 2250 50  0001 C CNN
F 3 "~" H 4250 2250 50  0001 C CNN
	1    4250 2250
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3900 1900 3900 1950
Wire Wire Line
	4500 2550 4250 2550
Wire Wire Line
	4500 2350 4500 2550
Wire Wire Line
	5450 2350 4500 2350
$Comp
L Device:R_US R6
U 1 1 61A67297
P 4700 1700
AR Path="/61A67297" Ref="R6"  Part="1" 
AR Path="/61469ABE/61A67297" Ref="R?"  Part="1" 
F 0 "R6" V 4495 1700 50  0000 C CNN
F 1 "200" V 4586 1700 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 4740 1690 50  0001 C CNN
F 3 "~" H 4700 1700 50  0001 C CNN
	1    4700 1700
	0    1    -1   0   
$EndComp
$Comp
L Device:R_US R1
U 1 1 61A6728B
P 3000 1500
AR Path="/61A6728B" Ref="R1"  Part="1" 
AR Path="/61469ABE/61A6728B" Ref="R?"  Part="1" 
F 0 "R1" V 2795 1500 50  0000 C CNN
F 1 "3.3K" V 2886 1500 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 3040 1490 50  0001 C CNN
F 3 "~" H 3000 1500 50  0001 C CNN
	1    3000 1500
	-1   0    0    1   
$EndComp
$Comp
L Device:C_Small C2
U 1 1 61A67285
P 5150 1100
AR Path="/61A67285" Ref="C2"  Part="1" 
AR Path="/61469ABE/61A67285" Ref="C?"  Part="1" 
F 0 "C2" H 5058 1054 50  0000 R CNN
F 1 "1uf" H 5058 1145 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 5150 1100 50  0001 C CNN
F 3 "~" H 5150 1100 50  0001 C CNN
	1    5150 1100
	-1   0    0    -1  
$EndComp
$Comp
L Device:R_US R5
U 1 1 61A67279
P 4550 1550
AR Path="/61A67279" Ref="R5"  Part="1" 
AR Path="/61469ABE/61A67279" Ref="R?"  Part="1" 
F 0 "R5" V 4345 1550 50  0000 C CNN
F 1 "10k" V 4436 1550 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 4590 1540 50  0001 C CNN
F 3 "~" H 4550 1550 50  0001 C CNN
	1    4550 1550
	-1   0    0    1   
$EndComp
$Comp
L Transistor_FET:AO3400A Q?
U 1 1 61A67273
P 4350 1700
AR Path="/61469ABE/61A67273" Ref="Q?"  Part="1" 
AR Path="/61A67273" Ref="Q1"  Part="1" 
F 0 "Q1" H 4555 1746 50  0000 L CNN
F 1 "IRLML2402" H 4555 1655 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 4550 1625 50  0001 L CIN
F 3 "http://www.aosmd.com/pdfs/datasheet/AO3400A.pdf" H 4350 1700 50  0001 L CNN
	1    4350 1700
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x12_Male J?
U 1 1 61A6726D
P 5650 1950
AR Path="/61469ABE/61A6726D" Ref="J?"  Part="1" 
AR Path="/61A6726D" Ref="J2"  Part="1" 
F 0 "J2" H 5600 2400 50  0000 R CNN
F 1 "Module3" V 5600 2250 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x12_P2.54mm_Vertical" H 5650 1950 50  0001 C CNN
F 3 "~" H 5650 1950 50  0001 C CNN
	1    5650 1950
	-1   0    0    1   
$EndComp
Connection ~ 3850 1500
Wire Wire Line
	3550 1500 3500 1500
Wire Wire Line
	3850 1400 3850 1500
Wire Wire Line
	3850 1000 3850 1200
$Comp
L Device:C_Small C1
U 1 1 61A6725D
P 3850 1300
AR Path="/61A6725D" Ref="C1"  Part="1" 
AR Path="/61469ABE/61A6725D" Ref="C?"  Part="1" 
F 0 "C1" H 3758 1254 50  0000 R CNN
F 1 "22nf" H 3758 1345 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 3850 1300 50  0001 C CNN
F 3 "~" H 3850 1300 50  0001 C CNN
	1    3850 1300
	-1   0    0    -1  
$EndComp
$Comp
L Device:R_US R4
U 1 1 61A67257
P 3700 1500
AR Path="/61A67257" Ref="R4"  Part="1" 
AR Path="/61469ABE/61A67257" Ref="R?"  Part="1" 
F 0 "R4" V 3495 1500 50  0000 C CNN
F 1 "10k" V 3586 1500 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 3740 1490 50  0001 C CNN
F 3 "~" H 3700 1500 50  0001 C CNN
	1    3700 1500
	0    1    -1   0   
$EndComp
$Comp
L Device:R_US R3
U 1 1 61A6724B
P 3500 1650
AR Path="/61A6724B" Ref="R3"  Part="1" 
AR Path="/61469ABE/61A6724B" Ref="R?"  Part="1" 
F 0 "R3" H 3700 1750 50  0000 R CNN
F 1 "1k" H 3700 1600 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 3540 1640 50  0001 C CNN
F 3 "~" H 3500 1650 50  0001 C CNN
	1    3500 1650
	-1   0    0    1   
$EndComp
NoConn ~ 5450 1950
NoConn ~ 5450 2050
NoConn ~ 5450 2250
NoConn ~ 2900 1850
NoConn ~ 2900 1950
NoConn ~ 3600 2550
NoConn ~ 4200 4300
NoConn ~ 4200 4200
NoConn ~ 4200 4100
Wire Wire Line
	5450 2450 4950 2450
Wire Wire Line
	4950 2450 4950 1000
Connection ~ 4950 1000
Wire Wire Line
	4950 1000 5150 1000
Wire Notes Line
	2350 2850 5700 2850
Wire Notes Line
	5700 2850 5700 4750
Wire Notes Line
	5700 4750 2350 4750
Wire Notes Line
	2350 4750 2350 2850
Text Notes 2450 4700 0    118  ~ 24
Clearpath Driver
$Comp
L Connector:Conn_01x18_Male J3
U 1 1 5FFFC856
P 3950 2900
F 0 "J3" H 4058 3881 50  0000 C CNN
F 1 "Conn_01x18_Male" H 4058 3790 50  0000 C CNN
F 2 "Modules:ClearpathDriver" H 3950 2900 50  0001 C CNN
F 3 "~" H 3950 2900 50  0001 C CNN
	1    3950 2900
	0    -1   1    0   
$EndComp
Wire Wire Line
	3150 3100 3150 3700
Wire Wire Line
	3150 3700 3400 3700
Wire Wire Line
	4200 3500 4650 3500
Wire Wire Line
	4650 3500 4650 3100
Wire Wire Line
	4200 3700 4450 3700
Wire Wire Line
	4450 3700 4450 3100
Wire Wire Line
	4350 3100 4350 3800
Wire Wire Line
	4350 3800 4200 3800
Wire Wire Line
	3850 3100 3850 3250
Wire Wire Line
	3250 3250 3250 3900
Wire Wire Line
	3250 3900 3400 3900
Wire Wire Line
	3250 3250 3850 3250
Wire Wire Line
	3750 3100 3750 3300
Wire Wire Line
	3750 3300 3300 3300
Wire Wire Line
	3300 3300 3300 3800
Wire Wire Line
	3300 3800 3400 3800
Wire Wire Line
	3400 4500 3800 4500
Wire Wire Line
	4200 3900 4250 3900
Wire Wire Line
	4250 3900 4250 3100
NoConn ~ 4050 3100
NoConn ~ 3650 3100
NoConn ~ 3550 3100
NoConn ~ 3350 3100
NoConn ~ 3250 3100
$Comp
L Connector:Conn_01x10_Female J5
U 1 1 60009679
P 7000 3150
F 0 "J5" H 6892 3735 50  0000 C CNN
F 1 "~" H 6892 3644 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x05_P2.54mm_Horizontal" H 7000 3150 50  0001 C CNN
F 3 "~" H 7000 3150 50  0001 C CNN
	1    7000 3150
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7200 2750 7500 2750
Wire Wire Line
	7500 2750 7500 2650
Wire Wire Line
	7500 2650 8050 2650
Wire Wire Line
	7200 3650 7500 3650
Wire Wire Line
	7500 3650 7500 3750
Wire Wire Line
	7500 3750 8050 3750
Wire Wire Line
	7200 2850 7650 2850
Wire Wire Line
	7200 2950 7650 2950
Wire Wire Line
	7200 3050 7650 3050
Wire Wire Line
	7200 3150 7650 3150
Wire Wire Line
	7200 3250 7650 3250
Wire Wire Line
	7200 3350 7650 3350
Wire Wire Line
	7200 3450 7650 3450
Wire Wire Line
	7200 3550 7650 3550
$Comp
L Connector:Conn_01x12_Male J?
U 1 1 60058092
P 8950 1650
AR Path="/61469ABE/60058092" Ref="J?"  Part="1" 
AR Path="/60058092" Ref="J7"  Part="1" 
F 0 "J7" H 8900 2100 50  0000 R CNN
F 1 "Module1" V 8850 1750 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x12_P2.54mm_Vertical" H 8950 1650 50  0001 C CNN
F 3 "~" H 8950 1650 50  0001 C CNN
	1    8950 1650
	-1   0    0    1   
$EndComp
Wire Wire Line
	8600 1400 8350 1400
Connection ~ 8350 1050
Connection ~ 8350 1400
Wire Wire Line
	8000 1350 8000 1400
Wire Wire Line
	8050 1400 8000 1400
Wire Wire Line
	8350 1300 8350 1400
Wire Wire Line
	8350 1050 8350 1100
Wire Wire Line
	8000 1050 8350 1050
$Comp
L Device:C_Small C4
U 1 1 600627D4
P 8350 1200
AR Path="/600627D4" Ref="C4"  Part="1" 
AR Path="/61469ABE/600627D4" Ref="C?"  Part="1" 
F 0 "C4" H 8258 1154 50  0000 R CNN
F 1 "1uf" H 8258 1245 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 8350 1200 50  0001 C CNN
F 3 "~" H 8350 1200 50  0001 C CNN
	1    8350 1200
	-1   0    0    -1  
$EndComp
$Comp
L Device:R_US R15
U 1 1 600627DE
P 8200 1400
AR Path="/600627DE" Ref="R15"  Part="1" 
AR Path="/61469ABE/600627DE" Ref="R?"  Part="1" 
F 0 "R15" V 8300 1400 50  0000 C CNN
F 1 "10k" V 8086 1400 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 8240 1390 50  0001 C CNN
F 3 "~" H 8200 1400 50  0001 C CNN
	1    8200 1400
	0    1    -1   0   
$EndComp
$Comp
L Device:R_US R13
U 1 1 600627E8
P 8000 1200
AR Path="/600627E8" Ref="R13"  Part="1" 
AR Path="/61469ABE/600627E8" Ref="R?"  Part="1" 
F 0 "R13" H 7800 1300 50  0000 L CNN
F 1 "1k" H 7800 1200 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 8040 1190 50  0001 C CNN
F 3 "~" H 8000 1200 50  0001 C CNN
	1    8000 1200
	1    0    0    1   
$EndComp
$Comp
L Device:R_US R11
U 1 1 600627F2
P 7850 1400
AR Path="/600627F2" Ref="R11"  Part="1" 
AR Path="/61469ABE/600627F2" Ref="R?"  Part="1" 
F 0 "R11" V 7750 1450 50  0000 R CNN
F 1 "3.3k" V 7700 1450 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 7890 1390 50  0001 C CNN
F 3 "~" H 7850 1400 50  0001 C CNN
	1    7850 1400
	0    -1   -1   0   
$EndComp
Connection ~ 8000 1400
Wire Wire Line
	8600 1800 8350 1800
Connection ~ 8350 2150
Connection ~ 8350 1800
Wire Wire Line
	8000 1850 8000 1800
Wire Wire Line
	8050 1800 8000 1800
Wire Wire Line
	8350 1900 8350 1800
Wire Wire Line
	8350 2150 8350 2100
Wire Wire Line
	8000 2150 8350 2150
$Comp
L Device:C_Small C5
U 1 1 60078B3B
P 8350 2000
AR Path="/60078B3B" Ref="C5"  Part="1" 
AR Path="/61469ABE/60078B3B" Ref="C?"  Part="1" 
F 0 "C5" H 8258 1954 50  0000 R CNN
F 1 "1uf" H 8258 2045 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 8350 2000 50  0001 C CNN
F 3 "~" H 8350 2000 50  0001 C CNN
	1    8350 2000
	-1   0    0    1   
$EndComp
$Comp
L Device:R_US R16
U 1 1 60078B45
P 8200 1800
AR Path="/60078B45" Ref="R16"  Part="1" 
AR Path="/61469ABE/60078B45" Ref="R?"  Part="1" 
F 0 "R16" V 8300 1800 50  0000 C CNN
F 1 "10k" V 8086 1800 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 8240 1790 50  0001 C CNN
F 3 "~" H 8200 1800 50  0001 C CNN
	1    8200 1800
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R14
U 1 1 60078B4F
P 8000 2000
AR Path="/60078B4F" Ref="R14"  Part="1" 
AR Path="/61469ABE/60078B4F" Ref="R?"  Part="1" 
F 0 "R14" H 7800 2100 50  0000 L CNN
F 1 "1k" H 7800 2000 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 8040 1990 50  0001 C CNN
F 3 "~" H 8000 2000 50  0001 C CNN
	1    8000 2000
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R12
U 1 1 60078B59
P 7850 1800
AR Path="/60078B59" Ref="R12"  Part="1" 
AR Path="/61469ABE/60078B59" Ref="R?"  Part="1" 
F 0 "R12" V 7700 1850 50  0000 R CNN
F 1 "3.3k" V 7750 1850 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 7890 1790 50  0001 C CNN
F 3 "~" H 7850 1800 50  0001 C CNN
	1    7850 1800
	0    -1   1    0   
$EndComp
Connection ~ 8000 1800
Wire Wire Line
	7450 1400 7700 1400
Wire Wire Line
	7450 1800 7700 1800
Wire Wire Line
	8600 1800 8600 1650
Wire Wire Line
	8600 1650 8750 1650
Wire Wire Line
	8600 1400 8600 1550
Wire Wire Line
	8600 1550 8750 1550
Wire Wire Line
	8750 2050 8650 2050
Wire Wire Line
	8650 2050 8650 1600
Wire Wire Line
	8650 1600 7550 1600
Wire Wire Line
	7550 1600 7550 1500
Wire Wire Line
	7550 1500 7450 1500
Wire Wire Line
	7450 1900 7550 1900
Wire Wire Line
	7550 1900 7550 1600
Connection ~ 7550 1600
Wire Notes Line
	6650 800  6650 2400
Wire Notes Line
	6650 2500 6650 3900
Wire Notes Line
	6650 3900 9050 3900
Wire Notes Line
	9050 3900 9050 2500
Wire Notes Line
	9050 2500 6650 2500
Text Notes 6800 2350 0    118  ~ 24
Z LIMIT
Text Notes 6700 3900 0    118  ~ 24
Motor Conn
Text Notes 5700 1450 0    39   ~ 0
Torch IO32 Trigger
Text Notes 9150 1700 0    39   ~ 0
Z limit Stop
Text Notes 9150 1550 0    39   ~ 0
A Limit Touch
Wire Notes Line
	6650 800  9600 800 
Wire Notes Line
	6650 2400 9600 2400
Wire Wire Line
	8350 2150 8750 2150
Wire Wire Line
	8350 1050 8750 1050
Wire Wire Line
	8000 1050 7600 1050
Wire Wire Line
	7600 1050 7600 2100
Wire Wire Line
	7600 2150 8000 2150
Connection ~ 8000 1050
Connection ~ 8000 2150
NoConn ~ 7450 1200
NoConn ~ 7450 1300
NoConn ~ 7450 1600
NoConn ~ 7450 1700
NoConn ~ 8750 1950
NoConn ~ 8750 1850
NoConn ~ 8750 1750
NoConn ~ 8750 1450
NoConn ~ 8750 1350
NoConn ~ 8750 1250
NoConn ~ 8750 1150
Wire Wire Line
	5450 2150 5100 2150
Wire Wire Line
	5100 2150 5100 1650
Wire Wire Line
	5100 1650 5450 1650
Text Notes 5750 2150 0    39   ~ 0
GRBL IO26 Handover
Text Notes 5700 1650 0    39   ~ 0
IO 21recieve handover
Wire Wire Line
	3250 1000 2500 1000
Wire Wire Line
	2500 1000 2500 1450
Wire Wire Line
	2500 2550 2500 2650
Wire Wire Line
	2500 2650 4550 2650
Wire Wire Line
	4550 2650 4550 2450
Wire Wire Line
	4550 2450 4950 2450
Connection ~ 4950 2450
$Comp
L My_library:8P8C_Shielded J4
U 1 1 600B48EF
P 7050 1600
F 0 "J4" H 6850 2150 50  0000 R CNN
F 1 "Limit" H 6900 2250 50  0000 R CNN
F 2 "Modules:RJ45_Torb_Vertical" V 7050 1625 50  0001 C CNN
F 3 "~" V 7050 1625 50  0001 C CNN
	1    7050 1600
	1    0    0    -1  
$EndComp
Wire Wire Line
	7050 1000 7600 1000
Wire Wire Line
	7600 1000 7600 1050
Connection ~ 7600 1050
Wire Wire Line
	7050 2100 7600 2100
Connection ~ 7600 2100
Wire Wire Line
	7600 2100 7600 2150
Connection ~ 3900 2550
$Comp
L Relay:G6E K?
U 1 1 61A6727F
P 3700 2250
AR Path="/61469ABE/61A6727F" Ref="K?"  Part="1" 
AR Path="/61A6727F" Ref="K1"  Part="1" 
F 0 "K1" H 4130 2296 50  0000 L CNN
F 1 "G6E" H 4130 2205 50  0000 L CNN
F 2 "Relay_THT:Relay_SPDT_Omron_G6E" H 4830 2220 50  0001 C CNN
F 3 "https://www.omron.com/ecb/products/pdf/en-g6e.pdf" H 3700 2250 50  0001 C CNN
	1    3700 2250
	-1   0    0    1   
$EndComp
$Comp
L My_library:8P8C_Shielded J1
U 1 1 600A1FE7
P 2500 2050
F 0 "J1" H 2300 2600 50  0000 R CNN
F 1 "Torch" H 2350 2700 50  0000 R CNN
F 2 "Modules:RJ45_Torb_Vertical" V 2500 2075 50  0001 C CNN
F 3 "~" V 2500 2075 50  0001 C CNN
	1    2500 2050
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 2350 3100 2350
Wire Wire Line
	3100 2350 3100 1950
Wire Wire Line
	3100 1950 3500 1950
Wire Wire Line
	2900 2250 3000 2250
Wire Wire Line
	3000 2250 3000 2550
Wire Wire Line
	3000 2550 3400 2550
$Comp
L My_library:8P8C_Shielded J6
U 1 1 600E6543
P 8050 3150
F 0 "J6" H 7650 3250 50  0000 R CNN
F 1 "Motor" H 7700 3150 50  0000 R CNN
F 2 "Connector_RJ:RJ45_Amphenol_RJHSE5380" V 8050 3175 50  0001 C CNN
F 3 "~" V 8050 3175 50  0001 C CNN
	1    8050 3150
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x10_Male J9
U 1 1 600FA13A
P 3900 4950
F 0 "J9" H 4008 5531 50  0000 C CNN
F 1 "2.54 pin" H 4008 5440 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x05_P2.54mm_Vertical" H 3900 4950 50  0001 C CNN
F 3 "~" H 3900 4950 50  0001 C CNN
	1    3900 4950
	0    -1   1    0   
$EndComp
Text Notes 3050 5350 0    118  ~ 24
Jtag
NoConn ~ 4850 3100
NoConn ~ 4750 3100
Wire Wire Line
	3450 3100 3450 3200
Wire Wire Line
	3450 3200 3200 3200
Wire Wire Line
	3200 3200 3200 4000
Wire Wire Line
	3200 4000 3400 4000
Wire Wire Line
	3400 4300 3400 4500
Connection ~ 3400 4300
Wire Wire Line
	3400 4200 3400 4300
Wire Wire Line
	3400 4100 3400 4200
Connection ~ 3400 4200
$Comp
L Transistor_Array:ULN2002 U1
U 1 1 5FF8EFB7
P 3800 3900
F 0 "U1" H 3950 4550 50  0000 C CNN
F 1 "ULN2002" H 3950 4450 50  0000 C CNN
F 2 "Package_SO:SO-16_3.9x9.9mm_P1.27mm" H 3850 3350 50  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/uln2003a.pdf" H 3900 3700 50  0001 C CNN
	1    3800 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4200 4000 4550 4000
Wire Wire Line
	4550 4000 4550 3250
Wire Wire Line
	4550 3250 4150 3250
Wire Wire Line
	4150 3250 4150 3100
Wire Wire Line
	3950 3100 3950 3150
Wire Wire Line
	3950 3150 4550 3150
Wire Wire Line
	4550 3150 4550 3100
Wire Wire Line
	4550 3150 4700 3150
Wire Wire Line
	4700 3150 4700 4500
Wire Wire Line
	4700 4500 3800 4500
Connection ~ 4550 3150
Connection ~ 3800 4500
$Comp
L Device:R_US R7
U 1 1 601384CF
P 5300 1750
AR Path="/601384CF" Ref="R7"  Part="1" 
AR Path="/61469ABE/601384CF" Ref="R?"  Part="1" 
F 0 "R7" V 5095 1750 50  0000 C CNN
F 1 "10k" V 5186 1750 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 5340 1740 50  0001 C CNN
F 3 "~" H 5300 1750 50  0001 C CNN
	1    5300 1750
	0    -1   -1   0   
$EndComp
NoConn ~ 5450 1850
Wire Wire Line
	3250 1000 3500 1000
Connection ~ 3250 1000
Connection ~ 3850 1000
Wire Wire Line
	3500 1200 3500 1000
Connection ~ 3500 1000
Wire Wire Line
	3500 1000 3650 1000
Wire Wire Line
	5450 1000 5450 1350
$Comp
L Device:R_US R2
U 1 1 601F274B
P 5300 1350
AR Path="/601F274B" Ref="R2"  Part="1" 
AR Path="/61469ABE/601F274B" Ref="R?"  Part="1" 
F 0 "R2" V 5200 1350 50  0000 C CNN
F 1 "1k" V 5400 1350 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 5340 1340 50  0001 C CNN
F 3 "~" H 5300 1350 50  0001 C CNN
	1    5300 1350
	0    -1   -1   0   
$EndComp
Connection ~ 5150 1350
Wire Wire Line
	5150 1350 5150 1750
Connection ~ 5450 1350
Wire Wire Line
	3000 1150 4800 1150
Wire Wire Line
	4800 1150 4800 1200
Wire Wire Line
	4800 1200 5150 1200
Wire Wire Line
	3000 1150 3000 1350
Connection ~ 5150 1200
Text Notes 5800 2350 0    39   ~ 0
15v
Text Notes 5800 2450 0    39   ~ 0
gnd
Text Notes 5700 1350 0    39   ~ 0
gnd
$Comp
L Device:R_POT_TRIM_US RV1
U 1 1 60201FC2
P 3500 1350
F 0 "RV1" H 3433 1396 50  0000 R CNN
F 1 "2K" H 3433 1305 50  0000 R CNN
F 2 "Potentiometer_THT:Potentiometer_Bourns_3339S_Horizontal" H 3500 1350 50  0001 C CNN
F 3 "~" H 3500 1350 50  0001 C CNN
	1    3500 1350
	1    0    0    -1  
$EndComp
Connection ~ 3500 1500
Wire Wire Line
	3650 1350 3650 1000
Connection ~ 3650 1000
Wire Wire Line
	3650 1000 3850 1000
$Comp
L My_library:8P8C_Shielded J8
U 1 1 6023A990
P 3800 6250
F 0 "J8" H 3600 6800 50  0000 R CNN
F 1 "Torch" H 3650 6900 50  0000 R CNN
F 2 "Modules:RJ45_Torb_Vertical" V 3800 6275 50  0001 C CNN
F 3 "~" V 3800 6275 50  0001 C CNN
	1    3800 6250
	0    1    -1   0   
$EndComp
Wire Wire Line
	3500 5150 3500 5250
Wire Wire Line
	3500 5250 4950 5250
Wire Wire Line
	4600 5350 4600 5450
Wire Wire Line
	4600 5450 4950 5450
Wire Wire Line
	4550 5300 4550 5050
Wire Wire Line
	4550 5050 4800 5050
Wire Wire Line
	3800 5150 3800 5400
Wire Wire Line
	3800 5400 4100 5400
Wire Wire Line
	4550 5400 4550 5850
Wire Wire Line
	4550 5850 4950 5850
Wire Wire Line
	4000 5150 4000 5450
Wire Wire Line
	4000 5450 4500 5450
Wire Wire Line
	4500 5450 4500 5950
Wire Wire Line
	4500 5950 4950 5950
Wire Wire Line
	4200 5150 4200 5500
Wire Wire Line
	4200 5500 4450 5500
Wire Wire Line
	4450 5500 4450 6050
Wire Wire Line
	4450 6050 4950 6050
Wire Wire Line
	4400 6250 4400 6150
Wire Wire Line
	4400 6150 4800 6150
Wire Wire Line
	4750 5200 3450 5200
Wire Wire Line
	3450 5200 3450 5500
Wire Wire Line
	3450 5500 3500 5500
Wire Wire Line
	3500 5500 3500 5850
Wire Notes Line
	3000 4850 3000 6650
Wire Wire Line
	4200 5850 4400 5850
Wire Wire Line
	4400 5850 4400 6150
Connection ~ 4400 6150
Wire Wire Line
	3300 6250 3300 6150
Wire Wire Line
	3300 6150 4400 6150
Wire Notes Line
	5550 4850 5550 6650
Wire Notes Line
	3000 4850 5550 4850
Wire Notes Line
	3000 6650 5550 6650
$Comp
L Connector:Conn_01x12_Male J?
U 1 1 600F49D0
P 5150 5550
AR Path="/61469ABE/600F49D0" Ref="J?"  Part="1" 
AR Path="/600F49D0" Ref="J10"  Part="1" 
F 0 "J10" H 5100 6000 50  0000 R CNN
F 1 "Module conn" V 5050 5650 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x12_P2.54mm_Vertical" H 5150 5550 50  0001 C CNN
F 3 "~" H 5150 5550 50  0001 C CNN
	1    5150 5550
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4750 5200 4750 5150
Wire Wire Line
	4750 5150 4950 5150
Wire Wire Line
	4950 5350 4650 5350
Wire Wire Line
	4650 5350 4650 5550
Wire Wire Line
	4650 5550 3600 5550
Wire Wire Line
	3600 5550 3600 5850
Wire Wire Line
	3700 5350 3700 5850
Wire Wire Line
	4950 5550 4700 5550
Wire Wire Line
	4700 5550 4700 5600
Wire Wire Line
	4700 5600 3800 5600
Wire Wire Line
	3800 5600 3800 5850
Wire Wire Line
	4950 5650 3900 5650
Wire Wire Line
	3900 5650 3900 5850
Wire Wire Line
	4950 5750 4000 5750
Wire Wire Line
	4000 5750 4000 5850
Wire Wire Line
	4100 5400 4100 5850
Connection ~ 4100 5400
Wire Wire Line
	4100 5400 4550 5400
NoConn ~ 4400 5150
NoConn ~ 4100 5150
Wire Wire Line
	4800 6150 4800 5050
Connection ~ 4800 6150
Wire Wire Line
	4800 6150 4950 6150
Connection ~ 4800 5050
Wire Wire Line
	4800 5050 4950 5050
Wire Notes Line
	2100 800  6400 800 
Wire Wire Line
	3700 5350 4600 5350
Wire Wire Line
	4300 5150 4300 5300
Connection ~ 4300 5300
Wire Wire Line
	4300 5300 4550 5300
Wire Wire Line
	3900 5150 3900 5300
Connection ~ 3900 5300
Wire Wire Line
	3900 5300 4300 5300
Wire Wire Line
	3700 5150 3700 5300
Wire Wire Line
	3700 5300 3900 5300
Wire Wire Line
	4000 5750 4000 5500
Wire Wire Line
	4000 5500 3600 5500
Wire Wire Line
	3600 5150 3600 5500
Connection ~ 4000 5750
Text Notes 4650 6600 0    118  ~ 24
   &\nExtra IO
$Comp
L Connector:Conn_01x18_Male J11
U 1 1 601B8E13
P 7750 4200
F 0 "J11" H 7858 5181 50  0000 C CNN
F 1 "Conn_01x18_Male" V 7700 4200 50  0000 C CNN
F 2 "Modules:ClearpathDriver" H 7750 4200 50  0001 C CNN
F 3 "~" H 7750 4200 50  0001 C CNN
	1    7750 4200
	0    -1   1    0   
$EndComp
$Comp
L Device:Q_NMOS_GDS Q2
U 1 1 601F7D6C
P 7300 5000
F 0 "Q2" H 7504 5046 50  0000 L CNN
F 1 "IRLML2402" H 7504 4955 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 7500 5100 50  0001 C CNN
F 3 "~" H 7300 5000 50  0001 C CNN
	1    7300 5000
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R9
U 1 1 601FDF22
P 7100 5150
AR Path="/601FDF22" Ref="R9"  Part="1" 
AR Path="/61469ABE/601FDF22" Ref="R?"  Part="1" 
F 0 "R9" V 6895 5150 50  0000 C CNN
F 1 "10k" V 6986 5150 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 7140 5140 50  0001 C CNN
F 3 "~" H 7100 5150 50  0001 C CNN
	1    7100 5150
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R8
U 1 1 601FFD85
P 7100 4850
AR Path="/601FFD85" Ref="R8"  Part="1" 
AR Path="/61469ABE/601FFD85" Ref="R?"  Part="1" 
F 0 "R8" V 6895 4850 50  0000 C CNN
F 1 "200" V 6986 4850 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 7140 4840 50  0001 C CNN
F 3 "~" H 7100 4850 50  0001 C CNN
	1    7100 4850
	1    0    0    -1  
$EndComp
Connection ~ 7100 5000
$Comp
L Device:Q_NMOS_GDS Q4
U 1 1 6020F226
P 8600 5000
F 0 "Q4" H 8804 5046 50  0000 L CNN
F 1 "IRLML2402" H 8804 4955 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 8800 5100 50  0001 C CNN
F 3 "~" H 8600 5000 50  0001 C CNN
	1    8600 5000
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R19
U 1 1 6020F908
P 8400 5150
AR Path="/6020F908" Ref="R19"  Part="1" 
AR Path="/61469ABE/6020F908" Ref="R?"  Part="1" 
F 0 "R19" V 8195 5150 50  0000 C CNN
F 1 "10k" V 8286 5150 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 8440 5140 50  0001 C CNN
F 3 "~" H 8400 5150 50  0001 C CNN
	1    8400 5150
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R18
U 1 1 6020F912
P 8400 4850
AR Path="/6020F912" Ref="R18"  Part="1" 
AR Path="/61469ABE/6020F912" Ref="R?"  Part="1" 
F 0 "R18" V 8195 4850 50  0000 C CNN
F 1 "200" V 8286 4850 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 8440 4840 50  0001 C CNN
F 3 "~" H 8400 4850 50  0001 C CNN
	1    8400 4850
	1    0    0    -1  
$EndComp
Connection ~ 8400 5000
$Comp
L Device:Q_NMOS_GDS Q3
U 1 1 6022166D
P 7300 5750
F 0 "Q3" H 7504 5796 50  0000 L CNN
F 1 "IRLML2402" H 7504 5705 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 7500 5850 50  0001 C CNN
F 3 "~" H 7300 5750 50  0001 C CNN
	1    7300 5750
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R17
U 1 1 60221673
P 7100 5900
AR Path="/60221673" Ref="R17"  Part="1" 
AR Path="/61469ABE/60221673" Ref="R?"  Part="1" 
F 0 "R17" V 6895 5900 50  0000 C CNN
F 1 "10k" V 6986 5900 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 7140 5890 50  0001 C CNN
F 3 "~" H 7100 5900 50  0001 C CNN
	1    7100 5900
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R10
U 1 1 60221679
P 7100 5600
AR Path="/60221679" Ref="R10"  Part="1" 
AR Path="/61469ABE/60221679" Ref="R?"  Part="1" 
F 0 "R10" V 6895 5600 50  0000 C CNN
F 1 "200" V 6986 5600 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 7140 5590 50  0001 C CNN
F 3 "~" H 7100 5600 50  0001 C CNN
	1    7100 5600
	1    0    0    -1  
$EndComp
Connection ~ 7100 5750
$Comp
L Device:Q_NMOS_GDS Q5
U 1 1 6022FF01
P 8600 5750
F 0 "Q5" H 8804 5796 50  0000 L CNN
F 1 "IRLML2402" H 8804 5705 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 8800 5850 50  0001 C CNN
F 3 "~" H 8600 5750 50  0001 C CNN
	1    8600 5750
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R21
U 1 1 6022FF07
P 8400 5900
AR Path="/6022FF07" Ref="R21"  Part="1" 
AR Path="/61469ABE/6022FF07" Ref="R?"  Part="1" 
F 0 "R21" V 8195 5900 50  0000 C CNN
F 1 "10k" V 8286 5900 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 8440 5890 50  0001 C CNN
F 3 "~" H 8400 5900 50  0001 C CNN
	1    8400 5900
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R20
U 1 1 6022FF0D
P 8400 5600
AR Path="/6022FF0D" Ref="R20"  Part="1" 
AR Path="/61469ABE/6022FF0D" Ref="R?"  Part="1" 
F 0 "R20" V 8195 5600 50  0000 C CNN
F 1 "200" V 8286 5600 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 8440 5590 50  0001 C CNN
F 3 "~" H 8400 5600 50  0001 C CNN
	1    8400 5600
	1    0    0    -1  
$EndComp
Connection ~ 8400 5750
Wire Wire Line
	6950 4400 6950 4700
Wire Wire Line
	6950 4700 7100 4700
Wire Wire Line
	7550 4400 7550 4700
Wire Wire Line
	7550 4700 8400 4700
Wire Wire Line
	7250 4400 7250 4650
Wire Wire Line
	7250 4650 8100 4650
Wire Wire Line
	8100 4650 8100 5450
Wire Wire Line
	8100 5450 8400 5450
Wire Wire Line
	8250 4400 8250 4750
Wire Wire Line
	8250 4750 7400 4750
Wire Wire Line
	7400 4750 7400 4800
Wire Wire Line
	8150 4400 8150 4650
Wire Wire Line
	8150 4650 8700 4650
Wire Wire Line
	8700 4650 8700 4800
Wire Wire Line
	7650 4400 7650 5450
Wire Wire Line
	7650 5450 7100 5450
Wire Wire Line
	8050 4400 8050 5550
Wire Wire Line
	8050 5550 7400 5550
Wire Wire Line
	7950 4400 7950 5400
Wire Wire Line
	7950 5400 8700 5400
Wire Wire Line
	8700 5400 8700 5550
Wire Wire Line
	7100 5300 7400 5300
Wire Wire Line
	7400 5300 7400 5200
Wire Wire Line
	7750 4400 7750 4550
Wire Wire Line
	7750 4550 8350 4550
Wire Wire Line
	8350 4550 8350 4400
Wire Wire Line
	8350 4550 9300 4550
Wire Wire Line
	9300 4550 9300 5300
Wire Wire Line
	9300 5300 8700 5300
Connection ~ 8350 4550
Wire Wire Line
	7400 5300 8400 5300
Connection ~ 7400 5300
Connection ~ 8400 5300
Wire Wire Line
	8700 5200 8700 5300
Connection ~ 8700 5300
Wire Wire Line
	8700 5300 8400 5300
Wire Wire Line
	9300 5300 9300 6050
Wire Wire Line
	9300 6050 8700 6050
Connection ~ 9300 5300
Wire Wire Line
	8400 6050 7400 6050
Connection ~ 8400 6050
Wire Wire Line
	7400 5950 7400 6050
Connection ~ 7400 6050
Wire Wire Line
	7400 6050 7100 6050
Wire Wire Line
	8700 5950 8700 6050
Connection ~ 8700 6050
Wire Wire Line
	8700 6050 8400 6050
Wire Notes Line
	9600 800  9600 2400
Wire Notes Line
	6650 6150 9450 6150
Wire Notes Line
	9450 6150 9450 4050
Wire Notes Line
	9450 4050 6650 4050
Wire Notes Line
	6650 4050 6650 6150
Text Notes 8250 4200 0    118  ~ 0
Mosfet Driver
$EndSCHEMATC
