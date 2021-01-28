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
	2100 3200 6400 3200
Wire Notes Line
	6400 3200 6400 1250
Text Notes 4750 3150 0    118  ~ 24
Module#3 Torch
Wire Notes Line
	2100 1250 2100 3200
Wire Wire Line
	3000 2100 2900 2100
Wire Wire Line
	5150 1650 5150 1800
Wire Wire Line
	5150 1450 5450 1450
Connection ~ 5150 1450
Wire Wire Line
	5450 1900 4900 1900
Wire Wire Line
	4900 2150 4850 2150
Wire Wire Line
	4900 1900 4900 2150
Connection ~ 4550 2150
Wire Wire Line
	4550 1450 4950 1450
Wire Wire Line
	4850 2000 5450 2000
Wire Wire Line
	4850 1750 4850 2000
Text Notes 6200 2000 2    39   ~ 0
Torch IO 36 THC
Connection ~ 4550 1450
Wire Wire Line
	2950 2200 2900 2200
Wire Wire Line
	2950 3050 2950 2200
Wire Wire Line
	3900 3050 2950 3050
Wire Wire Line
	3900 3000 3900 3050
Text Notes 6250 2200 2    39   ~ 0
TorchIO 22 Ready
Wire Wire Line
	4100 1950 3850 1950
Wire Wire Line
	4100 1750 4850 1750
Wire Wire Line
	4100 1950 4100 1750
Wire Wire Line
	4550 1450 4250 1450
Wire Wire Line
	4550 1850 4550 1450
Connection ~ 4250 1450
Wire Wire Line
	4250 1450 3850 1450
Wire Wire Line
	4250 1450 4250 1950
Wire Wire Line
	3250 2300 3250 1450
Wire Wire Line
	3000 2300 3250 2300
Wire Wire Line
	3000 2600 3000 2300
Wire Wire Line
	2900 2600 3000 2600
Wire Wire Line
	3050 2500 2900 2500
Wire Wire Line
	3050 2350 3050 2500
Wire Wire Line
	3450 2350 3050 2350
Wire Wire Line
	3450 2250 3450 2350
Wire Wire Line
	3450 2250 3500 2250
Connection ~ 4250 2350
Wire Wire Line
	4250 2350 3900 2350
Wire Wire Line
	4250 2550 4250 2350
Wire Wire Line
	4250 3000 3900 3000
Connection ~ 4250 3000
Wire Wire Line
	4250 2850 4250 3000
$Comp
L Device:D D?
U 1 1 61A672A6
P 4250 2700
AR Path="/61469ABE/61A672A6" Ref="D?"  Part="1" 
AR Path="/61A672A6" Ref="D1"  Part="1" 
F 0 "D1" V 4204 2780 50  0000 L CNN
F 1 "D" V 4295 2780 50  0000 L CNN
F 2 "Diode_SMD:D_SOD-123" H 4250 2700 50  0001 C CNN
F 3 "~" H 4250 2700 50  0001 C CNN
	1    4250 2700
	0    -1   -1   0   
$EndComp
Wire Wire Line
	3900 2350 3900 2400
Wire Wire Line
	4500 3000 4250 3000
Wire Wire Line
	4500 2800 4500 3000
Wire Wire Line
	5450 2800 4500 2800
$Comp
L Device:R_US R6
U 1 1 61A67297
P 4700 2150
AR Path="/61A67297" Ref="R6"  Part="1" 
AR Path="/61469ABE/61A67297" Ref="R?"  Part="1" 
F 0 "R6" V 4495 2150 50  0000 C CNN
F 1 "10k" V 4586 2150 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 4740 2140 50  0001 C CNN
F 3 "~" H 4700 2150 50  0001 C CNN
	1    4700 2150
	0    1    -1   0   
$EndComp
$Comp
L Device:R_US R1
U 1 1 61A6728B
P 3000 1950
AR Path="/61A6728B" Ref="R1"  Part="1" 
AR Path="/61469ABE/61A6728B" Ref="R?"  Part="1" 
F 0 "R1" V 2795 1950 50  0000 C CNN
F 1 "3.3K" V 2886 1950 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 3040 1940 50  0001 C CNN
F 3 "~" H 3000 1950 50  0001 C CNN
	1    3000 1950
	-1   0    0    1   
