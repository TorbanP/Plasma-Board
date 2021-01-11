EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr USLedger 17000 11000
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
L BDringController-rescue:DC-DC_BuckAdg-My_Library PS1
U 1 1 5FE57EFE
P 6550 6800
F 0 "PS1" H 6550 7167 50  0000 C CNN
F 1 "DC-DC_BuckAdg" H 6550 7076 50  0000 C CNN
F 2 "Modules:Buck_Module" H 5500 6550 50  0001 L CNN
F 3 "https://www.xppower.com/pdfs/SF_IA.pdf" H 7600 6500 50  0001 L CNN
	1    6550 6800
	1    0    0    -1  
$EndComp
$Comp
L BDringController-rescue:DC-DC_BuckAdg-My_Library PS2
U 1 1 5FE585FF
P 6550 7600
F 0 "PS2" H 6550 7967 50  0000 C CNN
F 1 "DC-DC_BuckAdg" H 6550 7876 50  0000 C CNN
F 2 "Modules:Buck_Module" H 5500 7350 50  0001 L CNN
F 3 "https://www.xppower.com/pdfs/SF_IA.pdf" H 7600 7300 50  0001 L CNN
	1    6550 7600
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74AHCT595 U5
U 1 1 5FE6A397
P 10350 1750
F 0 "U5" H 10300 1500 50  0000 C CNN
F 1 "74AHCT595" H 10300 1400 50  0000 C CNN
F 2 "Package_SO:SO-16_5.3x10.2mm_P1.27mm" H 10350 1750 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/74AHC_AHCT595.pdf" H 10350 1750 50  0001 C CNN
	1    10350 1750
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74AHCT595 U7
U 1 1 5FE6B667
P 11650 2650
F 0 "U7" H 11650 2450 50  0000 C CNN
F 1 "74AHCT595" H 11600 2300 50  0000 C CNN
F 2 "Package_SO:SO-16_5.3x10.2mm_P1.27mm" H 11650 2650 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/74AHC_AHCT595.pdf" H 11650 2650 50  0001 C CNN
	1    11650 2650
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74AHCT595 U6
U 1 1 5FE6C058
P 10350 4150
F 0 "U6" H 10300 3900 50  0000 C CNN
F 1 "74AHCT595" H 10300 3750 50  0000 C CNN
F 2 "Package_SO:SO-16_5.3x10.2mm_P1.27mm" H 10350 4150 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/74AHC_AHCT595.pdf" H 10350 4150 50  0001 C CNN
	1    10350 4150
	1    0    0    -1  
$EndComp
$Comp
L 74xx:74AHCT595 U8
U 1 1 5FE6C9FB
P 11650 5050
F 0 "U8" H 11600 4800 50  0000 C CNN
F 1 "74AHCT595" H 11600 4700 50  0000 C CNN
F 2 "Package_SO:SO-16_5.3x10.2mm_P1.27mm" H 11650 5050 50  0001 C CNN
F 3 "https://assets.nexperia.com/documents/data-sheet/74AHC_AHCT595.pdf" H 11650 5050 50  0001 C CNN
	1    11650 5050
	1    0    0    -1  
$EndComp
$Comp
L BDringController-rescue:IO_connector-My_Library J4
U 1 1 5FF337CA
P 4800 9650
F 0 "J4" H 4122 9546 50  0000 R CNN
F 1 "Module 1" H 5050 9700 50  0000 R CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x12_P2.54mm_Vertical" H 4700 9600 50  0001 C CNN
F 3 "" H 4700 9600 50  0001 C CNN
	1    4800 9650
	-1   0    0    1   
$EndComp
$Comp
L BDringController-rescue:Motor_driver-My_Library U9
U 1 1 5FF350BD
P 13750 1750
F 0 "U9" H 14150 2550 50  0000 C CNN
F 1 "X" H 13150 2550 118 0000 C CNN
F 2 "Modules:ClearpathDriver" H 13750 1750 50  0001 C CNN
F 3 "" H 13750 1750 50  0001 C CNN
	1    13750 1750
	1    0    0    -1  
$EndComp
$Comp
L BDringController-rescue:ESP32_38p-My_Library U3
U 1 1 5FF3DD1B
P 8000 2750
F 0 "U3" V 9465 2800 50  0000 C CNN
F 1 "ESP32_38p" V 9374 2800 50  0000 C CNN
F 2 "Modules:ESP32_38p" H 8000 2750 50  0001 C CNN
F 3 "" H 8000 2750 50  0001 C CNN
	1    8000 2750
	0    -1   -1   0   
$EndComp
$Comp
L Connector:Conn_01x03_Male J12
U 1 1 5FF4AFC0
P 8100 7750
F 0 "J12" H 8250 7550 50  0000 C CNN
F 1 "Shift Regs and Motor Drvs" V 8050 7700 39  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 8100 7750 50  0001 C CNN
F 3 "~" H 8100 7750 50  0001 C CNN
	1    8100 7750
	0    -1   -1   0   
$EndComp
$Comp
L Connector:Micro_SD_Card J15
U 1 1 5FF4D60A
P 11650 7050
F 0 "J15" H 11600 7767 50  0000 C CNN
F 1 "Micro_SD_Card" H 11600 7676 50  0000 C CNN
F 2 "Connector_Card:microSD_HC_Hirose_DM3AT-SF-PEJM5" H 12800 7350 50  0001 C CNN
F 3 "http://katalog.we-online.de/em/datasheet/693072010801.pdf" H 11650 7050 50  0001 C CNN
	1    11650 7050
	1    0    0    -1  
$EndComp
$Comp
L Connector:RJ45 J7
U 1 1 5FF51A08
P 6000 3400
F 0 "J7" H 6057 4067 50  0000 C CNN
F 1 "THC_Display" H 6057 3976 50  0000 C CNN
F 2 "Connector_RJ:RJ45_OST_PJ012-8P8CX_Vertical" V 6000 3425 50  0001 C CNN
F 3 "~" V 6000 3425 50  0001 C CNN
	1    6000 3400
	-1   0    0    1   
$EndComp
Text GLabel 9650 1350 0    50   Input ~ 0
I2S_DATA
Entry Wire Line
	9500 1650 9600 1550
Entry Wire Line
	9500 1950 9600 1850
Text Label 9600 1550 0    50   ~ 0
I2S_BCK
Text Label 9600 1850 0    50   ~ 0
I2S_WS
Text Label 9600 2650 0    50   ~ 0
I2S_BCK
Text Label 9600 3950 0    50   ~ 0
I2S_BCK
Text Label 9600 5100 0    50   ~ 0
I2S_BCK
Text Label 9600 2900 0    50   ~ 0
I2S_WS
Text Label 9600 4250 0    50   ~ 0
I2S_WS
Text Label 9600 5350 0    50   ~ 0
I2S_WS
Entry Wire Line
	9500 2750 9600 2650
Entry Wire Line
	9500 3000 9600 2900
Entry Wire Line
	9500 4050 9600 3950
Entry Wire Line
	9500 4350 9600 4250
Entry Wire Line
	9500 5200 9600 5100
Entry Wire Line
	9500 5450 9600 5350
Wire Wire Line
	9600 2650 10800 2650
Wire Wire Line
	10800 2650 10800 2450
Wire Wire Line
	9600 2900 10900 2900
Wire Wire Line
	10900 2900 10900 2750
Wire Wire Line
	9600 3950 9950 3950
Wire Wire Line
	9600 4250 9950 4250
Wire Wire Line
	9600 5100 10850 5100
Wire Wire Line
	10850 5100 10850 4850
Wire Wire Line
	10850 4850 11250 4850
Wire Wire Line
	9600 5350 10950 5350
Wire Wire Line
	10950 5350 10950 5150
Wire Wire Line
	10950 5150 11250 5150
Entry Wire Line
	9500 3200 9600 3100
Entry Wire Line
	9500 3450 9600 3350
Text GLabel 9600 3100 2    50   BiDi ~ 0
I2S_BCK
Text GLabel 9600 3350 2    50   BiDi ~ 0
I2S_WS
$Comp
L power:GND #PWR046
U 1 1 5FF707D4
P 11650 3350
F 0 "#PWR046" H 11650 3100 50  0001 C CNN
F 1 "GND" H 11655 3177 50  0000 C CNN
F 2 "" H 11650 3350 50  0001 C CNN
F 3 "" H 11650 3350 50  0001 C CNN
	1    11650 3350
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR037
U 1 1 5FF7134B
P 10350 2450
F 0 "#PWR037" H 10350 2200 50  0001 C CNN
F 1 "GND" H 10355 2277 50  0000 C CNN
F 2 "" H 10350 2450 50  0001 C CNN
F 3 "" H 10350 2450 50  0001 C CNN
	1    10350 2450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR039
U 1 1 5FF71ACE
P 10350 4850
F 0 "#PWR039" H 10350 4600 50  0001 C CNN
F 1 "GND" H 10355 4677 50  0000 C CNN
F 2 "" H 10350 4850 50  0001 C CNN
F 3 "" H 10350 4850 50  0001 C CNN
	1    10350 4850
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR048
U 1 1 5FF722F6
P 11650 5750
F 0 "#PWR048" H 11650 5500 50  0001 C CNN
F 1 "GND" H 11655 5577 50  0000 C CNN
F 2 "" H 11650 5750 50  0001 C CNN
F 3 "" H 11650 5750 50  0001 C CNN
	1    11650 5750
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C14
U 1 1 5FF73A1C
P 10650 1050
F 0 "C14" V 10421 1050 50  0000 C CNN
F 1 "100nf" V 10512 1050 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 10650 1050 50  0001 C CNN
F 3 "~" H 10650 1050 50  0001 C CNN
	1    10650 1050
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR042
U 1 1 5FF77533
P 10750 1050
F 0 "#PWR042" H 10750 800 50  0001 C CNN
F 1 "GND" H 10755 877 50  0000 C CNN
F 2 "" H 10750 1050 50  0001 C CNN
F 3 "" H 10750 1050 50  0001 C CNN
	1    10750 1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	9600 1550 9950 1550
Wire Wire Line
	9600 1850 9950 1850
$Comp
L Device:C_Small C17
U 1 1 5FF7EFB3
P 11950 1950
F 0 "C17" V 11721 1950 50  0000 C CNN
F 1 "100nf" V 11812 1950 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 11950 1950 50  0001 C CNN
F 3 "~" H 11950 1950 50  0001 C CNN
	1    11950 1950
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR050
U 1 1 5FF80546
P 12050 1950
F 0 "#PWR050" H 12050 1700 50  0001 C CNN
F 1 "GND" H 12055 1777 50  0000 C CNN
F 2 "" H 12050 1950 50  0001 C CNN
F 3 "" H 12050 1950 50  0001 C CNN
	1    12050 1950
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C15
U 1 1 5FF81395
P 10700 3250
F 0 "C15" V 10471 3250 50  0000 C CNN
F 1 "100nf" V 10562 3250 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 10700 3250 50  0001 C CNN
F 3 "~" H 10700 3250 50  0001 C CNN
	1    10700 3250
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR043
U 1 1 5FF826B2
P 10800 3250
F 0 "#PWR043" H 10800 3000 50  0001 C CNN
F 1 "GND" H 10805 3077 50  0000 C CNN
F 2 "" H 10800 3250 50  0001 C CNN
F 3 "" H 10800 3250 50  0001 C CNN
	1    10800 3250
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C16
U 1 1 5FF84814
P 11800 4350
F 0 "C16" V 11571 4350 50  0000 C CNN
F 1 "100nf" V 11662 4350 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 11800 4350 50  0001 C CNN
F 3 "~" H 11800 4350 50  0001 C CNN
	1    11800 4350
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR049
U 1 1 5FF85B43
P 11900 4350
F 0 "#PWR049" H 11900 4100 50  0001 C CNN
F 1 "GND" H 11905 4177 50  0000 C CNN
F 2 "" H 11900 4350 50  0001 C CNN
F 3 "" H 11900 4350 50  0001 C CNN
	1    11900 4350
	1    0    0    -1  
$EndComp
Wire Wire Line
	11250 2850 11250 3350
Wire Wire Line
	11250 3350 11650 3350
Connection ~ 11650 3350
Wire Wire Line
	9950 1950 9950 2450
Wire Wire Line
	9950 2450 10350 2450
Connection ~ 10350 2450
Wire Wire Line
	9950 4350 9950 4850
Wire Wire Line
	9950 4850 10350 4850
Connection ~ 10350 4850
Wire Wire Line
	11250 5250 11250 5750
Wire Wire Line
	11250 5750 11650 5750
Connection ~ 11650 5750
Wire Wire Line
	9950 1650 9800 1650
Wire Wire Line
	9800 1650 9800 1050
Wire Wire Line
	9800 1050 10350 1050
Wire Wire Line
	10350 1150 10350 1050
Connection ~ 10350 1050
Wire Wire Line
	10350 1050 10550 1050
Wire Wire Line
	10750 4650 11250 4650
NoConn ~ 12050 5550
NoConn ~ 12050 5350
NoConn ~ 12050 5250
NoConn ~ 12050 5150
NoConn ~ 12050 5050
Wire Wire Line
	11650 2050 11650 1950
Wire Wire Line
	11850 1950 11650 1950
Connection ~ 11650 1950
Wire Wire Line
	11650 1950 11650 1850
Wire Wire Line
	11250 2550 11200 2550
Wire Wire Line
	11200 2550 11200 1950
Wire Wire Line
	11200 1950 11650 1950
Wire Wire Line
	10350 3150 10350 3250
Connection ~ 10350 3450
Wire Wire Line
	10350 3450 10350 3550
Wire Wire Line
	11250 4950 11000 4950
Wire Wire Line
	11000 4950 11000 4350
Wire Wire Line
	11000 4350 11650 4350
Wire Wire Line
	11650 4450 11650 4350
Connection ~ 11650 4350
Wire Wire Line
	11650 4350 11700 4350
Wire Wire Line
	10350 3450 9850 3450
Wire Wire Line
	9850 3450 9850 4050
Wire Wire Line
	9850 4050 9950 4050
