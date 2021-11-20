; LightBurn 0.9.22
; GRBL-M3 (1.1e or earlier) device profile, current position
; Bounds: X-92.68 Y-0.6 to X92.67 Y79.97

;USER START SCRIPT
; begin user defined Start gcode
;end Start gcode
;USER START SCRIPT

G00 G17 G40 G21 G54
G91
; Cut @ 3400 mm/min, 55% power
M9
M5
G0X45.12Y20.82
; Layer C02

;begin probe for ITH. THT=10.6mm
G21 G91 (metric and relative)
G38.2 Z-35 F800 (probe fast from safe retract, 24mm+THT)
G1 Z12.6 (fast retract 2mm+THT)
G38.2 Z-14.6 F400 (slow probe max -2mm -last retract)
G1 Z13.1 F800 (fast retract to ITH, 2.5mm+THT, 150%-200% of cut height)
M3
G4 P1.5 (pierce delay, THC delay s/b this+1.0)
G1 F3400 (restore feed rate and move mode)
;end probe ITH

G1X-0.34Y-0.53S550F3400
G1X-0.24Y-0.58
G1X-0.15Y-0.6
G1X-0.05Y-0.62
G1Y-0.01
G1X-0.01Y-0.63
G1X-0.01Y-0.02
G1Y-0.03
G1Y-0.03
G1X-0.06Y-0.35
G1X-0.08Y-0.35
G1X-0.1Y-0.25
G1X-0.13Y-0.24
G1X-0.16Y-0.22
G1X-0.19Y-0.19
G1X-0.21Y-0.17
G1X-0.23Y-0.14
G1X-0.25Y-0.1
G1X-0.26Y-0.08
G1Y-0.33
G1X0.87Y0.06
G1X1.1Y0.23
G1X0.51Y0.2
G1X0.49Y0.24
G1X0.48Y0.26
G1X0.46Y0.3
G1X0.44Y0.33
G1X0.41Y0.35
G1X0.39Y0.39
G1X0.37Y0.41
G1X0.4Y0.55
G1X0.35Y0.59
G1X0.23Y0.46
G1X0.2Y0.47
G1X0.18Y0.49
G1X0.15Y0.49
G1X0.11Y0.48
G1X0.09Y0.49
G1X0.06Y0.48
G1X0.03Y0.49
G1X0.02Y1.23
G1X-0.14Y1.21
G1X-0.27Y1.13
G1X-0.42Y1.13
G1X-0.56Y1.03
G1X-0.73Y0.9
G1X-0.92Y0.81
G1X-1.04Y0.65
G1X-0.61Y0.29
G1X-0.63Y0.24
G1X-0.66Y0.17
G1X-0.67Y0.11
G1X-0.69Y0.03
G1Y-0.37
G1X0.33Y-0.11
G1X0.31Y-0.16
G1X0.32Y-0.29
G1X0.27Y-0.33
G1X0.2Y-0.38
G1X0.13Y-0.41
G1X0.1Y-0.57
G1X0.03Y-0.57
G1Y-10.36

;begin safe retract and ready for probing next cut ITH
M5
G21 G91
G1 Z20 F800 (fast retract to safe height)
G1 F3400 (restore feed rate and move mode)
;end safe retract and ready ITH

G0X-46.67Y0.96
; Layer C02

;begin probe for ITH. THT=10.6mm
G21 G91 (metric and relative)
G38.2 Z-35 F800 (probe fast from safe retract, 24mm+THT)
G1 Z12.6 (fast retract 2mm+THT)
G38.2 Z-14.6 F400 (slow probe max -2mm -last retract)
G1 Z13.1 F800 (fast retract to ITH, 2.5mm+THT, 150%-200% of cut height)
M3
G4 P1.5 (pierce delay, THC delay s/b this+1.0)
G1 F3400 (restore feed rate and move mode)
;end probe ITH

G1X-0.34Y-0.53
G1X-0.24Y-0.57
G1X-0.15Y-0.61
G1X-0.05Y-0.62
G1Y-0.02
G1X-0.01Y-0.28
G1X-0.07Y-0.27
G1X-0.1Y-0.26
G1X-0.15Y-0.23
G1X-0.14Y-0.14
G1X-0.16Y-0.12
G1X-0.17Y-0.08
G1X-0.19Y-0.06
G1X-0.25Y-0.06
G1X-0.23Y-0.1
G1X-0.03Y-0.03
G1X-0.03Y-0.03
G1X0.12Y-0.07
G1X0.13Y-0.03
G1X0.14Y-0.02
G1X0.13Y0.02
G1X7.59Y-0.01
G1X0.27Y0.01
G1X0.12Y-0.01
G1X0.12Y0.03
G1X0.11Y0.04
G1X0.1Y0.08
G1X-0.12Y0.07
G1X-0.14Y0.03
G1X-0.46Y0.09
G1X-0.44Y0.16
G1X-0.26Y0.23
G1X-0.22Y0.27
G1X-0.09Y0.21
G1X-0.06Y0.22
G1X-0.04Y0.22
G1X-0.02Y0.23
G1Y14.84
G1X-6.46
G1X-0.25Y-0.01
G1X-0.24Y-0.08
G1X-0.02Y-0.02
G1X0.01Y-0.03
G1X0.23Y-0.09
G1X0.23Y-0.08
G1X0.24Y-0.07
G1X0.22Y-0.11
G1X0.23Y-0.22
G1X0.19Y-0.25
G1X0.12Y-0.41
G1X0.05Y-0.42
G1Y-13.14

;begin safe retract and ready for probing next cut ITH
M5
G21 G91
G1 Z20 F800 (fast retract to safe height)
G1 F3400 (restore feed rate and move mode)
;end safe retract and ready ITH

G0X22.27Y2.33
; Layer C02

;begin probe for ITH. THT=10.6mm
G21 G91 (metric and relative)
G38.2 Z-35 F800 (probe fast from safe retract, 24mm+THT)
G1 Z12.6 (fast retract 2mm+THT)
G38.2 Z-14.6 F400 (slow probe max -2mm -last retract)
G1 Z13.1 F800 (fast retract to ITH, 2.5mm+THT, 150%-200% of cut height)
M3
G4 P1.5 (pierce delay, THC delay s/b this+1.0)
G1 F3400 (restore feed rate and move mode)
;end probe ITH

G1X-0.33Y-0.53
G1X-0.25Y-0.57
G1X-0.15Y-0.61
G1X-0.05Y-0.62
G1Y-0.02
G1X-0.01Y-0.3
G1X-0.07Y-0.28
G1X-0.12Y-0.27
G1X-0.17Y-0.24
G1X-0.13Y-0.13
G1X-0.15Y-0.1
G1X-0.16Y-0.07
G1X-0.42Y-0.11
G1X-0.24Y-0.1
G1X-0.03Y-0.03
G1X-0.02Y-0.04
G1X0.25Y-0.08
G1X0.27Y-0.02
G1X6.46
G1Y14.86
G1X0.02Y0.29
G1X0.06Y0.29
G1X0.12Y0.27
G1X0.15Y0.25
G1X0.2Y0.17
G1X0.22Y0.13
G1X0.24Y0.09
G1X0.25Y0.05
G1X0.27Y0.05
G1X0.25Y0.08
G1X0.07Y0.05
G1X-0.23Y0.11
G1X-0.25Y0.02
G1X-0.26Y0.01
G1X-7.57
G1X-0.25Y-0.01
G1X-0.24Y-0.08
G1X-0.03Y-0.03
G1X0.08Y-0.07
G1X0.1Y-0.03
G1X0.38Y-0.1
G1X0.35Y-0.16
G1X0.25Y-0.22
G1X0.2Y-0.27
G1X0.12Y-0.4
G1X0.04Y-0.41
G1Y-13.15

