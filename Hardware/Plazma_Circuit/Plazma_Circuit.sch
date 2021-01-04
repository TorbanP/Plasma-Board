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
$Comp
L Connector:RJ45_Shielded J9
U 1 1 5FD849E6
P 9550 2450
F 0 "J9" H 9220 2397 50  0000 R CNN
F 1 "Y1Axis" H 9650 3000 50  0000 R CNN
F 2 "Connector_RJ:RJ45_Amphenol_54602-x08_Horizontal" V 9550 2475 50  0001 C CNN
F 3 "~" V 9550 2475 50  0001 C CNN
	1    9550 2450
	-1   0    0    1   
$EndComp
$Comp
L Connector:RJ45_Shielded J10
U 1 1 5FD85F08
P 9550 3600
F 0 "J10" H 9220 3547 50  0000 R CNN
F 1 "Y2 Axis" H 9700 4150 50  0000 R CNN
F 2 "Connector_RJ:RJ45_Amphenol_54602-x08_Horizontal" V 9550 3625 50  0001 C CNN
F 3 "~" V 9550 3625 50  0001 C CNN
	1    9550 3600
	-1   0    0    1   
$EndComp
$Comp
L Connector:RJ45_Shielded J11
U 1 1 5FD88706
P 9550 4750
F 0 "J11" H 9220 4697 50  0000 R CNN
F 1 "X Axis" H 9650 5300 50  0000 R CNN
F 2 "Connector_RJ:RJ45_Amphenol_54602-x08_Horizontal" V 9550 4775 50  0001 C CNN
F 3 "~" V 9550 4775 50  0001 C CNN
	1    9550 4750
	-1   0    0    1   
$EndComp
$Comp
L Connector:RJ45_Shielded J8
U 1 1 5FD8DF0D
P 9550 1300
F 0 "J8" H 9150 1300 50  0000 L CNN
F 1 "Z Axis" H 9400 1850 50  0000 L CNN
F 2 "Connector_RJ:RJ45_Amphenol_54602-x08_Horizontal" V 9550 1325 50  0001 C CNN
F 3 "~" V 9550 1325 50  0001 C CNN
	1    9550 1300
	-1   0    0    1   
$EndComp
$Comp
L Plazma_Circuit-rescue:DC-DC_BuckAdg-Plazma PS2
U 1 1 5FDBFD38
P 2200 5850
F 0 "PS2" H 2200 6217 50  0000 C CNN
F 1 "DC-DC_BuckAdg" H 2200 6126 50  0000 C CNN
F 2 "Modules:DC-DC_BuckADG" H 1150 5600 50  0001 L CNN
F 3 "https://www.xppower.com/pdfs/SF_IA.pdf" H 3250 5550 50  0001 L CNN
	1    2200 5850
	0    -1   -1   0   
$EndComp
$Comp
L Transistor_Array:MC1413 U4
U 1 1 5FDC545A
P 7350 2200
F 0 "U4" H 7350 2867 50  0000 C CNN
F 1 "MC1413" H 7350 2776 50  0000 C CNN
F 2 "Package_SO:SOIC-16_3.9x9.9mm_P1.27mm" H 7400 1650 50  0001 L CNN
F 3 "http://www.onsemi.com/pub_link/Collateral/MC1413-D.PDF" H 7450 2000 50  0001 C CNN
	1    7350 2200
	1    0    0    -1  
$EndComp
$Comp
L Transistor_Array:MC1413 U5
U 1 1 5FDC59C1
P 7350 4100
F 0 "U5" H 7350 4767 50  0000 C CNN
F 1 "MC1413" H 7350 4676 50  0000 C CNN
F 2 "Package_SO:SOIC-16_3.9x9.9mm_P1.27mm" H 7400 3550 50  0001 L CNN
F 3 "http://www.onsemi.com/pub_link/Collateral/MC1413-D.PDF" H 7450 3900 50  0001 C CNN
	1    7350 4100
	1    0    0    -1  
$EndComp
$Comp
L Plazma_Circuit-rescue:ESP32DevkitV1-Plazma U2
U 1 1 5FDD0ECB
P 4200 3450
F 0 "U2" V 3100 3500 50  0000 L CNN
F 1 "ESP32Master" V 5100 3350 50  0000 L CNN
F 2 "Modules:ESP32DevKitV1" H 4200 3450 50  0001 C CNN
F 3 "" H 4200 3450 50  0001 C CNN
	1    4200 3450
	0    1    1    0   
$EndComp
$Comp
L Plazma_Circuit-rescue:ESP32DevkitV1-Plazma U3
U 1 1 5FDD0D96
P 5600 3450
F 0 "U3" V 4500 3500 50  0000 L CNN
F 1 "ESP32 Torch" V 6500 3300 50  0000 L CNN
F 2 "Modules:ESP32DevKitV1" H 5600 3450 50  0001 C CNN
F 3 "" H 5600 3450 50  0001 C CNN
	1    5600 3450
	0    1    1    0   
$EndComp
$Comp
L Diode:1N4001 D1
U 1 1 5FDD4195
P 1200 6600
F 0 "D1" H 1200 6489 31  0000 C CNN
F 1 "1N4001" H 1200 6726 50  0001 C CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 1200 6425 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88503/1n4001.pdf" H 1200 6600 50  0001 C CNN
	1    1200 6600
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small C1
U 1 1 5FDD56AE
P 1400 5750
F 0 "C1" H 1492 5796 50  0000 L CNN
F 1 ".1uf" H 1492 5705 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 1400 5750 50  0001 C CNN
F 3 "~" H 1400 5750 50  0001 C CNN
	1    1400 5750
	0    -1   -1   0   
$EndComp
$Comp
L Plazma_Circuit-rescue:DC-DC_BuckAdg-Plazma PS1
U 1 1 5FDD74AE
P 2200 4650
F 0 "PS1" H 2200 5017 50  0000 C CNN
F 1 "DC-DC_BuckAdg" H 2200 4926 50  0000 C CNN
F 2 "Modules:DC-DC_BuckADG" H 1150 4400 50  0001 L CNN
F 3 "https://www.xppower.com/pdfs/SF_IA.pdf" H 3250 4350 50  0001 L CNN
	1    2200 4650
	0    -1   -1   0   
$EndComp
$Comp
L Connector:Screw_Terminal_01x02 J1
U 1 1 5FDD88F0
P 1350 7250
F 0 "J1" H 1268 6925 50  0000 C CNN
F 1 "Screw_Terminal_01x02" H 1268 7016 50  0000 C CNN
F 2 "TerminalBlock:TerminalBlock_Altech_AK300-2_P5.00mm" H 1350 7250 50  0001 C CNN
F 3 "~" H 1350 7250 50  0001 C CNN
	1    1350 7250
	0    1    1    0   
$EndComp
$Comp
L Connector:Conn_01x04_Female J5
U 1 1 5FDDA4E9
P 5400 6300
F 0 "J5" V 5246 6448 50  0000 L CNN
F 1 "V to FREQ" V 5500 6100 50  0000 L CNN
F 2 "TerminalBlock:TerminalBlock_Altech_AK300-4_P5.00mm" H 5400 6300 50  0001 C CNN
F 3 "~" H 5400 6300 50  0001 C CNN
	1    5400 6300
	0    1    1    0   
$EndComp
$Comp
L Diode:1N4001 D2
U 1 1 5FDDDA11
P 1350 6600
F 0 "D2" H 1350 6489 31  0000 C CNN
F 1 "1N4001" H 1350 6474 50  0001 C CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 1350 6425 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88503/1n4001.pdf" H 1350 6600 50  0001 C CNN
	1    1350 6600
	0    1    1    0   
$EndComp
$Comp
L Diode:1N4001 D3
U 1 1 5FDDE22E
P 1500 6600
F 0 "D3" H 1500 6711 31  0000 C CNN
F 1 "1N4001" H 1500 6474 50  0001 C CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 1500 6425 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88503/1n4001.pdf" H 1500 6600 50  0001 C CNN
	1    1500 6600
	0    -1   -1   0   