Wire Wire Line
	11650 4200 11650 4350
Wire Wire Line
	10900 2750 11250 2750
Wire Wire Line
	10800 2450 11250 2450
Wire Wire Line
	10750 2250 11250 2250
Text GLabel 10750 1350 2    50   Output ~ 0
X_Enable
Text GLabel 10750 1450 2    50   Output ~ 0
X_Dir
Text GLabel 10750 1550 2    50   Output ~ 0
X_Step
Text GLabel 10750 1650 2    50   Output ~ 0
X_CS
Text GLabel 10750 1750 2    50   Output ~ 0
Y_Enable
Text GLabel 10750 1850 2    50   Output ~ 0
Y_Dir
Text GLabel 10750 1950 2    50   Output ~ 0
Y_Step
Text GLabel 10750 2050 2    50   Output ~ 0
Y_CS
Text GLabel 6250 2000 2    39   Output ~ 0
Z_Enable
Text GLabel 6250 2200 2    39   Output ~ 0
Z_Dir
Text GLabel 6250 2400 2    39   Output ~ 0
Z_Steo
Text GLabel 12050 2550 2    50   Output ~ 0
Z_CS
Text GLabel 12050 2650 2    50   Output ~ 0
A_Enable
Text GLabel 12050 2750 2    50   Output ~ 0
A_Dir
Text GLabel 12050 2850 2    50   Output ~ 0
A_Step
Text GLabel 12050 2950 2    50   Output ~ 0
A_CS
Text GLabel 10750 3750 2    50   Output ~ 0
B_Enable
Text GLabel 10750 3850 2    50   Output ~ 0
B_Dir
Text GLabel 10750 3950 2    50   Output ~ 0
B_Step
Text GLabel 10750 4050 2    50   Output ~ 0
B_CS
Text GLabel 10750 4150 2    50   Output ~ 0
C_Enable
Text GLabel 10750 4250 2    50   Output ~ 0
C_Dir
Text GLabel 10750 4350 2    50   Output ~ 0
C_Step
Text GLabel 10750 4450 2    50   Output ~ 0
C_CS
Text GLabel 12050 4650 2    50   Output ~ 0
I2SO_24
Text GLabel 12050 4850 2    50   Output ~ 0
I2SO_25
Text GLabel 12050 4750 2    50   Output ~ 0
I2SO_26
Text GLabel 12050 4950 2    50   Output ~ 0
I2SO_27
Wire Notes Line
	9200 700  9200 6050
Wire Notes Line
	9200 6050 12550 6050
Wire Notes Line
	12550 6050 12550 700 
Wire Notes Line
	12550 700  9200 700 
Text Notes 10950 5900 2    118  ~ 24
I2C Shift Registers
$Comp
L BDringController-rescue:Motor_driver-My_Library U10
U 1 1 5FFD0D45
P 13750 3100
F 0 "U10" H 14150 3900 50  0000 C CNN
F 1 "Y" H 13150 3900 118 0000 C CNN
F 2 "Modules:ClearpathDriver" H 13750 3100 50  0001 C CNN
F 3 "" H 13750 3100 50  0001 C CNN
	1    13750 3100
	1    0    0    -1  
$EndComp
$Comp
L BDringController-rescue:Motor_driver-My_Library U11
U 1 1 5FFD20FB
P 13750 4450
F 0 "U11" H 14150 5250 50  0000 C CNN
F 1 "z" H 13150 5250 118 0000 C CNN
F 2 "Modules:ClearpathDriver" H 13750 4450 50  0001 C CNN
F 3 "" H 13750 4450 50  0001 C CNN
	1    13750 4450
	1    0    0    -1  
$EndComp
Wire Wire Line
	14150 1200 14250 1200
Wire Wire Line
	14150 1300 14350 1300
Wire Wire Line
	14150 1800 14500 1800
Wire Wire Line
	14150 1900 14350 1900
Text GLabel 13350 1200 0    50   Input ~ 0
X_Enable
Text GLabel 13350 1900 0    50   Input ~ 0
X_Dir
Text GLabel 13350 1800 0    50   Input ~ 0
X_Step
Text GLabel 13350 1500 0    50   Input ~ 0
X_CS
Text GLabel 13350 2550 0    50   Input ~ 0
Y_Enable
Text GLabel 13350 3250 0    50   Input ~ 0
Y_Dir
Text GLabel 13350 3150 0    50   Input ~ 0
Y_Step
Text GLabel 13350 2850 0    50   Input ~ 0
Y_CS
Text GLabel 13350 3900 0    50   Input ~ 0
Z_Enable
Text GLabel 13350 4600 0    50   Input ~ 0
Z_Dir
Text GLabel 13350 4500 0    50   Input ~ 0
Z_Steo
Text GLabel 13350 4200 0    50   Input ~ 0
Z_CS
Text GLabel 13350 5300 0    50   Input ~ 0
A_Enable
Text GLabel 13350 6000 0    50   Input ~ 0
A_Dir
Text GLabel 13350 5900 0    50   Input ~ 0
A_Step
Text GLabel 13350 5600 0    50   Input ~ 0
A_CS
Text GLabel 13350 6700 0    50   Input ~ 0
B_Enable
Text GLabel 13350 7400 0    50   Input ~ 0
B_Dir
Text GLabel 13350 7300 0    50   Input ~ 0
B_Step
$Comp
L BDringController-rescue:Motor_driver-My_Library U12
U 1 1 5FFFEDE6
P 13750 5850
F 0 "U12" H 14150 6650 50  0000 C CNN
F 1 "A" H 13150 6700 118 0000 C CNN
F 2 "Modules:ClearpathDriver" H 13750 5850 50  0001 C CNN
F 3 "" H 13750 5850 50  0001 C CNN
	1    13750 5850
	1    0    0    -1  
$EndComp
$Comp
L BDringController-rescue:Motor_driver-My_Library U13
U 1 1 6000037A
P 13750 7250
F 0 "U13" H 14150 8050 50  0000 C CNN
F 1 "B" H 13150 8050 118 0000 C CNN
F 2 "Modules:ClearpathDriver" H 13750 7250 50  0001 C CNN
F 3 "" H 13750 7250 50  0001 C CNN
	1    13750 7250
	1    0    0    -1  
$EndComp
$Comp
L BDringController-rescue:Motor_driver-My_Library U14
U 1 1 6001366A
P 13750 8650
F 0 "U14" H 14150 9450 50  0000 C CNN
F 1 "C" H 13150 9400 118 0000 C CNN
F 2 "Modules:ClearpathDriver" H 13750 8650 50  0001 C CNN
F 3 "" H 13750 8650 50  0001 C CNN
	1    13750 8650
	1    0    0    -1  
$EndComp
$Comp
L Connector:RJ45 J17
U 1 1 600273E5
P 15250 2850
F 0 "J17" H 14920 2854 50  0000 R CNN
F 1 "RJ45" H 14920 2945 50  0000 R CNN
F 2 "Connector_RJ:RJ45_OST_PJ012-8P8CX_Vertical" V 15250 2875 50  0001 C CNN
F 3 "~" V 15250 2875 50  0001 C CNN
	1    15250 2850
	-1   0    0    1   
$EndComp
$Comp
L Connector:RJ45 J18
U 1 1 60029182
P 15250 4200
F 0 "J18" H 14920 4204 50  0000 R CNN
F 1 "RJ45" H 14920 4295 50  0000 R CNN
F 2 "Connector_RJ:RJ45_OST_PJ012-8P8CX_Vertical" V 15250 4225 50  0001 C CNN
F 3 "~" V 15250 4225 50  0001 C CNN
	1    15250 4200
	-1   0    0    1   
$EndComp
$Comp
L Connector:RJ45 J19
U 1 1 6002ABE4
P 15250 5600
F 0 "J19" H 14920 5604 50  0000 R CNN
F 1 "RJ45" H 14920 5695 50  0000 R CNN
F 2 "Connector_RJ:RJ45_OST_PJ012-8P8CX_Vertical" V 15250 5625 50  0001 C CNN
F 3 "~" V 15250 5625 50  0001 C CNN
	1    15250 5600
	-1   0    0    1   
$EndComp
$Comp
L Connector:RJ45 J20
U 1 1 6002C399
P 15250 7000
F 0 "J20" H 14920 7004 50  0000 R CNN
F 1 "RJ45" H 14920 7095 50  0000 R CNN
F 2 "Connector_RJ:RJ45_OST_PJ012-8P8CX_Vertical" V 15250 7025 50  0001 C CNN
F 3 "~" V 15250 7025 50  0001 C CNN
	1    15250 7000
	-1   0    0    1   
$EndComp
$Comp
L Connector:RJ45 J21
U 1 1 6002E092
P 15250 8400
F 0 "J21" H 14920 8404 50  0000 R CNN
F 1 "RJ45" H 14920 8495 50  0000 R CNN
F 2 "Connector_RJ:RJ45_OST_PJ012-8P8CX_Vertical" V 15250 8425 50  0001 C CNN
F 3 "~" V 15250 8425 50  0001 C CNN
	1    15250 8400
	-1   0    0    1   
$EndComp
Text GLabel 13350 7000 0    50   Input ~ 0
B_CS
Text GLabel 13350 8100 0    50   Input ~ 0
C_Enable
Text GLabel 13350 8800 0    50   Input ~ 0
C_Dir
Text GLabel 13350 8700 0    50   Input ~ 0
C_Step
Text GLabel 13350 8400 0    50   Input ~ 0
C_CS
Text GLabel 13350 1300 0    50   Input ~ 0
MS1
Text GLabel 13350 2650 0    50   Input ~ 0
MS1
Text GLabel 13350 4000 0    50   Input ~ 0
MS1
Text GLabel 13350 5400 0    50   Input ~ 0
MS1
Text GLabel 13350 6800 0    50   Input ~ 0
MS1
Text GLabel 13350 8200 0    50   Input ~ 0
MS1
Text GLabel 13350 8300 0    50   Input ~ 0
MS2
Text GLabel 13350 6900 0    50   Input ~ 0
MS2
Text GLabel 13350 5500 0    50   Input ~ 0
MS2
Text GLabel 13350 4100 0    50   Input ~ 0
MS2
Text GLabel 13350 2750 0    50   Input ~ 0
MS2
Text GLabel 13350 1400 0    50   Input ~ 0
MS2
Text GLabel 13350 1600 0    50   Input ~ 0
Step_R
Text GLabel 13350 2950 0    50   Input ~ 0
Step_R
Text GLabel 13350 4300 0    50   Input ~ 0
Step_R
Text GLabel 13350 1700 0    50   Input ~ 0
Step_S
Text GLabel 13350 3050 0    50   Input ~ 0
Step_S
Text GLabel 13350 4400 0    50   Input ~ 0
Step_S
Text GLabel 13350 5800 0    50   Input ~ 0
Step_S
Text GLabel 13350 5700 0    50   Input ~ 0
Step_R
Text GLabel 13350 7100 0    50   Input ~ 0
Step_R
Text GLabel 13350 8500 0    50   Input ~ 0
Step_R
Text GLabel 13350 7200 0    50   Input ~ 0
Step_S
Text GLabel 13350 8600 0    50   Input ~ 0
Step_S
Wire Notes Line
	12800 700  12800 9150
Wire Notes Line
	12800 9150 15800 9150
Wire Notes Line
	15800 9150 15800 700 
Wire Notes Line
	15800 700  12800 700 
Text Notes 12950 9100 0    118  ~ 24
Motor Drivers
$Comp
L BDringController-rescue:IO_connector-My_Library J8
U 1 1 60081B7B
P 6300 9650
F 0 "J8" H 5622 9546 50  0000 R CNN
F 1 "Module 2" H 6400 9700 50  0000 R CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x12_P2.54mm_Vertical" H 6200 9600 50  0001 C CNN
F 3 "" H 6200 9600 50  0001 C CNN
	1    6300 9650
	-1   0    0    1   
$EndComp
$Comp
L BDringController-rescue:IO_connector-My_Library J10
U 1 1 6008B1E6
P 7800 9650
F 0 "J10" H 7122 9546 50  0000 R CNN
F 1 "Module 3" H 7900 9700 50  0000 R CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x12_P2.54mm_Vertical" H 7700 9600 50  0001 C CNN
F 3 "" H 7700 9600 50  0001 C CNN
	1    7800 9650
	-1   0    0    1   
$EndComp
$Comp
L BDringController-rescue:IO_connector-My_Library J13
U 1 1 6008C404
P 9250 9650
F 0 "J13" H 8572 9546 50  0000 R CNN
F 1 "Module 4" H 9350 9700 50  0000 R CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x12_P2.54mm_Vertical" H 9150 9600 50  0001 C CNN
F 3 "" H 9150 9600 50  0001 C CNN
	1    9250 9650
	-1   0    0    1   
$EndComp
$Comp
L BDringController-rescue:IO_connector-My_Library J14
U 1 1 6008D55B
P 10750 9650
F 0 "J14" H 10072 9546 50  0000 R CNN
F 1 "Module 5" H 10850 9700 50  0000 R CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x12_P2.54mm_Vertical" H 10650 9600 50  0001 C CNN
F 3 "" H 10650 9600 50  0001 C CNN
	1    10750 9650
	-1   0    0    1   
$EndComp
$Comp
L power:VCC #PWR06
U 1 1 60091AD9
P 4150 9000
F 0 "#PWR06" H 4150 8850 50  0001 C CNN
F 1 "VCC" H 4165 9173 50  0000 C CNN
F 2 "" H 4150 9000 50  0001 C CNN
F 3 "" H 4150 9000 50  0001 C CNN
	1    4150 9000
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR044
U 1 1 600932D7
P 11550 9250
F 0 "#PWR044" H 11550 9000 50  0001 C CNN
F 1 "GND" H 11555 9077 50  0000 C CNN
F 2 "" H 11550 9250 50  0001 C CNN
F 3 "" H 11550 9250 50  0001 C CNN
	1    11550 9250
	1    0    0    -1  
$EndComp
Wire Wire Line
	11300 9200 11300 9300