;begin safe retract and ready for probing next cut ITH
M5
G21 G91
G1 Z20 F800 (fast retract to safe height)
G1 F3400 (restore feed rate and move mode)
;end safe retract and ready ITH

G0X-31.06Y3.22
; Layer C02

;begin probe for ITH. THT=10.6mm
G21 G91 (metric and relative)
G38.2 Z-35 F800 (probe fast from safe retract, 24mm+THT)
G1 Z12.6 (fast retract 2mm+THT)
G38.2 Z-14.6 F400 (slow probe max -2mm -last retract)
G1 Z13.1 F800 (fast retract to ITH, 2.5mm+THT, 150%-200% of cut height)
M3
G4 P1.5 (pierce delay, THC delay s/b this+1.0)
G1 F3400 (restore feed rate and move mode)
;end probe ITH

G1X-0.34Y-0.53
G1X-0.24Y-0.57
G1X-0.15Y-0.6
G1X-0.05Y-0.63
G1Y-0.4
G1X-0.01Y-0.02
G1X-0.05Y-0.46
G1X-0.13Y-0.45
G1X-0.2Y-0.41
G1X-0.26Y-0.39
G1X-0.16Y-0.16
G1X-0.19Y-0.14
G1X-0.2Y-0.12
G1X-0.21Y-0.1
G1Y-0.31
G1X0.73Y0.1
G1X0.7Y0.17
G1X0.68Y0.23
G1X0.67Y0.28
G1X0.64Y0.34
G1X0.39Y0.24
G1X0.37Y0.27
G1X0.37Y0.29
G1X0.34Y0.3
G1X0.31Y0.32
G1X0.3Y0.34
G1X0.27Y0.36
G1X0.24Y0.37
G1X0.52Y0.98
G1X0.36Y0.93
G1X0.26Y1.02
G1X0.11Y0.82
G1X0.06Y0.82
G1Y0.83
G1X-0.06Y0.82
G1X-0.2Y1.18
G1X-0.3Y1.09
G1X-0.2Y0.53
G1X-0.25Y0.51
G1X-0.29Y0.5
G1X-0.31Y0.47
G1X-0.36Y0.44
G1X-0.38Y0.42
G1X-0.42Y0.39
G1X-0.45Y0.35
G1X-0.45Y0.33
G1X-0.48Y0.29
G1X-0.49Y0.26
G1X-0.51Y0.22
G1X-0.53Y0.18
G1X-0.54Y0.14
G1X-0.54Y0.11
G1X-0.56Y0.06
G1Y-0.34
G1X0.13Y-0.05
G1X0.12Y-0.07
G1X0.25Y-0.16
G1X0.24Y-0.18
G1X0.3Y-0.39
G1X0.22Y-0.44
G1X0.13Y-0.48
G1X0.02Y-0.49
G1Y-11.74

;begin safe retract and ready for probing next cut ITH
M5
G21 G91
G1 Z20 F800 (fast retract to safe height)
G1 F3400 (restore feed rate and move mode)
;end safe retract and ready ITH

G0X43.44Y-0.26
; Layer C02

;begin probe for ITH. THT=10.6mm
G21 G91 (metric and relative)
G38.2 Z-35 F800 (probe fast from safe retract, 24mm+THT)
G1 Z12.6 (fast retract 2mm+THT)
G38.2 Z-14.6 F400 (slow probe max -2mm -last retract)
G1 Z13.1 F800 (fast retract to ITH, 2.5mm+THT, 150%-200% of cut height)
M3
G4 P1.5 (pierce delay, THC delay s/b this+1.0)
G1 F3400 (restore feed rate and move mode)
;end probe ITH

G1X0.34Y0.53
G1X0.25Y0.57
G1X0.16Y0.6
G1X0.06Y0.63
G1Y0.13
G1X-0.03Y0.12
G1X-0.03Y0.02
G1X-0.09
G1X-0.08Y-0.03
G1X-0.07Y-0.06
G1X-0.05Y-0.09
G1X-0.21Y-0.54
G1X-0.21Y-0.54
G1X-0.32Y-0.68
G1X-0.4Y-0.64
G1X-0.47Y-0.59
G1X-0.53Y-0.54
G1X-0.46Y-0.34
G1X-0.5Y-0.27
G1X-0.53Y-0.2
G1X-0.56Y-0.13
G1Y-0.37
G1X4.53
G1X0.01Y4.75

;begin safe retract and ready for probing next cut ITH
M5
G21 G91
G1 Z20 F800 (fast retract to safe height)
G1 F3400 (restore feed rate and move mode)
;end safe retract and ready ITH

G0X-67.27Y0.39
; Layer C02

;begin probe for ITH. THT=10.6mm
G21 G91 (metric and relative)
G38.2 Z-35 F800 (probe fast from safe retract, 24mm+THT)
G1 Z12.6 (fast retract 2mm+THT)
G38.2 Z-14.6 F400 (slow probe max -2mm -last retract)
G1 Z13.1 F800 (fast retract to ITH, 2.5mm+THT, 150%-200% of cut height)
M3
G4 P1.5 (pierce delay, THC delay s/b this+1.0)
G1 F3400 (restore feed rate and move mode)
;end probe ITH

G1X-0.16Y-0.61
G1X-0.07Y-0.62
G1X0.03Y-0.62
G1X0.13Y-0.61
G1X0.82Y-2.68
G1X2.36
G1X1.54Y5.38
G1X-3.42Y11.34
G1X-2.19
G1X-1.61Y-5.77
G1X2.5Y-8.27

;begin safe retract and ready for probing next cut ITH
M5
G21 G91
G1 Z20 F800 (fast retract to safe height)
G1 F3400 (restore feed rate and move mode)
;end safe retract and ready ITH

G0X72.09Y1.38
; Layer C02

;begin probe for ITH. THT=10.6mm
G21 G91 (metric and relative)
G38.2 Z-35 F800 (probe fast from safe retract, 24mm+THT)
G1 Z12.6 (fast retract 2mm+THT)
G38.2 Z-14.6 F400 (slow probe max -2mm -last retract)
G1 Z13.1 F800 (fast retract to ITH, 2.5mm+THT, 150%-200% of cut height)
M3
G4 P1.5 (pierce delay, THC delay s/b this+1.0)
G1 F3400 (restore feed rate and move mode)
;end probe ITH

G1X-0.36Y-0.52
G1X-0.27Y-0.56
G1X-0.17Y-0.59
G1X-0.08Y-0.62
G1X-0.02Y-0.28
G1X-0.06Y-0.27
G1X-0.1Y-0.25
G1X-0.14Y-0.24
G1X-0.14Y-0.14
G1X-0.16Y-0.12
G1X-0.18Y-0.08
G1X-0.19Y-0.06
G1X-0.25Y-0.06
G1X-0.23Y-0.1
G1X-0.03Y-0.03
G1X-0.03Y-0.03
G1X0.25Y-0.09
G1X0.27Y-0.02
G1X6.46
G1Y16.72
G1X-6.46
G1X-0.25Y-0.01
G1X-0.24Y-0.08
G1X-0.02Y-0.02
G1X0.08Y-0.08
G1X0.11Y-0.04
G1X0.38Y-0.1
G1X0.36Y-0.16
G1X0.23Y-0.22
G1X0.19Y-0.26
G1X0.12Y-0.4
G1X0.05Y-0.41
G1Y-13.17