$EndComp
$Comp
L Device:C_Small C2
U 1 1 61A67285
P 5150 1550
AR Path="/61A67285" Ref="C2"  Part="1" 
AR Path="/61469ABE/61A67285" Ref="C?"  Part="1" 
F 0 "C2" H 5058 1504 50  0000 R CNN
F 1 "1uf" H 5058 1595 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 5150 1550 50  0001 C CNN
F 3 "~" H 5150 1550 50  0001 C CNN
	1    5150 1550
	-1   0    0    -1  
$EndComp
$Comp
L Device:R_US R5
U 1 1 61A67279
P 4550 2000
AR Path="/61A67279" Ref="R5"  Part="1" 
AR Path="/61469ABE/61A67279" Ref="R?"  Part="1" 
F 0 "R5" V 4345 2000 50  0000 C CNN
F 1 "10k" V 4436 2000 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 4590 1990 50  0001 C CNN
F 3 "~" H 4550 2000 50  0001 C CNN
	1    4550 2000
	-1   0    0    1   
$EndComp
$Comp
L Transistor_FET:AO3400A Q?
U 1 1 61A67273
P 4350 2150
AR Path="/61469ABE/61A67273" Ref="Q?"  Part="1" 
AR Path="/61A67273" Ref="Q1"  Part="1" 
F 0 "Q1" H 4555 2196 50  0000 L CNN
F 1 "AO3400A" H 4555 2105 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 4550 2075 50  0001 L CIN
F 3 "http://www.aosmd.com/pdfs/datasheet/AO3400A.pdf" H 4350 2150 50  0001 L CNN
	1    4350 2150
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x12_Male J?
U 1 1 61A6726D
P 5650 2400
AR Path="/61469ABE/61A6726D" Ref="J?"  Part="1" 
AR Path="/61A6726D" Ref="J2"  Part="1" 
F 0 "J2" H 5600 2850 50  0000 R CNN
F 1 "Module3" V 5600 2700 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x12_P2.54mm_Vertical" H 5650 2400 50  0001 C CNN
F 3 "~" H 5650 2400 50  0001 C CNN
	1    5650 2400
	-1   0    0    1   
$EndComp
Connection ~ 3850 1950
Wire Wire Line
	3550 1950 3500 1950
Wire Wire Line
	3850 1850 3850 1950
Wire Wire Line
	3850 1450 3850 1650
$Comp
L Device:C_Small C1
U 1 1 61A6725D
P 3850 1750
AR Path="/61A6725D" Ref="C1"  Part="1" 
AR Path="/61469ABE/61A6725D" Ref="C?"  Part="1" 
F 0 "C1" H 3758 1704 50  0000 R CNN
F 1 "1uf" H 3758 1795 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 3850 1750 50  0001 C CNN
F 3 "~" H 3850 1750 50  0001 C CNN
	1    3850 1750
	-1   0    0    -1  
$EndComp
$Comp
L Device:R_US R4
U 1 1 61A67257
P 3700 1950
AR Path="/61A67257" Ref="R4"  Part="1" 
AR Path="/61469ABE/61A67257" Ref="R?"  Part="1" 
F 0 "R4" V 3495 1950 50  0000 C CNN
F 1 "10k" V 3586 1950 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 3740 1940 50  0001 C CNN
F 3 "~" H 3700 1950 50  0001 C CNN
	1    3700 1950
	0    1    -1   0   
$EndComp
$Comp
L Device:R_US R3
U 1 1 61A6724B
P 3500 2100
AR Path="/61A6724B" Ref="R3"  Part="1" 
AR Path="/61469ABE/61A6724B" Ref="R?"  Part="1" 
F 0 "R3" H 3700 2200 50  0000 R CNN
F 1 "3.3k" H 3700 2050 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 3540 2090 50  0001 C CNN
F 3 "~" H 3500 2100 50  0001 C CNN
	1    3500 2100
	-1   0    0    1   
