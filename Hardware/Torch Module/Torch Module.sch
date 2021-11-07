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
Text Notes 4150 2700 0    118  ~ 24
Module#3 Torch
Wire Wire Line
	2400 1650 2300 1650
Wire Wire Line
	4550 1200 4550 1350
Wire Wire Line
	4550 1000 4850 1000
Connection ~ 4550 1000
Wire Wire Line
	4850 1450 4300 1450
Wire Wire Line
	4300 1700 4250 1700
Wire Wire Line
	4300 1450 4300 1700
Connection ~ 3950 1700
Wire Wire Line
	3950 1000 4350 1000
Wire Wire Line
	4250 1550 4850 1550
Wire Wire Line
	4250 1300 4250 1550
Text Notes 5600 1550 2    39   ~ 0
Torch IO 36 THC
Connection ~ 3950 1000
Wire Wire Line
	2350 1750 2300 1750
Wire Wire Line
	2350 2600 2350 1750
Wire Wire Line
	3300 2600 2350 2600
Wire Wire Line
	3300 2550 3300 2600
Text Notes 5650 1750 2    39   ~ 0
TorchIO 22 Ready
Wire Wire Line
	3500 1500 3250 1500
Wire Wire Line
	3500 1300 3750 1300
Wire Wire Line
	3500 1500 3500 1300
Wire Wire Line
	3950 1000 3650 1000
Wire Wire Line
	3950 1400 3950 1000
Connection ~ 3650 1000
Wire Wire Line
	3650 1000 3250 1000
Wire Wire Line
	3650 1000 3650 1500
Wire Wire Line
	2400 1850 2550 1850
Wire Wire Line
	2400 2150 2400 1850
Wire Wire Line
	2300 2150 2400 2150
Wire Wire Line
	2450 2050 2300 2050
Wire Wire Line
	2450 1900 2450 2050
Connection ~ 3650 1900
Wire Wire Line
	3650 1900 3300 1900
Wire Wire Line
	3650 2100 3650 1900
Wire Wire Line
	3650 2550 3300 2550
Connection ~ 3650 2550
Wire Wire Line
	3650 2400 3650 2550
$Comp
L Device:D D?
U 1 1 61A672A6
P 3650 2250
AR Path="/61469ABE/61A672A6" Ref="D?"  Part="1" 
AR Path="/61A672A6" Ref="D1"  Part="1" 
F 0 "D1" V 3604 2330 50  0000 L CNN
F 1 "D" V 3695 2330 50  0000 L CNN
F 2 "Diode_SMD:D_SOD-123" H 3650 2250 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/1909061434_SLKORMICRO-Elec-SM4007PL-A7_C426570.pdf" H 3650 2250 50  0001 C CNN
F 4 "C426570" H 3650 2250 50  0001 C CNN "LCSC"
F 5 "SM4007PL A7" H 3650 2250 50  0001 C CNN "PN"
	1    3650 2250
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3300 1900 3300 1950
Wire Wire Line
	3900 2550 3650 2550
Wire Wire Line
	3900 2350 3900 2550
Wire Wire Line
	4850 2350 3900 2350
$Comp
L Device:R_US R6
U 1 1 61A67297
P 4100 1700
AR Path="/61A67297" Ref="R6"  Part="1" 
AR Path="/61469ABE/61A67297" Ref="R?"  Part="1" 
F 0 "R6" V 3895 1700 50  0000 C CNN
F 1 "200" V 3986 1700 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 4140 1690 50  0001 C CNN
F 3 "~" H 4100 1700 50  0001 C CNN
F 4 "C125935" H 4100 1700 50  0001 C CNN "LCSC"
F 5 "AC0603FR-07200RL" H 4100 1700 50  0001 C CNN "PN"
	1    4100 1700
	0    1    -1   0   
$EndComp
$Comp
L Device:R_US R1
U 1 1 61A6728B
P 2400 1500
AR Path="/61A6728B" Ref="R1"  Part="1" 
AR Path="/61469ABE/61A6728B" Ref="R?"  Part="1" 
F 0 "R1" V 2500 1300 50  0000 C CNN
F 1 "3.3K" V 2500 1450 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 2440 1490 50  0001 C CNN
F 3 "~" H 2400 1500 50  0001 C CNN
F 4 "C144661" H 2400 1500 50  0001 C CNN "LCSC"
F 5 "AC0603FR-073K3L" H 2400 1500 50  0001 C CNN "PN"
	1    2400 1500
	-1   0    0    1   
$EndComp
$Comp
L Device:C_Small C2
U 1 1 61A67285
P 4550 1100
AR Path="/61A67285" Ref="C2"  Part="1" 
AR Path="/61469ABE/61A67285" Ref="C?"  Part="1" 
F 0 "C2" H 4458 1054 50  0000 R CNN
F 1 "1uf" H 4458 1145 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 4550 1100 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Samsung-Electro-Mechanics-CL10B105KA8NNNC_C29936.pdf" H 4550 1100 50  0001 C CNN
F 4 "C29936" H 4550 1100 50  0001 C CNN "LCSC"
F 5 "CL10B105KA8NNNC " H 4550 1100 50  0001 C CNN "PN"
	1    4550 1100
	-1   0    0    -1  
$EndComp
$Comp
L Device:R_US R5
U 1 1 61A67279
P 3950 1550
AR Path="/61A67279" Ref="R5"  Part="1" 
AR Path="/61469ABE/61A67279" Ref="R?"  Part="1" 
F 0 "R5" V 3745 1550 50  0000 C CNN
F 1 "10K" V 3836 1550 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 3990 1540 50  0001 C CNN
F 3 "~" H 3950 1550 50  0001 C CNN
F 4 "C144081" H 3950 1550 50  0001 C CNN "LCSC"
F 5 "AF0603FR-0710KL" H 3950 1550 50  0001 C CNN "PN"
	1    3950 1550
	-1   0    0    1   
$EndComp
$Comp
L Transistor_FET:AO3400A Q?
U 1 1 61A67273
P 3750 1700
AR Path="/61469ABE/61A67273" Ref="Q?"  Part="1" 
AR Path="/61A67273" Ref="Q1"  Part="1" 
F 0 "Q1" H 3955 1746 50  0000 L CNN
F 1 "IRLML2402" H 3900 1800 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 3950 1625 50  0001 L CIN
F 3 "http://www.aosmd.com/pdfs/datasheet/AO3400A.pdf" H 3750 1700 50  0001 L CNN
F 4 "C2588" H 3750 1700 50  0001 C CNN "LCSC"
F 5 "IRLML2402TRPBF" H 3750 1700 50  0001 C CNN "PN"
	1    3750 1700
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x12_Male J?
U 1 1 61A6726D
P 5050 1950
AR Path="/61469ABE/61A6726D" Ref="J?"  Part="1" 
AR Path="/61A6726D" Ref="J2"  Part="1" 
F 0 "J2" H 5000 2400 50  0000 R CNN
F 1 "Module3" V 5000 2250 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x12_P2.54mm_Vertical" H 5050 1950 50  0001 C CNN
F 3 "~" H 5050 1950 50  0001 C CNN
	1    5050 1950
	-1   0    0    1   
$EndComp
Connection ~ 3250 1500
Wire Wire Line
	2950 1500 2900 1500
Wire Wire Line
	3250 1400 3250 1500
Wire Wire Line
	3250 1000 3250 1200
$Comp
L Device:C_Small C1
U 1 1 61A6725D
P 3250 1300
AR Path="/61A6725D" Ref="C1"  Part="1" 
AR Path="/61469ABE/61A6725D" Ref="C?"  Part="1" 
F 0 "C1" H 3158 1254 50  0000 R CNN
F 1 "100nf" H 3158 1345 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 3250 1300 50  0001 C CNN
F 3 "https://lcsc.com/product-detail/Multilayer-Ceramic-Capacitors-MLCC-SMD-SMT_Samsung-Electro-Mechanics-CL10B104KB8NNNC_C1591.html" H 3250 1300 50  0001 C CNN
F 4 "C1591" H 3250 1300 50  0001 C CNN "LCSC"
F 5 "CL10B104KB8NNNC" H 3250 1300 50  0001 C CNN "PN"
	1    3250 1300
	-1   0    0    -1  
$EndComp
$Comp
L Device:R_US R4
U 1 1 61A67257
P 3100 1500
AR Path="/61A67257" Ref="R4"  Part="1" 
AR Path="/61469ABE/61A67257" Ref="R?"  Part="1" 
F 0 "R4" V 3200 1500 50  0000 C CNN
F 1 "10K" V 2986 1500 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 3140 1490 50  0001 C CNN
F 3 "~" H 3100 1500 50  0001 C CNN
F 4 "C144081" H 3100 1500 50  0001 C CNN "LCSC"
F 5 "AF0603FR-0710KL" H 3100 1500 50  0001 C CNN "PN"
	1    3100 1500
	0    1    -1   0   
$EndComp
$Comp
L Device:R_US R3
U 1 1 61A6724B
P 2900 1650
AR Path="/61A6724B" Ref="R3"  Part="1" 
AR Path="/61469ABE/61A6724B" Ref="R?"  Part="1" 
F 0 "R3" H 2850 1700 50  0000 R CNN
F 1 "3.3K" H 2900 1800 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 2940 1640 50  0001 C CNN
F 3 "~" H 2900 1650 50  0001 C CNN
F 4 "C144661" H 2900 1650 50  0001 C CNN "LCSC"
F 5 "AC0603FR-073K3L" H 2900 1650 50  0001 C CNN "PN"
	1    2900 1650
	-1   0    0    1   
$EndComp
NoConn ~ 4850 1950
NoConn ~ 4850 2050
NoConn ~ 4850 2250
NoConn ~ 2300 1850
NoConn ~ 2300 1950
NoConn ~ 3000 2550
NoConn ~ 3350 4300
NoConn ~ 3350 4200
NoConn ~ 3350 4100
Wire Wire Line
	4850 2450 4350 2450
Wire Wire Line
	4350 2450 4350 1000
Connection ~ 4350 1000
Wire Wire Line
	4350 1000 4550 1000
Wire Notes Line
	1500 2850 4850 2850
Wire Notes Line
	4850 2850 4850 4750