;begin safe retract and ready for probing next cut ITH
M5
G21 G91
G1 Z20 F800 (fast retract to safe height)
G1 F3400 (restore feed rate and move mode)
;end safe retract and ready ITH

G0X-27.36Y11.01
; Layer C02

;begin probe for ITH. THT=10.6mm
G21 G91 (metric and relative)
G38.2 Z-35 F800 (probe fast from safe retract, 24mm+THT)
G1 Z12.6 (fast retract 2mm+THT)
G38.2 Z-14.6 F400 (slow probe max -2mm -last retract)
G1 Z13.1 F800 (fast retract to ITH, 2.5mm+THT, 150%-200% of cut height)
M3
G4 P1.5 (pierce delay, THC delay s/b this+1.0)
G1 F3400 (restore feed rate and move mode)
;end probe ITH

G1X-0.35Y-0.52
G1X-0.27Y-0.56
G1X-0.18Y-0.6
G1X-0.08Y-0.62
G1X-0.01Y-0.28
G1X-0.02Y-0.31
G1X-0.09Y-0.38
G1X-0.14Y-0.35
G1X-0.28Y-0.35
G1X-0.33Y-0.28
G1X-0.38Y-0.2
G1X-0.42Y-0.12
G1Y-0.42
G1X0.19Y-0.04
G1X0.18Y-0.09
G1X0.31Y-0.17
G1X0.29Y-0.21
G1X0.05Y-0.05
G1X0.39Y-0.53
G1X0.07Y-0.11
G1X0.04Y-0.12
G1X0.08Y-0.32
G1X0.06Y-0.32
G1X0.02Y-0.45
G1Y-0.46
G1X0.01Y-1.27
G1Y-1.27
G1X0.08Y-0.54
G1X0.19Y-0.5
G1X0.28Y-0.46
G1X0.36Y-0.4
G1X0.52Y-0.37
G1X0.61Y-0.26
G1X0.49Y-0.11
G1X0.49Y-0.07
G1X0.5Y-0.02
G1X0.5Y0.01
G1X0.82Y0.09
G1X0.72Y0.22
G1X0.66Y0.35
G1X0.28Y0.21
G1X0.27Y0.23
G1X0.24Y0.25
G1X0.23Y0.26
G1X0.28Y0.49
G1X0.02Y0.09
G1X-0.05Y0.08
G1X-0.09Y0.06
G1X-0.11Y-0.02
G1X-0.29Y-0.32
G1X-0.34Y-0.26
G1X-0.14Y-0.06
G1X-0.14Y-0.04
G1X-0.15Y-0.02
G1X-0.15Y0.01
G1X-0.16Y0.03
G1X-0.15Y0.06
G1X-0.13Y0.09
G1X-0.12Y0.11
G1X-0.11Y0.16
G1X-0.08Y0.17
G1X-0.05Y0.19
G1X-0.01Y0.2
G1Y2.68
G1X-0.07Y0.5
G1X-0.2Y0.45
G1X-0.32Y0.4
G1X-0.34Y0.26
G1X-0.36Y0.23
G1X-0.38Y0.19
G1X-0.4Y0.15
G1X-0.85Y0.22
G1X-0.87Y0.16
G1X-0.28Y0.03
G1X-0.28Y0.05
G1X-0.21Y0.12
G1X-0.14Y0.18
G1X-0.06Y0.22
G1X0.02Y0.23
G1X0.07Y0.14
G1X0.09Y0.12
G1X0.12Y0.08
G1X0.14Y0.06
G1X1.1Y0.31
G1X1.09Y0.38
G1X0.33Y0.15
G1X0.32Y0.19
G1X0.29Y0.21
G1X0.27Y0.24
G1X0.24Y0.27
G1X0.22Y0.29
G1X0.19Y0.31
G1X0.16Y0.33
G1X0.18Y0.65
G1X0.05Y0.67
G1X-0.07Y0.67
G1X-0.19Y0.65
G1X-0.19Y0.39
G1X-0.24Y0.36
G1X-0.28Y0.32
G1X-0.33Y0.28
G1X-0.39Y0.28
G1X-0.43Y0.24
G1X-0.44Y0.2
G1X-0.46Y0.16
G1X-0.52Y0.15
G1X-0.53Y0.11
G1X-0.53Y0.07
G1X-0.54Y0.02
G1X-0.98Y0.04
G1X-0.98Y0.02
G1Y-0.4
G1X0.34Y-0.13
G1X0.32Y-0.17
G1X0.3Y-0.21
G1X0.26Y-0.25
G1X0.2Y-0.33
G1X0.16Y-0.35
G1X0.08Y-0.44
G1X0.04Y-0.45
G1Y-3.48
G1X-0.01Y-0.03

;begin safe retract and ready for probing next cut ITH
M5
G21 G91
G1 Z20 F800 (fast retract to safe height)
G1 F3400 (restore feed rate and move mode)
;end safe retract and ready ITH

G0X-34.96Y5.46
; Layer C02

;begin probe for ITH. THT=10.6mm
G21 G91 (metric and relative)
G38.2 Z-35 F800 (probe fast from safe retract, 24mm+THT)
G1 Z12.6 (fast retract 2mm+THT)
G38.2 Z-14.6 F400 (slow probe max -2mm -last retract)
G1 Z13.1 F800 (fast retract to ITH, 2.5mm+THT, 150%-200% of cut height)
M3
G4 P1.5 (pierce delay, THC delay s/b this+1.0)
G1 F3400 (restore feed rate and move mode)
;end probe ITH

G1X-0.53Y0.33
G1X-0.58Y0.25
G1X-0.6Y0.15
G1X-0.62Y0.05
G1X-0.21
G1X-0.2Y-0.06
G1X0.28Y-0.16
G1X0.3Y-0.15
G1X0.25Y-0.13
G1X0.22Y-0.16
G1X0.2Y-0.19
G1X0.16Y-0.22
G1X0.13Y-0.24
G1X0.09Y-0.25
G1X0.05Y-0.28
G1X0.01Y-0.28
G1X-0.07Y-0.4
G1X-0.1Y-0.4
G1X-0.51Y-1.83
G1X-0.52Y-1.83
G1X0.16Y-0.55
G1X1.28Y4.35
G1X0.2Y0.59
G1X0.29Y0.54
G1X0.36Y0.5
G1X0.43Y0.45
G1X0.29Y0.18
G1X0.29Y0.18
G1X0.65Y0.3
G1X-0.24Y0.03
G1X-0.24Y0.01
G1X-3.55

;begin safe retract and ready for probing next cut ITH
M5
G21 G91
G1 Z20 F800 (fast retract to safe height)
G1 F3400 (restore feed rate and move mode)
;end safe retract and ready ITH

G0X11.31Y-4.57
; Layer C02

;begin probe for ITH. THT=10.6mm
G21 G91 (metric and relative)
G38.2 Z-35 F800 (probe fast from safe retract, 24mm+THT)
G1 Z12.6 (fast retract 2mm+THT)
G38.2 Z-14.6 F400 (slow probe max -2mm -last retract)
G1 Z13.1 F800 (fast retract to ITH, 2.5mm+THT, 150%-200% of cut height)
M3
G4 P1.5 (pierce delay, THC delay s/b this+1.0)
G1 F3400 (restore feed rate and move mode)
;end probe ITH