Wire Wire Line
	10200 9200 10200 9300
Connection ~ 10200 9200
Wire Wire Line
	10200 9200 11300 9200
Wire Wire Line
	9800 9200 9800 9300
Connection ~ 9800 9200
Wire Wire Line
	9800 9200 10200 9200
Wire Wire Line
	8700 9300 8700 9200
Connection ~ 8700 9200
Wire Wire Line
	8700 9200 9800 9200
Wire Wire Line
	8350 9300 8350 9200
Connection ~ 8350 9200
Wire Wire Line
	8350 9200 8700 9200
Wire Wire Line
	7250 9300 7250 9200
Connection ~ 7250 9200
Wire Wire Line
	7250 9200 8350 9200
Wire Wire Line
	6850 9300 6850 9200
Connection ~ 6850 9200
Wire Wire Line
	6850 9200 7250 9200
Wire Wire Line
	5750 9300 5750 9200
Connection ~ 5750 9200
Wire Wire Line
	5750 9200 6850 9200
Wire Wire Line
	5350 9300 5350 9200
Connection ~ 5350 9200
Wire Wire Line
	5350 9200 5750 9200
Wire Wire Line
	4250 9300 4250 9200
Wire Wire Line
	4250 9200 5350 9200
Wire Wire Line
	10300 9050 10300 9300
Wire Wire Line
	8800 9300 8800 9050
Connection ~ 8800 9050
Wire Wire Line
	8800 9050 10300 9050
Wire Wire Line
	7350 9300 7350 9050
Connection ~ 7350 9050
Wire Wire Line
	7350 9050 8800 9050
Wire Wire Line
	5850 9300 5850 9050
Connection ~ 5850 9050
Wire Wire Line
	5850 9050 7350 9050
Wire Wire Line
	4350 9050 5850 9050
Wire Wire Line
	8900 9300 8900 9100
Connection ~ 8900 9100
Wire Wire Line
	8900 9100 10400 9100
Wire Wire Line
	5950 9300 5950 9100
Connection ~ 5950 9100
Wire Wire Line
	4450 9300 4450 9100
Wire Wire Line
	4450 9100 5950 9100
Text GLabel 5250 8850 1    39   BiDi ~ 0
GPIO12
Text GLabel 5150 8850 1    39   BiDi ~ 0
GPIO15
Text GLabel 5050 8850 1    39   BiDi ~ 0
GPIO13
Text GLabel 4950 8850 1    39   BiDi ~ 0
GPIO14
Text GLabel 6750 8850 1    39   BiDi ~ 0
GPIO12
Text GLabel 6650 8850 1    39   BiDi ~ 0
GPIO15
Text GLabel 6550 8850 1    39   BiDi ~ 0
GPIO13
Text GLabel 6450 8850 1    39   BiDi ~ 0
GPIO14
Text GLabel 9300 8700 1    39   BiDi ~ 0
GPIO12
Text GLabel 9200 8700 1    39   BiDi ~ 0
GPIO15
Text GLabel 9100 8700 1    39   BiDi ~ 0
GPIO13
Text GLabel 9000 8700 1    39   BiDi ~ 0
GPIO14
Text GLabel 11200 8900 1    39   BiDi ~ 0
GPIO12
Text GLabel 11100 8900 1    39   BiDi ~ 0
GPIO15
Text GLabel 11000 8900 1    39   BiDi ~ 0
GPIO13
Text GLabel 10900 8900 1    39   BiDi ~ 0
GPIO14
Text GLabel 10500 8900 1    50   Input ~ 0
I2SO_24
Text GLabel 10700 8900 1    50   Input ~ 0
I2SO_25
Text GLabel 10600 8900 1    50   Input ~ 0
I2SO_26
Text GLabel 10800 8900 1    50   Input ~ 0
I2SO_27
Text GLabel 9700 8850 1    39   BiDi ~ 0
GPIO12
Text GLabel 9600 8850 1    39   BiDi ~ 0
GPIO15
Text GLabel 9500 8850 1    39   BiDi ~ 0
GPIO13
Text GLabel 9400 8850 1    39   BiDi ~ 0
GPIO14
Text GLabel 7850 8750 1    39   BiDi ~ 0
GPIO27
Text GLabel 7750 8750 1    39   BiDi ~ 0
GPIO16
Text GLabel 7650 8750 1    39   BiDi ~ 0
GPIO04
Text GLabel 7550 8750 1    39   BiDi ~ 0
GPIO26
Text GLabel 6350 8750 1    39   BiDi ~ 0
C_Limit
Text GLabel 6250 8750 1    39   BiDi ~ 0
B_Limit
Text GLabel 6150 8750 1    39   BiDi ~ 0
GPIO25
Text GLabel 6050 8750 1    39   BiDi ~ 0
GPIO2
Text GLabel 4550 8700 1    39   BiDi ~ 0
X_Limit
Text GLabel 4650 8700 1    39   BiDi ~ 0
Y_Limit
Text GLabel 4750 8700 1    39   BiDi ~ 0
Z_Limit
Text GLabel 4850 8700 1    39   BiDi ~ 0
A_Limit
Wire Wire Line
	4950 8850 4950 9300
Wire Wire Line
	5050 8850 5050 9300
Wire Wire Line
	5150 8850 5150 9300
Wire Wire Line
	5250 8850 5250 9300
Wire Wire Line
	6050 8750 6050 9300
Wire Wire Line
	6150 8750 6150 9300
Wire Wire Line
	6250 8750 6250 9300
Wire Wire Line
	6350 8750 6350 9300
Wire Wire Line
	6450 8850 6450 9300
Wire Wire Line
	6550 8850 6550 9300
Wire Wire Line
	6650 8850 6650 9300
Wire Wire Line
	6750 8850 6750 9300
Wire Wire Line
	7550 8750 7550 9300
Wire Wire Line
	7650 8750 7650 9300
Wire Wire Line
	7750 8750 7750 9300
Wire Wire Line
	7850 8750 7850 9300
Wire Wire Line
	7950 8850 7950 9300
Wire Wire Line
	8050 8850 8050 9300
Wire Wire Line
	8150 8850 8150 9300
Wire Wire Line
	8250 8850 8250 9300
Wire Wire Line
	9000 8700 9000 9300
Wire Wire Line
	9100 8700 9100 9300
Wire Wire Line
	9200 8700 9200 9300
Wire Wire Line
	9300 8700 9300 9300
Wire Wire Line
	9400 8850 9400 9300
Wire Wire Line
	9500 8850 9500 9300
Wire Wire Line
	9600 8850 9600 9300
Wire Wire Line
	9700 8850 9700 9300
Wire Wire Line
	10500 8900 10500 9300
Wire Wire Line
	10600 8900 10600 9300
Wire Wire Line
	10700 8900 10700 9300
Wire Wire Line
	10800 8900 10800 9300
Wire Wire Line
	10900 8900 10900 9300
Wire Wire Line
	11000 8900 11000 9300
Wire Wire Line
	11100 8900 11100 9300
Wire Wire Line
	11200 8900 11200 9300
Text Notes 8450 8400 2    118  ~ 24
CNC I/O Modules
$Comp
L power:GND #PWR041
U 1 1 601F4664
P 10650 7850
F 0 "#PWR041" H 10650 7600 50  0001 C CNN
F 1 "GND" H 10655 7677 50  0000 C CNN
F 2 "" H 10650 7850 50  0001 C CNN
F 3 "" H 10650 7850 50  0001 C CNN
	1    10650 7850
	1    0    0    -1  
$EndComp
Wire Wire Line
	10650 7850 12450 7850
Wire Wire Line
	12450 7850 12450 7650
Wire Wire Line
	10750 7250 10650 7250
Wire Wire Line
	10650 7250 10650 7850
Connection ~ 10650 7850
Wire Wire Line
	10750 7050 10650 7050
NoConn ~ 10750 6750
NoConn ~ 10750 7450
Text GLabel 10350 7150 0    39   BiDi ~ 0
SCK
Text GLabel 10350 6950 0    39   BiDi ~ 0
MOSI
Text GLabel 10350 6850 0    39   BiDi ~ 0
CS_SD
Text GLabel 10350 7350 0    39   BiDi ~ 0
MISO
Wire Wire Line
	10350 6850 10750 6850
Wire Wire Line
	10350 6950 10750 6950
Wire Wire Line
	10350 7150 10750 7150
Wire Wire Line
	10350 7350 10750 7350
Wire Notes Line
	12550 6200 9900 6200
Wire Notes Line
	9900 6200 9900 8100
Wire Notes Line
	9900 8100 12550 8100
Wire Notes Line
	12550 8100 12550 6200
Wire Wire Line
	10650 7050 10650 6500
$Comp
L power:+3.3V #PWR040
U 1 1 602044AB
P 10650 6500
F 0 "#PWR040" H 10650 6350 50  0001 C CNN
F 1 "+3.3V" H 10665 6673 50  0000 C CNN
F 2 "" H 10650 6500 50  0001 C CNN
F 3 "" H 10650 6500 50  0001 C CNN
	1    10650 6500
	1    0    0    -1  
$EndComp
Text Notes 11050 8050 0    118  ~ 24
SD Card
$Comp
L power:GND #PWR033
U 1 1 60279820
P 8450 3700
F 0 "#PWR033" H 8450 3450 50  0001 C CNN
F 1 "GND" H 8455 3527 50  0000 C CNN
F 2 "" H 8450 3700 50  0001 C CNN
F 3 "" H 8450 3700 50  0001 C CNN
	1    8450 3700
	1    0    0    -1  
$EndComp
$Comp
L power:+3.3V #PWR034
U 1 1 6027A749
P 8550 6650
F 0 "#PWR034" H 8550 6500 50  0001 C CNN
F 1 "+3.3V" H 8565 6823 50  0000 C CNN
F 2 "" H 8550 6650 50  0001 C CNN
F 3 "" H 8550 6650 50  0001 C CNN
	1    8550 6650
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C9
U 1 1 6027D647
P 7350 3500
F 0 "C9" H 7258 3454 50  0000 R CNN
F 1 "100nf" H 7258 3545 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 7350 3500 50  0001 C CNN
F 3 "~" H 7350 3500 50  0001 C CNN
	1    7350 3500
	-1   0    0    1   
$EndComp
Wire Wire Line
	9950 3750 9950 3500
Wire Wire Line
	9950 3500 12050 3500
Wire Wire Line
	12050 3500 12050 3150
Wire Wire Line
	10600 3250 10350 3250
Connection ~ 10350 3250
Wire Wire Line
	10350 3250 10350 3450
Wire Wire Line
	7200 3700 7200 2850
Wire Wire Line
	7200 2850 7550 2850
Wire Wire Line
	6950 3350 6950 1150
$Comp
L Device:D_Schottky_Small D1
U 1 1 60339F50
P 6950 1050
F 0 "D1" V 6996 980 50  0000 R CNN
F 1 "B340A" H 6800 1100 50  0000 R CNN
F 2 "Diode_SMD:D_0805_2012Metric_Pad1.15x1.40mm_HandSolder" V 6950 1050 50  0001 C CNN
F 3 "~" V 6950 1050 50  0001 C CNN
	1    6950 1050
	0    -1   -1   0   
$EndComp
$Comp
L Device:C_Small C13
U 1 1 6034925A
P 8550 6850
F 0 "C13" H 8458 6804 50  0000 R CNN
F 1 "10uf" H 8458 6895 50  0000 R CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 8550 6850 50  0001 C CNN
F 3 "~" H 8550 6850 50  0001 C CNN
	1    8550 6850
	-1   0    0    1   
$EndComp
Wire Wire Line
	8350 2150 8450 2150
Wire Wire Line
	8450 2150 8450 3700
Wire Wire Line
	8350 1550 8450 1550
Wire Wire Line
	8450 1550 8450 2150
Connection ~ 8450 2150
$Comp
L Device:C_Small C12
U 1 1 6036FDC2
P 7950 1150
F 0 "C12" V 8179 1150 50  0000 C CNN
F 1 "10uf" V 8088 1150 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 7950 1150 50  0001 C CNN
F 3 "~" H 7950 1150 50  0001 C CNN
	1    7950 1150
	0    -1   -1   0   
$EndComp
Wire Wire Line
	7550 1650 7450 1650
Wire Wire Line
	7450 1650 7450 1150
Wire Wire Line
	7450 1150 7850 1150
Wire Wire Line
	8050 1150 8450 1150
Wire Wire Line
	8450 1150 8450 1550
Connection ~ 8450 1550
Text GLabel 7550 2250 0    39   BiDi ~ 0
X_Limit
Text GLabel 7550 2150 0    39   BiDi ~ 0
Y_Limit
Text GLabel 7550 2050 0    39   BiDi ~ 0
Z_Limit
Text GLabel 7550 1950 0    39   BiDi ~ 0
A_Limit
Text GLabel 7550 1750 0    39   BiDi ~ 0
C_Limit
Text GLabel 7550 1850 0    39   BiDi ~ 0
B_Limit
Text GLabel 7550 2350 0    39   BiDi ~ 0
GPIO25
Text GLabel 7550 2450 0    39   BiDi ~ 0
GPIO26
Text GLabel 7550 2550 0    39   BiDi ~ 0
GPIO27
Text GLabel 7550 2650 0    39   BiDi ~ 0
GPIO14
Text GLabel 7550 2950 0    39   BiDi ~ 0
GPIO13
Text GLabel 7550 2750 0    39   BiDi ~ 0
GPIO12
NoConn ~ 7550 3050
NoConn ~ 7550 3150
NoConn ~ 7550 3250
NoConn ~ 8350 3350
NoConn ~ 8350 3250
NoConn ~ 8350 3150
Text GLabel 8500 2650 2    39   BiDi ~ 0
GPIO16
Text GLabel 8500 2750 2    39   BiDi ~ 0
GPIO04
Text GLabel 8450 4700 2    39   BiDi ~ 0
GPIO15
Text GLabel 8450 4500 2    39   BiDi ~ 0
GPIO13
Text GLabel 8450 4800 2    39   BiDi ~ 0
GPIO12
Text GLabel 8450 4600 2    39   BiDi ~ 0
GPIO14
Text GLabel 8500 1150 2    39   BiDi ~ 0
EN
Text GLabel 8450 4300 2    39   BiDi ~ 0
EN
$Comp
L power:GND #PWR027
U 1 1 6042E6D2
P 7950 5200
F 0 "#PWR027" H 7950 4950 50  0001 C CNN
F 1 "GND" H 7955 5027 50  0000 C CNN
F 2 "" H 7950 5200 50  0001 C CNN
F 3 "" H 7950 5200 50  0001 C CNN
	1    7950 5200
	1    0    0    -1  
