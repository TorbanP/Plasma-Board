#include <AccelStepper.h>
#include <Adafruit_ADS1015.h>
#include <Arduino.h>
#include <EEPROM.h>
#include <EasyNextionLibrary.h>
#include <ElegantOTA.h>
#include <FastPID.h>
#include <Preferences.h>
#include <WebServer.h>
#include <WiFi.h>
#include <WiFiClient.h>

#define RXD2 16
#define TXD2 17
#define I2C_SDA 21
#define I2C_SCL 22
#define Plasma_Trigger 32  // Trigger Plasma and switch Z control
#define Feed_Hold 26
#define Feed_Start 25
#define Probe_Pin 34  // Active Low
#define Torch_Ready 14
#define PLASMA_INPUT_PIN 36  // THC GPIO 36 Analog voltage
#define ENABLE_PIN 19        // Enable GPIO Clearpath Z
#define Handover 12          // Start Handover of Z axis control from GRBL
#define STEP_PIN 23          // Direction GPIO 23
#define DIR_PIN 18           // Step GPIO 18
#define MUX_SET 4
#define TRANSITPOS 30
#define ARCTIMEOUT 1500  // safety timeout for bad pierce

Preferences preferences;
Adafruit_ADS1115 ads(0x48);
float multiplier = .125;  // Derived fro Gain
EasyNex THCNex(
    Serial1);  // Create an object of EasyNex class with the name < TCHNex >
// MKS Drive board enable pin in 13
// No need to define because it uses the onboard LED on the Arduino Uno R3

// Define a stepper driver and the pins it will use
AccelStepper stepper = AccelStepper(stepper.DRIVER, STEP_PIN, DIR_PIN);

// Define Variables
double Input = 0;
float targetInput;
float gap;
float scale;
long threshold;
long currentGap;
uint32_t oldDelay;
uint32_t arcStabilizeDelay;
long SetPoint = 0;
long CalibrationOffset = 0;
int runonce = 0;
int handover_state = 0;
int handover_state_counter = 0;

// Specify the links and initial tuning parameters
float aggKp = 0.175, aggKi = 0.1, aggKd = 0.1;
float Kp = 0.075, Ki = 0.01, Kd = 0.01;
float Hz = 8;
int output_bits = 16;
bool output_signed = true;
bool alreadySetColor = false;

FastPID THCPID(Kp, Ki, Kd, Hz, output_bits, output_signed);

// Set EEPROM Addresses for Setpoint saving
int addressPage1 = 10;
int addressPage2 = 20;
int addressPage3 = 30;
int addressPage4 = 40;
int addressPage5 = 50;
int addressPage6 = 60;
int addressGap = 70;
int addressThreshold = 80;
int addressDelay = 90;
int addressSteps = 100;
int addressCalibrate = 110;
int addressMaxpos = 120;
int addressMinpos = 130;
int addressAP = 200;
int addressAI = 300;
int addressAD = 400;
int addressCP = 500;
int addressCI = 600;
int addressCD = 700;
int addressScale = 800;
long defaultSetpoint = 10900;
long SetpointPage1 = 0;
long SetpointPage2 = 0;
long SetpointPage3 = 0;
long SetpointPage4 = 0;
long SetpointPage5 = 0;
long SetpointPage6 = 0;
long CurrentPageNumber = 0;
long SavedPage = 0;

// movement
long steps_per_mm = 200;
float pos = 0;
float startcutpos = 0;
float adjpos = 0;
long minPos = -(40 * steps_per_mm);
long maxPos = (40 * steps_per_mm);
long moveAmt = 0;
uint8_t output = 0;

const char *ssid = "Eccleston";
const char *password = "Cede";

WebServer server(80);