Wire Notes Line
	4850 4750 1500 4750
Wire Notes Line
	1500 4750 1500 2850
Text Notes 1600 4700 0    118  ~ 24
Clearpath Driver
$Comp
L Connector:Conn_01x18_Male J3
U 1 1 5FFFC856
P 3100 2900
F 0 "J3" H 3208 3881 50  0000 C CNN
F 1 "Conn_01x18_Male" H 3208 3790 50  0000 C CNN
F 2 "Libraries - Plasma-Board:ClearpathDriver" H 3100 2900 50  0001 C CNN
F 3 "~" H 3100 2900 50  0001 C CNN
	1    3100 2900
	0    -1   1    0   
$EndComp
Wire Wire Line
	2300 3100 2300 3700
Wire Wire Line
	2300 3700 2550 3700
Wire Wire Line
	3350 3500 3800 3500
Wire Wire Line
	3800 3500 3800 3100
Wire Wire Line
	3350 3700 3600 3700
Wire Wire Line
	3600 3700 3600 3100
Wire Wire Line
	3500 3100 3500 3800
Wire Wire Line
	3500 3800 3350 3800
Wire Wire Line
	3000 3100 3000 3250
Wire Wire Line
	2400 3250 2400 3900
Wire Wire Line
	2400 3900 2550 3900
Wire Wire Line
	2400 3250 3000 3250
Wire Wire Line
	2900 3100 2900 3300
Wire Wire Line
	2900 3300 2450 3300
Wire Wire Line
	2450 3300 2450 3800
Wire Wire Line
	2450 3800 2550 3800
Wire Wire Line
	2550 4500 2950 4500
Wire Wire Line
	3350 3900 3400 3900
Wire Wire Line
	3400 3900 3400 3100
NoConn ~ 3200 3100
NoConn ~ 2800 3100
NoConn ~ 2700 3100
NoConn ~ 2500 3100
NoConn ~ 2400 3100
$Comp
L Connector:Conn_01x10_Female J5
U 1 1 60009679
P 8350 3200
F 0 "J5" H 8242 3785 50  0000 C CNN
F 1 "~" H 8242 3694 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x05_P2.54mm_Horizontal" H 8350 3200 50  0001 C CNN
F 3 "~" H 8350 3200 50  0001 C CNN
	1    8350 3200
	-1   0    0    -1  
$EndComp
Wire Wire Line
	8550 2800 8850 2800
Wire Wire Line
	8850 2800 8850 2700
Wire Wire Line
	8850 2700 9400 2700
Wire Wire Line
	8550 3700 8850 3700
Wire Wire Line
	8850 3700 8850 3800
Wire Wire Line
	8850 3800 9400 3800
Wire Wire Line
	8550 3100 8900 3100
Wire Wire Line
	8550 3300 8650 3300
Wire Wire Line
	8550 3500 8900 3500
Wire Wire Line
	8550 3600 9000 3600
$Comp
L Connector:Conn_01x12_Male J?
U 1 1 60058092
P 10050 1600
AR Path="/61469ABE/60058092" Ref="J?"  Part="1" 
AR Path="/60058092" Ref="J7"  Part="1" 
F 0 "J7" H 10000 2050 50  0000 R CNN
F 1 "Module1" V 9950 1700 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x12_P2.54mm_Vertical" H 10050 1600 50  0001 C CNN
F 3 "~" H 10050 1600 50  0001 C CNN
	1    10050 1600
	-1   0    0    1   
$EndComp
Wire Wire Line
	9700 1350 9450 1350
Connection ~ 9450 1000
Connection ~ 9450 1350
Wire Wire Line
	9100 1300 9100 1350
Wire Wire Line
	9150 1350 9100 1350
Wire Wire Line
	9450 1250 9450 1350
Wire Wire Line
	9450 1000 9450 1050
Wire Wire Line
	9100 1000 9450 1000
$Comp
L Device:C_Small C4
U 1 1 600627D4
P 9450 1150
AR Path="/600627D4" Ref="C4"  Part="1" 
AR Path="/61469ABE/600627D4" Ref="C?"  Part="1" 
F 0 "C4" H 9358 1104 50  0000 R CNN
F 1 "1uf" H 9358 1195 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 9450 1150 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Samsung-Electro-Mechanics-CL10B105KA8NNNC_C29936.pdf" H 9450 1150 50  0001 C CNN
F 4 "C29936" H 9450 1150 50  0001 C CNN "LCSC"
F 5 "CL10B105KA8NNNC " H 9450 1150 50  0001 C CNN "PN"
	1    9450 1150
	-1   0    0    -1  
$EndComp
$Comp
L Device:R_US R15
U 1 1 600627DE
P 9300 1350
AR Path="/600627DE" Ref="R15"  Part="1" 
AR Path="/61469ABE/600627DE" Ref="R?"  Part="1" 
F 0 "R15" V 9400 1350 50  0000 C CNN
F 1 "10K" V 9186 1350 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 9340 1340 50  0001 C CNN
F 3 "~" H 9300 1350 50  0001 C CNN
F 4 "C144081" H 9300 1350 50  0001 C CNN "LCSC"
F 5 "AF0603FR-0710KL" H 9300 1350 50  0001 C CNN "PN"
	1    9300 1350
	0    1    -1   0   
$EndComp
$Comp
L Device:R_US R13
U 1 1 600627E8
P 9100 1150
AR Path="/600627E8" Ref="R13"  Part="1" 
AR Path="/61469ABE/600627E8" Ref="R?"  Part="1" 
F 0 "R13" H 8900 1250 50  0000 L CNN
F 1 "1K" H 8900 1150 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 9140 1140 50  0001 C CNN
F 3 "~" H 9100 1150 50  0001 C CNN
F 4 "C22548" H 9100 1150 50  0001 C CNN "LCSC"
F 5 "RC0603FR-071KL" H 9100 1150 50  0001 C CNN "PN"
	1    9100 1150
	1    0    0    1   
$EndComp
$Comp
L Device:R_US R11
U 1 1 600627F2
P 8950 1350
AR Path="/600627F2" Ref="R11"  Part="1" 
AR Path="/61469ABE/600627F2" Ref="R?"  Part="1" 
F 0 "R11" V 8850 1400 50  0000 R CNN
F 1 "3.3K" V 8800 1400 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 8990 1340 50  0001 C CNN
F 3 "~" H 8950 1350 50  0001 C CNN
F 4 "C144661" H 8950 1350 50  0001 C CNN "LCSC"
F 5 "AC0603FR-073K3L" H 8950 1350 50  0001 C CNN "PN"
	1    8950 1350
	0    -1   -1   0   
$EndComp
Connection ~ 9100 1350
Wire Wire Line
	9700 1750 9450 1750
Connection ~ 9450 2100
Connection ~ 9450 1750
Wire Wire Line
	9100 1800 9100 1750
Wire Wire Line
	9150 1750 9100 1750
Wire Wire Line
	9450 1850 9450 1750
Wire Wire Line
	9450 2100 9450 2050
Wire Wire Line
	9100 2100 9450 2100
$Comp
L Device:C_Small C5
U 1 1 60078B3B
P 9450 1950
AR Path="/60078B3B" Ref="C5"  Part="1" 
AR Path="/61469ABE/60078B3B" Ref="C?"  Part="1" 
F 0 "C5" H 9358 1904 50  0000 R CNN
F 1 "1uf" H 9358 1995 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 9450 1950 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Samsung-Electro-Mechanics-CL10B105KA8NNNC_C29936.pdf" H 9450 1950 50  0001 C CNN
F 4 "C29936" H 9450 1950 50  0001 C CNN "LCSC"
F 5 "CL10B105KA8NNNC " H 9450 1950 50  0001 C CNN "PN"
	1    9450 1950
	-1   0    0    1   
$EndComp
$Comp
L Device:R_US R16
U 1 1 60078B45
P 9300 1750
AR Path="/60078B45" Ref="R16"  Part="1" 
AR Path="/61469ABE/60078B45" Ref="R?"  Part="1" 
F 0 "R16" V 9400 1750 50  0000 C CNN
F 1 "10K" V 9186 1750 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 9340 1740 50  0001 C CNN
F 3 "~" H 9300 1750 50  0001 C CNN
F 4 "C144081" H 9300 1750 50  0001 C CNN "LCSC"
F 5 "AF0603FR-0710KL" H 9300 1750 50  0001 C CNN "PN"
	1    9300 1750
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R14
U 1 1 60078B4F
P 9100 1950
AR Path="/60078B4F" Ref="R14"  Part="1" 
AR Path="/61469ABE/60078B4F" Ref="R?"  Part="1" 
F 0 "R14" H 8900 2050 50  0000 L CNN
F 1 "1K" H 8900 1950 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 9140 1940 50  0001 C CNN
F 3 "~" H 9100 1950 50  0001 C CNN
F 4 "C22548" H 9100 1950 50  0001 C CNN "LCSC"
F 5 "RC0603FR-071KL" H 9100 1950 50  0001 C CNN "PN"
	1    9100 1950
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R12
U 1 1 60078B59
P 8950 1750
AR Path="/60078B59" Ref="R12"  Part="1" 
AR Path="/61469ABE/60078B59" Ref="R?"  Part="1" 
F 0 "R12" V 8800 1800 50  0000 R CNN
F 1 "3.3K" V 8850 1800 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 8990 1740 50  0001 C CNN
F 3 "~" H 8950 1750 50  0001 C CNN
F 4 "C144661" H 8950 1750 50  0001 C CNN "LCSC"
F 5 "AC0603FR-073K3L" H 8950 1750 50  0001 C CNN "PN"
	1    8950 1750
	0    -1   1    0   
$EndComp
Connection ~ 9100 1750
Wire Wire Line
	8550 1350 8800 1350
Wire Wire Line
	8550 1750 8800 1750
Wire Wire Line
	9700 1750 9700 1600
Wire Wire Line
	9700 1600 9850 1600
Wire Wire Line
	9700 1350 9700 1500
Wire Wire Line
	9700 1500 9850 1500
Wire Wire Line
	9850 2000 9750 2000
Wire Wire Line
	9750 2000 9750 1550
Wire Wire Line
	9750 1550 8650 1550
