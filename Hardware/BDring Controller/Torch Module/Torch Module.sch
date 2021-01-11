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
	2400 1850 6700 1850
Wire Notes Line
	6700 3800 6700 1850
Text Notes 5050 3750 0    118  ~ 24
Module#3 Torch
Wire Notes Line
	2400 1850 2400 3800
Connection ~ 5450 2400
Wire Wire Line
	3300 2150 3300 2400
Wire Wire Line
	5300 2150 3300 2150
Wire Wire Line
	5300 2400 5300 2150
Wire Wire Line
	5450 2400 5300 2400
Wire Wire Line
	3300 2700 3200 2700
Connection ~ 5750 2900
Wire Wire Line
	5750 2800 5750 2900
Wire Wire Line
	5450 2400 5450 2900
Wire Wire Line
	5450 2200 5750 2200
Connection ~ 5450 2200
Wire Wire Line
	5750 2500 5200 2500
Wire Wire Line
	5200 2750 5150 2750
Wire Wire Line
	5200 2500 5200 2750
Connection ~ 4850 2750
Wire Wire Line
	4850 2200 5250 2200
Wire Wire Line
	5150 2600 5750 2600
Wire Wire Line
	5150 2350 5150 2600
Text Notes 6400 2639 2    39   ~ 0
Torch IO 17
Connection ~ 5750 2200
Wire Wire Line
	5750 2200 5750 2400
Connection ~ 4850 2200
Connection ~ 4200 3600
Wire Wire Line
	3250 2800 3200 2800
Wire Wire Line
	3250 3650 3250 2800
Wire Wire Line
	4200 3650 3250 3650
Wire Wire Line
	4200 3600 4200 3650
Text Notes 6400 2789 2    39   ~ 0
TorchIO 22
Text Notes 6400 2889 2    39   ~ 0
Grbl IO27
Wire Wire Line
	4400 2550 4150 2550
Wire Wire Line
	4400 2350 5150 2350
Wire Wire Line
	4400 2550 4400 2350
Wire Wire Line
	4850 2200 4550 2200
Wire Wire Line
	4850 2450 4850 2200
Connection ~ 4550 2200
Wire Wire Line
	4550 2200 4150 2200
Wire Wire Line
	4550 2200 4550 2550
Wire Wire Line
	3550 2900 3550 2200
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
$Comp
L power:GND #PWR?
U 1 1 61A672B0
P 5750 2200
AR Path="/61469ABE/61A672B0" Ref="#PWR?"  Part="1" 
AR Path="/61A672B0" Ref="#PWR01"  Part="1" 
F 0 "#PWR01" H 5750 1950 50  0001 C CNN
F 1 "GND" H 5755 2027 50  0000 C CNN
F 2 "" H 5750 2200 50  0001 C CNN
F 3 "" H 5750 2200 50  0001 C CNN
	1    5750 2200
	-1   0    0    1   
$EndComp
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
	3400 3300 3200 3300
Wire Wire Line
	3400 3000 3400 3300
Wire Wire Line
	3800 3000 3400 3000
Wire Wire Line
	3200 3600 3200 3400
Wire Wire Line
	3700 3600 3200 3600
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
L Device:R_US R7
U 1 1 61A67291
P 5600 2900
AR Path="/61A67291" Ref="R7"  Part="1" 
AR Path="/61469ABE/61A67291" Ref="R?"  Part="1" 
F 0 "R7" V 5395 2900 50  0000 C CNN
F 1 "10k" V 5486 2900 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 5640 2890 50  0001 C CNN
F 3 "~" H 5600 2900 50  0001 C CNN
	1    5600 2900
	0    -1   -1   0   
$EndComp
$Comp
L Device:R_US R1
U 1 1 61A6728B
P 3300 2550
AR Path="/61A6728B" Ref="R1"  Part="1" 
AR Path="/61469ABE/61A6728B" Ref="R?"  Part="1" 
F 0 "R1" V 3095 2550 50  0000 C CNN
F 1 "10k" V 3186 2550 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 3340 2540 50  0001 C CNN
F 3 "~" H 3300 2550 50  0001 C CNN
	1    3300 2550
	-1   0    0    1   
$EndComp
$Comp
L Device:C_Small C2
U 1 1 61A67285
P 5450 2300
AR Path="/61A67285" Ref="C2"  Part="1" 
AR Path="/61469ABE/61A67285" Ref="C?"  Part="1" 
F 0 "C2" H 5358 2254 50  0000 R CNN
F 1 ".1uf" H 5358 2345 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 5450 2300 50  0001 C CNN
F 3 "~" H 5450 2300 50  0001 C CNN
	1    5450 2300
	-1   0    0    -1  
$EndComp
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
Connection ~ 4150 2200
Connection ~ 4150 2550
Wire Wire Line
	3550 2200 3800 2200
Connection ~ 3800 2550
Wire Wire Line
	3800 2500 3800 2550
Wire Wire Line
	3850 2550 3800 2550
Wire Wire Line
	4150 2450 4150 2550
Connection ~ 3800 2200
Wire Wire Line
	4150 2200 4150 2250