// Function Headers
void report();
void writeStringIntoEEPROM(char add, String data);
String read_StringFromEEPROM(char add);
void writeIntIntoEEPROM(int address, int number);
int readIntFromEEPROM(int address);
void writeFloatIntoEEPROM(int address, float num);
float readFloatFromEEPROM(int address);
void writeLongIntoEEPROM(int address, long number);
long readLongFromEEPROM(int address);
void process();
void trigger0();
void trigger1();
void trigger2();
void trigger3();
void trigger4();
void trigger5();
void trigger6();
void trigger7();
void trigger8();
void trigger9();
void trigger10();
void trigger11();
void trigger12();
void trigger13();
void trigger14();
void trigger15();
void trigger16();
void trigger17();
void trigger18();
void trigger19();
void trigger20();
void trigger21();
void trigger22();
void trigger23();
void trigger24();
void trigger25();
void trigger26();
void trigger27();
void trigger28();
void trigger29();
void trigger30();
void trigger31();
void trigger32();
void trigger33();
void trigger34();
void trigger35();
void format();

//
void setup(void) {
    Serial.begin(115200);
    WiFi.mode(WIFI_STA);
    WiFi.begin(ssid, password);
    Serial.println("");

    // Wait for connection
    while (WiFi.status() != WL_CONNECTED) {
        delay(500);
        Serial.print(".");
    }
    Serial.println("");
    Serial.print("Connected to ");
    Serial.println(ssid);
    Serial.print("IP address: ");
    Serial.println(WiFi.localIP());

    server.on("/", []() {
        server.send(200, "THC FW_1.0");
    });  // Note: lambda function

    ElegantOTA.begin(&server);  // Start ElegantOTA
    server.begin();
    Serial.println("HTTP server started");

    pinMode(Plasma_Trigger, OUTPUT);
    pinMode(Torch_Ready, INPUT_PULLDOWN);
    pinMode(Feed_Hold, OUTPUT);
    pinMode(Feed_Start, OUTPUT);
    pinMode(MUX_SET, OUTPUT);
    pinMode(ENABLE_PIN, OUTPUT);
    pinMode(Handover, INPUT);
    pinMode(Probe_Pin, INPUT);

    digitalWrite(Torch_Ready, LOW);
    digitalWrite(ENABLE_PIN, HIGH);  // Keep Z-axis motor Enabled
    digitalWrite(Feed_Hold, HIGH);
    digitalWrite(Feed_Start, HIGH);
    digitalWrite(Plasma_Trigger, LOW);

    // Start ADC
    ads.setGain(GAIN_ONE);  // 1x gain   +/- 4.096V  1 bit = 2mV      0.125mV
    ads.begin();

    preferences.begin("Setup", false);

    // Begin the object with a baud rate of 9600
    Serial2.begin(9600, SERIAL_8N1, RXD2, TXD2);
    // Serial2.println("Serial starting");
    THCNex.begin();  // Default 9600

    // initialize the variables we're linked to
    // Load EEPROM Addresses for Setpoints or set defaults
    SetpointPage1 = readLongFromEEPROM(addressPage1);
    if (SetpointPage1 == 0) {
        SetpointPage1 = defaultSetpoint;
    }

    SetpointPage2 = readLongFromEEPROM(addressPage2);
    if (SetpointPage2 == 0) {
        SetpointPage2 = defaultSetpoint;
    }

    SetpointPage3 = readLongFromEEPROM(addressPage3);
    if (SetpointPage3 == 0) {
        SetpointPage3 = defaultSetpoint;
    }

    SetpointPage4 = readLongFromEEPROM(addressPage4);
    if (SetpointPage4 == 0) {
        SetpointPage4 = defaultSetpoint;
    }

    SetpointPage5 = readLongFromEEPROM(addressPage5);
    if (SetpointPage5 == 0) {
        SetpointPage5 = defaultSetpoint;
    }

    SetpointPage6 = readLongFromEEPROM(addressPage6);
    if (SetpointPage6 == 0) {
        SetpointPage6 = defaultSetpoint;
    }

    scale = readFloatFromEEPROM(addressScale);  // float
    if (scale == 0) {
        scale = 1;
    }

    gap = readLongFromEEPROM(addressGap);
    if (gap == 0) {
        gap = 500;
    }

    threshold = readLongFromEEPROM(addressThreshold);
    if (threshold == 0) {
        threshold = 4000;
    }

    arcStabilizeDelay = readLongFromEEPROM(addressDelay);
    if (arcStabilizeDelay == 0) {
        arcStabilizeDelay = 150;
    }

    steps_per_mm = readLongFromEEPROM(addressSteps);
    if (steps_per_mm == 0) {
        steps_per_mm = 200;
    }

    maxPos = readLongFromEEPROM(addressMaxpos);
    if (maxPos == 0) {
        maxPos = 40 * steps_per_mm;
    }

    minPos = readLongFromEEPROM(addressMinpos);
    if (minPos == 0) {
        minPos = -(40 * steps_per_mm);
    }

    aggKp = readFloatFromEEPROM(addressAP);  // float
    if (aggKp == 0) {
        aggKp = 0.175;
    }

    aggKi = readFloatFromEEPROM(addressAI);  // float
    if (aggKi == 0) {
        aggKi = 0.1;
    }

    aggKd = readFloatFromEEPROM(addressAD);  // float
    if (aggKd == 0) {
        aggKd = 0.1;
    }

    Kp = readFloatFromEEPROM(addressCP);  // float
    if (Kp == 0) {
        Kp = 0.075;
    }

    Ki = readFloatFromEEPROM(addressCI);  // float
    if (Ki == 0) {
        Ki = 0.01;
    }

    Kd = readFloatFromEEPROM(addressCD);  // float
    if (Kd == 0) {
        Kd = 0.01;
    }

    CalibrationOffset = readLongFromEEPROM(addressCalibrate);
    if (CalibrationOffset == 0) {
        CalibrationOffset = 0;
    }

    // Wait for Nextion Screen to bootup
    delay(2500);
    THCNex.writeNum("CustomSetPoint.val", SetpointPage1);
    THCNex.writeNum("CustomSetPoint.val", SetpointPage1);  // Make sure it set
    THCNex.writeNum("CustomSetPoint.val", SetpointPage1);  // One more time
    SetPoint = SetpointPage1;

    // Setup Stepper Driver
    stepper.setMaxSpeed(150000);  // thru experimentation I found these values
                                  // to work... Change for your setup.
    stepper.setAcceleration(20000);
    // Enable MKS Driver Board
    Serial.println("Setup Complete");
}