Wire Wire Line
	8650 1550 8650 1450
Wire Wire Line
	8650 1450 8550 1450
Wire Wire Line
	8550 1850 8650 1850
Wire Wire Line
	8650 1850 8650 1550
Connection ~ 8650 1550
Wire Notes Line
	7750 750  7750 2350
Wire Notes Line
	10350 2450 7950 2450
Text Notes 7900 2300 0    118  ~ 24
Z LIMIT
Text Notes 8000 4050 0    118  ~ 24
Motor Conn
Text Notes 5100 1450 0    39   ~ 0
Torch IO32 Trigger
Text Notes 10250 1650 0    39   ~ 0
Z limit Stop
Text Notes 10250 1500 0    39   ~ 0
A Limit Touch
Wire Notes Line
	7750 750  10700 750 
Wire Notes Line
	7750 2350 10700 2350
Wire Wire Line
	9450 2100 9850 2100
Wire Wire Line
	9450 1000 9850 1000
Wire Wire Line
	9100 1000 8700 1000
Wire Wire Line
	8700 1000 8700 2050
Wire Wire Line
	8700 2100 9100 2100
Connection ~ 9100 1000
Connection ~ 9100 2100
NoConn ~ 9850 1900
NoConn ~ 9850 1800
NoConn ~ 9850 1700
NoConn ~ 9850 1400
NoConn ~ 9850 1300
NoConn ~ 9850 1200
NoConn ~ 9850 1100
Wire Wire Line
	4850 2150 4500 2150
Wire Wire Line
	4500 2150 4500 1650
Wire Wire Line
	4500 1650 4850 1650
Text Notes 5150 2150 0    39   ~ 0
GRBL IO26 Handover
Text Notes 5100 1650 0    39   ~ 0
IO 21recieve handover
Wire Wire Line
	1900 1000 1900 1450
Wire Wire Line
	1900 2550 1900 2650
Wire Wire Line
	1900 2650 3950 2650
Wire Wire Line
	3950 2650 3950 2450
Wire Wire Line
	3950 2450 4350 2450
Connection ~ 4350 2450
Wire Wire Line
	8150 950  8700 950 
Wire Wire Line
	8700 950  8700 1000
Connection ~ 8700 1000
Wire Wire Line
	8150 2050 8700 2050
Connection ~ 8700 2050
Wire Wire Line
	8700 2050 8700 2100
Connection ~ 3300 2550
$Comp
L Relay:G6E K?
U 1 1 61A6727F
P 3100 2250
AR Path="/61469ABE/61A6727F" Ref="K?"  Part="1" 
AR Path="/61A6727F" Ref="K1"  Part="1" 
F 0 "K1" H 3530 2296 50  0000 L CNN
F 1 "G6E" H 3530 2205 50  0000 L CNN
F 2 "Relay_THT:Relay_SPDT_Omron_G6E" H 4230 2220 50  0001 C CNN
F 3 "https://www.omron.com/ecb/products/pdf/en-g6e.pdf" H 3100 2250 50  0001 C CNN
F 4 "G6E-134P-ST-US-DC12" H 3100 2250 50  0001 C CNN "PN"
F 5 "C469134" H 3100 2250 50  0001 C CNN "LCSC"
	1    3100 2250
	-1   0    0    1   
$EndComp
Wire Wire Line
	2300 2350 2500 2350
Wire Wire Line
	2500 2350 2500 1950
Wire Wire Line
	2500 1950 2900 1950
Wire Wire Line
	2300 2250 2400 2250
Wire Wire Line
	2400 2250 2400 2550
Wire Wire Line
	2400 2550 2800 2550
Text Notes 5050 3350 0    118  ~ 24
Jtag
NoConn ~ 4000 3100
NoConn ~ 3900 3100
Wire Wire Line
	2600 3100 2600 3200
Wire Wire Line
	2600 3200 2350 3200
Wire Wire Line
	2350 3200 2350 4000
Wire Wire Line
	2350 4000 2550 4000
Wire Wire Line
	2550 4300 2550 4500
Connection ~ 2550 4300
Wire Wire Line
	2550 4200 2550 4300
Wire Wire Line
	2550 4100 2550 4200
Connection ~ 2550 4200
$Comp
L Transistor_Array:ULN2002 U1
U 1 1 5FF8EFB7
P 2950 3900
F 0 "U1" H 3100 4550 50  0000 C CNN
F 1 "ULN2002" H 3100 4450 50  0000 C CNN
F 2 "Package_SO:SO-16_3.9x9.9mm_P1.27mm" H 3000 3350 50  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/uln2003a.pdf" H 3050 3700 50  0001 C CNN
F 4 "C91899" H 2950 3900 50  0001 C CNN "LCSC"
F 5 "ULN2002D1013TR" H 2950 3900 50  0001 C CNN "PN"
	1    2950 3900
	1    0    0    -1  
$EndComp
Wire Wire Line
	3350 4000 3700 4000
Wire Wire Line
	3700 4000 3700 3250
Wire Wire Line
	3700 3250 3300 3250
Wire Wire Line
	3300 3250 3300 3100
Wire Wire Line
	3100 3100 3100 3150
Wire Wire Line
	3100 3150 3700 3150
Wire Wire Line
	3700 3150 3700 3100
Wire Wire Line
	3700 3150 3850 3150
Wire Wire Line
	3850 3150 3850 4500
Wire Wire Line
	3850 4500 2950 4500
Connection ~ 3700 3150
Connection ~ 2950 4500
$Comp
L Device:R_US R7
U 1 1 601384CF
P 4700 1750
AR Path="/601384CF" Ref="R7"  Part="1" 
AR Path="/61469ABE/601384CF" Ref="R?"  Part="1" 
F 0 "R7" V 4495 1750 50  0000 C CNN
F 1 "200" V 4586 1750 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 4740 1740 50  0001 C CNN
F 3 "~" H 4700 1750 50  0001 C CNN
F 4 "C125935" H 4700 1750 50  0001 C CNN "LCSC"
F 5 "AC0603FR-07200RL" H 4700 1750 50  0001 C CNN "PN"
	1    4700 1750
	0    -1   -1   0   
$EndComp
NoConn ~ 4850 1850
Connection ~ 3250 1000
Wire Wire Line
	2900 1200 2900 1000
Connection ~ 2900 1000
Wire Wire Line
	2900 1000 3050 1000
Wire Wire Line
	4850 1000 4850 1350
$Comp
L Device:R_US R2
U 1 1 601F274B
P 4700 1350
AR Path="/601F274B" Ref="R2"  Part="1" 
AR Path="/61469ABE/601F274B" Ref="R?"  Part="1" 
F 0 "R2" V 4600 1350 50  0000 C CNN
F 1 "1K" V 4800 1350 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 4740 1340 50  0001 C CNN
F 3 "~" H 4700 1350 50  0001 C CNN
F 4 "C22548" H 4700 1350 50  0001 C CNN "LCSC"
F 5 "RC0603FR-071KL" H 4700 1350 50  0001 C CNN "PN"
	1    4700 1350
	0    -1   -1   0   
$EndComp
Connection ~ 4550 1350
Wire Wire Line
	4550 1350 4550 1750
Connection ~ 4850 1350
Wire Wire Line
	2400 1150 4200 1150
Wire Wire Line
	4200 1150 4200 1200
Wire Wire Line
	4200 1200 4550 1200
Wire Wire Line
	2400 1150 2400 1350
Connection ~ 4550 1200
Text Notes 5200 2350 0    39   ~ 0
15v
Text Notes 5200 2450 0    39   ~ 0
gnd
Text Notes 5100 1350 0    39   ~ 0
gnd
$Comp
L Device:R_POT_TRIM_US RV1
U 1 1 60201FC2
P 2900 1350
F 0 "RV1" H 2850 1500 50  0000 R CNN
F 1 "2K" H 2850 1400 50  0000 R CNN
F 2 "Potentiometer_THT:Potentiometer_Bourns_3339S_Horizontal" H 2900 1350 50  0001 C CNN
F 3 "~" H 2900 1350 50  0001 C CNN
	1    2900 1350
	1    0    0    -1  
$EndComp
Connection ~ 2900 1500
Wire Wire Line
	3050 1350 3050 1000
Connection ~ 3050 1000
Wire Wire Line
	3050 1000 3250 1000
Wire Wire Line
	5500 3150 5500 3250
Wire Wire Line
	5500 3250 7150 3250
Wire Wire Line
	6600 3350 6600 3450
Wire Wire Line
	5800 3150 5800 3400
Wire Wire Line
	5800 3400 6100 3400
Wire Wire Line
	6550 3400 6550 3850
Wire Wire Line
	6000 3150 6000 3450
Wire Wire Line
	6000 3450 6500 3450
Wire Wire Line
	6500 3450 6500 3950
Wire Wire Line
	6200 3150 6200 3500
Wire Wire Line
	6200 3500 6450 3500
Wire Wire Line
	6450 3500 6450 4050
Wire Wire Line
	6400 4250 6400 4150
Wire Notes Line
	5000 2850 5000 4650
Wire Wire Line
	6200 3850 6400 3850
Wire Wire Line
	6400 3850 6400 4150
Connection ~ 6400 4150
Wire Notes Line
	7550 2850 7550 4650
Wire Notes Line
	5000 2850 7550 2850
Wire Notes Line
	5000 4650 7550 4650
$Comp
L Connector:Conn_01x12_Male J?
U 1 1 600F49D0
P 7350 3550
AR Path="/61469ABE/600F49D0" Ref="J?"  Part="1" 
AR Path="/600F49D0" Ref="J10"  Part="1" 
F 0 "J10" H 7300 4000 50  0000 R CNN
F 1 "Module conn" V 7250 3650 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x12_P2.54mm_Vertical" H 7350 3550 50  0001 C CNN
F 3 "~" H 7350 3550 50  0001 C CNN
	1    7350 3550
	-1   0    0    -1  
$EndComp
Wire Wire Line
	6650 3350 6650 3550
Wire Wire Line
	6650 3550 5600 3550
Wire Wire Line
	5600 3550 5600 3850
Wire Wire Line
	5700 3350 5700 3850
Wire Wire Line
	6700 3550 6700 3600