G1X0.35Y0.51
G1X0.27Y0.56
G1X0.17Y0.6
G1X0.07Y0.62
G1X0.02Y0.5
G1X0.14Y0.49
G1X0.23Y0.44
G1X0.33Y0.39
G1X0.33Y0.24
G1X0.35Y0.18
G1Y0.35
G1X-0.67Y-0.09
G1X-0.65Y-0.14
G1X-0.64Y-0.2
G1X-0.62Y-0.25
G1X-0.59Y-0.3
G1X-0.57Y-0.35
G1X-0.54Y-0.4
G1X-0.5Y-0.45
G1X-0.8Y-0.89
G1X-0.63Y-0.97
G1X-0.48Y-1.02
G1X-0.32Y-1.06
G1X-0.25Y-1.51
G1X-0.04Y-1.51
G1X0.17Y-1.5
G1X0.36Y-1.48
G1X0.2Y-0.51
G1X0.24Y-0.5
G1X0.27Y-0.48
G1X0.3Y-0.45
G1X0.34Y-0.44
G1X0.37Y-0.4
G1X0.4Y-0.38
G1X0.43Y-0.35
G1X0.5Y-0.36
G1X0.53Y-0.33
G1X0.56Y-0.27
G1X0.58Y-0.23
G1X0.86Y-0.27
G1X0.88Y-0.19
G1X0.31Y-0.03
G1X-0.01Y0.32
G1X-0.34Y0.16
G1X-0.3Y0.22
G1X-0.25Y0.27
G1X-0.2Y0.32
G1X-0.22Y0.74
G1X-0.02Y0.07
G1X-0.01Y0.07
G1X-0.04Y0.76
G1X-0.01Y0.02
G1Y11.76
G1Y0.01

;begin safe retract and ready for probing next cut ITH
M5
G21 G91
G1 Z20 F800 (fast retract to safe height)
G1 F3400 (restore feed rate and move mode)
;end safe retract and ready ITH

G0X-24.33Y-2.15
; Layer C02

;begin probe for ITH. THT=10.6mm
G21 G91 (metric and relative)
G38.2 Z-35 F800 (probe fast from safe retract, 24mm+THT)
G1 Z12.6 (fast retract 2mm+THT)
G38.2 Z-14.6 F400 (slow probe max -2mm -last retract)
G1 Z13.1 F800 (fast retract to ITH, 2.5mm+THT, 150%-200% of cut height)
M3
G4 P1.5 (pierce delay, THC delay s/b this+1.0)
G1 F3400 (restore feed rate and move mode)
;end probe ITH

G1X0.23Y0.58
G1X0.13Y0.61
G1X0.04Y0.62
G1X-0.06Y0.62
G1X-0.05Y0.26
G1Y0.33
G1X0.1Y0.34
G1X0.16Y0.31
G1X0.39Y0.31
G1X0.5Y0.29
G1X0.04Y0.07
G1X-0.3Y0.08
G1X-0.31Y0.01
G1X-7
G1X-0.39Y-0.02
G1X-0.37Y-0.12
G1X-0.04Y-0.03
G1X-0.01Y-0.04
G1X0.17Y-0.11
G1X0.19Y-0.06
G1X0.28Y-0.15
G1X0.23Y-0.21
G1X0.17Y-0.25
G1X0.15Y-0.27
G1X0.06Y-0.23
G1X0.1Y-0.22
G1X4.69Y-15.01
G1X2.35
G1X1.64Y5.75
G1X-2.74Y8.9
G1X-0.01Y0.07

;begin safe retract and ready for probing next cut ITH
M5
G21 G91
G1 Z20 F800 (fast retract to safe height)
G1 F3400 (restore feed rate and move mode)
;end safe retract and ready ITH

G0X41.69Y21.33
; Layer C02

;begin probe for ITH. THT=10.6mm
G21 G91 (metric and relative)
G38.2 Z-35 F800 (probe fast from safe retract, 24mm+THT)
G1 Z12.6 (fast retract 2mm+THT)
G38.2 Z-14.6 F400 (slow probe max -2mm -last retract)
G1 Z13.1 F800 (fast retract to ITH, 2.5mm+THT, 150%-200% of cut height)
M3
G4 P1.5 (pierce delay, THC delay s/b this+1.0)
G1 F3400 (restore feed rate and move mode)
;end probe ITH

G1X-0.36Y-0.51
G1X-0.27Y-0.56
G1X-0.17Y-0.6
G1X-0.08Y-0.62
G1X-0.02Y-0.27
G1X-0.05Y-0.26
G1X-0.11Y-0.26
G1X-0.14Y-0.24
G1X-0.02Y-0.01
G1X-0.13Y-0.14
G1X-0.16Y-0.12
G1X-0.17Y-0.08
G1X-0.19Y-0.06
G1X-0.24Y-0.06
G1X-0.24Y-0.1
G1X-0.03Y-0.02
G1X-0.03Y-0.04
G1X0.25Y-0.09
G1X0.27Y-0.01
G1X6.46
G1Y14.85
G1X0.02Y0.3
G1X0.07Y0.3
G1X0.12Y0.26
G1X0.16Y0.24
G1X0.19Y0.17
G1X0.22Y0.13
G1X0.23Y0.09
G1X0.26Y0.06
G1X0.26Y0.04
G1X0.25Y0.08
G1X0.07Y0.05
G1X-0.12Y0.08
G1X-0.14Y0.03
G1X-0.23Y0.02
G1X-0.24Y0.01
G1X-7.58
G1X-0.13Y0.01
G1X-0.14Y-0.02
G1X-0.13Y-0.05
G1X-0.11Y-0.06
G1X0.09Y-0.07
G1X0.1Y-0.03
G1X0.37Y-0.1
G1X0.35Y-0.16
G1X0.24Y-0.22
G1X0.2Y-0.26
G1X0.12Y-0.4
G1X0.05Y-0.41
G1Y-13.18

;begin safe retract and ready for probing next cut ITH
M5
G21 G91
G1 Z20 F800 (fast retract to safe height)
G1 F3400 (restore feed rate and move mode)
;end safe retract and ready ITH

G0X17.05Y2.35
; Layer C02

;begin probe for ITH. THT=10.6mm
G21 G91 (metric and relative)
G38.2 Z-35 F800 (probe fast from safe retract, 24mm+THT)
G1 Z12.6 (fast retract 2mm+THT)
G38.2 Z-14.6 F400 (slow probe max -2mm -last retract)
G1 Z13.1 F800 (fast retract to ITH, 2.5mm+THT, 150%-200% of cut height)
M3
G4 P1.5 (pierce delay, THC delay s/b this+1.0)
G1 F3400 (restore feed rate and move mode)
;end probe ITH

G1X-0.34Y-0.53
G1X-0.24Y-0.57
G1X-0.15Y-0.6
G1X-0.05Y-0.63
G1Y-0.02
G1X-0.01Y-0.27
G1X-0.06Y-0.26
G1X-0.1Y-0.26
G1X-0.15Y-0.24
G1X-0.04Y-0.05
G1X-0.13Y-0.13
G1X-0.15Y-0.1
G1X-0.17Y-0.08
G1X-0.42Y-0.11
G1X-0.23Y-0.1
G1X-0.04Y-0.02
G1X-0.02Y-0.04
G1X0.25Y-0.09
G1X0.27Y-0.01
G1X6.46
G1Y14.85
G1X0.02Y0.27
G1X0.04Y0.26
G1X0.11Y0.25
G1X0.13Y0.23
G1X0.08Y0.12
G1X0.11Y0.09
G1X0.17Y0.12
G1X0.19Y0.1
G1X0.2Y0.07
G1X0.21Y0.04
G1X0.27Y0.04
G1X0.25Y0.08
G1X0.06Y0.06
G1X-0.22Y0.1
G1X-0.25Y0.02
G1X-0.26Y0.01
G1X-7.57
G1X-0.26Y-0.01
G1X-0.24Y-0.08
G1X-0.02Y-0.02
G1X0.02Y-0.03
G1X0.41Y-0.15
G1X0.41Y-0.14
G1X0.23Y-0.18
G1X0.18Y-0.21
G1X0.09Y-0.12
G1X0.06Y-0.13
G1X0.09Y-0.35
G1X0.03Y-0.36
G1Y-13.15