$EndComp
$Comp
L Diode:1N4001 D4
U 1 1 5FDDE74B
P 1650 6600
F 0 "D4" H 1650 6711 31  0000 C CNN
F 1 "1N4001" H 1650 6726 50  0001 C CNN
F 2 "Diode_THT:D_DO-41_SOD81_P10.16mm_Horizontal" H 1650 6425 50  0001 C CNN
F 3 "http://www.vishay.com/docs/88503/1n4001.pdf" H 1650 6600 50  0001 C CNN
	1    1650 6600
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1350 6750 1500 6750
Wire Wire Line
	1200 6750 1200 6850
Wire Wire Line
	1200 6850 1250 6850
Wire Wire Line
	1650 6850 1650 6750
Wire Wire Line
	1250 7050 1250 6850
Connection ~ 1250 6850
Wire Wire Line
	1250 6850 1650 6850
Wire Wire Line
	1350 7050 1350 6750
Wire Wire Line
	1500 6450 1650 6450
Wire Wire Line
	1200 6450 1350 6450
$Comp
L Device:CP1_Small C2
U 1 1 5FDE59CD
P 1400 6200
F 0 "C2" H 1491 6246 50  0000 L CNN
F 1 "470uf" H 1491 6155 50  0000 L CNN
F 2 "Capacitor_SMD:CP_Elec_6.3x5.8" H 1400 6200 50  0001 C CNN
F 3 "~" H 1400 6200 50  0001 C CNN
	1    1400 6200
	0    -1   -1   0   
$EndComp
Connection ~ 1350 6750
Wire Wire Line
	1650 6450 2300 6450
Wire Wire Line
	2300 6450 2300 6250
Connection ~ 1650 6450
$Comp
L power:GND #PWR07
U 1 1 5FDE8FCE
P 2300 6450
F 0 "#PWR07" H 2300 6200 50  0001 C CNN
F 1 "GND" H 2305 6277 50  0000 C CNN
F 2 "" H 2300 6450 50  0001 C CNN
F 3 "" H 2300 6450 50  0001 C CNN
	1    2300 6450
	0    -1   -1   0   
$EndComp
Connection ~ 2300 6450
$Comp
L power:GND #PWR05
U 1 1 5FDE99E8
P 2300 5050
F 0 "#PWR05" H 2300 4800 50  0001 C CNN
F 1 "GND" H 2305 4877 50  0000 C CNN
F 2 "" H 2300 5050 50  0001 C CNN
F 3 "" H 2300 5050 50  0001 C CNN
	1    2300 5050
	0    -1   -1   0   
$EndComp
Wire Wire Line
	1200 6450 1200 6200
Wire Wire Line
	1200 5100 1750 5100
Wire Wire Line
	2100 5100 2100 5050
Connection ~ 1200 6450
Wire Wire Line
	1500 6450 1500 6200
Connection ~ 1500 6450
Wire Wire Line
	1500 6200 1500 5750
Connection ~ 1500 6200
Wire Wire Line
	1300 6200 1200 6200
Connection ~ 1200 6200
Wire Wire Line
	1200 6200 1200 5750
Wire Wire Line
	1300 5750 1200 5750
Connection ~ 1200 5750
Wire Wire Line
	1200 5750 1200 5100
Wire Wire Line
	2100 6250 1750 6250
Wire Wire Line
	1750 6250 1750 5100
Connection ~ 1750 5100
Wire Wire Line
	1750 5100 2100 5100
$Comp
L power:GND #PWR06
U 1 1 5FDECE00
P 2300 5450
F 0 "#PWR06" H 2300 5200 50  0001 C CNN
F 1 "GND" H 2305 5277 50  0000 C CNN
F 2 "" H 2300 5450 50  0001 C CNN
F 3 "" H 2300 5450 50  0001 C CNN
	1    2300 5450
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR04
U 1 1 5FDED796
P 2300 4250
F 0 "#PWR04" H 2300 4000 50  0001 C CNN
F 1 "GND" H 2305 4077 50  0000 C CNN
F 2 "" H 2300 4250 50  0001 C CNN
F 3 "" H 2300 4250 50  0001 C CNN
	1    2300 4250
	0    -1   -1   0   
$EndComp
$Comp
L power:+15V #PWR02
U 1 1 5FDEECC6
P 2100 4250
F 0 "#PWR02" H 2100 4100 50  0001 C CNN
F 1 "+15V" H 2115 4423 50  0000 C CNN
F 2 "" H 2100 4250 50  0001 C CNN
F 3 "" H 2100 4250 50  0001 C CNN
	1    2100 4250
	0    -1   -1   0   
$EndComp
Wire Notes Line
	700  7650 700  4000
Wire Notes Line
	700  4000 2700 4000
Wire Notes Line
	2700 4000 2700 7650
Wire Notes Line
	2700 7650 700  7650
Text Notes 1150 4300 2    118  ~ 24
VCC
$Comp
L power:+5V #PWR03
U 1 1 5FE0761C
P 2100 5450
F 0 "#PWR03" H 2100 5300 50  0001 C CNN
F 1 "+5V" H 2115 5623 50  0000 C CNN
F 2 "" H 2100 5450 50  0001 C CNN
F 3 "" H 2100 5450 50  0001 C CNN
	1    2100 5450
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR016
U 1 1 5FE07DBB
P 4700 2550
F 0 "#PWR016" H 4700 2400 50  0001 C CNN
F 1 "+5V" H 4715 2723 50  0000 C CNN
F 2 "" H 4700 2550 50  0001 C CNN
F 3 "" H 4700 2550 50  0001 C CNN
	1    4700 2550
	1    0    0    -1  
$EndComp
$Comp
L power:+15V #PWR042
U 1 1 5FE10F1C
P 9000 850
F 0 "#PWR042" H 9000 700 50  0001 C CNN
F 1 "+15V" H 9015 1023 50  0000 C CNN
F 2 "" H 9000 850 50  0001 C CNN
F 3 "" H 9000 850 50  0001 C CNN
	1    9000 850 
	1    0    0    -1  
$EndComp
Wire Wire Line
	9000 850  9000 1000
Wire Wire Line
	9000 1400 9150 1400
Wire Wire Line
	9000 1200 9150 1200
Connection ~ 9000 1200
Wire Wire Line
	9000 1200 9000 1400
Wire Wire Line
	9000 1000 9150 1000
Connection ~ 9000 1000
Wire Wire Line
	9000 1000 9000 1200
Wire Wire Line
	9000 1400 9000 1600
Wire Wire Line
	9000 4850 9150 4850
Connection ~ 9000 1400
Wire Wire Line
	9000 4650 9150 4650
Connection ~ 9000 4650
Wire Wire Line
	9000 4650 9000 4850
Wire Wire Line
	9000 4450 9150 4450
Connection ~ 9000 4450
Wire Wire Line
	9000 4450 9000 4650
Wire Wire Line
	9000 3700 9150 3700
Connection ~ 9000 3700
Wire Wire Line
	9000 3700 9000 3900
Wire Wire Line
	9000 3500 9150 3500
Connection ~ 9000 3500
Wire Wire Line
	9000 3500 9000 3700
Wire Wire Line
	9000 3300 9150 3300
Connection ~ 9000 3300
Wire Wire Line
	9000 3300 9000 3500
Wire Wire Line
	9000 2550 9150 2550
Connection ~ 9000 2550
Wire Wire Line
	9000 2550 9000 2750
Wire Wire Line
	9000 2350 9150 2350
Connection ~ 9000 2350
Wire Wire Line
	9000 2350 9000 2550
Wire Wire Line
	9000 2150 9150 2150
Connection ~ 9000 2150
Wire Wire Line
	9000 2150 9000 2350
$Comp
L power:GND #PWR043
U 1 1 5FE503EC
P 9100 4300
F 0 "#PWR043" H 9100 4050 50  0001 C CNN
F 1 "GND" H 9105 4127 50  0000 C CNN
F 2 "" H 9100 4300 50  0001 C CNN
F 3 "" H 9100 4300 50  0001 C CNN
	1    9100 4300
	1    0    0    -1  
$EndComp
Wire Wire Line
	9100 4250 9550 4250
Wire Wire Line
	9100 4300 9100 4250