Wire Wire Line
	6700 3600 5800 3600
Wire Wire Line
	5800 3600 5800 3850
Wire Wire Line
	5900 3650 5900 3850
Wire Wire Line
	6100 3400 6100 3850
Connection ~ 6100 3400
Wire Wire Line
	6100 3400 6550 3400
NoConn ~ 6100 3150
Wire Wire Line
	5700 3350 6600 3350
Wire Wire Line
	6300 3150 6300 3300
Connection ~ 6300 3300
Wire Wire Line
	6300 3300 6400 3300
Wire Wire Line
	5900 3150 5900 3300
Connection ~ 5900 3300
Wire Wire Line
	5900 3300 6300 3300
Wire Wire Line
	5700 3150 5700 3300
Wire Wire Line
	5700 3300 5900 3300
Wire Wire Line
	6000 3500 5600 3500
Wire Wire Line
	5600 3150 5600 3500
Text Notes 6650 4600 0    118  ~ 24
   &\nExtra IO
$Comp
L Connector:Conn_01x18_Male J11
U 1 1 601B8E13
P 8850 4350
F 0 "J11" H 8958 5331 50  0000 C CNN
F 1 "Conn_01x18_Male" V 8800 4350 50  0000 C CNN
F 2 "Libraries - Plasma-Board:ClearpathDriver" H 8850 4350 50  0001 C CNN
F 3 "~" H 8850 4350 50  0001 C CNN
	1    8850 4350
	0    -1   1    0   
$EndComp
$Comp
L Device:R_US R9
U 1 1 601FDF22
P 8200 5300
AR Path="/601FDF22" Ref="R9"  Part="1" 
AR Path="/61469ABE/601FDF22" Ref="R?"  Part="1" 
F 0 "R9" V 7995 5300 50  0000 C CNN
F 1 "10K" V 8086 5300 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 8240 5290 50  0001 C CNN
F 3 "~" H 8200 5300 50  0001 C CNN
F 4 "C144081" H 8200 5300 50  0001 C CNN "LCSC"
F 5 "AF0603FR-0710KL" H 8200 5300 50  0001 C CNN "PN"
	1    8200 5300
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R8
U 1 1 601FFD85
P 8200 5000
AR Path="/601FFD85" Ref="R8"  Part="1" 
AR Path="/61469ABE/601FFD85" Ref="R?"  Part="1" 
F 0 "R8" V 7995 5000 50  0000 C CNN
F 1 "200" V 8086 5000 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 8240 4990 50  0001 C CNN
F 3 "~" H 8200 5000 50  0001 C CNN
F 4 "C125935" H 8200 5000 50  0001 C CNN "LCSC"
F 5 "AC0603FR-07200RL" H 8200 5000 50  0001 C CNN "PN"
	1    8200 5000
	1    0    0    -1  
$EndComp
Connection ~ 8200 5150
$Comp
L Device:R_US R19
U 1 1 6020F908
P 9500 5300
AR Path="/6020F908" Ref="R19"  Part="1" 
AR Path="/61469ABE/6020F908" Ref="R?"  Part="1" 
F 0 "R19" V 9295 5300 50  0000 C CNN
F 1 "10K" V 9386 5300 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 9540 5290 50  0001 C CNN
F 3 "~" H 9500 5300 50  0001 C CNN
F 4 "C144081" H 9500 5300 50  0001 C CNN "LCSC"
F 5 "AF0603FR-0710KL" H 9500 5300 50  0001 C CNN "PN"
	1    9500 5300
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R18
U 1 1 6020F912
P 9500 5000
AR Path="/6020F912" Ref="R18"  Part="1" 
AR Path="/61469ABE/6020F912" Ref="R?"  Part="1" 
F 0 "R18" V 9295 5000 50  0000 C CNN
F 1 "200" V 9386 5000 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 9540 4990 50  0001 C CNN
F 3 "~" H 9500 5000 50  0001 C CNN
F 4 "C125935" H 9500 5000 50  0001 C CNN "LCSC"
F 5 "AC0603FR-07200RL" H 9500 5000 50  0001 C CNN "PN"
	1    9500 5000
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R17
U 1 1 60221673
P 8200 6050
AR Path="/60221673" Ref="R17"  Part="1" 
AR Path="/61469ABE/60221673" Ref="R?"  Part="1" 
F 0 "R17" V 7995 6050 50  0000 C CNN
F 1 "10K" V 8086 6050 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 8240 6040 50  0001 C CNN
F 3 "~" H 8200 6050 50  0001 C CNN
F 4 "C144081" H 8200 6050 50  0001 C CNN "LCSC"
F 5 "AF0603FR-0710KL" H 8200 6050 50  0001 C CNN "PN"
	1    8200 6050
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R10
U 1 1 60221679
P 8200 5750
AR Path="/60221679" Ref="R10"  Part="1" 
AR Path="/61469ABE/60221679" Ref="R?"  Part="1" 
F 0 "R10" V 7995 5750 50  0000 C CNN
F 1 "200" V 8086 5750 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 8240 5740 50  0001 C CNN
F 3 "~" H 8200 5750 50  0001 C CNN
F 4 "C125935" H 8200 5750 50  0001 C CNN "LCSC"
F 5 "AC0603FR-07200RL" H 8200 5750 50  0001 C CNN "PN"
	1    8200 5750
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R21
U 1 1 6022FF07
P 9500 6050
AR Path="/6022FF07" Ref="R21"  Part="1" 
AR Path="/61469ABE/6022FF07" Ref="R?"  Part="1" 
F 0 "R21" V 9295 6050 50  0000 C CNN
F 1 "10K" V 9386 6050 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 9540 6040 50  0001 C CNN
F 3 "~" H 9500 6050 50  0001 C CNN
F 4 "C144081" H 9500 6050 50  0001 C CNN "LCSC"
F 5 "AF0603FR-0710KL" H 9500 6050 50  0001 C CNN "PN"
	1    9500 6050
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R20
U 1 1 6022FF0D
P 9500 5750
AR Path="/6022FF0D" Ref="R20"  Part="1" 
AR Path="/61469ABE/6022FF0D" Ref="R?"  Part="1" 
F 0 "R20" V 9295 5750 50  0000 C CNN
F 1 "200" V 9386 5750 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 9540 5740 50  0001 C CNN
F 3 "~" H 9500 5750 50  0001 C CNN
F 4 "C125935" H 9500 5750 50  0001 C CNN "LCSC"
F 5 "AC0603FR-07200RL" H 9500 5750 50  0001 C CNN "PN"
	1    9500 5750
	1    0    0    -1  
$EndComp
Wire Wire Line
	8050 4550 8050 4850
Wire Wire Line
	8050 4850 8200 4850
Wire Wire Line
	8650 4550 8650 4850
Wire Wire Line
	8650 4850 9500 4850
Wire Wire Line
	8350 4550 8350 4800
Wire Wire Line
	8350 4800 9200 4800
Wire Wire Line
	9200 4800 9200 5600
Wire Wire Line
	9200 5600 9500 5600
Wire Wire Line
	9350 4550 9350 4900
Wire Wire Line
	9350 4900 8500 4900
Wire Wire Line
	8500 4900 8500 4950
Wire Wire Line
	9250 4550 9250 4800
Wire Wire Line
	9250 4800 9800 4800
Wire Wire Line
	9800 4800 9800 4950
Wire Wire Line
	8750 4550 8750 5600
Wire Wire Line
	8750 5600 8200 5600
Wire Wire Line
	9150 4550 9150 5700
Wire Wire Line
	9150 5700 8500 5700
Wire Wire Line
	9050 4550 9050 5550
Wire Wire Line
	9050 5550 9800 5550
Wire Wire Line
	9800 5550 9800 5700
Wire Wire Line
	8200 5450 8500 5450
Wire Wire Line
	8500 5450 8500 5350
Wire Wire Line
	8850 4550 8850 4700
Wire Wire Line
	8850 4700 9450 4700
Wire Wire Line
	9450 4700 9450 4550
Wire Wire Line
	9450 4700 10400 4700
Wire Wire Line
	10400 4700 10400 5450
Wire Wire Line
	10400 5450 9800 5450
Connection ~ 9450 4700
Wire Wire Line
	8500 5450 9500 5450
Connection ~ 8500 5450
Connection ~ 9500 5450
Wire Wire Line
	9800 5350 9800 5450
Connection ~ 9800 5450
Wire Wire Line
	9800 5450 9500 5450
Wire Wire Line
	10400 5450 10400 6200
Wire Wire Line
	10400 6200 9800 6200
Connection ~ 10400 5450
Wire Wire Line
	9500 6200 8500 6200
Connection ~ 9500 6200
Wire Wire Line
	8500 6100 8500 6200
Connection ~ 8500 6200
Wire Wire Line
	8500 6200 8200 6200
Wire Wire Line
	9800 6100 9800 6200
Connection ~ 9800 6200
Wire Wire Line
	9800 6200 9500 6200
Wire Notes Line
	10700 750  10700 2350
Wire Notes Line
	7750 6300 10550 6300
Wire Notes Line
	10550 6300 10550 4200
Wire Notes Line
	10550 4200 7750 4200
Wire Notes Line
	7750 4200 7750 6300
Text Notes 9350 4350 0    118  ~ 0
Mosfet Driver
$Comp
L Device:R_US R22
U 1 1 601AD939
P 7000 3350
AR Path="/601AD939" Ref="R22"  Part="1" 
AR Path="/61469ABE/601AD939" Ref="R?"  Part="1" 
F 0 "R22" V 6950 3450 50  0000 C CNN
F 1 "200" V 6950 3150 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 7040 3340 50  0001 C CNN
F 3 "~" H 7000 3350 50  0001 C CNN
F 4 "C125935" H 7000 3350 50  0001 C CNN "LCSC"
F 5 "AC0603FR-07200RL" H 7000 3350 50  0001 C CNN "PN"
	1    7000 3350
	0    1    1    0   
$EndComp
Wire Wire Line
	6400 4150 7150 4150
Wire Wire Line
	6400 3850 6400 3300
Connection ~ 6400 3850
Connection ~ 6400 3300
Wire Wire Line
	6000 3500 6000 3750