;begin safe retract and ready for probing next cut ITH
M5
G21 G91
G1 Z20 F800 (fast retract to safe height)
G1 F3400 (restore feed rate and move mode)
;end safe retract and ready ITH

G0X-22.95Y14.15
; Layer C02

;begin probe for ITH. THT=10.6mm
G21 G91 (metric and relative)
G38.2 Z-35 F800 (probe fast from safe retract, 24mm+THT)
G1 Z12.6 (fast retract 2mm+THT)
G38.2 Z-14.6 F400 (slow probe max -2mm -last retract)
G1 Z13.1 F800 (fast retract to ITH, 2.5mm+THT, 150%-200% of cut height)
M3
G4 P1.5 (pierce delay, THC delay s/b this+1.0)
G1 F3400 (restore feed rate and move mode)
;end probe ITH

G1X-0.53Y0.34
G1X-0.57Y0.24
G1X-0.61Y0.15
G1X-0.62Y0.05
G1X-1.12
G1Y-0.4
G1X0.11Y-0.01
G1X0.11Y-0.02
G1X0.34Y-0.1
G1X0.34Y-0.07
G1X0.55Y-0.18
G1X0.52Y-0.23
G1X0.49Y-0.3
G1X0.49Y-0.38
G1X0.3Y-0.3
G1X0.27Y-0.27
G1X0.01Y-0.02
G1X0.24Y-0.32
G1X0.22Y-0.33
G1X0.27Y-0.51
G1X0.21Y-0.54
G1X0.13Y-0.24
G1X0.08
G1X0.09Y0.01
G1X0.05Y0.01
G1X0.02Y0.08
G1Y0.08
G1Y4.04
G1X-3.72

;begin safe retract and ready for probing next cut ITH
M5
G21 G91
G1 Z20 F800 (fast retract to safe height)
G1 F3400 (restore feed rate and move mode)
;end safe retract and ready ITH

G0X3.17Y-15.02
; Layer C02

;begin probe for ITH. THT=10.6mm
G21 G91 (metric and relative)
G38.2 Z-35 F800 (probe fast from safe retract, 24mm+THT)
G1 Z12.6 (fast retract 2mm+THT)
G38.2 Z-14.6 F400 (slow probe max -2mm -last retract)
G1 Z13.1 F800 (fast retract to ITH, 2.5mm+THT, 150%-200% of cut height)
M3
G4 P1.5 (pierce delay, THC delay s/b this+1.0)
G1 F3400 (restore feed rate and move mode)
;end probe ITH

G1X0.33Y0.53
G1X0.24Y0.58
G1X0.15Y0.6
G1X0.04Y0.63
G1Y0.18
G1X-0.05Y0.17
G1X-0.12Y0.02
G1X-0.12Y-0.06
G1X-0.45Y-0.98
G1X-0.46Y-0.77
G1X-0.03Y-0.04
G1X-0.31Y-0.37
G1X-0.3Y-0.32
G1X-0.34Y-0.28
G1X-0.34Y-0.27
G1X-0.4Y-0.25
G1X-0.41Y-0.22
G1X-0.44Y-0.2
G1X-0.46Y-0.16
G1X-0.63Y-0.14
G1X-0.02Y-0.01
G1X-0.15Y-0.03
G1Y-0.3
G1X5.03
G1Y4.03

;begin safe retract and ready for probing next cut ITH
M5
G21 G91
G1 Z20 F800 (fast retract to safe height)
G1 F3400 (restore feed rate and move mode)
;end safe retract and ready ITH

G0X-12.15Y0.02
; Layer C02

;begin probe for ITH. THT=10.6mm
G21 G91 (metric and relative)
G38.2 Z-35 F800 (probe fast from safe retract, 24mm+THT)
G1 Z12.6 (fast retract 2mm+THT)
G38.2 Z-14.6 F400 (slow probe max -2mm -last retract)
G1 Z13.1 F800 (fast retract to ITH, 2.5mm+THT, 150%-200% of cut height)
M3
G4 P1.5 (pierce delay, THC delay s/b this+1.0)
G1 F3400 (restore feed rate and move mode)
;end probe ITH

G1X-0.36Y-0.51
G1X-0.27Y-0.56
G1X-0.18Y-0.6
G1X-0.08Y-0.62
G1X-0.01Y-0.27
G1X-0.06Y-0.26
G1X-0.1Y-0.26
G1X-0.15Y-0.24
G1X-0.13Y-0.14
G1X-0.16Y-0.12
G1X-0.18Y-0.09
G1X-0.19Y-0.06
G1X-0.25Y-0.06
G1X-0.24Y-0.1
G1X-0.04Y-0.04
G1X-0.01Y-0.02
G1X0.25Y-0.09
G1X0.27Y-0.01
G1X6.46
G1Y16.71
G1X-6.46
G1X-0.26Y-0.01
G1X-0.24Y-0.08
G1X-0.02Y-0.02
G1X0.08Y-0.08
G1X0.48Y-0.13
G1X0.35Y-0.16
G1X0.25Y-0.23
G1X0.2Y-0.27
G1X0.13Y-0.39
G1X0.03Y-0.41
G1Y-13.17

;begin safe retract and ready for probing next cut ITH
M5
G21 G91
G1 Z20 F800 (fast retract to safe height)
G1 F3400 (restore feed rate and move mode)
;end safe retract and ready ITH

G0X-11.56Y2.4
; Layer C02

;begin probe for ITH. THT=10.6mm
G21 G91 (metric and relative)
G38.2 Z-35 F800 (probe fast from safe retract, 24mm+THT)
G1 Z12.6 (fast retract 2mm+THT)
G38.2 Z-14.6 F400 (slow probe max -2mm -last retract)
G1 Z13.1 F800 (fast retract to ITH, 2.5mm+THT, 150%-200% of cut height)
M3
G4 P1.5 (pierce delay, THC delay s/b this+1.0)
G1 F3400 (restore feed rate and move mode)
;end probe ITH

G1X-0.34Y-0.52
G1X-0.24Y-0.58
G1X-0.15Y-0.6
G1X-0.05Y-0.62
G1Y-0.03
G1Y-0.01
G1X-0.01Y-0.3
G1X-0.07Y-0.28
G1X-0.11Y-0.27
G1X-0.17Y-0.25
G1X-0.17Y-0.16
G1X-0.2Y-0.12
G1X-0.22Y-0.08
G1X-0.23Y-0.05
G1X-0.15Y-0.04
G1X-0.12Y-0.09
G1X-0.03Y-0.04
G1Y-0.02
G1X0.01Y-0.03
G1X0.12Y-0.06
G1X0.13Y-0.01
G1X0.18
G1X7.5Y-0.01
G1X0.27Y0.01
G1X0.25Y0.1
G1Y0.03
G1X-0.06Y0.07
G1X-0.45Y0.12
G1X-0.42Y0.2
G1X-0.26Y0.25
G1X-0.2Y0.3
G1X-0.1Y0.38
G1X-0.04Y0.39
G1Y13.11
G1X0.02Y0.29
G1X0.07Y0.28
G1X0.12Y0.27
G1X0.16Y0.23
G1X0.13Y0.13
G1X0.15Y0.11
G1X0.16Y0.08
G1X0.42Y0.11
G1X0.23Y0.09
G1X0.04Y0.03
G1X0.03Y0.04
G1X-0.25Y0.09
G1X-0.27Y0.01
G1X-7.46
G1X-0.25Y-0.01
G1X-0.24Y-0.09
G1X0.2Y-0.13
G1X0.23Y-0.05
G1X0.27Y-0.09
G1X0.25Y-0.14
G1X0.22Y-0.22
G1X0.18Y-0.26
G1X0.1Y-0.39
G1X0.04Y-0.4
G1Y-5.75
G1Y-0.02
G1Y-0.03
G1X-0.07Y-0.21
G1X-0.13Y-0.16
G1X-0.18Y-0.12
G1X-0.21Y-0.04
G1X-1.85
G1Y-0.1
G1X1.86
G1X0.22Y-0.05
G1X0.19Y-0.13
G1X0.12Y-0.18
G1X0.05Y-0.23
G1Y-6.07