$EndComp
NoConn ~ 5450 2400
NoConn ~ 5450 2500
NoConn ~ 5450 2700
NoConn ~ 2900 2300
NoConn ~ 2900 2400
NoConn ~ 3600 3000
NoConn ~ 4200 4750
NoConn ~ 4200 4650
NoConn ~ 4200 4550
Wire Wire Line
	5450 2900 4950 2900
Wire Wire Line
	4950 2900 4950 1450
Connection ~ 4950 1450
Wire Wire Line
	4950 1450 5150 1450
Wire Notes Line
	2350 3300 5700 3300
Wire Notes Line
	5700 3300 5700 5200
Wire Notes Line
	5700 5200 2350 5200
Wire Notes Line
	2350 5200 2350 3300
Text Notes 2450 5150 0    118  ~ 24
Clearpath Driver
$Comp
L Connector:Conn_01x18_Male J3
U 1 1 5FFFC856
P 3950 3350
F 0 "J3" H 4058 4331 50  0000 C CNN
F 1 "Conn_01x18_Male" H 4058 4240 50  0000 C CNN
F 2 "Modules:ClearpathDriver" H 3950 3350 50  0001 C CNN
F 3 "~" H 3950 3350 50  0001 C CNN
	1    3950 3350
	0    -1   1    0   
$EndComp
Wire Wire Line
	3150 3550 3150 4150
Wire Wire Line
	3150 4150 3400 4150
Wire Wire Line
	4200 3950 4650 3950
Wire Wire Line
	4650 3950 4650 3550
Wire Wire Line
	4200 4150 4450 4150
Wire Wire Line
	4450 4150 4450 3550
Wire Wire Line
	4350 3550 4350 4250
Wire Wire Line
	4350 4250 4200 4250
Wire Wire Line
	3850 3550 3850 3700
Wire Wire Line
	3250 3700 3250 4350
Wire Wire Line
	3250 4350 3400 4350
Wire Wire Line
	3250 3700 3850 3700
Wire Wire Line
	3750 3550 3750 3750
Wire Wire Line
	3750 3750 3300 3750
Wire Wire Line
	3300 3750 3300 4250
Wire Wire Line
	3300 4250 3400 4250
Wire Wire Line
	3400 4950 3800 4950
Wire Wire Line
	4200 4350 4250 4350
Wire Wire Line
	4250 4350 4250 3550
NoConn ~ 4050 3550
NoConn ~ 3650 3550
NoConn ~ 3550 3550
NoConn ~ 3350 3550
NoConn ~ 3250 3550
$Comp
L Connector:Conn_01x10_Female J5
U 1 1 60009679
P 7500 4350
F 0 "J5" H 7392 4935 50  0000 C CNN
F 1 "~" H 7392 4844 50  0000 C CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_2x05_P2.54mm_Horizontal" H 7500 4350 50  0001 C CNN
F 3 "~" H 7500 4350 50  0001 C CNN
	1    7500 4350
	-1   0    0    -1  
$EndComp
Wire Wire Line
	7700 3950 8000 3950
Wire Wire Line
	8000 3950 8000 3850
Wire Wire Line
	8000 3850 8550 3850
Wire Wire Line
	7700 4850 8000 4850
Wire Wire Line
	8000 4850 8000 4950
Wire Wire Line
	8000 4950 8550 4950
Wire Wire Line
	7700 4050 8150 4050
Wire Wire Line
	7700 4150 8150 4150
Wire Wire Line
	7700 4250 8150 4250
Wire Wire Line
	7700 4350 8150 4350
Wire Wire Line
	7700 4450 8150 4450
Wire Wire Line
	7700 4550 8150 4550
Wire Wire Line
	7700 4650 8150 4650
Wire Wire Line
	7700 4750 8150 4750
$Comp
L Connector:Conn_01x12_Male J?
U 1 1 60058092
P 9300 2700
AR Path="/61469ABE/60058092" Ref="J?"  Part="1" 
AR Path="/60058092" Ref="J7"  Part="1" 
F 0 "J7" H 9250 3150 50  0000 R CNN
F 1 "Module1" V 9200 2800 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x12_P2.54mm_Vertical" H 9300 2700 50  0001 C CNN
F 3 "~" H 9300 2700 50  0001 C CNN
	1    9300 2700
	-1   0    0    1   
