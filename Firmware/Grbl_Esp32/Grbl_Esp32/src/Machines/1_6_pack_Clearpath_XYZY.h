#pragma once
// clang-format off

/*
    6_pack_extrenal_XYZY_Spin_Relay
    "1_6_pack_Clearpath_XYZY.h"
    Covers all V1 versions V1p0, V1p1, etc

    Part of Grbl_ESP32
    Pin assignments for the ESP32 I2S 6-axis board
    
    2020-10-7 B. Dring for David M.

    Grbl_ESP32 is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.
    Grbl is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU General Public License for more details.
    You should have received a copy of the GNU General Public License
    along with Grbl_ESP32.  If not, see <http://www.gnu.org/licenses/>.
*/
#define MACHINE_NAME           "1Our 6 Pack External XYYZ"

#define N_AXIS 3

// === Special Features

// I2S (steppers & other output-only pins)
#define USE_I2S_OUT
#define USE_I2S_STEPS
//#define DEFAULT_STEPPER ST_I2S_STATIC

//#define USE_STEPSTICK   // makes sure MS1,2,3 !reset and !sleep are set

#define I2S_OUT_BCK             GPIO_NUM_22
#define I2S_OUT_WS              GPIO_NUM_17
#define I2S_OUT_DATA            GPIO_NUM_21


//#define X_STEPPER_MS3           I2SO(3)   // X_CS
//#define Y_STEPPER_MS3           I2SO(6)   // Y_CS
//#define Y2_STEPPER_MS3          I2SO(11)  // Z_CS
//#define Z_STEPPER_MS3           I2SO(14)  // A_CS

//#define STEPPER_RESET           GPIO_NUM_19

// Motor Socket #1
#define X_DISABLE_PIN           I2SO(0)
#define X_DIRECTION_PIN         I2SO(1)
#define X_STEP_PIN              I2SO(2)

// Motor Socket #2
#define Y_DISABLE_PIN           I2SO(4)
#define Y_DIRECTION_PIN         I2SO(5)
#define Y_STEP_PIN              I2SO(6)


// Motor Socket #4
#define Y2_DISABLE_PIN           I2SO(12)
#define Y2_DIRECTION_PIN         I2SO(13)
#define Y2_STEP_PIN              I2SO(14)

// Motor Socket #3
#define Z_DIRECTION_PIN         I2SO(8)
#define Z_STEP_PIN              I2SO(9)
#define Z_DISABLE_PIN           I2SO(10)
//Socket I/O reference
// === Default settings
#define DEFAULT_STEP_PULSE_MICROSECONDS I2S_OUT_USEC_PER_PULSE

// Module in Socket #1
// Dring Heath Controller\Kicad\Dring Heath Small\Torch Module\Torch Module.sch

#define A_LIMIT_PIN             GPIO_NUM_34   // hard Z limit
#define PROBE_PIN               GPIO_NUM_35  //soft Z limit
//#define DEFAULT_INVERT_PROBE_PIN        0

// Module in socket #3
#define SPINDLE_TYPE            SpindleType::RELAY // default, check actual $Spindle/Type Setting
#define SPINDLE_OUTPUT_PIN      GPIO_NUM_26 // Handover Z axis contol to THCIO32
//#define COOLANT_MIST_PIN       GPIO_NUM_26
//#define COOLANT_FLOOD_PIN      GPIO_NUM_4
//#define SPINDLE_TYPE            SpindleType::LASER
//#define DEFAULT_LASER_MODE      1
#define CONTROL_FEED_HOLD_PIN       GPIO_NUM_36 //from THC IO pin 33 jumper Climit and Blimit to THC
#define CONTROL_CYCLE_START_PIN     GPIO_NUM_39  // see control switches in wiki
// #define CONTROL_RESET_PIN       GPIO_NUM_34  // labeled Reset, needs external pullup
// Any one of MACRO_BUTTON_0_PIN, MACRO_BUTTON_1_PIN, and MACRO_BUTTON_2_PIN
// enables the user_defined_macro(number) function which
// implements custom behavior at the press of a button
// #define MACRO_BUTTON_0_PIN

/*
    Socket I/O reference
    The list of modules is here...
    https://github.com/bdring/6-Pack_CNC_Controller/wiki/CNC-I-O-Module-List
    Click on each module to get example for using the modules in the sockets


Socket #1
#1 GPIO_NUM_33 
#2 GPIO_NUM_32
#3 GPIO_NUM_35 (input only)
#4 GPIO_NUM_34 (input only)

Socket #2
#1 GPIO_NUM_2
#2 GPIO_NUM_25
#3 GPIO_NUM_39 (input only)
#4 GPIO_NUM_36 (inTCH_GPIO_NUM_put only)

Socket #3
#1 GPIO_NUM_26
#2 GPIO_NUM_4
#3 GPIO_NUM_16
#4 GPIO_NUM_27
#5 TCH_GPIO_NUM_14
#6 TCH_GPIO_NUM_12
#7 TCH_GPIO_NUM_36
#8 TCH_GPIO_NUM_32

Socket #4
#1 GPIO_NUM_14
#2 GPIO_NUM_13
#3 GPIO_NUM_15
#4 GPIO_NUM_12

Socket #5
#1 I2SO(24)  (output only)
#2 I2SO(25)  (output only)
#3 I2SO26)  (output only)

*/



// 4x Switch Input module  in socket #2
//#define CONTROL_FEED_HOLD_PIN       GPIO_NUM_2
//#define CONTROL_CYCLE_START_PIN     GPIO_NUM_25
//#define CONTROL_RESET_PIN           GPIO_NUM_39
//#define PROBE_PIN                   GPIO_NUM_36


// Quad MOSFET module in socket #3
// https://github.com/bdring/6-Pack_CNC_Controller/wiki/Quad-MOSFET-Module
//#define COOLANT_MIST_PIN       GPIO_NUM_26
//#define COOLANT_FLOOD_PIN      GPIO_NUM_4

// 0-10V Spindle in socket #4
// https://github.com/bdring/6-Pack_CNC_Controller/wiki/0-10V-Output-Module
//#define SPINDLE_TYPE            SpindleType::_10V// default, check actual $Spindle/Type Setting
//#define SPINDLE_OUTPUT_PIN      GPIO_NUM_14
//#define SPINDLE_FORWARD_PIN     GPIO_NUM_13
//#define SPINDLE_REVERSE_PIN     GPIO_NUM_15