$Comp
L Device:R_US R23
U 1 1 601E3A12
P 7000 3450
AR Path="/601E3A12" Ref="R23"  Part="1" 
AR Path="/61469ABE/601E3A12" Ref="R?"  Part="1" 
F 0 "R23" V 6950 3550 50  0000 C CNN
F 1 "200" V 6950 3250 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 7040 3440 50  0001 C CNN
F 3 "~" H 7000 3450 50  0001 C CNN
F 4 "C125935" H 7000 3450 50  0001 C CNN "LCSC"
F 5 "AC0603FR-07200RL" H 7000 3450 50  0001 C CNN "PN"
	1    7000 3450
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R24
U 1 1 601E46FB
P 7000 3550
AR Path="/601E46FB" Ref="R24"  Part="1" 
AR Path="/61469ABE/601E46FB" Ref="R?"  Part="1" 
F 0 "R24" V 6950 3650 50  0000 C CNN
F 1 "200" V 6950 3350 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 7040 3540 50  0001 C CNN
F 3 "~" H 7000 3550 50  0001 C CNN
F 4 "C125935" H 7000 3550 50  0001 C CNN "LCSC"
F 5 "AC0603FR-07200RL" H 7000 3550 50  0001 C CNN "PN"
	1    7000 3550
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R25
U 1 1 601E5E3A
P 7000 3650
AR Path="/601E5E3A" Ref="R25"  Part="1" 
AR Path="/61469ABE/601E5E3A" Ref="R?"  Part="1" 
F 0 "R25" V 6950 3750 50  0000 C CNN
F 1 "200" V 6950 3450 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 7040 3640 50  0001 C CNN
F 3 "~" H 7000 3650 50  0001 C CNN
F 4 "C125935" H 7000 3650 50  0001 C CNN "LCSC"
F 5 "AC0603FR-07200RL" H 7000 3650 50  0001 C CNN "PN"
	1    7000 3650
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R26
U 1 1 601E6C26
P 7000 3750
AR Path="/601E6C26" Ref="R26"  Part="1" 
AR Path="/61469ABE/601E6C26" Ref="R?"  Part="1" 
F 0 "R26" V 6950 3850 50  0000 C CNN
F 1 "200" V 6950 3550 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 7040 3740 50  0001 C CNN
F 3 "~" H 7000 3750 50  0001 C CNN
F 4 "C125935" H 7000 3750 50  0001 C CNN "LCSC"
F 5 "AC0603FR-07200RL" H 7000 3750 50  0001 C CNN "PN"
	1    7000 3750
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R27
U 1 1 601E79D9
P 7000 3850
AR Path="/601E79D9" Ref="R27"  Part="1" 
AR Path="/61469ABE/601E79D9" Ref="R?"  Part="1" 
F 0 "R27" V 6950 3950 50  0000 C CNN
F 1 "200" V 6950 3650 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 7040 3840 50  0001 C CNN
F 3 "~" H 7000 3850 50  0001 C CNN
F 4 "C125935" H 7000 3850 50  0001 C CNN "LCSC"
F 5 "AC0603FR-07200RL" H 7000 3850 50  0001 C CNN "PN"
	1    7000 3850
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R28
U 1 1 601E891C
P 7000 3950
AR Path="/601E891C" Ref="R28"  Part="1" 
AR Path="/61469ABE/601E891C" Ref="R?"  Part="1" 
F 0 "R28" V 6950 4050 50  0000 C CNN
F 1 "200" V 6950 3750 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 7040 3940 50  0001 C CNN
F 3 "~" H 7000 3950 50  0001 C CNN
F 4 "C125935" H 7000 3950 50  0001 C CNN "LCSC"
F 5 "AC0603FR-07200RL" H 7000 3950 50  0001 C CNN "PN"
	1    7000 3950
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R29
U 1 1 601EAB04
P 7000 4050
AR Path="/601EAB04" Ref="R29"  Part="1" 
AR Path="/61469ABE/601EAB04" Ref="R?"  Part="1" 
F 0 "R29" V 6950 4150 50  0000 C CNN
F 1 "200" V 6950 3850 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 7040 4040 50  0001 C CNN
F 3 "~" H 7000 4050 50  0001 C CNN
F 4 "C125935" H 7000 4050 50  0001 C CNN "LCSC"
F 5 "AC0603FR-07200RL" H 7000 4050 50  0001 C CNN "PN"
	1    7000 4050
	0    1    1    0   
$EndComp
Wire Wire Line
	6450 4050 6850 4050
Wire Wire Line
	6500 3950 6850 3950
Wire Wire Line
	6550 3850 6850 3850
Wire Wire Line
	6700 3550 6850 3550
Wire Wire Line
	6600 3450 6850 3450
Wire Wire Line
	6650 3350 6850 3350
Wire Wire Line
	5900 3650 6850 3650
Wire Wire Line
	6850 3750 6000 3750
Connection ~ 6000 3750
Wire Wire Line
	6000 3750 6000 3850
$Comp
L Connector:Conn_01x12_Male J?
U 1 1 60278064
P 6600 5600
AR Path="/61469ABE/60278064" Ref="J?"  Part="1" 
AR Path="/60278064" Ref="J15"  Part="1" 
F 0 "J15" H 6550 6050 50  0000 R CNN
F 1 "Module conn" V 6500 5700 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x12_P2.54mm_Vertical" H 6600 5600 50  0001 C CNN
F 3 "~" H 6600 5600 50  0001 C CNN
	1    6600 5600
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4900 5900 5400 5900
Wire Wire Line
	5400 5900 5400 6100
Wire Wire Line
	5400 6100 6400 6100
$Comp
L Analog_ADC:ADS1115IDGS U3
U 1 1 60268436
P 4500 5900
F 0 "U3" H 4650 6250 50  0000 C CNN
F 1 "ADS1115IDGS" H 4650 6000 50  0000 C CNN
F 2 "Package_SO:TSSOP-10_3x3mm_P0.5mm" H 4500 5400 50  0001 C CNN
F 3 "http://www.ti.com/lit/ds/symlink/ads1113.pdf" H 4450 5000 50  0001 C CNN
F 4 "C37593" H 4500 5900 50  0001 C CNN "LCSC"
F 5 "ADS1115IDGSR" H 4500 5900 50  0001 C CNN "PN"
	1    4500 5900
	1    0    0    -1  
$EndComp
Wire Wire Line
	4900 5700 5650 5700
Wire Wire Line
	5700 5700 5700 5900
Wire Wire Line
	5700 5900 6400 5900
Wire Wire Line
	5250 6200 5250 6400
Wire Wire Line
	4500 6400 4500 6300
$Comp
L Device:R_US R36
U 1 1 6030A196
P 5400 5400
AR Path="/6030A196" Ref="R36"  Part="1" 
AR Path="/61469ABE/6030A196" Ref="R?"  Part="1" 
F 0 "R36" H 5200 5500 50  0000 L CNN
F 1 "2.4K" H 5200 5400 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 5440 5390 50  0001 C CNN
F 3 "~" H 5400 5400 50  0001 C CNN
F 4 "C144674" H 5400 5400 50  0001 C CNN "LCSC"
F 5 "AC0603FR-072K4L" H 5400 5400 50  0001 C CNN "PN"
	1    5400 5400
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R37
U 1 1 6030B512
P 5650 5400
AR Path="/6030B512" Ref="R37"  Part="1" 
AR Path="/61469ABE/6030B512" Ref="R?"  Part="1" 
F 0 "R37" H 5450 5500 50  0000 L CNN
F 1 "2.4K" H 5450 5400 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 5690 5390 50  0001 C CNN
F 3 "~" H 5650 5400 50  0001 C CNN
F 4 "C144674" H 5650 5400 50  0001 C CNN "LCSC"
F 5 "AC0603FR-072K4L" H 5650 5400 50  0001 C CNN "PN"
	1    5650 5400
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R35
U 1 1 6030F67C
P 5150 5400
AR Path="/6030F67C" Ref="R35"  Part="1" 
AR Path="/61469ABE/6030F67C" Ref="R?"  Part="1" 
F 0 "R35" H 4950 5500 50  0000 L CNN
F 1 "2.4K" H 4950 5400 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 5190 5390 50  0001 C CNN
F 3 "~" H 5150 5400 50  0001 C CNN
F 4 "C144674" H 5150 5400 50  0001 C CNN "LCSC"
F 5 "AC0603FR-072K4L" H 5150 5400 50  0001 C CNN "PN"
	1    5150 5400
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x02_Male J14
U 1 1 60313D52
P 3750 1500
F 0 "J14" V 3904 1312 50  0000 R CNN
F 1 "Conn_01x02_Male" V 3813 1312 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 3750 1500 50  0001 C CNN
F 3 "~" H 3750 1500 50  0001 C CNN
	1    3750 1500
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3850 1300 4250 1300
$Comp
L Connector:Conn_01x02_Male J12
U 1 1 60319122
P 1700 5750
F 0 "J12" H 1800 5850 50  0000 C CNN
F 1 "Conn_01x02_Male" V 1550 5700 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 1700 5750 50  0001 C CNN
F 3 "~" H 1700 5750 50  0001 C CNN
	1    1700 5750
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R33
U 1 1 603645E2
P 2450 6050
AR Path="/603645E2" Ref="R33"  Part="1" 
AR Path="/61469ABE/603645E2" Ref="R?"  Part="1" 
F 0 "R33" H 2250 6150 50  0000 L CNN
F 1 "1K" H 2250 6050 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 2490 6040 50  0001 C CNN
F 3 "~" H 2450 6050 50  0001 C CNN
F 4 "C22548" H 2450 6050 50  0001 C CNN "LCSC"
F 5 "RC0603FR-071KL" H 2450 6050 50  0001 C CNN "PN"
	1    2450 6050
	-1   0    0    1   
$EndComp
$Comp
L Device:R_US R32
U 1 1 603662CC
P 2450 5550
AR Path="/603662CC" Ref="R32"  Part="1" 
AR Path="/61469ABE/603662CC" Ref="R?"  Part="1" 
F 0 "R32" H 2250 5650 50  0000 L CNN
F 1 "1K" H 2250 5550 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 2490 5540 50  0001 C CNN
F 3 "~" H 2450 5550 50  0001 C CNN
F 4 "C22548" H 2450 5550 50  0001 C CNN "LCSC"
F 5 "RC0603FR-071KL" H 2450 5550 50  0001 C CNN "PN"
	1    2450 5550
	-1   0    0    1   