$EndComp
Wire Wire Line
	8950 2450 8700 2450
Connection ~ 8700 2100
Connection ~ 8700 2450
Wire Wire Line
	8350 2400 8350 2450
Wire Wire Line
	8400 2450 8350 2450
Wire Wire Line
	8700 2350 8700 2450
Wire Wire Line
	8700 2100 8700 2150
Wire Wire Line
	8350 2100 8700 2100
$Comp
L Device:C_Small C4
U 1 1 600627D4
P 8700 2250
AR Path="/600627D4" Ref="C4"  Part="1" 
AR Path="/61469ABE/600627D4" Ref="C?"  Part="1" 
F 0 "C4" H 8608 2204 50  0000 R CNN
F 1 "1uf" H 8608 2295 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 8700 2250 50  0001 C CNN
F 3 "~" H 8700 2250 50  0001 C CNN
	1    8700 2250
	-1   0    0    -1  
$EndComp
$Comp
L Device:R_US R15
U 1 1 600627DE
P 8550 2450
AR Path="/600627DE" Ref="R15"  Part="1" 
AR Path="/61469ABE/600627DE" Ref="R?"  Part="1" 
F 0 "R15" V 8650 2450 50  0000 C CNN
F 1 "10k" V 8436 2450 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 8590 2440 50  0001 C CNN
F 3 "~" H 8550 2450 50  0001 C CNN
	1    8550 2450
	0    1    -1   0   
$EndComp
$Comp
L Device:R_US R13
U 1 1 600627E8
P 8350 2250
AR Path="/600627E8" Ref="R13"  Part="1" 
AR Path="/61469ABE/600627E8" Ref="R?"  Part="1" 
F 0 "R13" H 8150 2350 50  0000 L CNN
F 1 "1k" H 8150 2250 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 8390 2240 50  0001 C CNN
F 3 "~" H 8350 2250 50  0001 C CNN
	1    8350 2250
	1    0    0    1   
$EndComp
$Comp
L Device:R_US R11
U 1 1 600627F2
P 8200 2450
AR Path="/600627F2" Ref="R11"  Part="1" 
AR Path="/61469ABE/600627F2" Ref="R?"  Part="1" 
F 0 "R11" V 8100 2500 50  0000 R CNN
F 1 "3.3k" V 8050 2500 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 8240 2440 50  0001 C CNN
F 3 "~" H 8200 2450 50  0001 C CNN
	1    8200 2450
	0    -1   -1   0   
$EndComp
Connection ~ 8350 2450
Wire Wire Line
	8950 2850 8700 2850
Connection ~ 8700 3200
Connection ~ 8700 2850
Wire Wire Line
	8350 2900 8350 2850
Wire Wire Line
	8400 2850 8350 2850
Wire Wire Line
	8700 2950 8700 2850
Wire Wire Line
	8700 3200 8700 3150
Wire Wire Line
	8350 3200 8700 3200
$Comp
L Device:C_Small C5
U 1 1 60078B3B
P 8700 3050
AR Path="/60078B3B" Ref="C5"  Part="1" 
AR Path="/61469ABE/60078B3B" Ref="C?"  Part="1" 
F 0 "C5" H 8608 3004 50  0000 R CNN
F 1 "1uf" H 8608 3095 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 8700 3050 50  0001 C CNN
F 3 "~" H 8700 3050 50  0001 C CNN
	1    8700 3050
	-1   0    0    1   