Wire Wire Line
	9100 800  9550 800 
Wire Wire Line
	9550 1950 9100 1950
Connection ~ 9100 1950
Wire Wire Line
	9100 1950 9100 800 
Wire Wire Line
	9550 3100 9100 3100
Connection ~ 9100 3100
Wire Wire Line
	9100 3100 9100 1950
$Comp
L power:GND #PWR036
U 1 1 5FE5A33E
P 7350 4650
F 0 "#PWR036" H 7350 4400 50  0001 C CNN
F 1 "GND" H 7355 4477 50  0000 C CNN
F 2 "" H 7350 4650 50  0001 C CNN
F 3 "" H 7350 4650 50  0001 C CNN
	1    7350 4650
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR035
U 1 1 5FE5A992
P 7350 2800
F 0 "#PWR035" H 7350 2550 50  0001 C CNN
F 1 "GND" H 7355 2627 50  0000 C CNN
F 2 "" H 7350 2800 50  0001 C CNN
F 3 "" H 7350 2800 50  0001 C CNN
	1    7350 2800
	1    0    0    -1  
$EndComp
$Comp
L power:+15V #PWR038
U 1 1 5FE5AF61
P 7750 1800
F 0 "#PWR038" H 7750 1650 50  0001 C CNN
F 1 "+15V" H 7765 1973 50  0000 C CNN
F 2 "" H 7750 1800 50  0001 C CNN
F 3 "" H 7750 1800 50  0001 C CNN
	1    7750 1800
	1    0    0    -1  
$EndComp
$Comp
L power:+15V #PWR039
U 1 1 5FE5B8BE
P 7750 3700
F 0 "#PWR039" H 7750 3550 50  0001 C CNN
F 1 "+15V" H 7765 3873 50  0000 C CNN
F 2 "" H 7750 3700 50  0001 C CNN
F 3 "" H 7750 3700 50  0001 C CNN
	1    7750 3700
	1    0    0    -1  
$EndComp
Entry Wire Line
	8100 1200 8200 1100
Entry Wire Line
	8100 1600 8200 1500
Entry Wire Line
	8100 1400 8200 1300
Wire Wire Line
	8200 1100 9150 1100
Wire Wire Line
	8200 1300 9150 1300
Wire Wire Line
	8200 1500 9150 1500
Entry Wire Line
	8100 2550 8200 2450
Entry Wire Line
	8100 2750 8200 2650
Entry Wire Line
	8100 3500 8200 3400
Entry Wire Line
	8100 3700 8200 3600
Entry Wire Line
	8100 3900 8200 3800
Entry Wire Line
	8100 4650 8200 4550
Entry Wire Line
	8100 5050 8200 4950
Entry Wire Line
	8100 4850 8200 4750
Wire Wire Line
	8200 4950 9150 4950
Entry Wire Line
	8100 2350 8200 2250
Entry Wire Line
	8000 2000 8100 2100
Entry Wire Line
	8000 2100 8100 2200
Entry Wire Line
	8000 2200 8100 2300
Entry Wire Line
	8000 2300 8100 2400
Entry Wire Line
	8000 2400 8100 2500
Entry Wire Line
	8000 2500 8100 2600
Entry Wire Line
	8000 2600 8100 2700
Entry Wire Line
	8000 3900 8100 4000
Entry Wire Line
	8000 4000 8100 4100
Entry Wire Line
	8000 4100 8100 4200
Entry Wire Line
	8000 4200 8100 4300
Entry Wire Line
	8000 4300 8100 4400
Wire Wire Line
	8200 2250 9150 2250
Wire Wire Line
	8200 2450 9150 2450
Wire Wire Line
	8200 2650 9150 2650
Wire Wire Line
	8200 3400 9150 3400
Wire Wire Line
	8200 3600 9150 3600
Wire Wire Line
	8200 3800 9150 3800
Wire Wire Line
	8200 4550 9150 4550
Wire Wire Line
	8200 4750 9150 4750
Wire Wire Line
	7750 2000 8000 2000
Wire Wire Line
	7750 2100 8000 2100
Wire Wire Line
	7750 2200 8000 2200
Wire Wire Line
	7750 2300 8000 2300
Wire Wire Line
	7750 2400 8000 2400
Wire Wire Line
	7750 2500 8000 2500
Wire Wire Line
	7750 2600 8000 2600
Wire Wire Line
	7750 3900 8000 3900
Wire Wire Line
	7750 4000 8000 4000
Wire Wire Line
	7750 4100 8000 4100
Wire Wire Line
	8000 4300 7750 4300
Wire Wire Line
	7750 4200 8000 4200
Text Label 7750 2000 0    39   ~ 0
ZEN
Text Label 8300 1100 0    59   ~ 0
ZEN
Text Label 8300 1300 0    59   ~ 0
ZSP
Text Label 7750 2100 0    39   ~ 0
ZSP
Text Label 7750 2200 0    39   ~ 0
ZDIR
Text Label 7750 2300 0    39   ~ 0
Y1EN
Text Label 8300 1500 0    39   ~ 0
Y1EN
Text Label 7750 2400 0    39   ~ 0
Y1SP
Text Label 8300 2250 0    39   ~ 0
Y1SP
Text Label 7750 2500 0    39   ~ 0
Y1DIR
Text Label 8300 2450 0    39   ~ 0
Y1DIR
Text Label 7750 2600 0    39   ~ 0
Y2EN
Text Label 8300 2650 0    39   ~ 0
Y1SP
Text Label 8300 3400 0    39   ~ 0
Y2EN
Text Label 7800 3900 0    39   ~ 0
Y2SP
Text Label 8300 3600 0    39   ~ 0
Y2SP
Text Label 8300 3800 0    39   ~ 0
Y2DIR
Text Label 7800 4000 0    39   ~ 0
Y2DIR
Text Label 7800 4100 0    39   ~ 0
XEN
Text Label 8300 4550 0    39   ~ 0
XEN
Text Label 8300 4750 0    39   ~ 0
XSP
Text Label 7800 4200 0    39   ~ 0
XSP
Text Label 7800 4300 0    39   ~ 0
XDIR
Text Label 8300 4950 0    39   ~ 0
XDIR
Connection ~ 9100 4250
Wire Wire Line
	9100 4250 9100 3100
$Comp
L Connector:RJ45_Shielded J4
U 1 1 5FED704E
P 4500 6500
F 0 "J4" H 4550 7100 50  0000 R CNN
F 1 "STOPS" V 4100 6650 50  0000 R CNN
F 2 "Connector_RJ:RJ45_Amphenol_54602-x08_Horizontal" V 4500 6525 50  0001 C CNN
F 3 "~" V 4500 6525 50  0001 C CNN
	1    4500 6500
	0    -1   -1   0   
$EndComp
$Comp
L Connector:RJ45_Shielded J6
U 1 1 5FEDDC6B
P 6300 6500
F 0 "J6" H 6350 7100 50  0000 R CNN
F 1 "TORCH" V 5900 6650 50  0000 R CNN
F 2 "Connector_RJ:RJ45_Amphenol_54602-x08_Horizontal" V 6300 6525 50  0001 C CNN
F 3 "~" V 6300 6525 50  0001 C CNN
	1    6300 6500
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR034
U 1 1 5FEDEF62
P 6800 6500
F 0 "#PWR034" H 6800 6250 50  0001 C CNN
F 1 "GND" H 6805 6327 50  0000 C CNN
F 2 "" H 6800 6500 50  0001 C CNN
F 3 "" H 6800 6500 50  0001 C CNN
	1    6800 6500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR021
U 1 1 5FEDF8F6
P 5000 6500
F 0 "#PWR021" H 5000 6250 50  0001 C CNN
F 1 "GND" H 5005 6327 50  0000 C CNN
F 2 "" H 5000 6500 50  0001 C CNN
F 3 "" H 5000 6500 50  0001 C CNN
	1    5000 6500
	1    0    0    -1  