//
void loop(void) {
    server.handleClient();

    handover_state = digitalRead(Handover);

    if (!handover_state) {
        handover_state_counter++;
    } else {
        handover_state_counter = 0;
    }

    if (handover_state && runonce == 0) { // Machine code turns on Spindle or laser // from fluidnc
        Serial.println("Plasma Start");
        digitalWrite(Feed_Hold, LOW);
        delay(100);
        digitalWrite(Feed_Hold, HIGH);  // Hold Feed until torch ready
        while (!digitalRead(Handover)) {
            ;  // Assert XY is stopped, handover is low
        }
        Serial.println("Set Mux");
        
        // PROBE
        digitalWrite(MUX_SET, HIGH);  // Enable Mux control with THC board

        while (digitalRead(Probe_Pin)) {
            stepper.move(1);
            stepper.run();
            Serial.println("Moving Down!");
        }
        stepper.setCurrentPosition(0);

        stepper.move(-1000);
        while (stepper.run()) {
            Serial.println("Moving up!");
            ;
        }

        Serial.println("Plasma Triggered");
        digitalWrite(
            Plasma_Trigger,
            HIGH);  // fire plasma + toggle multiplexer for Z axis control
        // int start_pierce_time = millis();
        // while (digitalRead(Torch_Ready) != HIGH) // wait for torch ready
        // signal Ready = High
        // {
        //   if (millis() > (start_pierce_time + ARCTIMEOUT))
        //   { // retry mode with delay
        //     start_pierce_time = millis();
        //     digitalWrite(Plasma_Trigger, LOW);
        //     delay(5000);
        //     digitalWrite(Plasma_Trigger, HIGH);
        //   }
        // }

        digitalWrite(Feed_Start, LOW);
        delay(100);
        digitalWrite(Feed_Start, HIGH);
        while (!digitalRead(Handover)) {
            delay(1);
        }
        runonce = 1;
    }
    if (handover_state_counter > 50) {
        runonce = 0;
        // Serial.println("runonce reset to 0");
    }

    // while ((CurrentPageNumber <= 6 || CurrentPageNumber == 11) &&
    // digitalRead(Handover) == true) // Focus on listening to Plasma Inputs
    // {
    //   Input = ads.readADC_Differential_0_1() * multiplier +
    //   CalibrationOffset; // reads plasma arc voltage and convert to millivolt
    //   process(); // This is the main method of the application it calulates
    //   position and move steps if Input Voltage is over threshold. report();
    //   THCNex.NextionListen();
    //   int cut_halt_state = 1;
    // }

    // if (cut_halt_state == 1)
    // {
    //   // Done our operation, cleanup time
    //   // Pause machine
    //   digitalWrite(Feed_Hold, LOW); // Hold Feed until torch ready
    //   delay(20);
    //   digitalWrite(Feed_Hold, HIGH); // 20ms pulse
    //   // Return Z and move to safe position
    //   stepper.moveTo(startcutpos + TRANSITPOS);
    //   // Release control to Z- Axis
    //   digitalWrite(MUX_SET, HIGH); // Disable Mux control with THC board
    // }
    // // Done our operation, cleanup time
    // // Pause machine
    // digitalWrite(Feed_Hold, LOW); // Hold Feed until torch ready
    // delay(20);
    // digitalWrite(Feed_Hold, HIGH); // 20ms pulse
    // // Return Z and move to safe position
    // stepper.moveTo(startcutpos + TRANSITPOS);
    // // Release control to Z- Axis
    // digitalWrite(MUX_SET, HIGH); // Disable Mux control with THC board
    // digitalWrite(Feed_Start, LOW);
    // delay(20);
    // digitalWrite(Feed_Start, HIGH); // start grbl

    // THCNex.NextionListen(); // else focus on listening to Nextion Inputs
}