$EndComp
$Comp
L Device:R_US R16
U 1 1 60078B45
P 8550 2850
AR Path="/60078B45" Ref="R16"  Part="1" 
AR Path="/61469ABE/60078B45" Ref="R?"  Part="1" 
F 0 "R16" V 8650 2850 50  0000 C CNN
F 1 "10k" V 8436 2850 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 8590 2840 50  0001 C CNN
F 3 "~" H 8550 2850 50  0001 C CNN
	1    8550 2850
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R14
U 1 1 60078B4F
P 8350 3050
AR Path="/60078B4F" Ref="R14"  Part="1" 
AR Path="/61469ABE/60078B4F" Ref="R?"  Part="1" 
F 0 "R14" H 8150 3150 50  0000 L CNN
F 1 "1k" H 8150 3050 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 8390 3040 50  0001 C CNN
F 3 "~" H 8350 3050 50  0001 C CNN
	1    8350 3050
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R12
U 1 1 60078B59
P 8200 2850
AR Path="/60078B59" Ref="R12"  Part="1" 
AR Path="/61469ABE/60078B59" Ref="R?"  Part="1" 
F 0 "R12" V 8050 2900 50  0000 R CNN
F 1 "3.3k" V 8100 2900 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 8240 2840 50  0001 C CNN
F 3 "~" H 8200 2850 50  0001 C CNN
	1    8200 2850
	0    -1   1    0   
$EndComp
Connection ~ 8350 2850
Wire Wire Line
	7800 2450 8050 2450
Wire Wire Line
	7800 2850 8050 2850
Wire Wire Line
	8950 2850 8950 2700
Wire Wire Line
	8950 2700 9100 2700
Wire Wire Line
	8950 2450 8950 2600
Wire Wire Line
	8950 2600 9100 2600
Wire Wire Line
	9100 3100 9000 3100
Wire Wire Line
	9000 3100 9000 2650
Wire Wire Line
	9000 2650 7900 2650
Wire Wire Line
	7900 2650 7900 2550
Wire Wire Line
	7900 2550 7800 2550
Wire Wire Line
	7800 2950 7900 2950
Wire Wire Line
	7900 2950 7900 2650
Connection ~ 7900 2650
Wire Notes Line
	7000 1850 7000 3450
Wire Notes Line
	7150 3700 7150 5100
Wire Notes Line
	7150 5100 9550 5100
Wire Notes Line
	9550 5100 9550 3700
Wire Notes Line
	9550 3700 7150 3700
Text Notes 7150 3400 0    118  ~ 24
Z LIMIT
Text Notes 7200 5100 0    118  ~ 24
Motor Conn
Text Notes 5700 1900 0    39   ~ 0
Torch IO32 Trigger
Text Notes 9500 2750 0    39   ~ 0
Z limit Stop
Text Notes 9500 2600 0    39   ~ 0
A Limit Touch
Wire Notes Line
	9950 1850 9950 3450
Wire Notes Line
	7000 1850 9950 1850
Wire Notes Line
	7000 3450 9950 3450
Wire Wire Line
	8700 3200 9100 3200
Wire Wire Line
	8700 2100 9100 2100
Wire Wire Line
	8350 2100 7950 2100
Wire Wire Line
	7950 2100 7950 3150
Wire Wire Line
	7950 3200 8350 3200
Connection ~ 8350 2100
Connection ~ 8350 3200
NoConn ~ 7800 2250
NoConn ~ 7800 2350
NoConn ~ 7800 2650
NoConn ~ 7800 2750
NoConn ~ 9100 3000
NoConn ~ 9100 2900
NoConn ~ 9100 2800
NoConn ~ 9100 2500
NoConn ~ 9100 2400
NoConn ~ 9100 2300
NoConn ~ 9100 2200
Wire Wire Line
	5450 2600 5100 2600
Wire Wire Line
	5100 2600 5100 2100
Wire Wire Line
	5100 2100 5450 2100
Text Notes 5750 2600 0    39   ~ 0
GRBL IO26 Handover
Text Notes 5700 2100 0    39   ~ 0
IO 21recieve handover
Wire Wire Line
	3250 1450 2500 1450
Wire Wire Line
	2500 1450 2500 1900
Wire Wire Line
	2500 3000 2500 3100
Wire Wire Line
	2500 3100 4550 3100
Wire Wire Line
	4550 3100 4550 2900
Wire Wire Line
	4550 2900 4950 2900