$EndComp
$Comp
L Relay:FINDER-40.11 K1
U 1 1 5FEEA4EA
P 8200 5700
F 0 "K1" V 7633 5700 50  0000 C CNN
F 1 "TORCH TRIGGER" V 7724 5700 50  0000 C CNN
F 2 "Relay_THT:Relay_DPDT_Omron_G5V-2" H 9340 5660 50  0001 C CNN
F 3 "https://www.finder-relais.net/de/finder-relais-serie-40.pdf" H 8200 5700 50  0001 C CNN
	1    8200 5700
	0    1    1    0   
$EndComp
Wire Wire Line
	7750 4400 7900 4400
Wire Wire Line
	7900 4400 7900 5500
$Comp
L power:+15V #PWR041
U 1 1 5FEF13B3
P 8650 5400
F 0 "#PWR041" H 8650 5250 50  0001 C CNN
F 1 "+15V" H 8665 5573 50  0000 C CNN
F 2 "" H 8650 5400 50  0001 C CNN
F 3 "" H 8650 5400 50  0001 C CNN
	1    8650 5400
	1    0    0    -1  
$EndComp
Wire Wire Line
	8500 5500 8650 5500
Wire Wire Line
	8650 5500 8650 5400
$Comp
L power:GND #PWR032
U 1 1 5FEF768B
P 6500 6100
F 0 "#PWR032" H 6500 5850 50  0001 C CNN
F 1 "GND" H 6505 5927 50  0000 C CNN
F 2 "" H 6500 6100 50  0001 C CNN
F 3 "" H 6500 6100 50  0001 C CNN
	1    6500 6100
	-1   0    0    1   
$EndComp
$Comp
L power:+15V #PWR040
U 1 1 5FEFCF76
P 7800 5800
F 0 "#PWR040" H 7800 5650 50  0001 C CNN
F 1 "+15V" H 7815 5973 50  0000 C CNN
F 2 "" H 7800 5800 50  0001 C CNN
F 3 "" H 7800 5800 50  0001 C CNN
	1    7800 5800
	1    0    0    -1  
$EndComp
Wire Wire Line
	7800 5800 7800 5900
Wire Wire Line
	7800 5900 7900 5900
Wire Wire Line
	8500 6000 8500 6200
Wire Wire Line
	8500 6200 6950 6200
Wire Wire Line
	6950 6200 6950 6100
Wire Wire Line
	6950 6100 6600 6100
Wire Wire Line
	9150 1600 9000 1600
Connection ~ 9000 1600
Wire Wire Line
	9000 1600 9000 2150
Wire Wire Line
	9150 3900 9000 3900
Connection ~ 9000 3900
Wire Wire Line
	9000 3900 9000 4450
Wire Wire Line
	9150 5050 9000 5050
Wire Wire Line
	9000 5050 9000 4850
Connection ~ 9000 4850
Wire Bus Line
	8650 900  8650 5000
Entry Wire Line
	8200 1700 8100 1800
Entry Wire Line
	8200 2850 8100 2950
Entry Wire Line
	8200 4000 8100 4100
Entry Wire Line
	8650 5000 8750 5100
Wire Wire Line
	8750 5100 8950 5100
Wire Wire Line
	8950 5100 8950 5150
Wire Wire Line
	8950 5150 9150 5150
Text Label 8800 5100 0    39   ~ 0
XTQ
Wire Wire Line
	8200 4000 9150 4000
Wire Wire Line
	8200 2850 9150 2850
Wire Wire Line
	8200 1700 9150 1700
$Comp
L Device:R_US R23
U 1 1 5FF360DE
P 6650 1250
F 0 "R23" H 6718 1296 50  0000 L CNN
F 1 "3.3k" H 6718 1205 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 6690 1240 50  0001 C CNN
F 3 "~" H 6650 1250 50  0001 C CNN
	1    6650 1250
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R24
U 1 1 5FF36A5C
P 6650 1550
F 0 "R24" H 6718 1596 50  0000 L CNN
F 1 "1k" H 6718 1505 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 6690 1540 50  0001 C CNN
F 3 "~" H 6650 1550 50  0001 C CNN
	1    6650 1550
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R22
U 1 1 5FF36EE7
P 6500 1400
F 0 "R22" V 6295 1400 50  0000 C CNN
F 1 "10k" V 6386 1400 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 6540 1390 50  0001 C CNN
F 3 "~" H 6500 1400 50  0001 C CNN
	1    6500 1400
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small C10
U 1 1 5FF37442
P 6350 1600
F 0 "C10" H 6442 1646 50  0000 L CNN
F 1 ".1uf" H 6442 1555 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 6350 1600 50  0001 C CNN
F 3 "~" H 6350 1600 50  0001 C CNN
	1    6350 1600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR033
U 1 1 5FF395F5
P 6650 1700
F 0 "#PWR033" H 6650 1450 50  0001 C CNN
F 1 "GND" H 6655 1527 50  0000 C CNN
F 2 "" H 6650 1700 50  0001 C CNN
F 3 "" H 6650 1700 50  0001 C CNN
	1    6650 1700
	1    0    0    -1  
$EndComp
Connection ~ 6650 1400
Wire Wire Line
	6350 1400 6350 1500
Wire Wire Line
	6350 1700 6650 1700
Connection ~ 6650 1700
$Comp
L Device:R_US R20
U 1 1 5FF62943
P 6050 1250
F 0 "R20" H 6118 1296 50  0000 L CNN
F 1 "3.3k" H 6118 1205 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 6090 1240 50  0001 C CNN
F 3 "~" H 6050 1250 50  0001 C CNN
	1    6050 1250
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R21
U 1 1 5FF62949
P 6050 1550
F 0 "R21" H 6118 1596 50  0000 L CNN
F 1 "1k" H 6118 1505 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 6090 1540 50  0001 C CNN
F 3 "~" H 6050 1550 50  0001 C CNN
	1    6050 1550
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R19
U 1 1 5FF6294F
P 5900 1400
F 0 "R19" V 5695 1400 50  0000 C CNN
F 1 "10k" V 5786 1400 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 5940 1390 50  0001 C CNN
F 3 "~" H 5900 1400 50  0001 C CNN
	1    5900 1400
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small C9
U 1 1 5FF62955
P 5750 1600
F 0 "C9" H 5842 1646 50  0000 L CNN
F 1 ".1uf" H 5842 1555 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 5750 1600 50  0001 C CNN
F 3 "~" H 5750 1600 50  0001 C CNN
	1    5750 1600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR026
U 1 1 5FF6295B
P 6050 1700
F 0 "#PWR026" H 6050 1450 50  0001 C CNN
F 1 "GND" H 6055 1527 50  0000 C CNN
F 2 "" H 6050 1700 50  0001 C CNN
F 3 "" H 6050 1700 50  0001 C CNN
	1    6050 1700
	1    0    0    -1  
$EndComp
Connection ~ 6050 1400
Wire Wire Line
	5750 1400 5750 1500
Wire Wire Line
	5750 1700 6050 1700
Connection ~ 6050 1700
$Comp
L Device:R_US R14
U 1 1 5FF6921F
P 5450 1250
F 0 "R14" H 5518 1296 50  0000 L CNN
F 1 "3.3k" H 5518 1205 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 5490 1240 50  0001 C CNN
F 3 "~" H 5450 1250 50  0001 C CNN
	1    5450 1250
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R15
U 1 1 5FF69225
P 5450 1550
F 0 "R15" H 5518 1596 50  0000 L CNN
F 1 "1k" H 5518 1505 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 5490 1540 50  0001 C CNN
F 3 "~" H 5450 1550 50  0001 C CNN
	1    5450 1550
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R13
U 1 1 5FF6922B
P 5300 1400
F 0 "R13" V 5095 1400 50  0000 C CNN
F 1 "10k" V 5186 1400 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 5340 1390 50  0001 C CNN
F 3 "~" H 5300 1400 50  0001 C CNN
	1    5300 1400
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small C7
U 1 1 5FF69231
P 5150 1600
F 0 "C7" H 5242 1646 50  0000 L CNN
F 1 ".1uf" H 5242 1555 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 5150 1600 50  0001 C CNN
F 3 "~" H 5150 1600 50  0001 C CNN
	1    5150 1600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR023