// report plasma voltage and position
void report() {
    THCNex.writeNum("PV.val", (int)Input);
    THCNex.writeNum("POS.val", (int)(pos / 2));
}

//
void writeStringIntoEEPROM(char add, String data) {
    int _size = data.length();
    int i;
    for (i = 0; i < _size; i++) {
        EEPROM.write(add + i, data[i]);
    }
    EEPROM.write(add + _size,
                 '\0');  // Add termination null character for String Data
                         //  EEPROM.commit();
}

//
String read_StringFromEEPROM(char add) {
    int i;
    char data[100];  // Max 100 Bytes
    int len = 0;
    unsigned char k;
    k = EEPROM.read(add);
    while (k != '\0' && len < 500)  // Read until null character
    {
        k = EEPROM.read(add + len);
        data[len] = k;
        len++;
    }
    data[len] = '\0';
    return String(data);
}

//
void writeIntIntoEEPROM(int address, int number) {
    EEPROM.write(address, number >> 8);
    EEPROM.write(address + 1, number & 0xFF);
}

//
int readIntFromEEPROM(int address) {
    return (EEPROM.read(address) << 8) + EEPROM.read(address + 1);
}

//
void writeFloatIntoEEPROM(int address, float num) {
    byte *f = (byte *)(void *)&num;
    for (int x = 0; x < 4; x++) {
        EEPROM.write(address + (x * 4), *f++);
    }
}

//
float readFloatFromEEPROM(int address) {
    float eevalue;
    for (int x = 0; x < 4; x++) {
        eevalue = eevalue + (float)EEPROM.read(address + (x * 4));
    }
    return eevalue;
}

//
void writeLongIntoEEPROM(int address, long number) {
    EEPROM.write(address, (number >> 24) & 0xFF);
    EEPROM.write(address + 1, (number >> 16) & 0xFF);
    EEPROM.write(address + 2, (number >> 8) & 0xFF);
    EEPROM.write(address + 3, number & 0xFF);
}

//
long readLongFromEEPROM(int address) {
    return ((long)EEPROM.read(address) << 2) +
           ((long)EEPROM.read(address + 1) << 16) +
           ((long)EEPROM.read(address + 2) << 8) +
           ((long)EEPROM.read(address + 3));
}