$EndComp
$Comp
L Device:R_US R31
U 1 1 60367DA6
P 2050 6050
AR Path="/60367DA6" Ref="R31"  Part="1" 
AR Path="/61469ABE/60367DA6" Ref="R?"  Part="1" 
F 0 "R31" H 1850 6150 50  0000 L CNN
F 1 "2K" H 1850 6050 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 2090 6040 50  0001 C CNN
F 3 "~" H 2050 6050 50  0001 C CNN
F 4 "C125933" H 2050 6050 50  0001 C CNN "LCSC"
F 5 "AC0603FR-072KL" H 2050 6050 50  0001 C CNN "PN"
	1    2050 6050
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R30
U 1 1 60368F12
P 2050 5550
AR Path="/60368F12" Ref="R30"  Part="1" 
AR Path="/61469ABE/60368F12" Ref="R?"  Part="1" 
F 0 "R30" H 1850 5650 50  0000 L CNN
F 1 "1K" H 1850 5550 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 2090 5540 50  0001 C CNN
F 3 "~" H 2050 5550 50  0001 C CNN
F 4 "C22548" H 2050 5550 50  0001 C CNN "LCSC"
F 5 "RC0603FR-071KL" H 2050 5550 50  0001 C CNN "PN"
	1    2050 5550
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C3
U 1 1 6036A3AA
P 2950 5800
AR Path="/6036A3AA" Ref="C3"  Part="1" 
AR Path="/61469ABE/6036A3AA" Ref="C?"  Part="1" 
F 0 "C3" H 2858 5754 50  0000 R CNN
F 1 "22nf" H 2858 5845 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 2950 5800 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Samsung-Electro-Mechanics-CL10B223KB8NNNC_C21122.pdf" H 2950 5800 50  0001 C CNN
F 4 "C21122" H 2950 5800 50  0001 C CNN "LCSC"
F 5 "CL10B223KB8NNNC" H 2950 5800 50  0001 C CNN "PN"
	1    2950 5800
	-1   0    0    -1  
$EndComp
Wire Wire Line
	2950 5700 2950 5600
Wire Wire Line
	4000 5600 4000 5800
Wire Wire Line
	4000 5800 4100 5800
Wire Wire Line
	2950 5900 2950 6000
Wire Wire Line
	4000 6000 4000 5900
Wire Wire Line
	4000 5900 4100 5900
Connection ~ 4500 6400
Wire Wire Line
	5750 5250 5650 5250
Connection ~ 5150 5250
Connection ~ 5400 5250
Wire Wire Line
	5400 5250 5150 5250
Connection ~ 5650 5250
Wire Wire Line
	5650 5250 5400 5250
Connection ~ 5650 5700
Wire Wire Line
	5650 5700 5700 5700
Wire Wire Line
	4500 5250 4850 5250
Wire Notes Line
	1500 2750 6900 2750
Wire Notes Line
	6900 750  6900 2750
Wire Notes Line
	1500 750  1500 2750
Wire Notes Line
	1500 750  6900 750 
Text Notes 5350 6500 0    118  ~ 24
External A/D
Text Notes 1600 6550 0    59   ~ 0
Jumper to module #3\n
Text Notes 3150 950  0    59   ~ 0
Jumper to External A/D\n
NoConn ~ 6400 5200
NoConn ~ 6400 5400
NoConn ~ 6400 5500
NoConn ~ 6400 5600
NoConn ~ 6400 5700
NoConn ~ 6400 5800
Wire Wire Line
	2450 5700 2450 5800
Wire Wire Line
	1900 5850 2050 5850
Wire Wire Line
	2050 5850 2050 5900
Wire Wire Line
	1900 5750 2050 5750
Wire Wire Line
	2050 5750 2050 5700
Wire Wire Line
	2450 5400 2950 5400
Wire Wire Line
	2950 5400 2950 5600
Connection ~ 2950 5600
Wire Wire Line
	2450 6200 2950 6200
Wire Wire Line
	2950 6200 2950 6000
Connection ~ 2950 6000
Wire Wire Line
	2450 5800 2750 5800
Connection ~ 2450 5800
Wire Wire Line
	2450 5800 2450 5900
Wire Wire Line
	5650 5550 5650 5700
Wire Wire Line
	4900 6000 5150 6000
Wire Wire Line
	5750 5250 5750 5300
Wire Wire Line
	5400 5550 5400 5900
Connection ~ 5400 5900
Wire Wire Line
	5150 5550 5150 6000
Connection ~ 5150 6000
Wire Wire Line
	5150 6000 6400 6000
$Comp
L Device:C_Small C7
U 1 1 604021D9
P 4850 5150
AR Path="/604021D9" Ref="C7"  Part="1" 
AR Path="/61469ABE/604021D9" Ref="C?"  Part="1" 
F 0 "C7" H 4758 5104 50  0000 R CNN
F 1 "100nf" H 4758 5195 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 4850 5150 50  0001 C CNN
F 3 "https://lcsc.com/product-detail/Multilayer-Ceramic-Capacitors-MLCC-SMD-SMT_Samsung-Electro-Mechanics-CL10B104KB8NNNC_C1591.html" H 4850 5150 50  0001 C CNN
F 4 "C1591" H 4850 5150 50  0001 C CNN "LCSC"
F 5 "CL10B104KB8NNNC" H 4850 5150 50  0001 C CNN "PN"
	1    4850 5150
	1    0    0    1   
$EndComp
Connection ~ 4500 5250
$Comp
L Device:Ferrite_Bead_Small FB1
U 1 1 60452E4D
P 6000 5100
F 0 "FB1" V 6100 5050 50  0000 C CNN
F 1 "BLM18HE152SN1D" V 5854 5100 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 5930 5100 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/1810311111_Murata-Electronics-BLM18HE152SN1D_C82155.pdf" H 6000 5100 50  0001 C CNN
F 4 "C82155" H 6000 5100 50  0001 C CNN "LCSC"
F 5 "BLM18HE152SN1D" H 6000 5100 50  0001 C CNN "PN"
	1    6000 5100
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small C8
U 1 1 6048BA8A
P 6200 5200
AR Path="/6048BA8A" Ref="C8"  Part="1" 
AR Path="/61469ABE/6048BA8A" Ref="C?"  Part="1" 
F 0 "C8" H 6250 5050 50  0000 R CNN
F 1 "1uf" H 6250 5400 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 6200 5200 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Samsung-Electro-Mechanics-CL10B105KA8NNNC_C29936.pdf" H 6200 5200 50  0001 C CNN
F 4 "C29936" H 6200 5200 50  0001 C CNN "LCSC"
F 5 "CL10B105KA8NNNC " H 6200 5200 50  0001 C CNN "PN"
	1    6200 5200
	1    0    0    1   
$EndComp
$Comp
L Device:Ferrite_Bead_Small FB2
U 1 1 604A91B0
P 6000 5300
F 0 "FB2" V 5850 5300 50  0000 C CNN
F 1 "BLM18HE152SN1D" V 6146 5300 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 5930 5300 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/1810311111_Murata-Electronics-BLM18HE152SN1D_C82155.pdf" H 6000 5300 50  0001 C CNN
F 4 "C82155" H 6000 5300 50  0001 C CNN "LCSC"
F 5 "BLM18HE152SN1D" H 6000 5300 50  0001 C CNN "PN"
	1    6000 5300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	6400 5100 6350 5100
Wire Wire Line
	6100 5100 6200 5100
Connection ~ 6200 5100
Wire Wire Line
	5900 5100 5850 5100
Wire Wire Line
	5750 5300 5900 5300
Wire Wire Line
	6100 5300 6200 5300
Wire Wire Line
	6200 5300 6400 5300
Connection ~ 6200 5300
Wire Wire Line
	5850 5100 5850 6200
Wire Wire Line
	5850 6200 5250 6200
$Comp
L Device:R_US R34
U 1 1 60565AF1
P 5050 6100
AR Path="/60565AF1" Ref="R34"  Part="1" 
AR Path="/61469ABE/60565AF1" Ref="R?"  Part="1" 
F 0 "R34" H 4850 6200 50  0000 L CNN
F 1 "2.4K" H 4850 6100 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 5090 6090 50  0001 C CNN
F 3 "~" H 5050 6100 50  0001 C CNN
F 4 "C144674" H 5050 6100 50  0001 C CNN "LCSC"
F 5 "AC0603FR-072K4L" H 5050 6100 50  0001 C CNN "PN"
	1    5050 6100
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4500 6400 5250 6400
Wire Wire Line
	5200 6100 5250 6100
Wire Wire Line
	5250 6100 5250 6200
Connection ~ 5250 6200
$Comp
L Regulator_Linear:NCV8114ASN150T1G U2
U 1 1 605B8E41
P 3450 5350
F 0 "U2" H 3650 5250 50  0000 C CNN
F 1 "NCV8114ASN150T1G" H 3050 5100 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:TSOT-23-5" H 3450 4950 50  0001 C CIN
F 3 "https://ru.mouser.com/datasheet/2/308/NCV8114-D-1107616.pdf" H 3450 4850 50  0001 C CNN
F 4 "C256532" H 3450 5350 50  0001 C CNN "LCSC"
F 5 "NCV8114ASN150T1G" H 3450 5350 50  0001 C CNN "PN"
	1    3450 5350
	-1   0    0    1   
$EndComp
Wire Wire Line
	3850 5450 3850 5250
Connection ~ 3850 5250
Connection ~ 4850 5250
Wire Wire Line
	4850 5250 5150 5250
Wire Wire Line
	5850 5100 5300 5100
Wire Wire Line
	5300 5100 5300 5050
Wire Wire Line
	5300 5050 4850 5050
Connection ~ 5850 5100
Wire Wire Line
	4850 5050 3450 5050
Connection ~ 4850 5050
Wire Wire Line
	2750 5800 2750 5450
Wire Wire Line
	2750 5450 3050 5450