U 1 1 5FF69237
P 5450 1700
F 0 "#PWR023" H 5450 1450 50  0001 C CNN
F 1 "GND" H 5455 1527 50  0000 C CNN
F 2 "" H 5450 1700 50  0001 C CNN
F 3 "" H 5450 1700 50  0001 C CNN
	1    5450 1700
	1    0    0    -1  
$EndComp
Connection ~ 5450 1400
Wire Wire Line
	5150 1400 5150 1500
Wire Wire Line
	5150 1700 5450 1700
Connection ~ 5450 1700
Wire Wire Line
	5150 1400 5050 1400
Connection ~ 5150 1400
Wire Wire Line
	5750 1400 5650 1400
Connection ~ 5750 1400
Wire Wire Line
	6350 1400 6250 1400
Connection ~ 6350 1400
Entry Wire Line
	5800 900  5700 1000
Entry Wire Line
	6350 1000 6450 900 
Entry Wire Line
	6900 1000 7000 900 
Wire Wire Line
	5450 1100 5700 1100
Wire Wire Line
	5700 1100 5700 1000
Wire Wire Line
	6050 1100 6350 1100
Wire Wire Line
	6350 1100 6350 1000
Wire Wire Line
	6650 1100 6900 1100
Wire Wire Line
	6900 1100 6900 1000
Text Label 5500 1100 0    39   ~ 0
XTQ
Text Label 6100 1100 0    39   ~ 0
Y2TQ
Text Label 8300 4000 0    39   ~ 0
Y2TQ
Text Label 8300 2850 0    39   ~ 0
Y1TQ
Text Label 6700 1100 0    39   ~ 0
Y1TQ
$Comp
L Device:R_US R9
U 1 1 6003637A
P 4800 1250
F 0 "R9" H 4868 1296 50  0000 L CNN
F 1 "3.3k" H 4868 1205 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 4840 1240 50  0001 C CNN
F 3 "~" H 4800 1250 50  0001 C CNN
	1    4800 1250
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R10
U 1 1 60036380
P 4800 1550
F 0 "R10" H 4868 1596 50  0000 L CNN
F 1 "1k" H 4868 1505 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 4840 1540 50  0001 C CNN
F 3 "~" H 4800 1550 50  0001 C CNN
	1    4800 1550
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R7
U 1 1 60036386
P 4650 1400
F 0 "R7" V 4445 1400 50  0000 C CNN
F 1 "10k" V 4536 1400 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 4690 1390 50  0001 C CNN
F 3 "~" H 4650 1400 50  0001 C CNN
	1    4650 1400
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small C5
U 1 1 6003638C
P 4500 1600
F 0 "C5" H 4592 1646 50  0000 L CNN
F 1 ".1uf" H 4592 1555 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 4500 1600 50  0001 C CNN
F 3 "~" H 4500 1600 50  0001 C CNN
	1    4500 1600
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR017
U 1 1 60036392
P 4800 1700
F 0 "#PWR017" H 4800 1450 50  0001 C CNN
F 1 "GND" H 4805 1527 50  0000 C CNN
F 2 "" H 4800 1700 50  0001 C CNN
F 3 "" H 4800 1700 50  0001 C CNN
	1    4800 1700
	1    0    0    -1  
$EndComp
Connection ~ 4800 1400
Wire Wire Line
	4500 1400 4500 1500
Wire Wire Line
	4500 1700 4800 1700
Connection ~ 4800 1700
Wire Wire Line
	4500 1400 4400 1400
Connection ~ 4500 1400
Entry Wire Line
	5000 1000 5100 900 
Wire Wire Line
	4800 1100 5000 1100
Wire Wire Line
	5000 1100 5000 1000
Text Label 4800 1100 0    39   ~ 0
ZTQ
Text Label 8300 1700 0    39   ~ 0
ZTQ
$Comp
L Connector:RJ45_Shielded J3
U 1 1 60056FC9
P 3350 6500
F 0 "J3" H 3400 7100 50  0000 R CNN
F 1 "DISPLAY" V 2950 6650 50  0000 R CNN
F 2 "Connector_RJ:RJ45_Amphenol_54602-x08_Horizontal" V 3350 6525 50  0001 C CNN
F 3 "~" V 3350 6525 50  0001 C CNN
	1    3350 6500
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR012
U 1 1 6005A19C
P 3850 6500
F 0 "#PWR012" H 3850 6250 50  0001 C CNN
F 1 "GND" H 3855 6327 50  0000 C CNN
F 2 "" H 3850 6500 50  0001 C CNN
F 3 "" H 3850 6500 50  0001 C CNN
	1    3850 6500
	1    0    0    -1  
$EndComp
Wire Wire Line
	6000 6100 6000 6000
Wire Wire Line
	6000 6000 5500 6000
Wire Wire Line
	5500 6000 5500 6100
Wire Wire Line
	5900 6100 5900 5950
Wire Wire Line
	5900 5950 5400 5950
Wire Wire Line
	5400 5950 5400 6100
$Comp
L Device:R_US R26
U 1 1 6006F1BF
P 7350 5150
F 0 "R26" H 7418 5196 50  0000 L CNN
F 1 "3.3k" H 7418 5105 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 7390 5140 50  0001 C CNN
F 3 "~" H 7350 5150 50  0001 C CNN
	1    7350 5150
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R27
U 1 1 6006F1C5
P 7350 5450
F 0 "R27" H 7418 5496 50  0000 L CNN
F 1 "1k" H 7418 5405 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 7390 5440 50  0001 C CNN
F 3 "~" H 7350 5450 50  0001 C CNN
	1    7350 5450
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R25
U 1 1 6006F1CB
P 7200 5300
F 0 "R25" V 6995 5300 50  0000 C CNN
F 1 "10k" V 7086 5300 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 7240 5290 50  0001 C CNN
F 3 "~" H 7200 5300 50  0001 C CNN
	1    7200 5300
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small C11
U 1 1 6006F1D1
P 7050 5500
F 0 "C11" H 7142 5546 50  0000 L CNN
F 1 ".1uf" H 7142 5455 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 7050 5500 50  0001 C CNN
F 3 "~" H 7050 5500 50  0001 C CNN
	1    7050 5500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR037
U 1 1 6006F1D7
P 7350 5600
F 0 "#PWR037" H 7350 5350 50  0001 C CNN
F 1 "GND" H 7355 5427 50  0000 C CNN
F 2 "" H 7350 5600 50  0001 C CNN
F 3 "" H 7350 5600 50  0001 C CNN
	1    7350 5600
	1    0    0    -1  
$EndComp
Connection ~ 7350 5300
Wire Wire Line
	7050 5300 7050 5400
Wire Wire Line
	7050 5600 7350 5600
Connection ~ 7350 5600
Wire Wire Line
	7050 5300 6950 5300
Connection ~ 7050 5300
Wire Wire Line
	6400 6100 6400 5850
Wire Wire Line
	6400 5850 7650 5850
Wire Wire Line
	7650 5850 7650 5000
Wire Wire Line
	7650 5000 7350 5000
$Comp
L power:GND #PWR030
U 1 1 600837C2
P 6300 6100
F 0 "#PWR030" H 6300 5850 50  0001 C CNN
F 1 "GND" H 6305 5927 50  0000 C CNN
F 2 "" H 6300 6100 50  0001 C CNN
F 3 "" H 6300 6100 50  0001 C CNN
	1    6300 6100
	-1   0    0    1   
$EndComp
$Comp
L power:GND #PWR025
U 1 1 60083B94
P 5900 5950
F 0 "#PWR025" H 5900 5700 50  0001 C CNN
F 1 "GND" H 5905 5777 50  0000 C CNN
F 2 "" H 5900 5950 50  0001 C CNN
F 3 "" H 5900 5950 50  0001 C CNN
	1    5900 5950
	-1   0    0    1   
$EndComp
Connection ~ 5900 5950
$Comp
L power:GND #PWR022
U 1 1 60083F7F
P 5200 6100
F 0 "#PWR022" H 5200 5850 50  0001 C CNN
F 1 "GND" H 5205 5927 50  0000 C CNN
F 2 "" H 5200 6100 50  0001 C CNN
F 3 "" H 5200 6100 50  0001 C CNN
	1    5200 6100
	-1   0    0    1   