Connection ~ 4950 2900
$Comp
L My_library:8P8C_Shielded J4
U 1 1 600B48EF
P 7400 2650
F 0 "J4" H 7200 3200 50  0000 R CNN
F 1 "Limit" H 7250 3300 50  0000 R CNN
F 2 "Modules:RJ45_Torb_Vertical" V 7400 2675 50  0001 C CNN
F 3 "~" V 7400 2675 50  0001 C CNN
	1    7400 2650
	1    0    0    -1  
$EndComp
Wire Wire Line
	7400 2050 7950 2050
Wire Wire Line
	7950 2050 7950 2100
Connection ~ 7950 2100
Wire Wire Line
	7400 3150 7950 3150
Connection ~ 7950 3150
Wire Wire Line
	7950 3150 7950 3200
Connection ~ 3900 3000
$Comp
L Relay:G6E K?
U 1 1 61A6727F
P 3700 2700
AR Path="/61469ABE/61A6727F" Ref="K?"  Part="1" 
AR Path="/61A6727F" Ref="K1"  Part="1" 
F 0 "K1" H 4130 2746 50  0000 L CNN
F 1 "G6E" H 4130 2655 50  0000 L CNN
F 2 "Relay_THT:Relay_SPDT_Omron_G6E" H 4830 2670 50  0001 C CNN
F 3 "https://www.omron.com/ecb/products/pdf/en-g6e.pdf" H 3700 2700 50  0001 C CNN
	1    3700 2700
	-1   0    0    1   
$EndComp
$Comp
L My_library:8P8C_Shielded J1
U 1 1 600A1FE7
P 2500 2500
F 0 "J1" H 2300 3050 50  0000 R CNN
F 1 "Torch" H 2350 3150 50  0000 R CNN
F 2 "Modules:RJ45_Torb_Vertical" V 2500 2525 50  0001 C CNN
F 3 "~" V 2500 2525 50  0001 C CNN
	1    2500 2500
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 2800 3100 2800
Wire Wire Line
	3100 2800 3100 2400
Wire Wire Line
	3100 2400 3500 2400
Wire Wire Line
	2900 2700 3000 2700
Wire Wire Line
	3000 2700 3000 3000
Wire Wire Line
	3000 3000 3400 3000
$Comp
L My_library:8P8C_Shielded J6
U 1 1 600E6543
P 8550 4350
F 0 "J6" H 8150 4450 50  0000 R CNN
F 1 "Motor" H 8200 4350 50  0000 R CNN
F 2 "Connector_RJ:RJ45_Amphenol_RJHSE5380" V 8550 4375 50  0001 C CNN
F 3 "~" V 8550 4375 50  0001 C CNN
	1    8550 4350
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x10_Male J9
U 1 1 600FA13A
P 3900 5400
F 0 "J9" H 4008 5981 50  0000 C CNN
F 1 "2.54 pin" H 4008 5890 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x05_P2.54mm_Vertical" H 3900 5400 50  0001 C CNN
F 3 "~" H 3900 5400 50  0001 C CNN
	1    3900 5400
	0    -1   1    0   
$EndComp
Text Notes 3050 5800 0    118  ~ 24
Jtag
NoConn ~ 4850 3550
NoConn ~ 4750 3550
Wire Wire Line
	3450 3550 3450 3650
Wire Wire Line
	3450 3650 3200 3650
Wire Wire Line
	3200 3650 3200 4450
Wire Wire Line
	3200 4450 3400 4450
Wire Wire Line
	3400 4750 3400 4950
Connection ~ 3400 4750
Wire Wire Line
	3400 4650 3400 4750
Wire Wire Line
	3400 4550 3400 4650
Connection ~ 3400 4650
$Comp
L Transistor_Array:ULN2002 U1
U 1 1 5FF8EFB7
P 3800 4350
F 0 "U1" H 3950 5000 50  0000 C CNN
F 1 "ULN2002" H 3950 4900 50  0000 C CNN
F 2 "Package_SO:SO-16_3.9x9.9mm_P1.27mm" H 3850 3800 50  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/uln2003a.pdf" H 3900 4150 50  0001 C CNN
	1    3800 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	4200 4450 4550 4450
