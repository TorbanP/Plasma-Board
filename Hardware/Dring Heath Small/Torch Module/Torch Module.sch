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
	2400 3800 6700 3800
Wire Notes Line
	6700 3800 6700 1850
Text Notes 5050 3750 0    118  ~ 24
Module#3 Torch
Wire Notes Line
	2400 1850 2400 3800
Wire Wire Line
	3300 2700 3200 2700
Wire Wire Line
	5450 2250 5450 2400
Wire Wire Line
	5450 2050 5750 2050
Connection ~ 5450 2050
Wire Wire Line
	5750 2500 5200 2500
Wire Wire Line
	5200 2750 5150 2750
Wire Wire Line
	5200 2500 5200 2750
Connection ~ 4850 2750
Wire Wire Line
	4850 2050 5250 2050
Wire Wire Line
	5150 2600 5750 2600
Wire Wire Line
	5150 2350 5150 2600
Text Notes 6500 2600 2    39   ~ 0
Torch IO 36 THC
Connection ~ 4850 2050
Wire Wire Line
	3250 2800 3200 2800
Wire Wire Line
	3250 3650 3250 2800
Wire Wire Line
	4200 3650 3250 3650
Wire Wire Line
	4200 3600 4200 3650
Text Notes 6550 2800 2    39   ~ 0
TorchIO 22 Ready
Wire Wire Line
	4400 2550 4150 2550
Wire Wire Line
	4400 2350 5150 2350
Wire Wire Line
	4400 2550 4400 2350
Wire Wire Line
	4850 2050 4550 2050
Wire Wire Line
	4850 2450 4850 2050
Connection ~ 4550 2050
Wire Wire Line
	4550 2050 4150 2050
Wire Wire Line
	4550 2050 4550 2550
Wire Wire Line
	3550 2900 3550 2050
Wire Wire Line
	3300 2900 3550 2900
Wire Wire Line
	3300 3200 3300 2900
Wire Wire Line
	3200 3200 3300 3200
Wire Wire Line
	3350 3100 3200 3100
Wire Wire Line
	3350 2950 3350 3100
Wire Wire Line
	3750 2950 3350 2950
Wire Wire Line
	3750 2850 3750 2950
Wire Wire Line
	3750 2850 3800 2850
Connection ~ 4550 2950
Wire Wire Line
	4550 2950 4200 2950
Wire Wire Line
	4550 3150 4550 2950
Wire Wire Line
	4550 3600 4200 3600
Connection ~ 4550 3600
Wire Wire Line
	4550 3450 4550 3600
$Comp
L Device:D D?
U 1 1 61A672A6
P 4550 3300
AR Path="/61469ABE/61A672A6" Ref="D?"  Part="1" 
AR Path="/61A672A6" Ref="D1"  Part="1" 
F 0 "D1" V 4504 3380 50  0000 L CNN
F 1 "D" V 4595 3380 50  0000 L CNN
F 2 "Diode_SMD:D_SOD-123" H 4550 3300 50  0001 C CNN
F 3 "~" H 4550 3300 50  0001 C CNN
	1    4550 3300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4200 2950 4200 3000
Wire Wire Line
	4800 3600 4550 3600
Wire Wire Line
	4800 3400 4800 3600
Wire Wire Line
	5750 3400 4800 3400
$Comp
L Device:R_US R6
U 1 1 61A67297
P 5000 2750
AR Path="/61A67297" Ref="R6"  Part="1" 
AR Path="/61469ABE/61A67297" Ref="R?"  Part="1" 
F 0 "R6" V 4795 2750 50  0000 C CNN
F 1 "10k" V 4886 2750 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 5040 2740 50  0001 C CNN
F 3 "~" H 5000 2750 50  0001 C CNN
	1    5000 2750
	0    1    -1   0   
$EndComp
$Comp
L Device:R_US R1
U 1 1 61A6728B
P 3300 2550
AR Path="/61A6728B" Ref="R1"  Part="1" 
AR Path="/61469ABE/61A6728B" Ref="R?"  Part="1" 
F 0 "R1" V 3095 2550 50  0000 C CNN
F 1 "3.3K" V 3186 2550 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 3340 2540 50  0001 C CNN
F 3 "~" H 3300 2550 50  0001 C CNN
	1    3300 2550
	-1   0    0    1   