$EndComp
$Comp
L power:+15V #PWR018
U 1 1 6008B960
P 4800 6100
F 0 "#PWR018" H 4800 5950 50  0001 C CNN
F 1 "+15V" H 4815 6273 50  0000 C CNN
F 2 "" H 4800 6100 50  0001 C CNN
F 3 "" H 4800 6100 50  0001 C CNN
	1    4800 6100
	1    0    0    -1  
$EndComp
$Comp
L power:+15V #PWR015
U 1 1 6008C9BB
P 4600 6100
F 0 "#PWR015" H 4600 5950 50  0001 C CNN
F 1 "+15V" H 4615 6273 50  0000 C CNN
F 2 "" H 4600 6100 50  0001 C CNN
F 3 "" H 4600 6100 50  0001 C CNN
	1    4600 6100
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R11
U 1 1 6009324C
P 4900 5100
F 0 "R11" H 4968 5146 50  0000 L CNN
F 1 "3.3k" H 4968 5055 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 4940 5090 50  0001 C CNN
F 3 "~" H 4900 5100 50  0001 C CNN
	1    4900 5100
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R12
U 1 1 60093252
P 4900 5400
F 0 "R12" H 4968 5446 50  0000 L CNN
F 1 "1k" H 4968 5355 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 4940 5390 50  0001 C CNN
F 3 "~" H 4900 5400 50  0001 C CNN
	1    4900 5400
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R8
U 1 1 60093258
P 4750 5250
F 0 "R8" V 4545 5250 50  0000 C CNN
F 1 "10k" V 4636 5250 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 4790 5240 50  0001 C CNN
F 3 "~" H 4750 5250 50  0001 C CNN
	1    4750 5250
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small C6
U 1 1 6009325E
P 4600 5450
F 0 "C6" H 4692 5496 50  0000 L CNN
F 1 ".1uf" H 4692 5405 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 4600 5450 50  0001 C CNN
F 3 "~" H 4600 5450 50  0001 C CNN
	1    4600 5450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR020
U 1 1 60093264
P 4900 5550
F 0 "#PWR020" H 4900 5300 50  0001 C CNN
F 1 "GND" H 4905 5377 50  0000 C CNN
F 2 "" H 4900 5550 50  0001 C CNN
F 3 "" H 4900 5550 50  0001 C CNN
	1    4900 5550
	1    0    0    -1  
$EndComp
Connection ~ 4900 5250
Wire Wire Line
	4600 5250 4600 5350
Wire Wire Line
	4600 5550 4900 5550
Connection ~ 4900 5550
Wire Wire Line
	4600 5250 4500 5250
Connection ~ 4600 5250
Wire Wire Line
	5200 4950 4900 4950
$Comp
L Device:R_US R5
U 1 1 6009D44A
P 4100 5100
F 0 "R5" H 4168 5146 50  0000 L CNN
F 1 "3.3k" H 4168 5055 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 4140 5090 50  0001 C CNN
F 3 "~" H 4100 5100 50  0001 C CNN
	1    4100 5100
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R6
U 1 1 6009D450
P 4100 5400
F 0 "R6" H 4168 5446 50  0000 L CNN
F 1 "1k" H 4168 5355 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 4140 5390 50  0001 C CNN
F 3 "~" H 4100 5400 50  0001 C CNN
	1    4100 5400
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R4
U 1 1 6009D456
P 3950 5250
F 0 "R4" V 3745 5250 50  0000 C CNN
F 1 "10k" V 3836 5250 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 3990 5240 50  0001 C CNN
F 3 "~" H 3950 5250 50  0001 C CNN
	1    3950 5250
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small C4
U 1 1 6009D45C
P 3800 5450
F 0 "C4" H 3892 5496 50  0000 L CNN
F 1 ".1uf" H 3892 5405 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 3800 5450 50  0001 C CNN
F 3 "~" H 3800 5450 50  0001 C CNN
	1    3800 5450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR014
U 1 1 6009D462
P 4100 5550
F 0 "#PWR014" H 4100 5300 50  0001 C CNN
F 1 "GND" H 4105 5377 50  0000 C CNN
F 2 "" H 4100 5550 50  0001 C CNN
F 3 "" H 4100 5550 50  0001 C CNN
	1    4100 5550
	1    0    0    -1  
$EndComp
Connection ~ 4100 5250
Wire Wire Line
	3800 5250 3800 5350
Wire Wire Line
	3800 5550 4100 5550
Connection ~ 4100 5550
Wire Wire Line
	3800 5250 3700 5250
Connection ~ 3800 5250
Wire Wire Line
	4400 4950 4100 4950
Wire Wire Line
	4700 6100 4700 5850
Wire Wire Line
	4700 5850 5200 5850
Wire Wire Line
	5200 4950 5200 5850
Wire Wire Line
	4500 6100 4500 5750
Wire Wire Line
	4500 5750 4400 5750
Wire Wire Line
	4400 5750 4400 4950
$Comp
L power:+5V #PWR027
U 1 1 600C9D65
P 6100 2550
F 0 "#PWR027" H 6100 2400 50  0001 C CNN
F 1 "+5V" H 6115 2723 50  0000 C CNN
F 2 "" H 6100 2550 50  0001 C CNN
F 3 "" H 6100 2550 50  0001 C CNN
	1    6100 2550
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR019
U 1 1 600CA775
P 4900 2350
F 0 "#PWR019" H 4900 2100 50  0001 C CNN
F 1 "GND" H 4905 2177 50  0000 C CNN
F 2 "" H 4900 2350 50  0001 C CNN
F 3 "" H 4900 2350 50  0001 C CNN
	1    4900 2350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR029
U 1 1 600CB3A6
P 6300 2350
F 0 "#PWR029" H 6300 2100 50  0001 C CNN
F 1 "GND" H 6305 2177 50  0000 C CNN
F 2 "" H 6300 2350 50  0001 C CNN
F 3 "" H 6300 2350 50  0001 C CNN
	1    6300 2350
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR013
U 1 1 600CC4EE
P 3900 2550
F 0 "#PWR013" H 3900 2400 50  0001 C CNN
F 1 "+3.3V" H 3915 2723 50  0000 C CNN
F 2 "" H 3900 2550 50  0001 C CNN
F 3 "" H 3900 2550 50  0001 C CNN
	1    3900 2550
	1    0    0    -1  
$EndComp
Wire Wire Line
	4700 2650 4800 2650
Wire Wire Line
	4800 2650 4800 2350
Wire Wire Line
	4800 2350 4900 2350
Wire Wire Line
	6100 2650 6200 2650
Wire Wire Line
	6200 2650 6200 2350
Wire Wire Line
	6200 2350 6300 2350
Wire Wire Line
	4400 1400 4400 1850
Text GLabel 4400 1850 3    39   Output ~ 0
INZTQ
Text GLabel 6100 4150 2    39   Input ~ 0
INZTQ
Wire Wire Line
	5050 1400 5050 1850
Text GLabel 5050 1850 3    39   Output ~ 0
INXTQ
Text GLabel 4700 4150 2    39   Input ~ 0
INXTQ
Text GLabel 5650 1800 3    39   Output ~ 0
INY2TQ
Text GLabel 4700 4050 2    39   Input ~ 0
INY2TQ
Text GLabel 4700 3950 2    39   Input ~ 0
INY1TQ
Text GLabel 6250 1800 3    39   Output ~ 0
INY1TQ
Wire Wire Line
	6250 1400 6250 1800
Wire Wire Line
	5650 1400 5650 1800
Text GLabel 5300 3350 0    39   Output ~ 0
OTTS
Text GLabel 6950 4400 0    39   Input ~ 0
OTTS
Text GLabel 6100 4050 2    39   Input ~ 0
INTM
Text GLabel 6950 5300 0    39   Output ~ 0
INTM
Text GLabel 6100 3950 2    39   Input ~ 0
INTD
Text GLabel 4500 5050 1    39   Output ~ 0
INTD
Text GLabel 3700 5100 1    39   Output ~ 0
INTHD
Text GLabel 6100 3850 2    39   Input ~ 0
INTHD
Wire Wire Line
	4500 5250 4500 5050