$EndComp
Text GLabel 8500 2950 2    39   BiDi ~ 0
GPIO2
Text GLabel 8500 3050 2    39   BiDi ~ 0
GPIO15
Text GLabel 8500 1750 2    39   BiDi ~ 0
I2S_BCK
Text GLabel 8500 2550 2    39   BiDi ~ 0
I2S_WS
Text GLabel 8500 2050 2    39   Input ~ 0
I2S_DATA
Text GLabel 8500 2350 2    39   BiDi ~ 0
SCK
Text GLabel 8500 1650 2    39   BiDi ~ 0
MOSI
Text GLabel 8500 2450 2    39   BiDi ~ 0
CS_SD
Text GLabel 8500 2250 2    39   BiDi ~ 0
MISO
Text GLabel 13350 750  0    39   BiDi ~ 0
X_Diag1
Text GLabel 13350 2050 0    39   BiDi ~ 0
Y_Diag1
Text GLabel 13350 3400 0    39   BiDi ~ 0
Z_Diag1
Text GLabel 13350 4750 0    39   BiDi ~ 0
A_Diag1
Text GLabel 13350 6150 0    39   BiDi ~ 0
B_Diag1
Text GLabel 13350 7550 0    39   BiDi ~ 0
C_Diag1
Wire Wire Line
	13850 3400 13350 3400
Wire Wire Line
	13850 2050 13350 2050
Wire Wire Line
	13850 750  13350 750 
Wire Wire Line
	9650 1350 9950 1350
Wire Wire Line
	13850 2150 13850 2050
Wire Wire Line
	13850 800  13850 750 
Wire Wire Line
	13850 3500 13850 3400
Wire Wire Line
	13850 4900 13850 4750
Wire Wire Line
	13850 6300 13850 6150
Wire Wire Line
	13350 6150 13850 6150
Wire Wire Line
	13850 7700 13850 7550
Wire Wire Line
	13350 7550 13850 7550
NoConn ~ 13650 7700
NoConn ~ 13650 6300
NoConn ~ 13650 2150
NoConn ~ 13650 800 
Wire Wire Line
	14150 2550 14250 2550
$Comp
L power:GND #PWR052
U 1 1 6058C8A5
P 14350 8900
F 0 "#PWR052" H 14350 8650 50  0001 C CNN
F 1 "GND" H 14355 8727 50  0000 C CNN
F 2 "" H 14350 8900 50  0001 C CNN
F 3 "" H 14350 8900 50  0001 C CNN
	1    14350 8900
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR053
U 1 1 6058EF8A
P 14500 950
F 0 "#PWR053" H 14500 800 50  0001 C CNN
F 1 "VCC" H 14515 1123 50  0000 C CNN
F 2 "" H 14500 950 50  0001 C CNN
F 3 "" H 14500 950 50  0001 C CNN
	1    14500 950 
	1    0    0    -1  
$EndComp
Wire Wire Line
	14500 950  14500 1800
Connection ~ 14500 1800
Wire Wire Line
	14150 3150 14500 3150
Wire Wire Line
	14500 3150 14500 2200
Wire Wire Line
	14500 4500 14500 3550
Wire Wire Line
	14150 4500 14500 4500
Connection ~ 14500 3150
Wire Wire Line
	14150 5900 14500 5900
Wire Wire Line
	14500 5900 14500 4900
Connection ~ 14500 4500
Wire Wire Line
	14150 7300 14500 7300
Wire Wire Line
	14500 7300 14500 6300
Connection ~ 14500 5900
Wire Wire Line
	14150 8700 14500 8700
Wire Wire Line
	14500 8700 14500 7700
Connection ~ 14500 7300
Wire Wire Line
	14150 8100 14250 8100
Wire Wire Line
	14250 8100 14250 6700
Connection ~ 14250 1200
Wire Wire Line
	14250 1200 14250 950 
Connection ~ 14250 2550
Wire Wire Line
	14250 2550 14250 1200
Wire Wire Line
	14150 3900 14250 3900
Connection ~ 14250 3900
Wire Wire Line
	14250 3900 14250 2550
Connection ~ 14250 5300
Wire Wire Line
	14250 5300 14250 3900
Wire Wire Line
	14150 5300 14250 5300
Wire Wire Line
	14150 6700 14250 6700
Connection ~ 14250 6700
Wire Wire Line
	14250 6700 14250 5300
Connection ~ 14250 8100
Wire Wire Line
	14350 8900 14350 8800
Connection ~ 14350 1900
Wire Wire Line
	14150 3250 14350 3250
Connection ~ 14350 3250
Wire Wire Line
	14350 3250 14350 2650
Wire Wire Line
	14150 4600 14350 4600
Connection ~ 14350 4600
Wire Wire Line
	14350 4600 14350 4000
Wire Wire Line
	14150 6000 14350 6000
Connection ~ 14350 6000
Wire Wire Line
	14350 6000 14350 5400
Wire Wire Line
	14150 7400 14350 7400
Connection ~ 14350 7400
Wire Wire Line
	14350 7400 14350 6800
Wire Wire Line
	14150 8800 14350 8800
Connection ~ 14350 8800
Wire Wire Line
	14350 8800 14350 8200
Wire Wire Line
	14150 5400 14350 5400
Connection ~ 14350 5400
Wire Wire Line
	14350 5400 14350 5050
Wire Wire Line
	14150 6800 14350 6800
Connection ~ 14350 6800
Wire Wire Line
	14350 6800 14350 6450
Wire Wire Line
	14150 8200 14350 8200
Connection ~ 14350 8200
Wire Wire Line
	14350 8200 14350 7850
Wire Wire Line
	14150 4000 14350 4000
Connection ~ 14350 4000
Wire Wire Line
	14350 4000 14350 3700
Connection ~ 14350 2650
Wire Wire Line
	14350 2650 14350 2350
Wire Wire Line
	14150 2650 14350 2650
Wire Wire Line
	14350 1900 14350 1300
Connection ~ 14350 1300
Text Notes 7900 5550 2    118  ~ 24
GRBL ESP32
$Comp
L BDringController-rescue:ESP32_38p-My_Library U1
U 1 1 60718252
P 4450 2500
F 0 "U1" V 5915 2550 50  0000 C CNN
F 1 "ESP32_38p" V 5824 2550 50  0000 C CNN
F 2 "Modules:ESP32_38p" H 4450 2500 50  0001 C CNN
F 3 "" H 4450 2500 50  0001 C CNN
	1    4450 2500
	0    -1   -1   0   
$EndComp
$Comp
L Connector:Conn_ARM_JTAG_SWD_10 J11
U 1 1 6071D43B
P 7950 4600
F 0 "J11" H 7507 4646 50  0000 R CNN
F 1 "JTAG" H 7507 4555 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_2x05_P2.54mm_Vertical" H 7950 4600 50  0001 C CNN
F 3 "http://infocenter.arm.com/help/topic/com.arm.doc.ddi0314h/DDI0314H_coresight_components_trm.pdf" V 7600 3350 50  0001 C CNN
	1    7950 4600
	1    0    0    -1  
$EndComp
Connection ~ 8450 3700
$Comp
L power:+3.3V #PWR026
U 1 1 60723261
P 7950 4000
F 0 "#PWR026" H 7950 3850 50  0001 C CNN
F 1 "+3.3V" H 7965 4173 50  0000 C CNN
F 2 "" H 7950 4000 50  0001 C CNN
F 3 "" H 7950 4000 50  0001 C CNN
	1    7950 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	7850 5200 7950 5200
Connection ~ 7950 5200
$Comp
L Device:CP1_Small C18
U 1 1 6079F485
P 14800 950
F 0 "C18" V 14850 750 50  0000 C CNN
F 1 "330uf" V 14750 700 50  0000 C CNN
F 2 "Capacitor_SMD:C_Elec_10x10.2" H 14800 950 50  0001 C CNN
F 3 "~" H 14800 950 50  0001 C CNN
	1    14800 950 
	0    -1   -1   0   
$EndComp
Wire Wire Line
	14350 1300 14350 1050
Wire Wire Line
	14900 1050 14900 950 
Wire Wire Line
	14350 1050 14900 1050
Wire Wire Line
	14700 950  14500 950 
Connection ~ 14500 950 
$Comp
L Device:CP1_Small C19
U 1 1 6082AE8E
P 14800 2200
F 0 "C19" V 14850 2000 50  0000 C CNN
F 1 "330uf" V 14750 1950 50  0000 C CNN
F 2 "Capacitor_SMD:C_Elec_10x10.2" H 14800 2200 50  0001 C CNN
F 3 "~" H 14800 2200 50  0001 C CNN
	1    14800 2200
	0    -1   -1   0   
$EndComp
$Comp
L Device:CP1_Small C20
U 1 1 6082BF48
P 14800 3550
F 0 "C20" V 14850 3350 50  0000 C CNN
F 1 "330uf" V 14750 3300 50  0000 C CNN
F 2 "Capacitor_SMD:C_Elec_10x10.2" H 14800 3550 50  0001 C CNN
F 3 "~" H 14800 3550 50  0001 C CNN
	1    14800 3550
	0    -1   -1   0   
$EndComp
$Comp
L Device:CP1_Small C21
U 1 1 6082CD88
P 14800 4900
F 0 "C21" V 14850 4700 50  0000 C CNN
F 1 "330uf" V 14750 4650 50  0000 C CNN
F 2 "Capacitor_SMD:C_Elec_10x10.2" H 14800 4900 50  0001 C CNN
F 3 "~" H 14800 4900 50  0001 C CNN
	1    14800 4900
	0    -1   -1   0   
$EndComp
$Comp
L Device:CP1_Small C22
U 1 1 6082DE8F
P 14800 6300
F 0 "C22" V 14850 6100 50  0000 C CNN
F 1 "330uf" V 14750 6050 50  0000 C CNN
F 2 "Capacitor_SMD:C_Elec_10x10.2" H 14800 6300 50  0001 C CNN
F 3 "~" H 14800 6300 50  0001 C CNN
	1    14800 6300
	0    -1   -1   0   
$EndComp
$Comp
L Device:CP1_Small C23
U 1 1 6082F01F
P 14800 7700
F 0 "C23" V 14850 7500 50  0000 C CNN
F 1 "330uf" V 14750 7450 50  0000 C CNN
F 2 "Capacitor_SMD:C_Elec_10x10.2" H 14800 7700 50  0001 C CNN
F 3 "~" H 14800 7700 50  0001 C CNN
	1    14800 7700
	0    -1   -1   0   
$EndComp
Wire Wire Line
	14700 7700 14500 7700
Connection ~ 14500 7700
Wire Wire Line
	14500 7700 14500 7300
Wire Wire Line
	14900 7700 14900 7850
Wire Wire Line
	14900 7850 14350 7850
Connection ~ 14350 7850
Wire Wire Line
	14350 7850 14350 7400
Wire Wire Line
	14700 6300 14500 6300
Connection ~ 14500 6300
Wire Wire Line
	14500 6300 14500 5900
Wire Wire Line
	14900 6300 14900 6450
Wire Wire Line
	14900 6450 14350 6450
Connection ~ 14350 6450
Wire Wire Line
	14350 6450 14350 6000
Wire Wire Line
	14700 4900 14500 4900
Connection ~ 14500 4900
Wire Wire Line
	14500 4900 14500 4500
Wire Wire Line
	14900 4900 14900 5050
Wire Wire Line
	14900 5050 14350 5050
Connection ~ 14350 5050
Wire Wire Line
	14350 5050 14350 4600
Wire Wire Line
	14700 3550 14500 3550
Connection ~ 14500 3550
Wire Wire Line
	14500 3550 14500 3150
Wire Wire Line
	14900 3550 14900 3700
Wire Wire Line
	14900 3700 14350 3700
Connection ~ 14350 3700
Wire Wire Line
	14350 3700 14350 3250
Wire Wire Line
	14900 2200 14900 2350
Wire Wire Line
	14900 2350 14350 2350
Connection ~ 14350 2350
Wire Wire Line
	14350 2350 14350 1900
Wire Wire Line
	14700 2200 14500 2200
Connection ~ 14500 2200
Wire Wire Line
	14500 2200 14500 1800
$Comp
L BDringController-rescue:IO_connector-My_Library J1
U 1 1 608D438E
P 4450 4350
F 0 "J1" H 3772 4246 50  0000 R CNN
F 1 "Module 1" H 4700 4400 50  0000 R CNN
F 2 "Connector_PinSocket_2.54mm:PinSocket_1x12_P2.54mm_Vertical" H 4350 4300 50  0001 C CNN
F 3 "" H 4350 4300 50  0001 C CNN
	1    4450 4350
	-1   0    0    1   
$EndComp
Wire Wire Line
	4000 2500 3900 2500
Wire Wire Line
	3900 2500 3900 3450
Wire Wire Line
	3900 3450 4900 3450
Wire Wire Line
	4900 3450 4900 4000
Wire Wire Line
	4800 3700 4800 4000
Wire Wire Line
	4000 2700 3950 2700
Wire Wire Line
	3950 2700 3950 3400
Wire Wire Line
	3950 3400 4700 3400
Wire Wire Line
	4700 3400 4700 4000
Wire Wire Line
	4000 2400 3850 2400
Wire Wire Line
	3850 2400 3850 3500
Wire Wire Line
	3850 3500 4600 3500
Wire Wire Line
	4600 3500 4600 4000
Wire Wire Line
	4000 2300 3800 2300