;begin safe retract and ready for probing next cut ITH
M5
G21 G91
G1 Z20 F800 (fast retract to safe height)
G1 F3400 (restore feed rate and move mode)
;end safe retract and ready ITH

G0X65.99Y10.24
; Layer C02

;begin probe for ITH. THT=10.6mm
G21 G91 (metric and relative)
G38.2 Z-35 F800 (probe fast from safe retract, 24mm+THT)
G1 Z12.6 (fast retract 2mm+THT)
G38.2 Z-14.6 F400 (slow probe max -2mm -last retract)
G1 Z13.1 F800 (fast retract to ITH, 2.5mm+THT, 150%-200% of cut height)
M3
G4 P1.5 (pierce delay, THC delay s/b this+1.0)
G1 F3400 (restore feed rate and move mode)
;end probe ITH

G1X0.33Y0.53
G1X0.25Y0.57
G1X0.14Y0.61
G1X0.06Y0.62
G1Y0.01
G1X0.01Y0.45
G1X0.09Y0.43
G1X0.18Y0.4
G1X0.25Y0.37
G1X0.26Y0.19
G1X0.24Y0.22
G1X0.17Y0.1
G1X0.19Y0.07
G1Y0.37
G1X-0.58Y-0.07
G1X-0.57Y-0.11
G1X-0.56Y-0.16
G1X-0.54Y-0.2
G1X-0.53Y-0.23
G1X-0.51Y-0.27
G1X-0.49Y-0.32
G1X-0.47Y-0.34
G1X-0.53Y-0.48
G1X-0.79Y-0.89
G1X-0.64Y-0.96
G1X-0.49Y-1.04
G1X-0.31Y-1.05
G1X-0.24Y-1.51
G1X-0.05Y-1.51
G1X0.17Y-1.5
G1X0.36Y-1.48
G1X0.24Y-0.61
G1X0.3Y-0.58
G1X0.34Y-0.55
G1X0.38Y-0.52
G1X0.43Y-0.49
G1X0.47Y-0.45
G1X0.51Y-0.4
G1X0.55Y-0.37
G1X0.83Y-0.45
G1X0.87Y-0.36
G1X0.91Y-0.26
G1X0.94Y-0.15
G1X-0.01Y0.32
G1X-0.16Y0.08
G1X-0.16Y0.08
G1X-0.24Y0.16
G1X-0.2Y0.19
G1X-0.18Y0.22
G1X-0.14Y0.24
G1X-0.23Y0.74
G1X-0.02Y0.07
G1Y0.07
G1X-0.05Y0.76
G1Y0.02
G1Y11.75

;begin safe retract and ready for probing next cut ITH
M5
G21 G91
G1 Z20 F800 (fast retract to safe height)
G1 F3400 (restore feed rate and move mode)
;end safe retract and ready ITH

G0X6.01Y-9.4
; Layer C02

;begin probe for ITH. THT=10.6mm
G21 G91 (metric and relative)
G38.2 Z-35 F800 (probe fast from safe retract, 24mm+THT)
G1 Z12.6 (fast retract 2mm+THT)
G38.2 Z-14.6 F400 (slow probe max -2mm -last retract)
G1 Z13.1 F800 (fast retract to ITH, 2.5mm+THT, 150%-200% of cut height)
M3
G4 P1.5 (pierce delay, THC delay s/b this+1.0)
G1 F3400 (restore feed rate and move mode)
;end probe ITH

G1X-0.34Y-0.53
G1X-0.24Y-0.58
G1X-0.15Y-0.6
G1X-0.05Y-0.62
G1Y-0.41
G1X-0.06Y-0.48
G1X-0.14Y-0.46
G1X-0.21Y-0.44
G1X-0.28Y-0.4
G1X-0.34Y-0.28
G1X-0.38Y-0.19
G1Y-0.31
G1X0.81Y0.12
G1X0.5Y0.12
G1X0.48Y0.15
G1X0.49Y0.18
G1X0.47Y0.2
G1X0.89Y0.49
G1X0.6Y0.41
G1X0.55Y0.47
G1X0.51Y0.51
G1X0.46Y0.57
G1X0.47Y0.76
G1X0.46Y1.01
G1X0.32Y0.96
G1X0.21Y1.09
G1X0.09Y1.1
G1Y1.1
G1X-0.04Y0.55
G1X-0.07Y0.56
G1X-0.11Y0.55
G1X-0.13Y0.54
G1X-0.37Y1.12
G1X-0.29Y0.59
G1X-0.33Y0.56
G1X-0.37Y0.53
G1X-0.42Y0.5
G1X-0.45Y0.46
G1X-0.5Y0.42
G1X-0.52Y0.39
G1X-0.57Y0.34
G1X-0.74Y0.36
G1X-0.78Y0.29
G1X-0.8Y0.2
G1X-0.82Y0.11
G1Y-0.35
G1X0.13Y-0.05
G1X0.12Y-0.07
G1X0.25Y-0.16
G1X0.24Y-0.18
G1X0.31Y-0.39
G1X0.22Y-0.43
G1X0.12Y-0.48
G1X0.02Y-0.5
G1Y-11.73

;begin safe retract and ready for probing next cut ITH
M5
G21 G91
G1 Z20 F800 (fast retract to safe height)
G1 F3400 (restore feed rate and move mode)
;end safe retract and ready ITH

G0X-29.89Y-0.3
; Layer C02

;begin probe for ITH. THT=10.6mm
G21 G91 (metric and relative)
G38.2 Z-35 F800 (probe fast from safe retract, 24mm+THT)
G1 Z12.6 (fast retract 2mm+THT)
G38.2 Z-14.6 F400 (slow probe max -2mm -last retract)
G1 Z13.1 F800 (fast retract to ITH, 2.5mm+THT, 150%-200% of cut height)
M3
G4 P1.5 (pierce delay, THC delay s/b this+1.0)
G1 F3400 (restore feed rate and move mode)
;end probe ITH

G1X0.33Y0.53
G1X0.23Y0.58
G1X0.14Y0.6
G1X0.04Y0.63
G1Y0.22
G1X-0.04Y0.07
G1X-0.11
G1X-0.09Y-0.05
G1X-0.09Y-0.12
G1X-0.22Y-0.54
G1X-0.21Y-0.55
G1X-0.32Y-0.68
G1X-0.4Y-0.64
G1X-0.47Y-0.6
G1X-0.54Y-0.53
G1X-0.41Y-0.31
G1X-0.02Y-0.02
G1X-0.03Y-0.02
G1X-0.37Y-0.2
G1X-0.39Y-0.17
G1X-0.4Y-0.13
G1X-0.41Y-0.09
G1Y-0.36
G1X4.52
G1Y4.72