Wire Wire Line
	3700 5250 3700 5100
Text GLabel 6100 3750 2    39   Input ~ 0
INTH
Text GLabel 5300 5900 1    39   Output ~ 0
INTH
Wire Wire Line
	5300 6100 5300 5900
Text GLabel 6100 3250 2    39   BiDi ~ 0
SLCK
Text GLabel 4700 3250 2    39   BiDi ~ 0
SLCK
Text GLabel 4700 3150 2    39   BiDi ~ 0
MISO
Text GLabel 6100 3150 2    39   BiDi ~ 0
MISO
Text GLabel 4700 3050 2    39   BiDi ~ 0
MOSI
Text GLabel 6100 3050 2    39   BiDi ~ 0
MOSI
Text GLabel 3900 3050 0    39   BiDi ~ 0
CS
Text GLabel 5300 3050 0    39   BiDi ~ 0
CS
Text GLabel 6950 2000 0    39   Input ~ 0
OTZEN
Text GLabel 6950 2100 0    39   Input ~ 0
OTZSP
Text GLabel 6950 2200 0    39   Input ~ 0
OTZDIR
Text GLabel 6950 2300 0    39   Input ~ 0
OTY1EN
Text GLabel 6950 2400 0    39   Input ~ 0
OTY1SP
Text GLabel 6950 2500 0    39   Input ~ 0
OTY1DIR
Text GLabel 6950 2600 0    39   Input ~ 0
OTY2EN
Text GLabel 6950 3900 0    39   Input ~ 0
OTY2SP
Text GLabel 6950 4000 0    39   Input ~ 0
OTY2DIR
Text GLabel 6950 4100 0    39   Input ~ 0
OTXEN
Text GLabel 6950 4200 0    39   Input ~ 0
OTXSP
Text GLabel 6950 4300 0    39   Input ~ 0
OTXDIR
Text GLabel 5300 3450 0    39   Output ~ 0
OTZEN
Text GLabel 5300 3650 0    39   Output ~ 0
OTZSP
Text GLabel 5300 3750 0    39   Output ~ 0
OTZDIR
NoConn ~ 4700 2750
NoConn ~ 4700 2850
NoConn ~ 4700 2950
NoConn ~ 3900 2650
NoConn ~ 3900 2750
NoConn ~ 3900 2850
NoConn ~ 5300 2550
NoConn ~ 5300 2650
NoConn ~ 5300 2750
NoConn ~ 5300 2850
NoConn ~ 6100 2750
NoConn ~ 6100 2850
NoConn ~ 6100 2950
NoConn ~ 5300 3850
NoConn ~ 5300 4150
NoConn ~ 5300 2950
NoConn ~ 3900 2950
NoConn ~ 3900 4050
NoConn ~ 3900 3950
NoConn ~ 5300 4050
NoConn ~ 5300 3950
Text GLabel 3900 3350 0    39   Output ~ 0
OTY1EN
Text GLabel 3900 3450 0    39   Output ~ 0
OTY1SP
Text GLabel 3900 3650 0    39   Output ~ 0
OTY1DIR
Text GLabel 3900 4250 0    39   Output ~ 0
OTY2EN
Text GLabel 4700 3750 2    39   Output ~ 0
OTY2SP
Text GLabel 4700 3650 2    39   Output ~ 0
OTY2DIR
Text GLabel 4700 3550 2    39   Input ~ 0
OTXEN
Text GLabel 4700 3450 2    39   Output ~ 0
OTXSP
Text GLabel 4700 3350 2    39   Output ~ 0
OTXDIR
Text GLabel 3650 6100 1    39   BiDi ~ 0
SLCK
Text GLabel 3550 6100 1    39   BiDi ~ 0
MISO
Text GLabel 3450 6100 1    39   BiDi ~ 0
MOSI
Text GLabel 3900 4150 0    39   Output ~ 0
DISPCS
Text GLabel 3350 6100 1    39   Input ~ 0
DISPCS
$Comp
L power:+3.3V #PWR011
U 1 1 602022F6
P 3050 6100
F 0 "#PWR011" H 3050 5950 50  0001 C CNN
F 1 "+3.3V" H 3065 6273 50  0000 C CNN
F 2 "" H 3050 6100 50  0001 C CNN
F 3 "" H 3050 6100 50  0001 C CNN
	1    3050 6100
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR010
U 1 1 602031F0
P 3050 5600
F 0 "#PWR010" H 3050 5350 50  0001 C CNN
F 1 "GND" H 3055 5427 50  0000 C CNN
F 2 "" H 3050 5600 50  0001 C CNN
F 3 "" H 3050 5600 50  0001 C CNN
	1    3050 5600
	1    0    0    -1  
$EndComp
Wire Wire Line
	2950 6100 2950 5550
Wire Wire Line
	2950 5550 3050 5550
Wire Wire Line
	3050 5550 3050 5600
$Comp
L Device:R_US R17
U 1 1 6020E384
P 5800 5100
F 0 "R17" H 5868 5146 50  0000 L CNN
F 1 "3.3k" H 5868 5055 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 5840 5090 50  0001 C CNN
F 3 "~" H 5800 5100 50  0001 C CNN
	1    5800 5100
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R18
U 1 1 6020ECBC
P 5800 5400
F 0 "R18" H 5868 5446 50  0000 L CNN
F 1 "1k" H 5868 5355 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 5840 5390 50  0001 C CNN
F 3 "~" H 5800 5400 50  0001 C CNN
	1    5800 5400
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R16
U 1 1 6020ECC6
P 5650 5250
F 0 "R16" V 5445 5250 50  0000 C CNN
F 1 "10k" V 5536 5250 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 5690 5240 50  0001 C CNN
F 3 "~" H 5650 5250 50  0001 C CNN
	1    5650 5250
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small C8
U 1 1 6020ECD0
P 5500 5450
F 0 "C8" H 5592 5496 50  0000 L CNN
F 1 ".1uf" H 5592 5405 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 5500 5450 50  0001 C CNN
F 3 "~" H 5500 5450 50  0001 C CNN
	1    5500 5450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR024
U 1 1 6020ECDA
P 5800 5550
F 0 "#PWR024" H 5800 5300 50  0001 C CNN
F 1 "GND" H 5805 5377 50  0000 C CNN
F 2 "" H 5800 5550 50  0001 C CNN
F 3 "" H 5800 5550 50  0001 C CNN
	1    5800 5550
	1    0    0    -1  
$EndComp
Connection ~ 5800 5250
Wire Wire Line
	5500 5250 5500 5350
Wire Wire Line
	5500 5550 5800 5550
Connection ~ 5800 5550
Wire Wire Line
	5500 5250 5400 5250
Connection ~ 5500 5250
Text GLabel 5400 5150 1    39   Output ~ 0
SPAREIN
Text GLabel 4700 3850 2    39   Input ~ 0
SPAREIN
Wire Wire Line
	5400 5250 5400 5150
$Comp
L Connector:Conn_01x04_Male J7
U 1 1 60229C9A
P 6350 5550
F 0 "J7" V 6504 5262 50  0000 R CNN
F 1 "SPARE" V 6250 5600 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x04_P2.54mm_Vertical" H 6350 5550 50  0001 C CNN
F 3 "~" H 6350 5550 50  0001 C CNN
	1    6350 5550
	0    -1   -1   0   
$EndComp
$Comp
L power:+15V #PWR028
U 1 1 6022D09C
P 6250 5350
F 0 "#PWR028" H 6250 5200 50  0001 C CNN
F 1 "+15V" H 6265 5523 50  0000 C CNN
F 2 "" H 6250 5350 50  0001 C CNN
F 3 "" H 6250 5350 50  0001 C CNN
	1    6250 5350
	1    0    0    -1  
$EndComp
$Comp
L power:+15V #PWR031
U 1 1 6022E75B
P 6450 5350
F 0 "#PWR031" H 6450 5200 50  0001 C CNN
F 1 "+15V" H 6465 5523 50  0000 C CNN
F 2 "" H 6450 5350 50  0001 C CNN
F 3 "" H 6450 5350 50  0001 C CNN
	1    6450 5350
	1    0    0    -1  