// Calulates position and move steps
void process() {
    oldDelay = micros();
    while (Input > (threshold +
                    CalibrationOffset))  // Only move if cutting by checking for
                                         // voltage above a threshold level
    {
        if (micros() - oldDelay >=
            arcStabilizeDelay)  // wait for arc to stabilize tipically 100-300ms
        {
            // Input = map(analogRead(PLASMA_INPUT_PIN), 0, 1023, 0, 25000) +
            // CalibrationOffset; // get new plasma arc voltage and convert to
            // millivolts
            Input = ads.readADC_Differential_0_1() * multiplier +
                    CalibrationOffset;  // get new plasma arc voltage and
                                        // convert to millivolts

            currentGap = abs(SetPoint - Input);  // distance away from setpoint
            if (currentGap < gap) {
                THCPID.setCoefficients(Kp, Ki, Kd,
                                       Hz);  // we're close to setpoint, use
                                             // conservative tuning parameters
            } else {
                THCPID.setCoefficients(aggKp, aggKi, aggKd,
                                       Hz);  // we're far from setpoint, use
                                             // aggressive tuning parameters
            }

            if (SetPoint > Input) {
                targetInput = Input - SetPoint + SetPoint;
                output = THCPID.step(SetPoint, targetInput);
                pos = pos + output;
            } else {
                targetInput = SetPoint - Input + SetPoint;
                output = THCPID.step(SetPoint, targetInput);
                pos = pos - output;
            }

            // Validate move is within range
            if (pos >= maxPos) {
                pos = maxPos;
            }
            if (pos <= minPos) {
                pos = minPos;
            }

            // do move
            stepper.moveTo(pos);
            while (stepper.distanceToGo() != 0) {
                stepper.run();
            }

            report();  // report plasma voltage and position
                       // format();
        }
    }
    // after cut reset height
    pos = 0;
    // do move
    stepper.moveTo(pos);
    while (stepper.distanceToGo() != 0) {
        stepper.run();
    }
}

// Set last page used on startup loaded event
void trigger0() {
    // not used because bug with Nextion screen not updating screen loaded
    // event. THCNex.writeNum("dp", SavedPage);
}

// read customsetpoint on page loaded event
void trigger1() {
    CurrentPageNumber = THCNex.readNumber("dp");
    SetPoint = THCNex.readNumber("CustomSetPoint.val");
    if (CurrentPageNumber != 777777 && SetPoint != 777777) {
        switch (CurrentPageNumber) {
            case 1:
                SetPoint =
                    SetpointPage1;  // write a few times to make sure... nextion
                                    // screen has a nasty habbat of ignoring
                                    // update commands on boot.
                THCNex.writeNum("CustomSetPoint.val", SetpointPage1);
                THCNex.writeNum("CustomSlide.val", SetpointPage1);
                THCNex.writeNum("CustomSetPoint.val", SetpointPage1);
                THCNex.writeNum("CustomSlide.val", SetpointPage1);
                THCNex.writeNum("CustomSetPoint.val", SetpointPage1);
                THCNex.writeNum("CustomSlide.val", SetpointPage1);
                break;
            case 2:
                SetPoint = SetpointPage2;
                THCNex.writeNum("CustomSetPoint.val", SetpointPage2);
                THCNex.writeNum("CustomSlide.val", SetpointPage2);
                break;
            case 3:
                SetPoint = SetpointPage3;
                THCNex.writeNum("CustomSetPoint.val", SetpointPage3);
                THCNex.writeNum("CustomSlide.val", SetpointPage3);
                break;
            case 4:
                SetPoint = SetpointPage4;
                THCNex.writeNum("CustomSetPoint.val", SetpointPage4);
                THCNex.writeNum("CustomSlide.val", SetpointPage4);
                break;
            case 5:
                SetPoint = SetpointPage5;
                THCNex.writeNum("CustomSetPoint.val", SetpointPage5);
                THCNex.writeNum("CustomSlide.val", SetpointPage5);
                break;
            case 6:
                SetPoint = SetpointPage6;
                THCNex.writeNum("CustomSetPoint.val", SetpointPage6);
                THCNex.writeNum("CustomSlide.val", SetpointPage6);
                break;
            default:
                break;
        }
    }
}