$EndComp
$Comp
L Device:C_Small C2
U 1 1 61A67285
P 5450 2150
AR Path="/61A67285" Ref="C2"  Part="1" 
AR Path="/61469ABE/61A67285" Ref="C?"  Part="1" 
F 0 "C2" H 5358 2104 50  0000 R CNN
F 1 "1uf" H 5358 2195 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 5450 2150 50  0001 C CNN
F 3 "~" H 5450 2150 50  0001 C CNN
	1    5450 2150
	-1   0    0    -1  
$EndComp
$Comp
L Device:R_US R5
U 1 1 61A67279
P 4850 2600
AR Path="/61A67279" Ref="R5"  Part="1" 
AR Path="/61469ABE/61A67279" Ref="R?"  Part="1" 
F 0 "R5" V 4645 2600 50  0000 C CNN
F 1 "10k" V 4736 2600 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 4890 2590 50  0001 C CNN
F 3 "~" H 4850 2600 50  0001 C CNN
	1    4850 2600
	-1   0    0    1   
$EndComp
$Comp
L Transistor_FET:AO3400A Q?
U 1 1 61A67273
P 4650 2750
AR Path="/61469ABE/61A67273" Ref="Q?"  Part="1" 
AR Path="/61A67273" Ref="Q1"  Part="1" 
F 0 "Q1" H 4855 2796 50  0000 L CNN
F 1 "AO3400A" H 4855 2705 50  0000 L CNN
F 2 "Package_TO_SOT_SMD:SOT-23" H 4850 2675 50  0001 L CIN
F 3 "http://www.aosmd.com/pdfs/datasheet/AO3400A.pdf" H 4650 2750 50  0001 L CNN
	1    4650 2750
	-1   0    0    1   
$EndComp
$Comp
L Connector:Conn_01x12_Male J?
U 1 1 61A6726D
P 5950 3000
AR Path="/61469ABE/61A6726D" Ref="J?"  Part="1" 
AR Path="/61A6726D" Ref="J2"  Part="1" 
F 0 "J2" H 5900 3450 50  0000 R CNN
F 1 "Module3" V 5900 3300 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x12_P2.54mm_Vertical" H 5950 3000 50  0001 C CNN
F 3 "~" H 5950 3000 50  0001 C CNN
	1    5950 3000
	-1   0    0    1   
$EndComp
Connection ~ 4150 2550
Wire Wire Line
	3850 2550 3800 2550
Wire Wire Line
	4150 2450 4150 2550
Wire Wire Line
	4150 2050 4150 2250
$Comp
L Device:C_Small C1
U 1 1 61A6725D
P 4150 2350
AR Path="/61A6725D" Ref="C1"  Part="1" 
AR Path="/61469ABE/61A6725D" Ref="C?"  Part="1" 
F 0 "C1" H 4058 2304 50  0000 R CNN
F 1 "1uf" H 4058 2395 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 4150 2350 50  0001 C CNN
F 3 "~" H 4150 2350 50  0001 C CNN
	1    4150 2350
	-1   0    0    -1  
$EndComp
$Comp
L Device:R_US R4
U 1 1 61A67257
P 4000 2550
AR Path="/61A67257" Ref="R4"  Part="1" 
AR Path="/61469ABE/61A67257" Ref="R?"  Part="1" 
F 0 "R4" V 3795 2550 50  0000 C CNN
F 1 "10k" V 3886 2550 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 4040 2540 50  0001 C CNN
F 3 "~" H 4000 2550 50  0001 C CNN
	1    4000 2550
	0    1    -1   0   
$EndComp
$Comp
L Device:R_US R3
U 1 1 61A6724B
P 3800 2700
AR Path="/61A6724B" Ref="R3"  Part="1" 
AR Path="/61469ABE/61A6724B" Ref="R?"  Part="1" 
F 0 "R3" H 4000 2800 50  0000 R CNN
F 1 "3.3k" H 4000 2650 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 3840 2690 50  0001 C CNN
F 3 "~" H 3800 2700 50  0001 C CNN
	1    3800 2700
	-1   0    0    1   
$EndComp
NoConn ~ 5750 3000
NoConn ~ 5750 3100
NoConn ~ 5750 3300
NoConn ~ 3200 2900
NoConn ~ 3200 3000
NoConn ~ 3900 3600
NoConn ~ 4500 5350
NoConn ~ 4500 5250
NoConn ~ 4500 5150
Wire Wire Line
	5750 3500 5250 3500
Wire Wire Line
	5250 3500 5250 2050
Connection ~ 5250 2050
Wire Wire Line
	5250 2050 5450 2050
Wire Notes Line
	2650 3900 6000 3900
Wire Notes Line
	6000 3900 6000 5800
Wire Notes Line
	6000 5800 2650 5800
Wire Notes Line
	2650 5800 2650 3900