$Comp
L Device:C_Small C6
U 1 1 6067FF68
P 3050 5250
AR Path="/6067FF68" Ref="C6"  Part="1" 
AR Path="/61469ABE/6067FF68" Ref="C?"  Part="1" 
F 0 "C6" H 2900 5100 50  0000 R CNN
F 1 "1uf" H 2900 5200 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 3050 5250 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/Samsung-Electro-Mechanics-CL10B105KA8NNNC_C29936.pdf" H 3050 5250 50  0001 C CNN
F 4 "C29936" H 3050 5250 50  0001 C CNN "LCSC"
F 5 "CL10B105KA8NNNC " H 3050 5250 50  0001 C CNN "PN"
	1    3050 5250
	1    0    0    1   
$EndComp
Wire Wire Line
	3450 5050 3050 5050
Wire Wire Line
	3050 5050 3050 5150
Connection ~ 3450 5050
Wire Wire Line
	3050 5350 3050 5450
Connection ~ 3050 5450
Text Notes 2500 5900 0    59   ~ 0
1.5V
$Comp
L Device:D_Schottky_Small D2
U 1 1 606DADD6
P 2150 6350
F 0 "D2" H 1900 6400 50  0000 L CNN
F 1 "MSCD104H" H 2195 6420 50  0000 L CNN
F 2 "Diode_SMD:D_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2150 6350 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/1810010231_ZOWIE-Tech-MSCD104H_C189958.pdf" V 2150 6350 50  0001 C CNN
F 4 "C189958" H 2150 6350 50  0001 C CNN "LCSC"
F 5 "MSCD104H" H 2150 6350 50  0001 C CNN "PN"
	1    2150 6350
	1    0    0    -1  
$EndComp
$Comp
L Device:D_Schottky_Small D3
U 1 1 606DB922
P 2050 5150
F 0 "D3" V 2004 5220 50  0000 L CNN
F 1 "MSCD104H" V 2150 4750 50  0000 L CNN
F 2 "Diode_SMD:D_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 2050 5150 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/1810010231_ZOWIE-Tech-MSCD104H_C189958.pdf" V 2050 5150 50  0001 C CNN
F 4 "C189958" H 2050 5150 50  0001 C CNN "LCSC"
F 5 "MSCD104H" H 2050 5150 50  0001 C CNN "PN"
	1    2050 5150
	0    1    1    0   
$EndComp
Wire Wire Line
	6350 5100 6350 6200
Wire Wire Line
	6350 6200 6400 6200
Connection ~ 6350 5100
Wire Wire Line
	6350 5100 6200 5100
Wire Notes Line
	6800 6600 6800 4850
Wire Notes Line
	6800 4850 1500 4850
Wire Notes Line
	1500 6600 6800 6600
Wire Notes Line
	1500 4850 1500 6600
NoConn ~ 9750 4550
NoConn ~ 9650 4550
NoConn ~ 9550 4550
NoConn ~ 8950 4550
NoConn ~ 8150 4550
NoConn ~ 8250 4550
NoConn ~ 8450 4550
NoConn ~ 8550 4550
Wire Wire Line
	2800 1800 2800 1350
Wire Wire Line
	2800 1350 2650 1350
Wire Wire Line
	2800 1800 2900 1800
Wire Wire Line
	2550 1350 2550 1000
Connection ~ 2550 1000
Wire Wire Line
	2550 1000 1900 1000
Wire Wire Line
	2450 1900 2650 1900
Wire Wire Line
	2650 1900 2650 1850
Wire Wire Line
	2550 1000 2900 1000
Wire Wire Line
	3350 6400 4500 6400
NoConn ~ 4100 6000
NoConn ~ 4100 6100
$Comp
L Connector_Generic:Conn_02x02_Counter_Clockwise J13
U 1 1 6024F363
P 2650 1650
F 0 "J13" V 2700 1730 50  0000 L CNN
F 1 "~" V 2655 1730 50  0000 L CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x02_P2.54mm_Vertical" H 2650 1650 50  0001 C CNN
F 3 "~" H 2650 1650 50  0001 C CNN
	1    2650 1650
	0    1    -1   0   
$EndComp
$Comp
L Device:R_US R38
U 1 1 602730EC
P 2200 5400
AR Path="/602730EC" Ref="R38"  Part="1" 
AR Path="/61469ABE/602730EC" Ref="R?"  Part="1" 
F 0 "R38" H 2000 5500 50  0000 L CNN
F 1 "200" H 2000 5400 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 2240 5390 50  0001 C CNN
F 3 "~" H 2200 5400 50  0001 C CNN
F 4 "C125935" H 2200 5400 50  0001 C CNN "LCSC"
F 5 "AC0603FR-07200RL" H 2200 5400 50  0001 C CNN "PN"
	1    2200 5400
	0    1    1    0   
$EndComp
Wire Wire Line
	2350 5400 2450 5400
Connection ~ 2450 5400
Wire Wire Line
	2050 5400 2050 5250
Wire Wire Line
	2950 5600 4000 5600
Connection ~ 2050 5400
Wire Wire Line
	2050 5050 2050 4950
Wire Wire Line
	2050 4950 4500 4950
Wire Wire Line
	4500 4950 4500 5250
Wire Wire Line
	3850 5250 4500 5250
$Comp
L Device:R_US R39
U 1 1 602F56C7
P 2200 6200
AR Path="/602F56C7" Ref="R39"  Part="1" 
AR Path="/61469ABE/602F56C7" Ref="R?"  Part="1" 
F 0 "R39" H 2000 6300 50  0000 L CNN
F 1 "200" H 2000 6200 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 2240 6190 50  0001 C CNN
F 3 "~" H 2200 6200 50  0001 C CNN
F 4 "C125935" H 2200 6200 50  0001 C CNN "LCSC"
F 5 "AC0603FR-07200RL" H 2200 6200 50  0001 C CNN "PN"
	1    2200 6200
	0    1    1    0   
$EndComp
Wire Wire Line
	2350 6200 2450 6200
Connection ~ 2450 6200
Wire Wire Line
	2050 6200 2050 6350
Wire Wire Line
	2950 6000 4000 6000
Connection ~ 2050 6200
Wire Wire Line
	2250 6350 3350 6350
Wire Wire Line
	3350 6350 3350 6400
$Comp
L Device:R_US R40
U 1 1 602C6C7B
P 9950 2900
AR Path="/602C6C7B" Ref="R40"  Part="1" 
AR Path="/61469ABE/602C6C7B" Ref="R?"  Part="1" 
F 0 "R40" H 9750 3000 50  0000 L CNN
F 1 "1K" H 9750 2900 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 9990 2890 50  0001 C CNN
F 3 "~" H 9950 2900 50  0001 C CNN
F 4 "C22548" H 9950 2900 50  0001 C CNN "LCSC"
F 5 "RC0603FR-071KL" H 9950 2900 50  0001 C CNN "PN"
	1    9950 2900
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R41
U 1 1 602C8404
P 9950 3500
AR Path="/602C8404" Ref="R41"  Part="1" 
AR Path="/61469ABE/602C8404" Ref="R?"  Part="1" 
F 0 "R41" H 9750 3600 50  0000 L CNN
F 1 "1K" H 9750 3500 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 9990 3490 50  0001 C CNN
F 3 "~" H 9950 3500 50  0001 C CNN
F 4 "C22548" H 9950 3500 50  0001 C CNN "LCSC"
F 5 "RC0603FR-071KL" H 9950 3500 50  0001 C CNN "PN"
	1    9950 3500
	0    1    1    0   
$EndComp
Wire Notes Line
	7950 4100 10350 4100
Wire Notes Line
	7950 2450 7950 4100
Wire Notes Line
	10350 2450 10350 4100
Wire Wire Line
	10200 3500 10100 3500
Wire Wire Line
	8550 3200 9000 3200
Wire Wire Line
	8550 3000 8750 3000
Wire Wire Line
	8550 3400 9000 3400
Wire Wire Line
	8550 2900 8900 2900
$Comp
L Torch-Module-rescue:My_library_8P8C_LED_Shielded-Torch_Module-cache J6
U 1 1 6026066F
P 9400 3200
F 0 "J6" H 9400 2900 50  0000 C CNN
F 1 "8P8C_LED_Shielded" H 9300 3250 50  0000 C CNN
F 2 "Connector_RJ:RJ45_Amphenol_RJHSE538X" V 9400 3225 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/1811141123_Ckmtw-Shenzhen-Cankemeng-C133529_C133529.pdf" V 9400 3225 50  0001 C CNN
F 4 "C133529" H 9400 3200 50  0001 C CNN "LCSC"
F 5 "C133529" H 9400 3200 50  0001 C CNN "PN"
	1    9400 3200
	-1   0    0    1   
$EndComp
Wire Wire Line
	8900 2900 8900 3100
Connection ~ 8900 2900
Wire Wire Line
	8900 2900 9000 2900
Connection ~ 8900 3100
Wire Wire Line
	8900 3100 9000 3100
Wire Wire Line
	8900 3100 8900 3300
Connection ~ 8900 3300
Wire Wire Line
	8900 3300 9000 3300
Wire Wire Line
	8900 3300 8900 3500
Connection ~ 8900 3500
Wire Wire Line
	8900 3500 9000 3500
Wire Wire Line
	8900 2900 8900 2550
Wire Wire Line
	8900 2550 10100 2550
Wire Wire Line
	10100 2550 10100 2900
Wire Wire Line
	10100 2900 10200 2900
Wire Wire Line
	10200 2900 10200 3500
Connection ~ 10100 2900
Wire Wire Line
	8750 3000 8750 3850
Wire Wire Line
	8750 3850 9800 3850
Wire Wire Line
	9800 3850 9800 3600
Connection ~ 8750 3000
Wire Wire Line
	8750 3000 9000 3000
Wire Wire Line
	8650 3300 8650 3900
Wire Wire Line
	8650 3900 10150 3900
Wire Wire Line
	10150 3900 10150 3000
Wire Wire Line
	10150 3000 9800 3000
Connection ~ 8650 3300
Wire Wire Line
	8650 3300 8900 3300