Wire Wire Line
	3800 2300 3800 3550
Wire Wire Line
	3800 3550 4500 3550
Wire Wire Line
	4500 3550 4500 4000
Wire Wire Line
	4000 2200 3750 2200
Wire Wire Line
	3750 2200 3750 3600
Wire Wire Line
	4400 3600 4400 4000
Wire Wire Line
	4000 2100 3700 2100
Wire Wire Line
	3700 2100 3700 3650
Wire Wire Line
	4300 3650 4300 4000
Wire Wire Line
	4000 2000 3650 2000
Wire Wire Line
	3650 2000 3650 3700
Wire Wire Line
	4200 3700 4200 4000
Wire Wire Line
	3650 3700 4200 3700
Wire Wire Line
	3700 3650 4300 3650
Wire Wire Line
	3750 3600 4400 3600
$Comp
L power:GND #PWR09
U 1 1 60AA806A
P 5350 1450
F 0 "#PWR09" H 5350 1200 50  0001 C CNN
F 1 "GND" H 5355 1277 50  0000 C CNN
F 2 "" H 5350 1450 50  0001 C CNN
F 3 "" H 5350 1450 50  0001 C CNN
	1    5350 1450
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR010
U 1 1 60AA9488
P 5350 4000
F 0 "#PWR010" H 5350 3750 50  0001 C CNN
F 1 "GND" H 5355 3827 50  0000 C CNN
F 2 "" H 5350 4000 50  0001 C CNN
F 3 "" H 5350 4000 50  0001 C CNN
	1    5350 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	8450 1150 8500 1150
Connection ~ 8450 1150
$Comp
L power:+5V #PWR018
U 1 1 60B28B05
P 6950 950
F 0 "#PWR018" H 6950 800 50  0001 C CNN
F 1 "+5V" H 6965 1123 50  0000 C CNN
F 2 "" H 6950 950 50  0001 C CNN
F 3 "" H 6950 950 50  0001 C CNN
	1    6950 950 
	1    0    0    -1  
$EndComp
Text GLabel 6950 3450 3    39   Input ~ 0
Vin
Text GLabel 3500 3300 0    39   Input ~ 0
Vin
Wire Wire Line
	6950 3350 6950 3450
Connection ~ 6950 3350
$Comp
L Device:C_Small C6
U 1 1 60B8E4F3
P 4750 3300
F 0 "C6" V 4800 3050 50  0000 C CNN
F 1 "100nf" V 4700 3050 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 4750 3300 50  0001 C CNN
F 3 "~" H 4750 3300 50  0001 C CNN
	1    4750 3300
	0    -1   -1   0   
$EndComp
Wire Wire Line
	4000 3100 4000 3300
Wire Wire Line
	5250 3300 5250 4000
Text GLabel 12050 2250 2    39   Output ~ 0
GrbZEn
Text GLabel 12050 2350 2    39   Output ~ 0
GrbZDir
Text GLabel 12050 2450 2    39   Output ~ 0
GrbZStep
$Comp
L BDringController-rescue:74LVC157A-My_Library U2
U 1 1 60C205F5
P 5900 2150
F 0 "U2" H 5925 1527 50  0000 C CNN
F 1 "74LVC157A" H 5925 1436 50  0000 C CNN
F 2 "Package_SO:SOP-16_3.9x9.9mm_P1.27mm" H 5900 2150 50  0001 C CNN
F 3 "" H 5900 2150 50  0001 C CNN
	1    5900 2150
	1    0    0    -1  
$EndComp
Text GLabel 5600 1950 0    39   Input ~ 0
GrbZEn
Text GLabel 5600 2150 0    39   Input ~ 0
GrbZDir
Text GLabel 5600 2350 0    39   Input ~ 0
GrbZStep
Wire Wire Line
	5150 2800 5150 3700
NoConn ~ 4000 2800
NoConn ~ 4000 2900
NoConn ~ 4000 3000
NoConn ~ 4800 3100
NoConn ~ 4800 3000
NoConn ~ 4800 2900
Wire Wire Line
	5200 2450 5600 2450
Wire Wire Line
	5250 2100 5250 2250
Wire Wire Line
	5250 2250 5600 2250
Wire Wire Line
	5300 2000 5300 2050
Wire Wire Line
	5300 2050 5600 2050
Wire Wire Line
	5600 1750 5600 1450
Wire Wire Line
	5600 1450 5950 1450
Wire Wire Line
	5600 1450 5350 1450
Connection ~ 5600 1450
Wire Wire Line
	5350 1300 5350 1450
Connection ~ 5350 1450
Wire Wire Line
	6050 1400 6050 1450
NoConn ~ 5600 2550
NoConn ~ 5600 2650
NoConn ~ 6250 2600
Text GLabel 5600 1850 0    39   Input ~ 0
TorchTrigger
Wire Wire Line
	14250 2550 14550 2550
Wire Wire Line
	14250 1200 14550 1200
Wire Wire Line
	14550 1200 14550 1400
Connection ~ 14550 1200
Wire Wire Line
	14550 1200 14850 1200
Wire Wire Line
	14850 1600 14700 1600
Wire Wire Line
	14850 1400 14700 1400
Wire Wire Line
	14150 1400 14400 1400
Wire Wire Line
	14400 1400 14400 1300
Wire Wire Line
	14400 1300 14850 1300
Wire Wire Line
	14150 1500 14850 1500
Wire Wire Line
	14850 1800 14700 1800
Wire Wire Line
	14700 1800 14700 1600
Wire Wire Line
	14700 1600 14700 1400
Connection ~ 14700 1600
Connection ~ 14700 1400
Wire Wire Line
	14700 1400 14550 1400
Wire Wire Line
	14650 1600 14650 1700
Wire Wire Line
	14650 1700 14850 1700
Wire Wire Line
	14150 1600 14650 1600
Wire Wire Line
	14150 1700 14600 1700
Wire Wire Line
	14600 1700 14600 1900
Wire Wire Line
	14600 1900 14850 1900
Wire Wire Line
	11300 9200 11550 9200
Wire Wire Line
	11550 9200 11550 9250
Connection ~ 11300 9200
Wire Wire Line
	4350 9050 4350 9300
Wire Wire Line
	14250 5300 14550 5300
Wire Wire Line
	14850 2750 14700 2750
Wire Wire Line
	14550 2750 14550 2550
Connection ~ 14550 2550
Wire Wire Line
	14550 2550 14850 2550
Wire Wire Line
	14850 2950 14700 2950
Wire Wire Line
	14700 2950 14700 2750
Connection ~ 14700 2750
Wire Wire Line
	14700 2750 14550 2750
Wire Wire Line
	14850 3150 14700 3150
Wire Wire Line
	14700 3150 14700 2950
Connection ~ 14700 2950
Wire Wire Line
	14150 2750 14400 2750
Wire Wire Line
	14400 2750 14400 2650
Wire Wire Line
	14400 2650 14850 2650
Wire Wire Line
	14150 2850 14850 2850
Wire Wire Line
	14650 2950 14650 3050
Wire Wire Line
	14650 3050 14850 3050
Wire Wire Line
	14150 2950 14650 2950
Wire Wire Line
	14150 3050 14600 3050
Wire Wire Line
	14600 3050 14600 3250
Wire Wire Line
	14600 3250 14850 3250
Wire Wire Line
	14250 3900 14550 3900
Wire Wire Line
	14550 3900 14550 4100
Wire Wire Line
	14550 4100 14700 4100
Connection ~ 14550 3900
Wire Wire Line
	14550 3900 14850 3900
Wire Wire Line
	14700 4100 14700 4300
Wire Wire Line
	14700 4300 14850 4300
Connection ~ 14700 4100
Wire Wire Line
	14700 4100 14850 4100
Wire Wire Line
	14700 4300 14700 4500
Wire Wire Line
	14700 4500 14850 4500
Connection ~ 14700 4300
Wire Wire Line
	14150 4100 14400 4100
Wire Wire Line
	14400 4100 14400 4000
Wire Wire Line
	14400 4000 14850 4000
Wire Wire Line
	14150 4200 14850 4200
Wire Wire Line
	14150 4300 14650 4300
Wire Wire Line
	14650 4300 14650 4400
Wire Wire Line
	14650 4400 14850 4400
Wire Wire Line
	14150 4400 14600 4400
Wire Wire Line
	14600 4400 14600 4600
Wire Wire Line
	14600 4600 14850 4600
Wire Wire Line
	14550 5300 14550 5500
Wire Wire Line
	14550 5500 14700 5500
Connection ~ 14550 5300
Wire Wire Line
	14550 5300 14850 5300
Wire Wire Line
	14700 5500 14700 5700
Wire Wire Line
	14700 5700 14850 5700
Connection ~ 14700 5500
Wire Wire Line
	14700 5500 14850 5500
Wire Wire Line
	14700 5700 14700 5900
Wire Wire Line
	14700 5900 14850 5900
Connection ~ 14700 5700
Wire Wire Line
	14150 5500 14400 5500
Wire Wire Line
	14400 5500 14400 5400
Wire Wire Line
	14400 5400 14850 5400
Wire Wire Line
	14150 5600 14850 5600
Wire Wire Line
	14150 5700 14650 5700
Wire Wire Line
	14650 5700 14650 5800
Wire Wire Line
	14650 5800 14850 5800
Wire Wire Line
	14150 5800 14600 5800
Wire Wire Line
	14600 5800 14600 6000
Wire Wire Line
	14600 6000 14850 6000
Wire Wire Line
	14250 6700 14550 6700
Wire Wire Line
	14550 6700 14550 6900
Wire Wire Line
	14550 6900 14700 6900
Connection ~ 14550 6700
Wire Wire Line
	14550 6700 14850 6700
Wire Wire Line
	14700 6900 14700 7100
Wire Wire Line
	14700 7100 14850 7100
Connection ~ 14700 6900
Wire Wire Line
	14700 6900 14850 6900
Wire Wire Line
	14700 7100 14700 7300
Wire Wire Line
	14700 7300 14850 7300
Connection ~ 14700 7100
Wire Wire Line
	14150 6900 14400 6900
Wire Wire Line
	14400 6900 14400 6800
Wire Wire Line
	14400 6800 14850 6800
Wire Wire Line
	14150 7000 14850 7000
Wire Wire Line
	14150 7100 14650 7100
Wire Wire Line
	14650 7100 14650 7200
Wire Wire Line
	14650 7200 14850 7200
Wire Wire Line
	14600 7200 14600 7400
Wire Wire Line
	14600 7400 14850 7400
Wire Wire Line
	14150 7200 14600 7200
Wire Wire Line
	14250 8100 14550 8100
Wire Wire Line
	14550 8100 14550 8300
Wire Wire Line
	14550 8300 14700 8300
Connection ~ 14550 8100
Wire Wire Line
	14550 8100 14850 8100
Wire Wire Line
	14700 8300 14700 8500
Wire Wire Line
	14700 8500 14850 8500
Connection ~ 14700 8300
Wire Wire Line
	14700 8300 14850 8300
Wire Wire Line
	14700 8500 14700 8700
Wire Wire Line
	14700 8700 14850 8700
Connection ~ 14700 8500
Wire Wire Line
	14150 8300 14400 8300
Wire Wire Line
	14400 8300 14400 8200
Wire Wire Line
	14400 8200 14850 8200
Wire Wire Line
	14150 8400 14850 8400
Wire Wire Line
	14150 8500 14650 8500
Wire Wire Line
	14650 8500 14650 8600
Wire Wire Line
	14650 8600 14850 8600
Wire Wire Line
	14150 8600 14600 8600
Wire Wire Line
	14600 8600 14600 8800
Wire Wire Line
	14600 8800 14850 8800
$Comp
L Device:L L1
U 1 1 6181AEE4
P 7100 6700
F 0 "L1" H 7152 6746 50  0000 L CNN
F 1 "22uh" H 7152 6655 50  0000 L CNN
F 2 "Inductor_SMD:L_Coilcraft_XAL5030" H 7100 6700 50  0001 C CNN
F 3 "~" H 7100 6700 50  0001 C CNN
	1    7100 6700
	0    -1   -1   0   
$EndComp
Text Notes 7250 6600 1    39   ~ 0
84223C
$Comp
L Device:CP1_Small C7
U 1 1 6185F741
P 7250 6800
F 0 "C7" H 7400 6800 50  0000 C CNN
F 1 "330uf" H 7400 6700 50  0000 C CNN
F 2 "Capacitor_SMD:C_Elec_10x10.2" H 7250 6800 50  0001 C CNN
F 3 "~" H 7250 6800 50  0001 C CNN
	1    7250 6800
	1    0    0    -1  
$EndComp
$Comp
L Device:L L2
U 1 1 61864FB2
P 7100 7500
F 0 "L2" H 7152 7546 50  0000 L CNN
F 1 "22uh" H 7152 7455 50  0000 L CNN
F 2 "Inductor_SMD:L_Coilcraft_XAL5030" H 7100 7500 50  0001 C CNN
F 3 "~" H 7100 7500 50  0001 C CNN
	1    7100 7500
	0    -1   -1   0   
$EndComp
Text Notes 7250 7400 1    39   ~ 0
84223C
$Comp
L Device:CP1_Small C8
U 1 1 61865B6B
P 7250 7600
F 0 "C8" H 7400 7600 50  0000 C CNN
F 1 "330uf" H 7400 7500 50  0000 C CNN
F 2 "Capacitor_SMD:C_Elec_10x10.2" H 7250 7600 50  0001 C CNN
F 3 "~" H 7250 7600 50  0001 C CNN
	1    7250 7600
	1    0    0    -1  
$EndComp
$Comp
L Connector:Screw_Terminal_01x02 J6
U 1 1 618A5113
P 5800 7200
F 0 "J6" H 5718 6875 50  0000 C CNN
F 1 "01x02" H 5718 6966 50  0000 C CNN
F 2 "TerminalBlock_4Ucon:TerminalBlock_4Ucon_1x02_P3.50mm_Horizontal" H 5800 7200 50  0001 C CNN
F 3 "~" H 5800 7200 50  0001 C CNN
	1    5800 7200
	-1   0    0    1   
