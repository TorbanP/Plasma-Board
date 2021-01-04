EESchema Schematic File Version 4
EELAYER 30 0
EELAYER END
$Descr A3 16535 11693
encoding utf-8
Sheet 1 1
Title "ESP32x2 GRBL Plasma Controller"
Date "2021-01-03"
Rev "1"
Comp ""
Comment1 ""
Comment2 ""
Comment3 ""
Comment4 ""
$EndDescr
$Comp
L Connector:RJ45_Shielded J?
U 1 1 5FF25473
P 2500 6200
F 0 "J?" V 2150 6600 50  0000 L CNN
F 1 "RJ45_Shielded" V 2150 5800 50  0000 L CNN
F 2 "" V 2500 6225 50  0001 C CNN
F 3 "~" V 2500 6225 50  0001 C CNN
	1    2500 6200
	0    -1   -1   0   
$EndComp
$Comp
L power:GND #PWR?
U 1 1 5FF2B947
P 3050 6250
F 0 "#PWR?" H 3050 6000 50  0001 C CNN
F 1 "GND" H 3055 6077 50  0000 C CNN
F 2 "" H 3050 6250 50  0001 C CNN
F 3 "" H 3050 6250 50  0001 C CNN
	1    3050 6250
	1    0    0    -1  
$EndComp
Wire Wire Line
	3000 6200 3050 6200
Wire Wire Line
	3050 6200 3050 6250
$Comp
L 111_Torban_Symbols:ESP32_DEV-38Pin_BOB U?
U 1 1 5FF26BC3
P 5600 6350
F 0 "U?" H 5457 8046 50  0000 R CNN
F 1 "ESP32_DEV-38Pin_BOB" H 5457 7955 50  0000 R CNN
F 2 "" H 5700 9700 50  0001 C CNN
F 3 "" H 5700 9700 50  0001 C CNN
	1    5600 6350
	1    0    0    -1  
$EndComp
$EndSCHEMATC