Text Notes 2750 5750 0    118  ~ 24
Clearpath Driver
$Comp
L Connector:Conn_01x18_Male J3
U 1 1 5FFFC856
P 4250 3950
F 0 "J3" H 4358 4931 50  0000 C CNN
F 1 "Conn_01x18_Male" H 4358 4840 50  0000 C CNN
F 2 "Modules:ClearpathDriver" H 4250 3950 50  0001 C CNN
F 3 "~" H 4250 3950 50  0001 C CNN
	1    4250 3950
	0    -1   1    0   
$EndComp
Wire Wire Line
	3450 4150 3450 4750
Wire Wire Line
	3450 4750 3700 4750
Wire Wire Line
	4500 4550 4950 4550
Wire Wire Line
	4950 4550 4950 4150
Wire Wire Line
	4500 4750 4750 4750
Wire Wire Line
	4750 4750 4750 4150
Wire Wire Line
	4650 4150 4650 4850
Wire Wire Line
	4650 4850 4500 4850
Wire Wire Line
	4150 4150 4150 4300
Wire Wire Line
	3550 4300 3550 4950
Wire Wire Line
	3550 4950 3700 4950
Wire Wire Line
	3550 4300 4150 4300
Wire Wire Line
	4050 4150 4050 4350
Wire Wire Line
	4050 4350 3600 4350
Wire Wire Line
	3600 4350 3600 4850
Wire Wire Line
	3600 4850 3700 4850
Wire Wire Line
	3700 5550 4100 5550
Wire Wire Line
	4500 4950 4550 4950
Wire Wire Line
	4550 4950 4550 4150
NoConn ~ 4350 4150
NoConn ~ 3950 4150
NoConn ~ 3850 4150
NoConn ~ 3650 4150
NoConn ~ 3550 4150
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
Text Notes 6000 2500 0    39   ~ 0
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
	5750 3200 5400 3200
Wire Wire Line
	5400 3200 5400 2700
Wire Wire Line
	5400 2700 5750 2700
Text Notes 6050 3200 0    39   ~ 0
GRBL IO26 Handover
Text Notes 6000 2700 0    39   ~ 0
IO 21recieve handover
Wire Wire Line
	3550 2050 2800 2050
Wire Wire Line
	2800 2050 2800 2500
Wire Wire Line
	2800 3600 2800 3700
Wire Wire Line
	2800 3700 4850 3700
Wire Wire Line
	4850 3700 4850 3500
Wire Wire Line
	4850 3500 5250 3500
Connection ~ 5250 3500
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
Connection ~ 4200 3600
$Comp
L Relay:G6E K?
U 1 1 61A6727F
P 4000 3300
AR Path="/61469ABE/61A6727F" Ref="K?"  Part="1" 
AR Path="/61A6727F" Ref="K1"  Part="1" 
F 0 "K1" H 4430 3346 50  0000 L CNN
F 1 "G6E" H 4430 3255 50  0000 L CNN
F 2 "Relay_THT:Relay_SPDT_Omron_G6E" H 5130 3270 50  0001 C CNN
F 3 "https://www.omron.com/ecb/products/pdf/en-g6e.pdf" H 4000 3300 50  0001 C CNN
	1    4000 3300
	-1   0    0    1   
$EndComp
$Comp
L My_library:8P8C_Shielded J1
U 1 1 600A1FE7
P 2800 3100
F 0 "J1" H 2600 3650 50  0000 R CNN
F 1 "Torch" H 2650 3750 50  0000 R CNN
F 2 "Modules:RJ45_Torb_Vertical" V 2800 3125 50  0001 C CNN
F 3 "~" V 2800 3125 50  0001 C CNN
	1    2800 3100
	1    0    0    -1  
$EndComp
Wire Wire Line
	3200 3400 3400 3400
Wire Wire Line
	3400 3400 3400 3000
Wire Wire Line
	3400 3000 3800 3000
Wire Wire Line
	3200 3300 3300 3300
Wire Wire Line
	3300 3300 3300 3600
Wire Wire Line
	3300 3600 3700 3600
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
P 4200 6000
F 0 "J9" H 4308 6581 50  0000 C CNN
F 1 "2.54 pin" H 4308 6490 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x05_P2.54mm_Vertical" H 4200 6000 50  0001 C CNN
F 3 "~" H 4200 6000 50  0001 C CNN
	1    4200 6000
	0    -1   1    0   
$EndComp
Text Notes 3350 6400 0    118  ~ 24
Jtag
NoConn ~ 5150 4150
NoConn ~ 5050 4150
Wire Wire Line
	3750 4150 3750 4250