$EndComp
Wire Wire Line
	6150 6700 6050 6700
Wire Wire Line
	6050 6700 6050 7200
Wire Wire Line
	6050 7500 6150 7500
Wire Wire Line
	6100 6900 6100 7100
Wire Wire Line
	6100 7700 6150 7700
Wire Wire Line
	6000 7200 6050 7200
Connection ~ 6050 7200
Wire Wire Line
	6050 7200 6050 7500
Wire Wire Line
	6000 7100 6100 7100
Connection ~ 6100 7100
Wire Wire Line
	6100 7100 6100 7700
Wire Wire Line
	6950 6900 7250 6900
Wire Wire Line
	6950 7700 7250 7700
$Comp
L power:GND #PWR024
U 1 1 61A2E9E9
P 7650 7800
F 0 "#PWR024" H 7650 7550 50  0001 C CNN
F 1 "GND" H 7655 7627 50  0000 C CNN
F 2 "" H 7650 7800 50  0001 C CNN
F 3 "" H 7650 7800 50  0001 C CNN
	1    7650 7800
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR022
U 1 1 61A2FD03
P 7600 7000
F 0 "#PWR022" H 7600 6750 50  0001 C CNN
F 1 "GND" H 7605 6827 50  0000 C CNN
F 2 "" H 7600 7000 50  0001 C CNN
F 3 "" H 7600 7000 50  0001 C CNN
	1    7600 7000
	1    0    0    -1  
$EndComp
Connection ~ 7250 6900
$Comp
L Device:C_Small C10
U 1 1 61AB7BAA
P 7600 6800
F 0 "C10" H 7800 6800 50  0000 C CNN
F 1 "100nf" H 7800 6700 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 7600 6800 50  0001 C CNN
F 3 "~" H 7600 6800 50  0001 C CNN
	1    7600 6800
	1    0    0    -1  
$EndComp
$Comp
L Device:C_Small C11
U 1 1 61ABA90B
P 7650 7600
F 0 "C11" H 7800 7650 50  0000 C CNN
F 1 "100nf" H 7850 7500 50  0000 C CNN
F 2 "Capacitor_SMD:C_0603_1608Metric_Pad1.08x0.95mm_HandSolder" H 7650 7600 50  0001 C CNN
F 3 "~" H 7650 7600 50  0001 C CNN
	1    7650 7600
	1    0    0    -1  
$EndComp
Wire Wire Line
	7250 6700 7600 6700
Connection ~ 7250 6700
Wire Wire Line
	7250 7500 7650 7500
Connection ~ 7250 7500
Wire Wire Line
	7250 6900 7250 7000
Wire Wire Line
	7250 7000 7600 7000
Wire Wire Line
	7250 7700 7250 7800
Wire Wire Line
	7250 7800 7650 7800
Connection ~ 7250 7700
Wire Wire Line
	7650 7800 7650 7700
Connection ~ 7650 7800
Wire Wire Line
	7600 7000 7600 6900
Connection ~ 7600 7000
$Comp
L power:+5V #PWR021
U 1 1 61C5E40D
P 7600 6600
F 0 "#PWR021" H 7600 6450 50  0001 C CNN
F 1 "+5V" H 7615 6773 50  0000 C CNN
F 2 "" H 7600 6600 50  0001 C CNN
F 3 "" H 7600 6600 50  0001 C CNN
	1    7600 6600
	1    0    0    -1  
$EndComp
$Comp
L power:+15V #PWR023
U 1 1 61C608A1
P 7650 7450
F 0 "#PWR023" H 7650 7300 50  0001 C CNN
F 1 "+15V" H 7665 7623 50  0000 C CNN
F 2 "" H 7650 7450 50  0001 C CNN
F 3 "" H 7650 7450 50  0001 C CNN
	1    7650 7450
	1    0    0    -1  
$EndComp
$Comp
L Regulator_Linear:TC1262-33 U4
U 1 1 61CC6125
P 8150 6700
F 0 "U4" H 8150 6942 50  0000 C CNN
F 1 "TC1262-33" H 8150 6851 50  0000 C CNN
F 2 "Package_TO_SOT_SMD:SOT-223" H 8150 6925 50  0001 C CIN
F 3 "http://ww1.microchip.com/downloads/en/DeviceDoc/21373C.pdf" H 8150 6400 50  0001 C CNN
	1    8150 6700
	1    0    0    -1  
$EndComp
Wire Wire Line
	7600 6700 7850 6700
Connection ~ 7600 6700
Wire Wire Line
	7600 7000 8150 7000
Wire Wire Line
	8150 7000 8550 7000
Wire Wire Line
	8550 7000 8550 6950
Connection ~ 8150 7000
Wire Wire Line
	8550 6750 8550 6700
Wire Wire Line
	8450 6700 8550 6700
Connection ~ 8550 6700
Wire Wire Line
	8550 6700 8550 6650
Wire Wire Line
	7600 6700 7600 6600
Wire Wire Line
	7650 7500 7650 7450
Connection ~ 7650 7500
Wire Wire Line
	5150 1600 5150 2600
Wire Wire Line
	5150 2600 5500 2600
Wire Wire Line
	5500 2600 5500 3300
Wire Wire Line
	5500 3300 5600 3300
Wire Wire Line
	5100 1700 5100 2650
Wire Wire Line
	5100 2650 5450 2650
Wire Wire Line
	5450 2650 5450 3400
Wire Wire Line
	5450 3400 5600 3400
$Comp
L power:+3.3V #PWR011
U 1 1 620F7251
P 5600 3050
F 0 "#PWR011" H 5600 2900 50  0001 C CNN
F 1 "+3.3V" H 5615 3223 50  0000 C CNN
F 2 "" H 5600 3050 50  0001 C CNN
F 3 "" H 5600 3050 50  0001 C CNN
	1    5600 3050
	1    0    0    -1  
$EndComp
Wire Wire Line
	5600 3200 5400 3200
Wire Wire Line
	5400 3200 5400 3800
Wire Wire Line
	5050 2400 5050 2700
Wire Wire Line
	5050 2700 5350 2700
Wire Wire Line
	5350 3600 5600 3600
Wire Wire Line
	5350 2700 5350 3600
Wire Wire Line
	5600 3100 5550 3100
Wire Wire Line
	5550 3100 5550 3500
Wire Wire Line
	5550 3500 5600 3500
Connection ~ 5600 3100
Wire Wire Line
	5600 3800 5400 3800
Connection ~ 5400 3800
Wire Wire Line
	5400 3800 5400 4000
Wire Notes Line
	3000 4700 6600 4700
Wire Notes Line
	6600 4700 6600 700 
Wire Notes Line
	6600 700  3000 700 
Wire Notes Line
	3000 700  3000 4700
Text Notes 5300 4600 0    118  ~ 24
Torch Height
$Comp
L power:+3.3V #PWR028
U 1 1 623D4D2E
P 8000 7450
F 0 "#PWR028" H 8000 7300 50  0001 C CNN
F 1 "+3.3V" H 7950 7600 50  0000 C CNN
F 2 "" H 8000 7450 50  0001 C CNN
F 3 "" H 8000 7450 50  0001 C CNN
	1    8000 7450
	1    0    0    -1  
$EndComp
$Comp
L power:+5V #PWR032
U 1 1 623D61A9
P 8200 7450
F 0 "#PWR032" H 8200 7300 50  0001 C CNN
F 1 "+5V" H 8215 7623 50  0000 C CNN
F 2 "" H 8200 7450 50  0001 C CNN
F 3 "" H 8200 7450 50  0001 C CNN
	1    8200 7450
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR031
U 1 1 623D7687
P 8100 7250
F 0 "#PWR031" H 8100 7100 50  0001 C CNN
F 1 "VCC" H 8115 7423 50  0000 C CNN
F 2 "" H 8100 7250 50  0001 C CNN
F 3 "" H 8100 7250 50  0001 C CNN
	1    8100 7250
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR047
U 1 1 623DA83A
P 11650 4200
F 0 "#PWR047" H 11650 4050 50  0001 C CNN
F 1 "VCC" H 11665 4373 50  0000 C CNN
F 2 "" H 11650 4200 50  0001 C CNN
F 3 "" H 11650 4200 50  0001 C CNN
	1    11650 4200
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR038
U 1 1 6247C7A8
P 10350 3150
F 0 "#PWR038" H 10350 3000 50  0001 C CNN
F 1 "VCC" H 10365 3323 50  0000 C CNN
F 2 "" H 10350 3150 50  0001 C CNN
F 3 "" H 10350 3150 50  0001 C CNN
	1    10350 3150
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR045
U 1 1 6251D647
P 11650 1850
F 0 "#PWR045" H 11650 1700 50  0001 C CNN
F 1 "VCC" H 11665 2023 50  0000 C CNN
F 2 "" H 11650 1850 50  0001 C CNN
F 3 "" H 11650 1850 50  0001 C CNN
	1    11650 1850
	1    0    0    -1  
$EndComp
$Comp
L power:VCC #PWR036
U 1 1 6251E872
P 10350 1050
F 0 "#PWR036" H 10350 900 50  0001 C CNN
F 1 "VCC" H 10365 1223 50  0000 C CNN
F 2 "" H 10350 1050 50  0001 C CNN
F 3 "" H 10350 1050 50  0001 C CNN
	1    10350 1050
	1    0    0    -1  
$EndComp
Wire Wire Line
	8000 7450 8000 7550
Wire Wire Line
	8100 7250 8100 7550
$Comp
L Connector:Screw_Terminal_01x02 J5
U 1 1 62610DAF
P 5800 6300
F 0 "J5" H 5718 6517 50  0000 C CNN
F 1 "Ext Mot Drv" H 5600 6450 50  0000 C CNN
F 2 "TerminalBlock_4Ucon:TerminalBlock_4Ucon_1x02_P3.50mm_Horizontal" H 5800 6300 50  0001 C CNN
F 3 "~" H 5800 6300 50  0001 C CNN
	1    5800 6300
	-1   0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x03_Male J9
U 1 1 62611804
P 6400 5900
F 0 "J9" H 6600 6050 50  0000 C CNN
F 1 "VMot" V 6350 5850 39  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 6400 5900 50  0001 C CNN
F 3 "~" H 6400 5900 50  0001 C CNN
	1    6400 5900
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR014
U 1 1 62664AA4
P 6000 6450
F 0 "#PWR014" H 6000 6200 50  0001 C CNN
F 1 "GND" H 6005 6277 50  0000 C CNN
F 2 "" H 6000 6450 50  0001 C CNN
F 3 "" H 6000 6450 50  0001 C CNN
	1    6000 6450
	1    0    0    -1  
$EndComp
$Comp
L power:+15V #PWR017
U 1 1 62665E69
P 6500 6150
F 0 "#PWR017" H 6500 6000 50  0001 C CNN
F 1 "+15V" H 6450 6300 50  0000 C CNN
F 2 "" H 6500 6150 50  0001 C CNN
F 3 "" H 6500 6150 50  0001 C CNN
	1    6500 6150
	-1   0    0    1   
$EndComp
$Comp
L power:Vdrive #PWR07
U 1 1 626B894F
P 4350 9000
F 0 "#PWR07" H 4150 8850 50  0001 C CNN
F 1 "Vdrive" H 4365 9173 50  0000 C CNN
F 2 "" H 4350 9000 50  0001 C CNN
F 3 "" H 4350 9000 50  0001 C CNN
	1    4350 9000
	1    0    0    -1  
$EndComp
$Comp
L power:Vdrive #PWR015
U 1 1 626BA47B
P 6400 6200
F 0 "#PWR015" H 6200 6050 50  0001 C CNN
F 1 "Vdrive" H 6415 6373 50  0000 C CNN
F 2 "" H 6400 6200 50  0001 C CNN
F 3 "" H 6400 6200 50  0001 C CNN
	1    6400 6200
	-1   0    0    1   
$EndComp
$Comp
L power:Vdrive #PWR051
U 1 1 626BC453
P 14250 950
F 0 "#PWR051" H 14050 800 50  0001 C CNN
F 1 "Vdrive" H 14265 1123 50  0000 C CNN
F 2 "" H 14250 950 50  0001 C CNN
F 3 "" H 14250 950 50  0001 C CNN
	1    14250 950 
	1    0    0    -1  
$EndComp
Wire Wire Line
	6000 6300 6300 6300
Wire Wire Line
	6300 6300 6300 6100
Wire Wire Line
	6400 6200 6400 6100
Wire Notes Line
	5700 5800 5700 8050
Wire Notes Line
	5700 8050 9050 8050
Wire Notes Line
	9050 5800 9050 8050
Wire Notes Line
	6750 700  6750 5600
Wire Notes Line
	6750 5600 9050 5600
Wire Notes Line
	9050 5600 9050 700 
Wire Notes Line
	6750 700  9050 700 
Wire Notes Line
	5700 5800 9050 5800
Text Notes 5800 8000 0    118  ~ 24
Power
$Comp
L Device:LED D2
U 1 1 62BE8310
P 7500 5950
F 0 "D2" H 7600 6050 50  0000 C CNN
F 1 "Vdrive" H 7400 6050 50  0000 C CNN
F 2 "Diode_SMD:D_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 7500 5950 50  0001 C CNN
F 3 "~" H 7500 5950 50  0001 C CNN
	1    7500 5950
	-1   0    0    1   
$EndComp
$Comp
L Device:LED D3
U 1 1 62BEB250
P 7500 6200
F 0 "D3" H 7600 6300 50  0000 C CNN
F 1 "5v" H 7400 6300 50  0000 C CNN
F 2 "Diode_SMD:D_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 7500 6200 50  0001 C CNN
F 3 "~" H 7500 6200 50  0001 C CNN
	1    7500 6200
	-1   0    0    1   