// Save customsetpoints on end touch event
void trigger2() {
    CurrentPageNumber = THCNex.readNumber("dp");
    SetPoint = THCNex.readNumber("CustomSetPoint.val");
    if (CurrentPageNumber != 777777 && SetPoint != 777777) {
        switch (CurrentPageNumber) {
            case 1:
                SetpointPage1 = SetPoint;
                writeLongIntoEEPROM(addressPage1, SetpointPage1);
                break;
            case 2:
                SetpointPage2 = SetPoint;
                writeLongIntoEEPROM(addressPage2, SetpointPage2);
                break;
            case 3:
                SetpointPage3 = SetPoint;
                writeLongIntoEEPROM(addressPage3, SetpointPage3);
                break;
            case 4:
                SetpointPage4 = SetPoint;
                writeLongIntoEEPROM(addressPage4, SetpointPage4);
                break;
            case 5:
                SetpointPage5 = SetPoint;
                writeLongIntoEEPROM(addressPage5, SetpointPage5);
                break;
            case 6:
                SetpointPage6 = SetPoint;
                writeLongIntoEEPROM(addressPage6, SetpointPage6);
                break;
            default:
                break;
        }
    }
}

// Move motor up
void trigger3() {
    pos = pos + (scale * steps_per_mm);
    stepper.moveTo(pos);
    while (stepper.distanceToGo() != 0) {
        stepper.run();
    }
    THCNex.writeNum("x2.val", (int)(pos / 2));
}

// Move motor down
void trigger4() {
    pos = pos - (scale * steps_per_mm);
    stepper.moveTo(pos);
    while (stepper.distanceToGo() != 0) {
        stepper.run();
    }
    THCNex.writeNum("x2.val", (int)(pos / 2));
}

// Increase allowable down movement range
void trigger5() {
    minPos = minPos + (scale * steps_per_mm);
    THCNex.writeNum("x1.val", (int)(minPos / 2));
    writeLongIntoEEPROM(addressMinpos, minPos);
}

// Decrease allowable up movement range
void trigger6() {
    minPos = minPos - (scale * steps_per_mm);
    THCNex.writeNum("x1.val", (int)(minPos / 2));
    writeLongIntoEEPROM(addressMinpos, minPos);
}

// Increase allowable up movement range
void trigger7() {
    maxPos = maxPos + (scale * steps_per_mm);
    THCNex.writeNum("x0.val", (int)(maxPos / 2));
    writeLongIntoEEPROM(addressMaxpos, maxPos);
}

// Decrease allowable down movement range
void trigger8() {
    maxPos = maxPos - (scale * steps_per_mm);
    THCNex.writeNum("x0.val", (int)(maxPos / 2));
    writeLongIntoEEPROM(addressMaxpos, maxPos);
}

// Increase voltage gap between aggressive and normal targeting
void trigger9() {
    gap = gap + (scale * 100);
    THCNex.writeNum("x2.val", (int)(gap));
    writeLongIntoEEPROM(addressGap, gap);
}

// Decrease voltage gap between aggressive and normal
void trigger10()
// targeting
{
    gap = gap - (scale * 100);
    THCNex.writeNum("x2.val", (int)(gap));
    writeLongIntoEEPROM(addressGap, gap);
}

// Increase voltage reading threshold for calculating
void trigger11()
// movements
{
    threshold = threshold + (scale * 100);
    THCNex.writeNum("x1.val", (int)(threshold));
    writeLongIntoEEPROM(addressThreshold, threshold);
}

// Decrease voltage reading threshold for calculating
void trigger12()
// movements
{
    threshold = threshold - (scale * 100);
    THCNex.writeNum("x1.val", (int)(threshold));
    writeLongIntoEEPROM(addressThreshold, threshold);
}

// Increase delay before calculating movements
void trigger13() {
    arcStabilizeDelay = arcStabilizeDelay + (scale * 100);
    THCNex.writeNum("x0.val", (int)(arcStabilizeDelay / 10));
    writeLongIntoEEPROM(addressDelay, arcStabilizeDelay);
}