Wire Wire Line
	3750 4250 3500 4250
Wire Wire Line
	3500 4250 3500 5050
Wire Wire Line
	3500 5050 3700 5050
Wire Wire Line
	3700 5350 3700 5550
Connection ~ 3700 5350
Wire Wire Line
	3700 5250 3700 5350
Wire Wire Line
	3700 5150 3700 5250
Connection ~ 3700 5250
$Comp
L Transistor_Array:ULN2002 U1
U 1 1 5FF8EFB7
P 4100 4950
F 0 "U1" H 4250 5600 50  0000 C CNN
F 1 "ULN2002" H 4250 5500 50  0000 C CNN
F 2 "Package_SO:SO-16_3.9x9.9mm_P1.27mm" H 4150 4400 50  0001 L CNN
F 3 "http://www.ti.com/lit/ds/symlink/uln2003a.pdf" H 4200 4750 50  0001 C CNN
	1    4100 4950
	1    0    0    -1  
$EndComp
Wire Wire Line
	4500 5050 4850 5050
Wire Wire Line
	4850 5050 4850 4300
Wire Wire Line
	4850 4300 4450 4300
Wire Wire Line
	4450 4300 4450 4150
Wire Wire Line
	4250 4150 4250 4200
Wire Wire Line
	4250 4200 4850 4200
Wire Wire Line
	4850 4200 4850 4150
Wire Wire Line
	4850 4200 5000 4200
Wire Wire Line
	5000 4200 5000 5550
Wire Wire Line
	5000 5550 4100 5550
Connection ~ 4850 4200
Connection ~ 4100 5550
$Comp
L Device:R_US R7
U 1 1 601384CF
P 5600 2800
AR Path="/601384CF" Ref="R7"  Part="1" 
AR Path="/61469ABE/601384CF" Ref="R?"  Part="1" 
F 0 "R7" V 5395 2800 50  0000 C CNN
F 1 "10k" V 5486 2800 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 5640 2790 50  0001 C CNN
F 3 "~" H 5600 2800 50  0001 C CNN
	1    5600 2800
	0    -1   -1   0   
$EndComp
NoConn ~ 5750 2900
Wire Wire Line
	3550 2050 3800 2050
Connection ~ 3550 2050
Connection ~ 4150 2050
Wire Wire Line
	3800 2250 3800 2050
Connection ~ 3800 2050
Wire Wire Line
	3800 2050 3950 2050
Wire Wire Line
	5750 2050 5750 2400
$Comp
L Device:R_US R2
U 1 1 601F274B
P 5600 2400
AR Path="/601F274B" Ref="R2"  Part="1" 
AR Path="/61469ABE/601F274B" Ref="R?"  Part="1" 
F 0 "R2" V 5500 2400 50  0000 C CNN
F 1 "1k" V 5700 2400 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 5640 2390 50  0001 C CNN
F 3 "~" H 5600 2400 50  0001 C CNN
	1    5600 2400
	0    -1   -1   0   
$EndComp
Connection ~ 5450 2400
Wire Wire Line
	5450 2400 5450 2800
Connection ~ 5750 2400
Wire Wire Line
	3300 2200 5100 2200
Wire Wire Line
	5100 2200 5100 2250
Wire Wire Line
	5100 2250 5450 2250
Wire Wire Line
	3300 2200 3300 2400
Connection ~ 5450 2250
Text Notes 6100 3400 0    39   ~ 0
15v
Text Notes 6100 3500 0    39   ~ 0
gnd
Text Notes 6000 2400 0    39   ~ 0
gnd
$Comp
L Device:R_POT_TRIM_US RV1
U 1 1 60201FC2
P 3800 2400
F 0 "RV1" H 3733 2446 50  0000 R CNN
F 1 "20K" H 3733 2355 50  0000 R CNN
F 2 "Potentiometer_THT:Potentiometer_Bourns_3339S_Horizontal" H 3800 2400 50  0001 C CNN
F 3 "~" H 3800 2400 50  0001 C CNN
	1    3800 2400
	1    0    0    -1  
$EndComp
Connection ~ 3800 2550
Wire Wire Line
	3950 2400 3950 2050
Connection ~ 3950 2050
Wire Wire Line
	3950 2050 4150 2050
$Comp
L My_library:8P8C_Shielded J8
U 1 1 6023A990
P 4100 7300
F 0 "J8" H 3900 7850 50  0000 R CNN
F 1 "Torch" H 3950 7950 50  0000 R CNN
F 2 "Modules:RJ45_Torb_Vertical" V 4100 7325 50  0001 C CNN
F 3 "~" V 4100 7325 50  0001 C CNN
	1    4100 7300
	0    1    -1   0   