$EndComp
$Comp
L Device:R_US R20
U 1 1 62BF3591
P 7200 5950
F 0 "R20" V 7300 5850 50  0000 C CNN
F 1 "1k" V 7300 6000 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 7240 5940 50  0001 C CNN
F 3 "~" H 7200 5950 50  0001 C CNN
	1    7200 5950
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R21
U 1 1 62BF7CDF
P 7200 6200
F 0 "R21" V 7300 6100 50  0000 C CNN
F 1 "1k" V 7300 6250 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 7240 6190 50  0001 C CNN
F 3 "~" H 7200 6200 50  0001 C CNN
	1    7200 6200
	0    1    1    0   
$EndComp
$Comp
L Device:LED D4
U 1 1 62BF8E6B
P 8500 5950
F 0 "D4" H 8600 6050 50  0000 C CNN
F 1 "15v" H 8400 6050 50  0000 C CNN
F 2 "Diode_SMD:D_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 8500 5950 50  0001 C CNN
F 3 "~" H 8500 5950 50  0001 C CNN
	1    8500 5950
	-1   0    0    1   
$EndComp
$Comp
L Device:R_US R22
U 1 1 62BF9B7F
P 8200 5950
F 0 "R22" V 8300 5850 50  0000 C CNN
F 1 "1k" V 8300 6000 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 8240 5940 50  0001 C CNN
F 3 "~" H 8200 5950 50  0001 C CNN
	1    8200 5950
	0    1    1    0   
$EndComp
$Comp
L Device:LED D5
U 1 1 62C4AFCD
P 8500 6200
F 0 "D5" H 8600 6300 50  0000 C CNN
F 1 "3.3v" H 8400 6300 50  0000 C CNN
F 2 "Diode_SMD:D_0603_1608Metric_Pad1.05x0.95mm_HandSolder" H 8500 6200 50  0001 C CNN
F 3 "~" H 8500 6200 50  0001 C CNN
	1    8500 6200
	-1   0    0    1   
$EndComp
$Comp
L Device:R_US R23
U 1 1 62C4BD11
P 8200 6200
F 0 "R23" V 8300 6100 50  0000 C CNN
F 1 "1k" V 8300 6250 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 8240 6190 50  0001 C CNN
F 3 "~" H 8200 6200 50  0001 C CNN
	1    8200 6200
	0    1    1    0   
$EndComp
$Comp
L power:GND #PWR025
U 1 1 62C9DEA3
P 7800 6250
F 0 "#PWR025" H 7800 6000 50  0001 C CNN
F 1 "GND" H 7805 6077 50  0000 C CNN
F 2 "" H 7800 6250 50  0001 C CNN
F 3 "" H 7800 6250 50  0001 C CNN
	1    7800 6250
	1    0    0    -1  
$EndComp
$Comp
L power:GND #PWR035
U 1 1 62C9E3B8
P 8800 6250
F 0 "#PWR035" H 8800 6000 50  0001 C CNN
F 1 "GND" H 8805 6077 50  0000 C CNN
F 2 "" H 8800 6250 50  0001 C CNN
F 3 "" H 8800 6250 50  0001 C CNN
	1    8800 6250
	1    0    0    -1  
$EndComp
$Comp
L power:Vdrive #PWR019
U 1 1 62C9F7EA
P 7050 5950
F 0 "#PWR019" H 6850 5800 50  0001 C CNN
F 1 "Vdrive" V 7065 6078 50  0000 L CNN
F 2 "" H 7050 5950 50  0001 C CNN
F 3 "" H 7050 5950 50  0001 C CNN
	1    7050 5950
	0    -1   -1   0   
$EndComp
$Comp
L power:+5V #PWR020
U 1 1 62CA0C3B
P 7050 6200
F 0 "#PWR020" H 7050 6050 50  0001 C CNN
F 1 "+5V" H 7065 6373 50  0000 C CNN
F 2 "" H 7050 6200 50  0001 C CNN
F 3 "" H 7050 6200 50  0001 C CNN
	1    7050 6200
	0    -1   -1   0   
$EndComp
$Comp
L power:+15V #PWR029
U 1 1 62CA2244
P 8050 5950
F 0 "#PWR029" H 8050 5800 50  0001 C CNN
F 1 "+15V" H 8065 6123 50  0000 C CNN
F 2 "" H 8050 5950 50  0001 C CNN
F 3 "" H 8050 5950 50  0001 C CNN
	1    8050 5950
	0    -1   -1   0   
$EndComp
$Comp
L power:+3.3V #PWR030
U 1 1 62CA3910
P 8050 6200
F 0 "#PWR030" H 8050 6050 50  0001 C CNN
F 1 "+3.3V" H 8065 6373 50  0000 C CNN
F 2 "" H 8050 6200 50  0001 C CNN
F 3 "" H 8050 6200 50  0001 C CNN
	1    8050 6200
	0    -1   -1   0   
$EndComp
Wire Wire Line
	8650 5950 8800 5950
Wire Wire Line
	8800 5950 8800 6200
Wire Wire Line
	8650 6200 8800 6200
Connection ~ 8800 6200
Wire Wire Line
	8800 6200 8800 6250
Wire Wire Line
	7650 5950 7800 5950
Wire Wire Line
	7800 5950 7800 6200
Wire Wire Line
	7650 6200 7800 6200
Connection ~ 7800 6200
Wire Wire Line
	7800 6200 7800 6250
Text GLabel 4050 5450 0    39   BiDi ~ 0
X_Limit
Text GLabel 4050 5350 0    39   BiDi ~ 0
Y_Limit
Text GLabel 4050 5250 0    39   BiDi ~ 0
Z_Limit
Text GLabel 4050 5150 0    39   BiDi ~ 0
A_Limit
Text GLabel 4050 4950 0    39   BiDi ~ 0
C_Limit
Text GLabel 4050 5050 0    39   BiDi ~ 0
B_Limit
Text GLabel 4800 5450 2    39   BiDi ~ 0
X_Diag1
Text GLabel 4800 5350 2    39   BiDi ~ 0
Y_Diag1
Text GLabel 4800 5250 2    39   BiDi ~ 0
Z_Diag1
Text GLabel 4800 5150 2    39   BiDi ~ 0
A_Diag1
Text GLabel 4800 5050 2    39   BiDi ~ 0
B_Diag1
Text GLabel 4800 4950 2    39   BiDi ~ 0
C_Diag1
$Comp
L Connector:Conn_01x06_Male J3
U 1 1 62E4C04B
P 4600 5150
F 0 "J3" H 4650 5450 50  0000 C CNN
F 1 "Motor" H 4700 4750 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Vertical" H 4600 5150 50  0001 C CNN
F 3 "~" H 4600 5150 50  0001 C CNN
	1    4600 5150
	1    0    0    -1  
$EndComp
$Comp
L Connector:Conn_01x06_Male J2
U 1 1 62EA475E
P 4500 5150
F 0 "J2" H 4700 5450 50  0000 R CNN
F 1 "Jumper" H 4700 4750 50  0000 R CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x06_P2.54mm_Vertical" H 4500 5150 50  0001 C CNN
F 3 "~" H 4500 5150 50  0001 C CNN
	1    4500 5150
	-1   0    0    -1  
$EndComp
$Comp
L Device:R_US R16
U 1 1 62EAE3F5
P 3950 5550
F 0 "R16" V 3950 5150 50  0000 C CNN
F 1 "10k" V 3950 5300 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 3990 5540 50  0001 C CNN
F 3 "~" H 3950 5550 50  0001 C CNN
	1    3950 5550
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R17
U 1 1 62EB4073
P 4000 5650
F 0 "R17" V 4000 5250 50  0000 C CNN
F 1 "10k" V 4000 5400 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 4040 5640 50  0001 C CNN
F 3 "~" H 4000 5650 50  0001 C CNN
	1    4000 5650
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R18
U 1 1 62EB604B
P 4050 5750
F 0 "R18" V 4050 5350 50  0000 C CNN
F 1 "10k" V 4050 5500 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 4090 5740 50  0001 C CNN
F 3 "~" H 4050 5750 50  0001 C CNN
	1    4050 5750
	0    1    1    0   
$EndComp
$Comp
L Device:R_US R19
U 1 1 62EB6632
P 4100 5850
F 0 "R19" V 4100 5450 50  0000 C CNN
F 1 "10k" V 4100 5600 50  0000 C CNN
F 2 "Resistor_SMD:R_0603_1608Metric_Pad0.98x0.95mm_HandSolder" V 4140 5840 50  0001 C CNN
F 3 "~" H 4100 5850 50  0001 C CNN
	1    4100 5850
	0    1    1    0   
$EndComp
Wire Wire Line
	4050 4950 4100 4950
Wire Wire Line
	4050 5050 4150 5050
Wire Wire Line
	4050 5150 4200 5150
Wire Wire Line
	4050 5250 4250 5250
Wire Wire Line
	4050 5350 4300 5350
Wire Wire Line
	4050 5450 4300 5450
Wire Wire Line
	4100 5550 4100 4950
Connection ~ 4100 4950
Wire Wire Line
	4100 4950 4300 4950
Wire Wire Line
	4150 5650 4150 5050
Connection ~ 4150 5050
Wire Wire Line
	4150 5050 4300 5050
Wire Wire Line
	4200 5750 4200 5150
Connection ~ 4200 5150
Wire Wire Line
	4200 5150 4300 5150
Wire Wire Line
	4250 5850 4250 5250
Connection ~ 4250 5250
Wire Wire Line
	4250 5250 4300 5250
Wire Wire Line
	3800 5550 3800 5650
Wire Wire Line
	3800 5650 3850 5650
Wire Wire Line
	3850 5650 3850 5750
Wire Wire Line
	3850 5750 3900 5750
Connection ~ 3850 5650
Wire Wire Line
	3900 5750 3900 5850
Wire Wire Line
	3900 5850 3950 5850
Connection ~ 3900 5750
$Comp
L power:+3.3V #PWR05
U 1 1 6331D222
P 3900 5950
F 0 "#PWR05" H 3900 5800 50  0001 C CNN
F 1 "+3.3V" H 3850 6100 50  0000 C CNN
F 2 "" H 3900 5950 50  0001 C CNN
F 3 "" H 3900 5950 50  0001 C CNN
	1    3900 5950
	-1   0    0    1   
$EndComp
Wire Wire Line
	3900 5850 3900 5950
Connection ~ 3900 5850
$Comp
L Jumper:Jumper_3_Open JP1
U 1 1 633DD592
P 5550 5100
F 0 "JP1" H 5400 5250 50  0000 C CNN
F 1 "MS1" H 5550 5233 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 5550 5100 50  0001 C CNN
F 3 "~" H 5550 5100 50  0001 C CNN
	1    5550 5100
	1    0    0    -1  
$EndComp
$Comp
L Jumper:Jumper_3_Open JP2
U 1 1 6343BAE0
P 5550 5450
F 0 "JP2" H 5400 5600 50  0000 C CNN
F 1 "MS2" H 5550 5583 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 5550 5450 50  0001 C CNN
F 3 "~" H 5550 5450 50  0001 C CNN
	1    5550 5450
	1    0    0    -1  
$EndComp
$Comp
L Jumper:Jumper_3_Open JP3
U 1 1 63440661
P 6250 5100
F 0 "JP3" H 6100 5250 50  0000 C CNN
F 1 "MS1" H 6250 5233 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 6250 5100 50  0001 C CNN
F 3 "~" H 6250 5100 50  0001 C CNN
	1    6250 5100
	1    0    0    -1  
$EndComp
$Comp
L Jumper:Jumper_3_Open JP4
U 1 1 63442124
P 6250 5450
F 0 "JP4" H 6100 5600 50  0000 C CNN
F 1 "MS1" H 6250 5583 50  0000 C CNN
F 2 "Connector_PinHeader_2.54mm:PinHeader_1x03_P2.54mm_Vertical" H 6250 5450 50  0001 C CNN
F 3 "~" H 6250 5450 50  0001 C CNN
	1    6250 5450
	1    0    0    -1  
$EndComp
Text GLabel 6250 5250 2    39   Input ~ 0
Step_R
$Comp
L power:VCC #PWR016
U 1 1 6344486D
P 6500 5000
F 0 "#PWR016" H 6500 4850 50  0001 C CNN
F 1 "VCC" H 6515 5173 50  0000 C CNN
F 2 "" H 6500 5000 50  0001 C CNN
F 3 "" H 6500 5000 50  0001 C CNN
	1    6500 5000
	1    0    0    -1  
$EndComp
Text GLabel 6000 5000 1    39   BiDi ~ 0
MISO
$Comp
L power:GND #PWR013
U 1 1 6344702E
P 6000 5500
F 0 "#PWR013" H 6000 5250 50  0001 C CNN
F 1 "GND" H 6005 5327 50  0000 C CNN
F 2 "" H 6000 5500 50  0001 C CNN
F 3 "" H 6000 5500 50  0001 C CNN
	1    6000 5500
	1    0    0    -1  
$EndComp
Text GLabel 6250 5600 2    39   Input ~ 0
Step_S
Text GLabel 5600 5250 2    39   Input ~ 0
MS1
Text GLabel 5600 5600 2    39   Input ~ 0
MS2
$Comp
L power:VCC #PWR012
U 1 1 6345009F
P 5800 5000
F 0 "#PWR012" H 5800 4850 50  0001 C CNN
F 1 "VCC" H 5815 5173 50  0000 C CNN
F 2 "" H 5800 5000 50  0001 C CNN
F 3 "" H 5800 5000 50  0001 C CNN
	1    5800 5000
	1    0    0    -1  
$EndComp
Text GLabel 5300 5000 1    39   BiDi ~ 0
MOSI
Text GLabel 5300 5350 1    39   BiDi ~ 0
SCK
Wire Wire Line
	5300 5100 5300 5000
Wire Wire Line
	5800 5100 5800 5000
Wire Wire Line
	6000 5100 6000 5000
Wire Wire Line
	6500 5100 6500 5000
Wire Wire Line
	5550 5250 5600 5250
Wire Wire Line
	5550 5600 5600 5600
Wire Wire Line
	5300 5450 5300 5350
Wire Wire Line
	6000 5500 6000 5450
Wire Wire Line
	5800 5450 5800 5100