;begin safe retract and ready for probing next cut ITH
M5
G21 G91
G1 Z20 F800 (fast retract to safe height)
G1 F3400 (restore feed rate and move mode)
;end safe retract and ready ITH

G0X-21.04Y4.37
; Layer C02

;begin probe for ITH. THT=10.6mm
G21 G91 (metric and relative)
G38.2 Z-35 F800 (probe fast from safe retract, 24mm+THT)
G1 Z12.6 (fast retract 2mm+THT)
G38.2 Z-14.6 F400 (slow probe max -2mm -last retract)
G1 Z13.1 F800 (fast retract to ITH, 2.5mm+THT, 150%-200% of cut height)
M3
G4 P1.5 (pierce delay, THC delay s/b this+1.0)
G1 F3400 (restore feed rate and move mode)
;end probe ITH

G1X-0.13Y-0.61
G1X-0.02Y-0.62
G1X0.07Y-0.62
G1X0.18Y-0.6
G1X0.22Y-0.58
G1X0.15Y-0.44
G1X0.06Y-0.07
G1X0.09Y-0.03
G1X0.1Y0.01
G1X0.02Y0.01
G1X0.03Y0.16
G1X0.01Y0.16
G1X0.01Y5.3
G1X-0.01Y0.17
G1X-0.05Y0.16
G1X-0.12Y0.03
G1X-0.13Y-0.05
G1X-0.15Y-0.41
G1X-0.14Y-0.41
G1X-0.15Y-0.31
G1X-0.18Y-0.3
G1X-0.21Y-0.26
G1X-0.22Y-0.24
G1X-0.24Y-0.19
G1X-0.24Y-0.19
G1X-0.24Y-0.15
G1X-0.26Y-0.11
G1Y-0.71
G1X0.15Y-0.05
G1X0.15Y-0.08
G1X0.27Y-0.15
G1X0.26Y-0.18
G1X0.28Y-0.27
G1X0.24Y-0.28
G1X0.3Y-0.54

;begin safe retract and ready for probing next cut ITH
M5
G21 G91
G1 Z20 F800 (fast retract to safe height)
G1 F3400 (restore feed rate and move mode)
;end safe retract and ready ITH

G0X-31.51Y-2.53
; Layer C02

;begin probe for ITH. THT=10.6mm
G21 G91 (metric and relative)
G38.2 Z-35 F800 (probe fast from safe retract, 24mm+THT)
G1 Z12.6 (fast retract 2mm+THT)
G38.2 Z-14.6 F400 (slow probe max -2mm -last retract)
G1 Z13.1 F800 (fast retract to ITH, 2.5mm+THT, 150%-200% of cut height)
M3
G4 P1.5 (pierce delay, THC delay s/b this+1.0)
G1 F3400 (restore feed rate and move mode)
;end probe ITH

G1X-0.33Y-0.53
G1X-0.25Y-0.57
G1X-0.14Y-0.6
G1X-0.06Y-0.63
G1Y-0.02
G1X-0.01Y-0.27
G1X-0.05Y-0.26
G1X-0.11Y-0.26
G1X-0.14Y-0.24
G1X-0.14Y-0.14
G1X-0.16Y-0.12
G1X-0.18Y-0.09
G1X-0.19Y-0.06
G1X-0.25Y-0.06
G1X-0.23Y-0.1
G1X-0.04Y-0.02
G1X-0.02Y-0.04
G1X0.12Y-0.06
G1X0.13Y-0.04
G1X0.14Y-0.01
G1X0.13Y0.01
G1X7.47Y-0.01
G1X0.16Y0.01
G1X0.23Y0.05
G1X0.07Y0.05
G1X-0.03Y0.04
G1X-0.03Y0.03
G1X-0.27Y0.11
G1X-0.28Y0.06
G1X-0.35Y0.19
G1X-0.28Y0.29
G1X-0.17Y0.35
G1X-0.05Y0.4
G1X-0.01Y0.1
G1Y0.1
G1Y13.18
G1X0.01Y0.27
G1X0.05Y0.26
G1X0.07Y0.19
G1X0.08Y0.17
G1X0.11Y0.16
G1X0.14Y0.15
G1X0.16Y0.11
G1X0.18Y0.09
G1X0.19Y0.06
G1X0.19Y0.04
G1X0.16Y0.04
G1X0.12Y0.09
G1X0.01Y0.03
G1X-0.01Y0.02
G1X-0.22Y0.08
G1X-7.7
G1X-0.25Y-0.01
G1X-0.25Y-0.08
G1X-0.01Y-0.02
G1X0.08Y-0.08
G1X0.11Y-0.03
G1X0.37Y-0.1
G1X0.35Y-0.16
G1X0.25Y-0.23
G1X0.2Y-0.27
G1X0.12Y-0.39
G1X0.03Y-0.41
G1Y-13.15

;begin safe retract and ready for probing next cut ITH
M5
G21 G91
G1 Z20 F800 (fast retract to safe height)
G1 F3400 (restore feed rate and move mode)
;end safe retract and ready ITH

G0X68.73Y0.63
; Layer C02

;begin probe for ITH. THT=10.6mm
G21 G91 (metric and relative)
G38.2 Z-35 F800 (probe fast from safe retract, 24mm+THT)
G1 Z12.6 (fast retract 2mm+THT)
G38.2 Z-14.6 F400 (slow probe max -2mm -last retract)
G1 Z13.1 F800 (fast retract to ITH, 2.5mm+THT, 150%-200% of cut height)
M3
G4 P1.5 (pierce delay, THC delay s/b this+1.0)
G1 F3400 (restore feed rate and move mode)
;end probe ITH

G1X0.33Y0.53
G1X0.25Y0.57
G1X0.15Y0.6
G1X0.05Y0.62
G1Y0.14
G1X-0.02Y0.13
G1X-0.02
G1X-0.11Y0.01
G1X-0.1Y-0.05
G1X-0.09Y-0.12
G1X-0.21Y-0.54
G1X-0.21Y-0.55
G1X-0.33Y-0.68
G1X-0.39Y-0.64
G1X-0.47Y-0.6
G1X-0.54Y-0.53
G1X-0.42Y-0.31
G1X-0.03Y-0.03
G1X-0.04Y-0.02
G1X-0.27Y-0.14
G1X-0.26Y-0.14
G1X-0.02
G1X-0.28Y-0.1
G1X-0.27Y-0.1
G1X-0.22Y-0.05
G1X-0.23Y-0.05
G1Y-0.36
G1X4.53
G1Y4.73

;begin safe retract and ready for probing next cut ITH
M5
G21 G91
G1 Z20 F800 (fast retract to safe height)
G1 F3400 (restore feed rate and move mode)
;end safe retract and ready ITH

G0X42.36Y15.42
; Layer C02

;begin probe for ITH. THT=10.6mm
G21 G91 (metric and relative)
G38.2 Z-35 F800 (probe fast from safe retract, 24mm+THT)
G1 Z12.6 (fast retract 2mm+THT)
G38.2 Z-14.6 F400 (slow probe max -2mm -last retract)
G1 Z13.1 F800 (fast retract to ITH, 2.5mm+THT, 150%-200% of cut height)
M3
G4 P1.5 (pierce delay, THC delay s/b this+1.0)
G1 F3400 (restore feed rate and move mode)
;end probe ITH