$EndComp
Wire Wire Line
	3800 6200 3800 6300
Wire Wire Line
	3800 6300 5250 6300
Wire Wire Line
	4900 6400 4900 6500
Wire Wire Line
	4900 6500 5250 6500
Wire Wire Line
	4850 6350 4850 6100
Wire Wire Line
	4850 6100 5100 6100
Wire Wire Line
	4100 6200 4100 6450
Wire Wire Line
	4100 6450 4400 6450
Wire Wire Line
	4850 6450 4850 6900
Wire Wire Line
	4850 6900 5250 6900
Wire Wire Line
	4300 6200 4300 6500
Wire Wire Line
	4300 6500 4800 6500
Wire Wire Line
	4800 6500 4800 7000
Wire Wire Line
	4800 7000 5250 7000
Wire Wire Line
	4500 6200 4500 6550
Wire Wire Line
	4500 6550 4750 6550
Wire Wire Line
	4750 6550 4750 7100
Wire Wire Line
	4750 7100 5250 7100
Wire Wire Line
	4700 7300 4700 7200
Wire Wire Line
	4700 7200 5100 7200
Wire Wire Line
	5050 6250 3750 6250
Wire Wire Line
	3750 6250 3750 6550
Wire Wire Line
	3750 6550 3800 6550
Wire Wire Line
	3800 6550 3800 6900
Wire Notes Line
	3300 5900 3300 7700
Wire Wire Line
	4500 6900 4700 6900
Wire Wire Line
	4700 6900 4700 7200
Connection ~ 4700 7200
Wire Wire Line
	3600 7300 3600 7200
Wire Wire Line
	3600 7200 4700 7200
Wire Notes Line
	5850 5900 5850 7700
Wire Notes Line
	3300 5900 5850 5900
Wire Notes Line
	3300 7700 5850 7700
$Comp
L Connector:Conn_01x12_Male J?
U 1 1 600F49D0
P 5450 6600
AR Path="/61469ABE/600F49D0" Ref="J?"  Part="1" 
AR Path="/600F49D0" Ref="J10"  Part="1" 
F 0 "J10" H 5400 7050 50  0000 R CNN
F 1 "Module conn" V 5350 6700 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x12_P2.54mm_Vertical" H 5450 6600 50  0001 C CNN
F 3 "~" H 5450 6600 50  0001 C CNN
	1    5450 6600
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5050 6250 5050 6200
Wire Wire Line
	5050 6200 5250 6200
Wire Wire Line
	5250 6400 4950 6400
Wire Wire Line
	4950 6400 4950 6600
Wire Wire Line
	4950 6600 3900 6600
Wire Wire Line
	3900 6600 3900 6900
Wire Wire Line
	4000 6400 4000 6900
Wire Wire Line
	5250 6600 5000 6600
Wire Wire Line
	5000 6600 5000 6650
Wire Wire Line
	5000 6650 4100 6650
Wire Wire Line
	4100 6650 4100 6900
Wire Wire Line
	5250 6700 4200 6700
Wire Wire Line
	4200 6700 4200 6900
Wire Wire Line
	5250 6800 4300 6800
Wire Wire Line
	4300 6800 4300 6900
Wire Wire Line
	4400 6450 4400 6900
Connection ~ 4400 6450
Wire Wire Line
	4400 6450 4850 6450
NoConn ~ 4700 6200
NoConn ~ 4400 6200
Wire Wire Line
	5100 7200 5100 6100
Connection ~ 5100 7200
Wire Wire Line
	5100 7200 5250 7200
Connection ~ 5100 6100
Wire Wire Line
	5100 6100 5250 6100
Wire Notes Line
	2400 1850 6700 1850
Wire Wire Line
	4000 6400 4900 6400
Wire Wire Line
	4600 6200 4600 6350
Connection ~ 4600 6350
Wire Wire Line
	4600 6350 4850 6350
Wire Wire Line
	4200 6200 4200 6350
Connection ~ 4200 6350
Wire Wire Line
	4200 6350 4600 6350
Wire Wire Line
	4000 6200 4000 6350
Wire Wire Line
	4000 6350 4200 6350
Wire Wire Line
	4300 6800 4300 6550
Wire Wire Line
	4300 6550 3900 6550
Wire Wire Line
	3900 6200 3900 6550
Connection ~ 4300 6800
$EndSCHEMATC