// Decrease delay before calculating movements
void trigger14() {
    arcStabilizeDelay = arcStabilizeDelay - (scale * 100);
    THCNex.writeNum("x0.val", (int)(arcStabilizeDelay / 10));
    writeLongIntoEEPROM(addressDelay, arcStabilizeDelay);
}

// Increase steps per millimeter
void trigger15() {
    steps_per_mm = steps_per_mm + scale;
    THCNex.writeNum("x3.val", (int)(100 * steps_per_mm));
    writeLongIntoEEPROM(addressSteps, steps_per_mm);
}

// Decrease steps per millimeter
void trigger16() {
    steps_per_mm = steps_per_mm - scale;
    THCNex.writeNum("x3.val", (int)(100 * steps_per_mm));
    writeLongIntoEEPROM(addressSteps, steps_per_mm);
}

// Increase Aggressive P Parameter
void trigger17() {
    aggKp = aggKp + scale * 0.01;
    THCNex.writeNum("x2.val", (int)(1000 * aggKp));
    writeFloatIntoEEPROM(addressAP, aggKp);
}

// Decrease Aggressive P Parameter
void trigger18() {
    aggKp = aggKp - scale * 0.01;
    THCNex.writeNum("x2.val", (int)(1000 * aggKp));
    writeFloatIntoEEPROM(addressAP, aggKp);
}

// Increase Aggressive I Parameter
void trigger19() {
    aggKi = aggKi + scale * 0.01;
    THCNex.writeNum("x1.val", (int)(1000 * aggKi));
    writeFloatIntoEEPROM(addressAI, aggKi);
}

// Decrease Aggressive I Parameter
void trigger20() {
    aggKi = aggKi - scale * 0.01;
    THCNex.writeNum("x1.val", (int)(1000 * aggKi));
    writeFloatIntoEEPROM(addressAI, aggKi);
}

// Increase Aggressive D Parameter
void trigger21() {
    aggKd = aggKd + scale * 0.01;
    THCNex.writeNum("x0.val", (int)(1000 * aggKd));
    writeFloatIntoEEPROM(addressAD, aggKd);
}

// Decrease Aggressive D Parameter
void trigger22() {
    aggKd = aggKd - scale * 0.01;
    THCNex.writeNum("x0.val", (int)(1000 * aggKd));
    writeFloatIntoEEPROM(addressAD, aggKd);
}

// Increase Conservative P Parameter
void trigger23() {
    Kp = Kp + scale * 0.01;
    THCNex.writeNum("x2.val", (int)(1000 * Kp));
    writeFloatIntoEEPROM(addressCP, Kp);
}

// Decrease Conservative P Parameter
void trigger24() {
    Kp = Kp - scale * 0.01;
    THCNex.writeNum("x2.val", (int)(1000 * Kp));
    writeFloatIntoEEPROM(addressCP, Kp);
}

// Increase Conservative I Parameter
void trigger25() {
    Ki = Ki + scale * 0.01;
    THCNex.writeNum("x1.val", (int)(1000 * Ki));
    writeFloatIntoEEPROM(addressCI, Ki);
}

// Decrease Conservative I Parameter
void trigger26() {
    Ki = Ki - scale * 0.01;
    THCNex.writeNum("x1.val", (int)(1000 * Ki));
    writeFloatIntoEEPROM(addressCI, Ki);
}

// Increase Conservative D Parameter
void trigger27() {
    Kd = Kd + scale * 0.01;
    THCNex.writeNum("x0.val", (int)(1000 * Kd));
    writeFloatIntoEEPROM(addressCD, Kd);
}

// Decrease Conservative D Parameter
void trigger28() {
    Kd = Kd - scale * 0.01;
    THCNex.writeNum("x0.val", (int)(1000 * Kd));
    (addressCD, Kd);
}