Wire Wire Line
	4550 4450 4550 3700
Wire Wire Line
	4550 3700 4150 3700
Wire Wire Line
	4150 3700 4150 3550
Wire Wire Line
	3950 3550 3950 3600
Wire Wire Line
	3950 3600 4550 3600
Wire Wire Line
	4550 3600 4550 3550
Wire Wire Line
	4550 3600 4700 3600
Wire Wire Line
	4700 3600 4700 4950
Wire Wire Line
	4700 4950 3800 4950
Connection ~ 4550 3600
Connection ~ 3800 4950
$Comp
L Device:R_US R7
U 1 1 601384CF
P 5300 2200
AR Path="/601384CF" Ref="R7"  Part="1" 
AR Path="/61469ABE/601384CF" Ref="R?"  Part="1" 
F 0 "R7" V 5095 2200 50  0000 C CNN
F 1 "10k" V 5186 2200 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 5340 2190 50  0001 C CNN
F 3 "~" H 5300 2200 50  0001 C CNN
	1    5300 2200
	0    -1   -1   0   
$EndComp
NoConn ~ 5450 2300
Wire Wire Line
	3250 1450 3500 1450
Connection ~ 3250 1450
Connection ~ 3850 1450
Wire Wire Line
	3500 1650 3500 1450
Connection ~ 3500 1450
Wire Wire Line
	3500 1450 3650 1450
Wire Wire Line
	5450 1450 5450 1800
$Comp
L Device:R_US R2
U 1 1 601F274B
P 5300 1800
AR Path="/601F274B" Ref="R2"  Part="1" 
AR Path="/61469ABE/601F274B" Ref="R?"  Part="1" 
F 0 "R2" V 5200 1800 50  0000 C CNN
F 1 "1k" V 5400 1800 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 5340 1790 50  0001 C CNN
F 3 "~" H 5300 1800 50  0001 C CNN
	1    5300 1800
	0    -1   -1   0   
$EndComp
Connection ~ 5150 1800
Wire Wire Line
	5150 1800 5150 2200
Connection ~ 5450 1800
Wire Wire Line
	3000 1600 4800 1600
Wire Wire Line
	4800 1600 4800 1650
Wire Wire Line
	4800 1650 5150 1650
Wire Wire Line
	3000 1600 3000 1800
Connection ~ 5150 1650
Text Notes 5800 2800 0    39   ~ 0
15v
Text Notes 5800 2900 0    39   ~ 0
gnd
Text Notes 5700 1800 0    39   ~ 0
gnd
$Comp
L Device:R_POT_TRIM_US RV1
U 1 1 60201FC2
P 3500 1800
F 0 "RV1" H 3433 1846 50  0000 R CNN
F 1 "20K" H 3433 1755 50  0000 R CNN
F 2 "Potentiometer_THT:Potentiometer_Bourns_3339S_Horizontal" H 3500 1800 50  0001 C CNN
F 3 "~" H 3500 1800 50  0001 C CNN
	1    3500 1800
	1    0    0    -1  
$EndComp
Connection ~ 3500 1950
Wire Wire Line
	3650 1800 3650 1450
Connection ~ 3650 1450
Wire Wire Line
	3650 1450 3850 1450
$Comp
L My_library:8P8C_Shielded J8
U 1 1 6023A990
P 3800 6700
F 0 "J8" H 3600 7250 50  0000 R CNN
F 1 "Torch" H 3650 7350 50  0000 R CNN
F 2 "Modules:RJ45_Torb_Vertical" V 3800 6725 50  0001 C CNN
F 3 "~" V 3800 6725 50  0001 C CNN
	1    3800 6700
	0    1    -1   0   
$EndComp
Wire Wire Line
	3500 5600 3500 5700
Wire Wire Line
	3500 5700 4950 5700
Wire Wire Line
	4600 5800 4600 5900
Wire Wire Line
	4600 5900 4950 5900
Wire Wire Line
	4550 5750 4550 5500
Wire Wire Line
	4550 5500 4800 5500
Wire Wire Line
	3800 5600 3800 5850