$Comp
L Connector:Conn_01x02_Male J16
U 1 1 6029708A
P 6550 2950
F 0 "J16" V 6704 2762 50  0000 R CNN
F 1 "Reset" V 6613 2762 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 6550 2950 50  0001 C CNN
F 3 "~" H 6550 2950 50  0001 C CNN
	1    6550 2950
	0    -1   1    0   
$EndComp
$Comp
L Connector:Conn_01x10_Male J9
U 1 1 600FA13A
P 5900 2950
F 0 "J9" H 6008 3531 50  0000 C CNN
F 1 "2.54 pin" H 6008 3440 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x05_P2.54mm_Vertical" H 5900 2950 50  0001 C CNN
F 3 "~" H 5900 2950 50  0001 C CNN
	1    5900 2950
	0    -1   1    0   
$EndComp
Wire Wire Line
	6400 3150 6550 3150
$Comp
L Connector:Conn_01x02_Male J17
U 1 1 6038F2D5
P 10400 800
F 0 "J17" V 10554 612 50  0000 R CNN
F 1 "Reset" V 10463 612 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 10400 800 50  0001 C CNN
F 3 "~" H 10400 800 50  0001 C CNN
	1    10400 800 
	-1   0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x02_Male J18
U 1 1 60391CC7
P 10500 2150
F 0 "J18" V 10700 2400 50  0000 R CNN
F 1 "Reset" V 10550 2450 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x02_P2.54mm_Vertical" H 10500 2150 50  0001 C CNN
F 3 "~" H 10500 2150 50  0001 C CNN
	1    10500 2150
	-1   0    0    -1  
$EndComp
Wire Wire Line
	8550 1250 8800 1250
Wire Wire Line
	8800 1250 8800 800 
Wire Wire Line
	8800 800  10200 800 
Wire Wire Line
	8550 1150 8850 1150
Wire Wire Line
	8850 1150 8850 900 
Wire Wire Line
	8850 900  10200 900 
Wire Wire Line
	8550 1650 8750 1650
Wire Wire Line
	8750 1650 8750 2150
Wire Wire Line
	8750 2150 10300 2150
Wire Wire Line
	8550 1550 8600 1550
Wire Wire Line
	8600 1550 8600 2250
Wire Wire Line
	8600 2250 10300 2250
Wire Wire Line
	6700 3300 6700 3150
Wire Wire Line
	6700 3150 6900 3150
Wire Wire Line
	6900 3150 6900 3050
Wire Wire Line
	6900 3050 7150 3050
Wire Wire Line
	6400 3300 6700 3300
Wire Wire Line
	6650 3150 6700 3150
Connection ~ 6700 3150
Wire Wire Line
	5500 3250 5500 3850
Connection ~ 5500 3250
NoConn ~ 7150 3150
Wire Wire Line
	4500 5400 4500 5250
$Comp
L Torch-Module-rescue:8P8C_Shielded_Custom-8P8C_Shielded J1
U 1 1 600A1FE7
P 1900 2050
F 0 "J1" H 1700 2600 50  0000 R CNN
F 1 "Torch" H 1750 2700 50  0000 R CNN
F 2 "RJHSE-3380:RJHSE3384" V 1900 2075 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/1811141123_Shanghai-YDS-Tech-51F-1210GY2D2NL_C179768.pdf" V 1900 2075 50  0001 C CNN
F 4 "C179768" H 1900 2050 50  0001 C CNN "LCSC"
F 5 "51F-1210GY2D2NL" H 1900 2050 50  0001 C CNN "PN"
	1    1900 2050
	1    0    0    -1  
$EndComp
$Comp
L Torch-Module-rescue:8P8C_Shielded_Custom-8P8C_Shielded J8
U 1 1 6023A990
P 5800 4250
F 0 "J8" H 5600 4800 50  0000 R CNN
F 1 "Torch" H 5650 4900 50  0000 R CNN
F 2 "RJHSE-3380:RJHSE3384" V 5800 4275 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/1811141123_Shanghai-YDS-Tech-51F-1210GY2D2NL_C179768.pdf" V 5800 4275 50  0001 C CNN
F 4 "C179768" H 5800 4250 50  0001 C CNN "LCSC"
F 5 "51F-1210GY2D2NL" H 5800 4250 50  0001 C CNN "PN"
	1    5800 4250
	0    1    -1   0   
$EndComp
$Comp
L Torch-Module-rescue:8P8C_Shielded_Custom-8P8C_Shielded J4
U 1 1 600B48EF
P 8150 1550
F 0 "J4" H 7950 2100 50  0000 R CNN
F 1 "Limit" H 8000 2200 50  0000 R CNN
F 2 "RJHSE-3380:RJHSE3384" V 8150 1575 50  0001 C CNN
F 3 "https://datasheet.lcsc.com/szlcsc/1811141123_Shanghai-YDS-Tech-51F-1210GY2D2NL_C179768.pdf" V 8150 1575 50  0001 C CNN
F 4 "C179768" H 8150 1550 50  0001 C CNN "LCSC"
F 5 "51F-1210GY2D2NL" H 8150 1550 50  0001 C CNN "PN"
	1    8150 1550
	1    0    0    -1  
$EndComp
Wire Wire Line
	7600 1900 7650 1900
Wire Wire Line
	7600 1900 7600 1800
Wire Wire Line
	7600 1800 7650 1800
Connection ~ 7600 1900
Wire Wire Line
	7600 1800 7600 1200
Wire Wire Line
	7600 1200 7650 1200
Connection ~ 7600 1800
Wire Wire Line
	7600 1200 7600 1100
Wire Wire Line
	7600 1100 7650 1100
Connection ~ 7600 1200
Wire Wire Line
	5450 4750 5450 4800
Wire Wire Line
	5450 4800 5550 4800
Wire Wire Line
	6250 4750 6250 4800
Connection ~ 6250 4800
Wire Wire Line
	6150 4750 6150 4800
Connection ~ 6150 4800
Wire Wire Line
	6150 4800 6250 4800
Wire Wire Line
	5550 4750 5550 4800
Connection ~ 5550 4800
Wire Wire Line
	5550 4800 6150 4800
Wire Wire Line
	1400 1600 1350 1600
Wire Wire Line
	1350 1600 1350 1700
Wire Wire Line
	1350 1700 1400 1700
Wire Wire Line
	1350 1700 1350 2300
Connection ~ 1350 1700
Wire Wire Line
	1400 2300 1350 2300
Connection ~ 1350 2300
Wire Wire Line
	1350 2300 1350 2400
Wire Wire Line
	1400 2400 1350 2400
Connection ~ 1350 2400
Wire Wire Line
	1900 2650 1350 2650
Wire Wire Line
	1350 2400 1350 2650
Connection ~ 1900 2650
Wire Wire Line
	6400 4250 6400 4800
Wire Wire Line
	6250 4800 6400 4800
Connection ~ 6400 4250
Wire Wire Line
	5300 4250 5250 4250
Wire Wire Line
	5250 4250 5250 4150
Wire Wire Line
	5250 4150 6400 4150
Wire Wire Line
	8150 2050 7600 2050
Wire Wire Line
	7600 1900 7600 2050
Connection ~ 8150 2050
$Comp
L Mechanical:MountingHole H1
U 1 1 60B08E8A
P 7400 -1050
F 0 "H1" H 7500 -1004 50  0000 L CNN
F 1 "MountingHole" H 7500 -1095 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 7400 -1050 50  0001 C CNN
F 3 "~" H 7400 -1050 50  0001 C CNN
	1    7400 -1050
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole H2
U 1 1 60B5F657
P 7400 -800
F 0 "H2" H 7500 -754 50  0000 L CNN
F 1 "MountingHole" H 7500 -845 50  0000 L CNN
F 2 "MountingHole:MountingHole_3.2mm_M3" H 7400 -800 50  0001 C CNN
F 3 "~" H 7400 -800 50  0001 C CNN
	1    7400 -800
	1    0    0    -1  
$EndComp
Connection ~ 9500 5150
$Comp
L Device:Q_NMOS_GSD Q2
U 1 1 618B4EB4
P 8400 5150
F 0 "Q2" H 8604 5196 50  0000 L CNN
F 1 "IRLML2402" H 8604 5105 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 8600 5250 50  0001 C CNN
F 3 "~" H 8400 5150 50  0001 C CNN
F 4 "C2588" H 8400 5150 50  0001 C CNN "LCSC"
F 5 "IRLML2402TRPBF" H 8400 5150 50  0001 C CNN "PN"
	1    8400 5150
	1    0    0    -1  
$EndComp
$Comp
L Device:Q_NMOS_GSD Q4
U 1 1 618B65D2
P 9700 5150
F 0 "Q4" H 9904 5196 50  0000 L CNN
F 1 "IRLML2402" H 9904 5105 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 9900 5250 50  0001 C CNN
F 3 "~" H 9700 5150 50  0001 C CNN
F 4 "C2588" H 9700 5150 50  0001 C CNN "LCSC"
F 5 "IRLML2402TRPBF" H 9700 5150 50  0001 C CNN "PN"
	1    9700 5150
	1    0    0    -1  
$EndComp
$Comp
L Device:Q_NMOS_GSD Q5
U 1 1 618B755A
P 9700 5900
F 0 "Q5" H 9904 5946 50  0000 L CNN
F 1 "IRLML2402" H 9904 5855 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 9900 6000 50  0001 C CNN
F 3 "~" H 9700 5900 50  0001 C CNN
F 4 "C2588" H 9700 5900 50  0001 C CNN "LCSC"
F 5 "IRLML2402TRPBF" H 9700 5900 50  0001 C CNN "PN"
	1    9700 5900
	1    0    0    -1  
$EndComp
Connection ~ 9500 5900
$Comp
L Device:Q_NMOS_GSD Q3
U 1 1 618B85D4
P 8400 5900
F 0 "Q3" H 8604 5946 50  0000 L CNN
F 1 "IRLML2402" H 8604 5855 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 8600 6000 50  0001 C CNN
F 3 "~" H 8400 5900 50  0001 C CNN
F 4 "C2588" H 8400 5900 50  0001 C CNN "LCSC"
F 5 "IRLML2402TRPBF" H 8400 5900 50  0001 C CNN "PN"
	1    8400 5900
	1    0    0    -1  
$EndComp
Connection ~ 8200 5900
$EndSCHEMATC