G1X0.31Y-0.54
G1X0.39Y-0.48
G1X0.47Y-0.41
G1X0.53Y-0.34
G1X1.21Y-0.63
G1X1.22Y-0.67
G1X1.2Y-0.69
G1X1.19Y-0.71
G1X2.19Y-1.41
G1X0.03Y-0.01
G1X2.05Y-1.45
G1X0.02Y-0.02
G1X1.91Y-1.48
G1X0.91Y-0.76
G1X0.88Y-0.78
G1X0.03Y-0.02
G1X1.62Y-1.56
G1X0.02Y-0.03
G1X0.76Y-0.81
G1X0.73Y-0.82
G1X1.31Y-1.63
G1X0.59Y-0.87
G1X0.61Y-0.86
G1X0.51Y-0.86
G1X0.5Y-0.87
G1X0.8Y-1.72
G1X0.35Y-0.92
G1X0.33Y-0.92
G1X0.46Y-1.77
G1X0.02Y-0.06
G1X0.28Y-1.82
G1Y-0.03
G1X0.09Y-1.81
G1Y-0.04
G1Y-0.03
G1X-0.12Y-2.04
G1Y-0.03
G1X-0.19Y-1.02
G1X-0.17Y-1.06
G1X-0.3Y-1.05
G1X-0.32Y-1.04
G1X-0.81Y-1.95
G1X-0.02Y-0.03
G1X-0.01Y-0.02
G1X-1.03Y-1.92
G1X-0.02Y-0.05
G1X-0.64Y-0.96
G1X-0.63Y-0.97
G1X-1.45Y-1.84
G1X-0.83Y-0.92
G1X-0.85Y-0.92
G1X-0.94Y-0.91
G1X-0.96Y-0.9
G1X-2.03Y-1.71
G1X-2.25Y-1.68
G1X-1.22Y-0.82
G1X-1.22Y-0.82
G1X-2.56Y-1.56
G1X-0.03Y-0.01
G1X-2.73Y-1.5
G1X-0.02Y-0.01
G1X-2.9Y-1.44
G1X-0.02Y-0.01
G1X-1.55Y-0.72
G1X-1.56Y-0.69
G1X-1.57Y-0.66
G1X-1.58Y-0.63
G1X-0.02Y-0.01
G1X-3.34Y-1.25
G1X-3.64Y-1.23
G1X-3.68Y-1.12
G1X-3.71Y-1.02
G1X-3.73Y-0.92
G1X-3.99Y-0.89
G1X-2.06Y-0.41
G1X-2.06Y-0.39
G1X-2.07Y-0.36
G1X-2.08Y-0.34
G1X-0.01Y-0.01
G1X-2.16Y-0.32
G1X-2.17Y-0.31
G1X-2.16Y-0.27
G1X-2.17Y-0.26
G1X-0.02
G1X-2.25Y-0.23
G1X-2.25Y-0.21
G1X-2.25Y-0.19
G1X-2.25Y-0.16
G1X-4.66Y-0.25
G1X-4.65Y-0.16
G1X-4.7Y-0.05
G1X-4.71Y0.05
G1X-4.7Y0.15
G1X-4.72Y0.26
G1X-4.5Y0.35
G1X-4.5Y0.44
G1X-0.02
G1X-2.17Y0.26
G1X-2.16Y0.28
G1X-2.16Y0.3
G1X-2.16Y0.32
G1X-0.02Y0.01
G1X-4.06Y0.68
G1X-4.05Y0.79
G1X-4.03Y0.89
G1X-4Y0.99
G1X-3.76Y1.04
G1X-3.62Y1.1
G1X-3.48Y1.18
G1X-3.36Y1.26
G1X-0.02Y0.01
G1X-1.6Y0.66
G1X-1.61Y0.66
G1X-3.05Y1.38
G1X-0.02Y0.01
G1X-2.9Y1.44
G1X-0.02Y0.01
G1X-2.73Y1.5
G1X-0.02Y0.01
G1X-2.57Y1.56
G1X-0.02Y0.01
G1X-2.4Y1.61
G1X-0.03Y0.02
G1X-2.24Y1.68
G1X-2.03Y1.71
G1X-0.94Y0.92
G1X-0.96Y0.89
G1X-0.85Y0.92
G1X-0.83Y0.92
G1X-1.45Y1.84
G1X-0.64Y0.96
G1X-0.63Y0.97
G1X-0.53Y0.98
G1X-0.52Y0.99
G1X-0.01Y0.01
G1X-0.43Y0.99
G1X-0.4Y1
G1X-0.31Y1.04
G1X-0.3Y1.04
G1X-0.01Y0.04
G1X-0.35Y2.01
G1X-0.01Y0.07
G1X-0.12Y2.04
G1X-0.01Y0.04
G1X0.01Y0.03
G1X0.12Y2.04
G1Y0.04
G1X0.19Y1.02
G1X0.18Y1.06
G1X0.3Y1.04
G1X0.31Y1.04
G1X0.82Y1.98
G1X0.02Y0.03
G1X0.52Y0.98
G1X0.53Y0.99
G1X0.63Y0.97
G1X0.64Y0.95
G1X1.45Y1.85
G1X0.83Y0.92
G1X0.85Y0.91
G1X0.94Y0.92
G1X0.96Y0.89
G1X2.03Y1.71
G1X2.24Y1.69
G1X0.03Y0.02
G1X2.4Y1.61
G1X0.02Y0.01
G1X2.57Y1.55
G1X0.02Y0.02
G1X2.73Y1.5
G1X0.02Y0.01
G1X2.9Y1.44
G1X0.02Y0.01
G1X1.55Y0.72
G1X1.56Y0.68
G1X1.57Y0.67
G1X1.58Y0.63
G1X0.02Y0.01
G1X3.34Y1.24
G1X0.02Y0.01
G1X3.48Y1.18
G1X2.79Y0.86
G1X2.81Y0.81
G1X2.82Y0.75
G1X2.84Y0.69
G1X3.99Y0.88
G1X2.06Y0.42
G1X2.07Y0.39
G1X2.07Y0.36
G1X2.07Y0.34
G1X0.02
G1X2.16Y0.33
G1X2.16Y0.3
G1X2.16Y0.28
G1X2.17Y0.25
G1X0.02Y0.01
G1X2.25Y0.23
G1X2.24Y0.21
G1X2.26Y0.18
G1X2.25Y0.16
G1X2.34Y0.14
G1X2.32Y0.12
G1X2.32Y0.09
G1X2.33Y0.06
G1X2.51Y0.04
G1X2.51Y0.01
G1X2.51Y-0.01
G1X2.51Y-0.05
G1X0.02
G1X2.58Y-0.08
G1X2.58Y-0.11
G1X2.58Y-0.14
G1X2.58Y-0.18
G1X0.02
G1X5.02Y-0.42
G1X0.01
G1X4.92Y-0.55
G1X0.01Y-0.01
G1X4.81Y-0.66
G1X0.02
G1X4.68Y-0.76
G1X4.58Y-0.88
G1X2.2Y-0.47
G1X2.19Y-0.49
G1X2.18Y-0.53
G1X2.18Y-0.56
G1X0.02Y-0.01
G1X4.13Y-1.16
G1X0.01Y-0.01
G1X3.98Y-1.26
G1X0.02
G1X3.81Y-1.35
G1X1.83Y-0.73
G1X1.83Y-0.71
G1X0.02Y-0.01
G1X3.46Y-1.51
G1X0.02Y-0.01
G1X3.26Y-1.59
G1X0.02Y-0.01

;begin safe retract and ready for probing next cut ITH
M5
G21 G91
G1 Z20 F800 (fast retract to safe height)
G1 F3400 (restore feed rate and move mode)
;end safe retract and ready ITH

M9
G1S0
; return to starting pos
G0 X-70.85Y-65.71

;USER END SCRIPT
; begin user defined End gcode
;end End gcode
;USER END SCRIPT
M2