Wire Wire Line
	3800 2200 4150 2200
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
L Device:R_US R2
U 1 1 61A67251
P 3800 2350
AR Path="/61A67251" Ref="R2"  Part="1" 
AR Path="/61469ABE/61A67251" Ref="R?"  Part="1" 
F 0 "R2" H 3600 2450 50  0000 L CNN
F 1 "1k" H 3600 2350 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 3840 2340 50  0001 C CNN
F 3 "~" H 3800 2350 50  0001 C CNN
	1    3800 2350
	1    0    0    1   
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
$Comp
L Connector:RJ45 J1
U 1 1 61A67245
P 2800 3100
AR Path="/61A67245" Ref="J1"  Part="1" 
AR Path="/61469ABE/61A67245" Ref="J?"  Part="1" 
F 0 "J1" H 2857 3767 50  0000 C CNN
F 1 "Torch" H 2857 3676 50  0000 C CNN
F 2 "Connector_RJ:RJ45_OST_PJ012-8P8CX_Vertical" V 2800 3125 50  0001 C CNN
F 3 "~" V 2800 3125 50  0001 C CNN
	1    2800 3100
	1    0    0    -1  
$EndComp
NoConn ~ 5750 2700
NoConn ~ 5750 3000
NoConn ~ 5750 3100
NoConn ~ 5750 3200
NoConn ~ 5750 3300
NoConn ~ 3200 2900
NoConn ~ 3200 3000
NoConn ~ 3900 3600
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
$Comp
L Device:C_Small C3
U 1 1 5FF90392
P 5050 5450
AR Path="/5FF90392" Ref="C3"  Part="1" 
AR Path="/61469ABE/5FF90392" Ref="C?"  Part="1" 
F 0 "C3" H 4958 5404 50  0000 R CNN
F 1 "1uf" H 4958 5495 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 5050 5450 50  0001 C CNN
F 3 "~" H 5050 5450 50  0001 C CNN
	1    5050 5450
	-1   0    0    1   
$EndComp
$Comp
L Device:R_US R8
U 1 1 5FF9039C
P 4900 5200
AR Path="/5FF9039C" Ref="R8"  Part="1" 
AR Path="/61469ABE/5FF9039C" Ref="R?"  Part="1" 
F 0 "R8" V 4700 5300 50  0000 C CNN
F 1 "10k" V 4800 5250 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 4940 5190 50  0001 C CNN
F 3 "~" H 4900 5200 50  0001 C CNN
	1    4900 5200
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R9
U 1 1 5FF903A6
P 4750 5350
AR Path="/5FF903A6" Ref="R9"  Part="1" 
AR Path="/61469ABE/5FF903A6" Ref="R?"  Part="1" 
F 0 "R9" H 4600 5400 50  0000 L CNN
F 1 "1k" H 4600 5300 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 4790 5340 50  0001 C CNN
F 3 "~" H 4750 5350 50  0001 C CNN
	1    4750 5350
	-1   0    0    1   
$EndComp
$Comp
L Device:R_US R10
U 1 1 5FF903B0
P 4750 5050
AR Path="/5FF903B0" Ref="R10"  Part="1" 
AR Path="/61469ABE/5FF903B0" Ref="R?"  Part="1" 
F 0 "R10" V 4950 5150 50  0000 R CNN
F 1 "3.3k" V 4850 5150 50  0000 R CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 4790 5040 50  0001 C CNN
F 3 "~" H 4750 5050 50  0001 C CNN
	1    4750 5050
	-1   0    0    -1  
$EndComp
Wire Wire Line
	5050 5350 5050 5200
Wire Wire Line
	4100 5550 4750 5550
Wire Wire Line
	4750 5550 4750 5500
Wire Wire Line
	4750 5550 5050 5550
Connection ~ 4750 5550
NoConn ~ 4500 5350
NoConn ~ 4500 5250
NoConn ~ 4500 5150
NoConn ~ 4500 5050
Wire Wire Line
	5750 3500 5250 3500
Wire Wire Line
	5250 3500 5250 2200
Connection ~ 5250 2200
Wire Wire Line
	5250 2200 5450 2200
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
Connection ~ 4750 5200
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
	5050 5200 5050 4150
Connection ~ 5050 5200
Wire Wire Line
	5150 4150 5050 4150
Connection ~ 5050 4150
Wire Wire Line
	4450 4150 4450 4300
Wire Wire Line
	4450 4300 4850 4300
Wire Wire Line
	4850 4300 4850 4900
Wire Wire Line
	4850 4900 4750 4900
Wire Wire Line
	3700 5050 3700 5150
Wire Wire Line
	3700 5150 3700 5250
Connection ~ 3700 5150
Wire Wire Line
	3700 5250 3700 5350
Connection ~ 3700 5250
Wire Wire Line
	3700 5350 3700 5550
Wire Wire Line
	3700 5550 4100 5550
Connection ~ 3700 5350
Connection ~ 4100 5550
Wire Wire Line
	4500 4950 4550 4950
Wire Wire Line
	4550 4950 4550 4150
NoConn ~ 4850 4150
NoConn ~ 4350 4150
NoConn ~ 4250 4150
NoConn ~ 3950 4150
NoConn ~ 3850 4150
NoConn ~ 3750 4150
NoConn ~ 3650 4150
NoConn ~ 3550 4150
$EndSCHEMATC