// load movement page settings
void trigger29() {
    if (scale == 0.1) {
        THCNex.writeNum("bt0.val", 1);
        THCNex.writeNum("bt1.val", 0);
        THCNex.writeNum("bt2.val", 0);
    }
    if (scale == 1.0) {
        THCNex.writeNum("bt0.val", 0);
        THCNex.writeNum("bt1.val", 1);
        THCNex.writeNum("bt2.val", 0);
    }
    if (scale == 10.0) {
        THCNex.writeNum("bt0.val", 0);
        THCNex.writeNum("bt1.val", 0);
        THCNex.writeNum("bt2.val", 1);
    }
    THCNex.writeNum("x2.val", (int)(pos / 2));
    THCNex.writeNum("x0.val", (int)(maxPos / 2));
    THCNex.writeNum("x1.val", (int)(minPos / 2));
}

// Load default page settings
void trigger30() {
    if (scale == 0.1) {
        THCNex.writeNum("bt0.val", 1);
        THCNex.writeNum("bt1.val", 0);
        THCNex.writeNum("bt2.val", 0);
    }
    if (scale == 1.0) {
        THCNex.writeNum("bt0.val", 0);
        THCNex.writeNum("bt1.val", 1);
        THCNex.writeNum("bt2.val", 0);
    }
    if (scale == 10.0) {
        THCNex.writeNum("bt0.val", 0);
        THCNex.writeNum("bt1.val", 0);
        THCNex.writeNum("bt2.val", 1);
    }
    THCNex.writeNum("x2.val", (int)(gap));
    THCNex.writeNum("x1.val", (int)(threshold));
    THCNex.writeNum("x0.val", (int)(arcStabilizeDelay / 10));
    THCNex.writeNum("x3.val", (int)(100 * steps_per_mm));
}

// Save Scale on end touch event
void trigger31() {
    if (THCNex.readNumber("bt0.val") == 1) {
        scale = 0.1;
    }
    if (THCNex.readNumber("bt1.val") == 1) {
        scale = 1;
    }
    if (THCNex.readNumber("bt2.val") == 1) {
        scale = 10;
    }
}

// Load Aggressive PID settings
void trigger32() {
    if (scale == 0.1) {
        THCNex.writeNum("bt0.val", 1);
        THCNex.writeNum("bt1.val", 0);
        THCNex.writeNum("bt2.val", 0);
    }
    if (scale == 1.0) {
        THCNex.writeNum("bt0.val", 0);
        THCNex.writeNum("bt1.val", 1);
        THCNex.writeNum("bt2.val", 0);
    }
    if (scale == 10.0) {
        THCNex.writeNum("bt0.val", 0);
        THCNex.writeNum("bt1.val", 0);
        THCNex.writeNum("bt2.val", 1);
    }
    THCNex.writeNum("x2.val", (int)(1000 * aggKp));
    THCNex.writeNum("x1.val", (int)(1000 * aggKi));
    THCNex.writeNum("x0.val", (int)(1000 * aggKd));
}

// Load Conservative PID Settings
void trigger33() {
    if (scale == 0.1) {
        THCNex.writeNum("bt0.val", 1);
        THCNex.writeNum("bt1.val", 0);
        THCNex.writeNum("bt2.val", 0);
    }
    if (scale == 1.0) {
        THCNex.writeNum("bt0.val", 0);
        THCNex.writeNum("bt1.val", 1);
        THCNex.writeNum("bt2.val", 0);
    }
    if (scale == 10.0) {
        THCNex.writeNum("bt0.val", 0);
        THCNex.writeNum("bt1.val", 0);
        THCNex.writeNum("bt2.val", 1);
    }
    THCNex.writeNum("x2.val", (int)(1000 * Kp));
    THCNex.writeNum("x1.val", (int)(1000 * Ki));
    THCNex.writeNum("x0.val", (int)(1000 * Kd));
}

// Load Calibration Offset
void trigger34() { THCNex.writeNum("CustomSetPoint.val", CalibrationOffset); }
// Save Calibration Offset on end touch event
void trigger35() {
    int cali = THCNex.readNumber("CustomSetPoint.val");
    if (cali != 77777) {
        CalibrationOffset = cali;
        writeLongIntoEEPROM(addressCalibrate, CalibrationOffset);
    }
}

// Set text color
void format() {
    if (pos > 1 && pos < 1000) {
        THCNex.writeNum("POS.pco", 4065);
    }
    if (pos < -1 && pos > -1000) {
        THCNex.writeNum("POS.pco", 63488);
    }
}