Connection ~ 5800 5100
Wire Wire Line
	6500 5450 6500 5100
Connection ~ 6500 5100
Wire Notes Line
	6600 4750 3450 4750
Wire Notes Line
	3450 4750 3450 6200
Wire Notes Line
	3450 6200 4650 6200
Wire Notes Line
	4650 6200 4650 5750
Wire Notes Line
	4650 5750 6600 5750
Wire Notes Line
	6600 5750 6600 4750
Text Notes 4350 5750 0    118  ~ 24
Motor Config
$Comp
L power:GND #PWR04
U 1 1 638B4E60
P 3500 2700
F 0 "#PWR04" H 3500 2450 50  0001 C CNN
F 1 "GND" H 3505 2527 50  0000 C CNN
F 2 "" H 3500 2700 50  0001 C CNN
F 3 "" H 3500 2700 50  0001 C CNN
	1    3500 2700
	1    0    0    -1  
$EndComp
Wire Wire Line
	4000 2600 3500 2600
Wire Wire Line
	3500 2600 3500 2700
Wire Wire Line
	4000 3300 4650 3300
Wire Wire Line
	3500 3300 4000 3300
Connection ~ 4000 3300
Wire Wire Line
	5200 1400 5200 2450
Connection ~ 5250 4000
Wire Wire Line
	5250 4000 5350 4000
Wire Wire Line
	5000 4000 5250 4000
Wire Wire Line
	4800 1300 5350 1300
Wire Wire Line
	4800 1400 5200 1400
Wire Wire Line
	4800 1600 5150 1600
Wire Wire Line
	4800 1700 5100 1700
Wire Wire Line
	4800 2000 5300 2000
Wire Wire Line
	4800 2100 5250 2100
Wire Wire Line
	4800 2400 5050 2400
Wire Wire Line
	4800 2800 5150 2800
Wire Wire Line
	4850 3300 5250 3300
Wire Wire Line
	4800 3700 5150 3700
Wire Wire Line
	5400 4000 5350 4000
Connection ~ 5350 4000
Text GLabel 7950 8850 1    39   BiDi ~ 8
TCHIO22
Text GLabel 8050 8850 1    39   BiDi ~ 8
TCHIO21
Text GLabel 8150 8850 1    39   BiDi ~ 8
TCHIO17
Text GLabel 4800 1500 2    39   BiDi ~ 8
TCHIO22
Text GLabel 4800 1800 2    39   BiDi ~ 8
TCHIO21
Text GLabel 4800 2300 2    39   BiDi ~ 8
TCHIO17
$Comp
L power:GND #PWR08
U 1 1 642F7395
P 4800 1900
F 0 "#PWR08" H 4800 1650 50  0001 C CNN
F 1 "GND" H 4805 1727 50  0000 C CNN
F 2 "" H 4800 1900 50  0001 C CNN
F 3 "" H 4800 1900 50  0001 C CNN
	1    4800 1900
	0    -1   -1   0   
$EndComp
NoConn ~ 4800 2500
NoConn ~ 4800 2600
NoConn ~ 4800 2700
NoConn ~ 4000 1600
NoConn ~ 4000 1700
NoConn ~ 5600 3700
Text Notes 8150 9850 2    39   ~ 8
IO from GRBL and Toarch
Wire Wire Line
	8350 1650 8500 1650
Wire Wire Line
	8350 1750 8500 1750
Wire Wire Line
	8350 2050 8500 2050
Wire Wire Line
	8350 2250 8500 2250
Wire Wire Line
	8350 2350 8500 2350
Wire Wire Line
	8350 2450 8500 2450
Wire Wire Line
	8350 2550 8500 2550
Wire Wire Line
	8350 2650 8500 2650
Wire Wire Line
	8350 2750 8500 2750
Wire Wire Line
	8350 3050 8500 3050
Wire Wire Line
	8350 2950 8500 2950
NoConn ~ 8350 2850
NoConn ~ 8350 1850
NoConn ~ 8350 1950
NoConn ~ 7550 1550
Text GLabel 13350 3500 0    39   BiDi ~ 8
TCHIO35
Wire Wire Line
	13350 3500 13650 3500
NoConn ~ 4000 1400
$Comp
L power:+3.3V #PWR0101
U 1 1 601C116C
P 6050 1400
F 0 "#PWR0101" H 6050 1250 50  0001 C CNN
F 1 "+3.3V" H 6065 1573 50  0000 C CNN
F 2 "" H 6050 1400 50  0001 C CNN
F 3 "" H 6050 1400 50  0001 C CNN
	1    6050 1400
	1    0    0    -1  
$EndComp
NoConn ~ 4000 1300
NoConn ~ 8800 3250
Wire Wire Line
	6950 3350 7350 3350
Wire Wire Line
	7200 3700 7350 3700
Wire Wire Line
	7350 3400 7350 3350
Connection ~ 7350 3350
Wire Wire Line
	7350 3350 7550 3350
Wire Wire Line
	7350 3600 7350 3700
Connection ~ 7350 3700
Wire Wire Line
	7350 3700 8450 3700
Wire Wire Line
	6500 6150 6500 6100
Wire Wire Line
	6150 6900 6100 6900
Wire Wire Line
	6000 6450 6000 6400
Wire Wire Line
	8200 7550 8200 7450
Wire Wire Line
	4350 9050 4350 9000
Connection ~ 4350 9050
Wire Wire Line
	10400 9300 10400 9100
NoConn ~ 4800 2200
Wire Wire Line
	5600 3100 5600 3050
Wire Wire Line
	5950 9100 7450 9100
Wire Wire Line
	7450 9300 7450 9100
Connection ~ 7450 9100
Wire Wire Line
	7450 9100 8900 9100
$Comp
L power:Vdrive #PWR0102
U 1 1 60C09340
P 4000 4000
F 0 "#PWR0102" H 3800 3850 50  0001 C CNN
F 1 "Vdrive" H 4015 4173 50  0000 C CNN
F 2 "" H 4000 4000 50  0001 C CNN
F 3 "" H 4000 4000 50  0001 C CNN
	1    4000 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	4450 9100 4150 9100
Wire Wire Line
	4150 9100 4150 9000
Connection ~ 4450 9100
$Comp
L power:GND #PWR0103
U 1 1 60D41380
P 3650 4000
F 0 "#PWR0103" H 3650 3750 50  0001 C CNN
F 1 "GND" H 3655 3827 50  0000 C CNN
F 2 "" H 3650 4000 50  0001 C CNN
F 3 "" H 3650 4000 50  0001 C CNN
	1    3650 4000
	1    0    0    -1  
$EndComp
Wire Wire Line
	3650 4000 3900 4000
$Comp
L power:VCC #PWR0104
U 1 1 60DAD77D
P 3500 3800
F 0 "#PWR0104" H 3500 3650 50  0001 C CNN
F 1 "VCC" H 3515 3973 50  0000 C CNN
F 2 "" H 3500 3800 50  0001 C CNN
F 3 "" H 3500 3800 50  0001 C CNN
	1    3500 3800
	1    0    0    -1  
$EndComp
Wire Wire Line
	3500 3800 4100 3800
Wire Wire Line
	4100 3800 4100 4000
NoConn ~ 4000 1500
Text GLabel 4000 1900 0    39   Input ~ 0
TorchTrigger
Text GLabel 8250 8850 1    39   Output ~ 0
TorchTrigger
Text GLabel 4000 1800 0    39   BiDi ~ 8
TCHIO35
$Comp
L Connector:RJ45 J16
U 1 1 5FF52F1E
P 15250 1500
F 0 "J16" H 14920 1504 50  0000 R CNN
F 1 "RJ45" H 14920 1595 50  0000 R CNN
F 2 "Connector_RJ:RJ45_OST_PJ012-8P8CX_Vertical" V 15250 1525 50  0001 C CNN
F 3 "~" V 15250 1525 50  0001 C CNN
	1    15250 1500
	-1   0    0    1   
$EndComp
Text GLabel 13350 4850 0    39   BiDi ~ 8
TCHIO35
Wire Wire Line
	13350 4750 13850 4750
Wire Wire Line
	13350 4850 13650 4850
Wire Wire Line
	13650 4850 13650 4900
Wire Wire Line
	4550 9300 4550 8700
Wire Wire Line
	4650 9300 4650 8700
Wire Wire Line
	4750 9300 4750 8700
Wire Wire Line
	4850 9300 4850 8700
Wire Notes Line
	11700 8200 3900 8200
Wire Notes Line
	3900 8200 3900 10100
Wire Notes Line
	3900 10100 11700 10100
Wire Notes Line
	11700 8200 11700 10100
$Comp
L Mechanical:MountingHole_Pad H1
U 1 1 600734B1
P 3700 6750
F 0 "H1" H 3800 6753 50  0000 L CNN
F 1 "~" H 3800 6708 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.7mm_M2.5_DIN965_Pad_TopBottom" H 3700 6750 50  0001 C CNN
F 3 "~" H 3700 6750 50  0001 C CNN
	1    3700 6750
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H3
U 1 1 60076F5D
P 3950 6750
F 0 "H3" H 4050 6753 50  0000 L CNN
F 1 "~" H 4050 6708 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.7mm_M2.5_DIN965_Pad_TopBottom" H 3950 6750 50  0001 C CNN
F 3 "~" H 3950 6750 50  0001 C CNN
	1    3950 6750
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H5
U 1 1 6007803E
P 4200 6750
F 0 "H5" H 4300 6753 50  0000 L CNN
F 1 "~" H 4300 6708 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.7mm_M2.5_DIN965_Pad_TopBottom" H 4200 6750 50  0001 C CNN
F 3 "~" H 4200 6750 50  0001 C CNN
	1    4200 6750
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H7
U 1 1 60079ED5
P 4450 6750
F 0 "H7" H 4550 6753 50  0000 L CNN
F 1 "~" H 4550 6708 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.7mm_M2.5_DIN965_Pad_TopBottom" H 4450 6750 50  0001 C CNN
F 3 "~" H 4450 6750 50  0001 C CNN
	1    4450 6750
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H9
U 1 1 6007AFDE
P 4700 6750
F 0 "H9" H 4800 6753 50  0000 L CNN
F 1 "~" H 4800 6708 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.7mm_M2.5_DIN965_Pad_TopBottom" H 4700 6750 50  0001 C CNN
F 3 "~" H 4700 6750 50  0001 C CNN
	1    4700 6750
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H11
U 1 1 6007DDE5
P 4950 6750
F 0 "H11" H 5050 6753 50  0000 L CNN
F 1 "~" H 5050 6708 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.7mm_M2.5_DIN965_Pad_TopBottom" H 4950 6750 50  0001 C CNN
F 3 "~" H 4950 6750 50  0001 C CNN
	1    4950 6750
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H2
U 1 1 6007EF0F
P 3700 7050
F 0 "H2" H 3800 7053 50  0000 L CNN
F 1 "~" H 3800 7008 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.7mm_M2.5_DIN965_Pad_TopBottom" H 3700 7050 50  0001 C CNN
F 3 "~" H 3700 7050 50  0001 C CNN
	1    3700 7050
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H4
U 1 1 6007FCC9
P 3950 7050
F 0 "H4" H 4050 7053 50  0000 L CNN
F 1 "~" H 4050 7008 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.7mm_M2.5_DIN965_Pad_TopBottom" H 3950 7050 50  0001 C CNN
F 3 "~" H 3950 7050 50  0001 C CNN
	1    3950 7050
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H6
U 1 1 6007FCD3
P 4200 7050
F 0 "H6" H 4300 7053 50  0000 L CNN
F 1 "~" H 4300 7008 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.7mm_M2.5_DIN965_Pad_TopBottom" H 4200 7050 50  0001 C CNN
F 3 "~" H 4200 7050 50  0001 C CNN
	1    4200 7050
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H8
U 1 1 6007FCDD
P 4450 7050
F 0 "H8" H 4550 7053 50  0000 L CNN
F 1 "~" H 4550 7008 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.7mm_M2.5_DIN965_Pad_TopBottom" H 4450 7050 50  0001 C CNN
F 3 "~" H 4450 7050 50  0001 C CNN
	1    4450 7050
	1    0    0    -1  
$EndComp
$Comp
L Mechanical:MountingHole_Pad H10
U 1 1 6007FCE7
P 4700 7050
F 0 "H10" H 4800 7053 50  0000 L CNN
F 1 "~" H 4800 7008 50  0000 L CNN
F 2 "MountingHole:MountingHole_2.7mm_M2.5_DIN965_Pad_TopBottom" H 4700 7050 50  0001 C CNN
F 3 "~" H 4700 7050 50  0001 C CNN
	1    4700 7050
	1    0    0    -1  
$EndComp
Wire Wire Line
	3700 6850 3950 6850
Wire Wire Line
	4200 6850 3950 6850
Connection ~ 3950 6850
Wire Wire Line
	4200 6850 4450 6850
Connection ~ 4200 6850
Wire Wire Line
	4450 6850 4700 6850
Connection ~ 4450 6850
Wire Wire Line
	4700 6850 4950 6850
Connection ~ 4700 6850
Wire Wire Line
	4950 6850 4950 7150
Wire Wire Line
	4950 7150 4700 7150
Connection ~ 4950 6850
Wire Wire Line
	4700 7150 4450 7150
Connection ~ 4700 7150
Wire Wire Line
	4450 7150 4200 7150
Connection ~ 4450 7150
Wire Wire Line
	4200 7150 3950 7150
Connection ~ 4200 7150
Wire Wire Line
	3950 7150 3700 7150
Wire Bus Line
	9500 1650 9500 5450
Connection ~ 3950 7150
$Comp
L power:GND #PWR01
U 1 1 6043AB74
P 4950 7150
F 0 "#PWR01" H 4950 6900 50  0001 C CNN
F 1 "GND" H 4955 6977 50  0000 C CNN
F 2 "" H 4950 7150 50  0001 C CNN
F 3 "" H 4950 7150 50  0001 C CNN
	1    4950 7150
	1    0    0    -1  
$EndComp
Connection ~ 4950 7150
$EndSCHEMATC