Wire Wire Line
	3800 5850 4100 5850
Wire Wire Line
	4550 5850 4550 6300
Wire Wire Line
	4550 6300 4950 6300
Wire Wire Line
	4000 5600 4000 5900
Wire Wire Line
	4000 5900 4500 5900
Wire Wire Line
	4500 5900 4500 6400
Wire Wire Line
	4500 6400 4950 6400
Wire Wire Line
	4200 5600 4200 5950
Wire Wire Line
	4200 5950 4450 5950
Wire Wire Line
	4450 5950 4450 6500
Wire Wire Line
	4450 6500 4950 6500
Wire Wire Line
	4400 6700 4400 6600
Wire Wire Line
	4400 6600 4800 6600
Wire Wire Line
	4750 5650 3450 5650
Wire Wire Line
	3450 5650 3450 5950
Wire Wire Line
	3450 5950 3500 5950
Wire Wire Line
	3500 5950 3500 6300
Wire Notes Line
	3000 5300 3000 7100
Wire Wire Line
	4200 6300 4400 6300
Wire Wire Line
	4400 6300 4400 6600
Connection ~ 4400 6600
Wire Wire Line
	3300 6700 3300 6600
Wire Wire Line
	3300 6600 4400 6600
Wire Notes Line
	5550 5300 5550 7100
Wire Notes Line
	3000 5300 5550 5300
Wire Notes Line
	3000 7100 5550 7100
$Comp
L Connector:Conn_01x12_Male J?
U 1 1 600F49D0
P 5150 6000
AR Path="/61469ABE/600F49D0" Ref="J?"  Part="1" 
AR Path="/600F49D0" Ref="J10"  Part="1" 
F 0 "J10" H 5100 6450 50  0000 R CNN
F 1 "Module conn" V 5050 6100 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x12_P2.54mm_Vertical" H 5150 6000 50  0001 C CNN
F 3 "~" H 5150 6000 50  0001 C CNN
	1    5150 6000
	-1   0    0    -1  
$EndComp
Wire Wire Line
	4750 5650 4750 5600
Wire Wire Line
	4750 5600 4950 5600
Wire Wire Line
	4950 5800 4650 5800
Wire Wire Line
	4650 5800 4650 6000
Wire Wire Line
	4650 6000 3600 6000
Wire Wire Line
	3600 6000 3600 6300
Wire Wire Line
	3700 5800 3700 6300
Wire Wire Line
	4950 6000 4700 6000
Wire Wire Line
	4700 6000 4700 6050
Wire Wire Line
	4700 6050 3800 6050
Wire Wire Line
	3800 6050 3800 6300
Wire Wire Line
	4950 6100 3900 6100
Wire Wire Line
	3900 6100 3900 6300
Wire Wire Line
	4950 6200 4000 6200
Wire Wire Line
	4000 6200 4000 6300
Wire Wire Line
	4100 5850 4100 6300
Connection ~ 4100 5850
Wire Wire Line
	4100 5850 4550 5850
NoConn ~ 4400 5600
NoConn ~ 4100 5600
Wire Wire Line
	4800 6600 4800 5500
Connection ~ 4800 6600
Wire Wire Line
	4800 6600 4950 6600
Connection ~ 4800 5500
Wire Wire Line
	4800 5500 4950 5500
Wire Notes Line
	2100 1250 6400 1250
Wire Wire Line
	3700 5800 4600 5800
Wire Wire Line
	4300 5600 4300 5750
Connection ~ 4300 5750
Wire Wire Line
	4300 5750 4550 5750
Wire Wire Line
	3900 5600 3900 5750
Connection ~ 3900 5750
Wire Wire Line
	3900 5750 4300 5750
Wire Wire Line
	3700 5600 3700 5750
Wire Wire Line
	3700 5750 3900 5750
Wire Wire Line
	4000 6200 4000 5950
Wire Wire Line
	4000 5950 3600 5950
Wire Wire Line
	3600 5600 3600 5950
Connection ~ 4000 6200
Text Notes 4650 7050 0    118  ~ 24
   &\nExtra IO
$EndSCHEMATC