$EndComp
Wire Wire Line
	6350 4950 6350 5350
Wire Wire Line
	5800 4950 6350 4950
Wire Wire Line
	7750 4500 7750 4900
Wire Wire Line
	7750 4900 6550 4900
Wire Wire Line
	6550 4900 6550 5350
Text GLabel 3900 3850 0    39   Output ~ 0
SPAREOUT
Text GLabel 6950 4500 0    39   Input ~ 0
SPAREOUT
Wire Wire Line
	3150 3150 3150 6100
Wire Wire Line
	3150 3150 3900 3150
Wire Wire Line
	3250 6100 3250 3250
Wire Wire Line
	3250 3250 3900 3250
$Comp
L Connector:RJ45_Shielded J2
U 1 1 6025AE60
P 2900 1500
F 0 "J2" H 2570 1447 50  0000 R CNN
F 1 "R Axis" H 3000 2050 50  0000 R CNN
F 2 "Connector_RJ:RJ45_Amphenol_54602-x08_Horizontal" V 2900 1525 50  0001 C CNN
F 3 "~" V 2900 1525 50  0001 C CNN
	1    2900 1500
	-1   0    0    1   
$EndComp
$Comp
L Transistor_Array:MC1413 U1
U 1 1 6025E408
P 1750 1500
F 0 "U1" H 1750 2167 50  0000 C CNN
F 1 "MC1413" H 1750 2076 50  0000 C CNN
F 2 "Package_SO:SOIC-16_3.9x9.9mm_P1.27mm" H 1800 950 50  0001 L CNN
F 3 "http://www.onsemi.com/pub_link/Collateral/MC1413-D.PDF" H 1850 1300 50  0001 C CNN
	1    1750 1500
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R2
U 1 1 60269A78
P 2400 2150
F 0 "R2" H 2468 2196 50  0000 L CNN
F 1 "3.3k" H 2468 2105 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 2440 2140 50  0001 C CNN
F 3 "~" H 2400 2150 50  0001 C CNN
	1    2400 2150
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R3
U 1 1 60269A7E
P 2400 2450
F 0 "R3" H 2468 2496 50  0000 L CNN
F 1 "1k" H 2468 2405 50  0000 L CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 2440 2440 50  0001 C CNN
F 3 "~" H 2400 2450 50  0001 C CNN
	1    2400 2450
	1    0    0    -1  
$EndComp
$Comp
L Device:R_US R1
U 1 1 60269A84
P 2250 2300
F 0 "R1" V 2045 2300 50  0000 C CNN
F 1 "10k" V 2136 2300 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 2290 2290 50  0001 C CNN
F 3 "~" H 2250 2300 50  0001 C CNN
	1    2250 2300
	0    1    1    0   
$EndComp
$Comp
L Device:C_Small C3
U 1 1 60269A8A
P 2100 2500
F 0 "C3" H 2192 2546 50  0000 L CNN
F 1 ".1uf" H 2192 2455 50  0000 L CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 2100 2500 50  0001 C CNN
F 3 "~" H 2100 2500 50  0001 C CNN
	1    2100 2500
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR09
U 1 1 60269A90
P 2400 2600
F 0 "#PWR09" H 2400 2350 50  0001 C CNN
F 1 "GND" H 2405 2427 50  0000 C CNN
F 2 "" H 2400 2600 50  0001 C CNN
F 3 "" H 2400 2600 50  0001 C CNN
	1    2400 2600
	1    0    0    -1  
$EndComp
Wire Wire Line
	2100 2300 2100 2400
Wire Wire Line
	2100 2600 2400 2600
Connection ~ 2400 2600
Wire Wire Line
	2100 2300 2000 2300
Connection ~ 2100 2300
Text GLabel 2000 2300 0    39   Output ~ 0
INRTQ
Wire Wire Line
	9150 2750 9000 2750
Connection ~ 9000 2750
Wire Wire Line
	9000 2750 9000 3300
Wire Wire Line
	2400 1800 2500 1800
Wire Wire Line
	2400 1800 2400 1600
$Comp
L power:+15V #PWR08
U 1 1 60296EA2
P 2400 1050
F 0 "#PWR08" H 2400 900 50  0001 C CNN
F 1 "+15V" H 2415 1223 50  0000 C CNN
F 2 "" H 2400 1050 50  0001 C CNN
F 3 "" H 2400 1050 50  0001 C CNN
	1    2400 1050
	1    0    0    -1  
$EndComp
$Comp
L power:+15V #PWR01
U 1 1 6029790D
P 2050 1050
F 0 "#PWR01" H 2050 900 50  0001 C CNN
F 1 "+15V" H 2065 1223 50  0000 C CNN
F 2 "" H 2050 1050 50  0001 C CNN
F 3 "" H 2050 1050 50  0001 C CNN
	1    2050 1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	2050 1100 2050 1050
Wire Wire Line
	2500 1200 2400 1200
Connection ~ 2400 1200
Wire Wire Line
	2400 1200 2400 1050
Wire Wire Line
	2500 1400 2400 1400
Connection ~ 2400 1400
Wire Wire Line
	2400 1400 2400 1200
Wire Wire Line
	2500 1600 2400 1600
Connection ~ 2400 1600
Wire Wire Line
	2400 1600 2400 1400
Connection ~ 2400 2300
Wire Wire Line
	2400 2000 2400 1900
Wire Wire Line
	2400 1900 2500 1900
Wire Wire Line
	2150 1300 2500 1300
Wire Wire Line
	2150 1400 2300 1400
Wire Wire Line
	2300 1400 2300 1500
Wire Wire Line
	2300 1500 2500 1500
Wire Wire Line
	2150 1500 2250 1500
Wire Wire Line
	2250 1500 2250 1700
Wire Wire Line
	2250 1700 2500 1700
Text GLabel 1350 1300 0    39   Input ~ 0
INREN
Text GLabel 1350 1400 0    39   Input ~ 0
INRSP
Text GLabel 1350 1500 0    39   Input ~ 0
INRDIR
Wire Notes Line
	1000 750  3400 750 
Wire Notes Line
	3400 750  3400 2900
Wire Notes Line
	3400 2900 1000 2900
Wire Notes Line
	1000 2900 1000 750 
Text Notes 1150 2750 0    118  ~ 24
R AXIS
Text GLabel 6100 3550 2    39   Output ~ 0
INREN
Text GLabel 6100 3450 2    39   Output ~ 0
INRSP
Text GLabel 6100 3350 2    39   Output ~ 0
INRDIR
Text GLabel 6100 3650 2    39   Input ~ 0
INRTQ
$Comp
L power:GND #PWR0101
U 1 1 603575E3
P 3050 900
F 0 "#PWR0101" H 3050 650 50  0001 C CNN
F 1 "GND" H 3055 727 50  0000 C CNN
F 2 "" H 3050 900 50  0001 C CNN
F 3 "" H 3050 900 50  0001 C CNN
	1    3050 900 
	1    0    0    -1  
$EndComp
Wire Wire Line
	2900 1000 2900 850 
Wire Wire Line
	2900 850  3050 850 
Wire Wire Line
	3050 850  3050 900 
$Comp
L power:GND #PWR0102
U 1 1 6036585A
P 1750 2100
F 0 "#PWR0102" H 1750 1850 50  0001 C CNN
F 1 "GND" H 1755 1927 50  0000 C CNN
F 2 "" H 1750 2100 50  0001 C CNN
F 3 "" H 1750 2100 50  0001 C CNN
	1    1750 2100
	1    0    0    -1  
$EndComp
NoConn ~ 2150 1600
NoConn ~ 2150 1700
NoConn ~ 2150 1800
NoConn ~ 2150 1900
NoConn ~ 1350 1600
NoConn ~ 1350 1700
NoConn ~ 1350 1800
NoConn ~ 1350 1900
NoConn ~ 3900 3550
NoConn ~ 3900 3750
NoConn ~ 5300 3150
NoConn ~ 5300 3250
Wire Bus Line
	5100 900  8650 900 
Wire Bus Line
	8100 1000 8100 5050
$EndSCHEMATC
