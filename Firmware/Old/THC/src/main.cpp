

/*
    Torch Height Controller
    Copyright (C)2020  by Jeremiah Hale - HaleDesignTech - Principal Engineer
    This program is free software: you can redistribute it and/or modify
    it under the terms of the GNU General Public License as published by
    the Free Software Foundation, either version 3 of the License, or
    (at your option) any later version.
   
  Software Version: 1.0.0
  Compatible with THC Nextion Screen Firmware Version: 1.0.0
  Aim:
  ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
  ESP32 based THC that reads 50:1 or 16:1 plasma voltage and send Up and Down signals to Plasma Torch Actuator to adjust voltage to target value.
  Description:
  ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
  It's important for a plasma arc to be stable and be a set height from the workpiece to be cut.
  The main reason for this is the plasma arc will cut a bevel on the side walls of the height it not set right or crash into the workpiece...
  This is because the plasma arc is not like a laser with straight edges but more like an egg.
  Making the problem worse is the fact the metal can warp and contort when a hot plasma arc cuts into it.
  Using the Arc Voltage is a good want to estimate the distance to the workpiece from the torch head.
  The unknown we are trying to solve for here is the Torch Height from the Workpiece.
  A proportional correlation is the longer the arc the higher the voltage.
  So, we can measure the plasma voltage and feed that into a PID Algorithm to calculate
  the torch height to change the voltage to a setpoint.
  It is unwise to measure the Arc Voltage Directly of the plasma torch because the levels there can be deadly.
  Most CNC ready Plasma Cutters on the market have 50:1 arc voltage dividers built right into the machine.
  If yours doesn't have this then you will need to do surgery and add a voltage divider circuit to your plasma cutter...
  Check the Technical Specs of your plasma cutter:
  Don't Die.
  Hardware:
  ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
  ESP32
  Nextion HMI Screen: NX4832T035_011
  Barton Dring modified 6 pack controller
 
  More info:
  https://github.com/HaleDesign/TorchHeightController
  http://hdt.xyz
  3rd Party Software:
  ++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++
  FastPID Library
  by Mike Matera
  INSTALL
  The FastPIDPID Library is available in the Arduino IDE Library Manager
  DOWNLOADS
  PID Library
  Latest version on GitHub: https://github.com/mike-matera/FastPID
  Version Used: v1.3.0
  EasyNextionLibrary
  by Athanasios Seitanis
  contact: eithagta@gmail.com
  INSTALL
  The EasyNextionLibrary is available in the Arduino IDE Library Manager
  DOWNLOADS
  Download the latest release of EasyNextionLibrary.
  From: https://github.com/Seithan/EasyNextionLibrary
  Version Used: v1.0.4
  AccelStepper
  by Mike McMauley
  INSTALL check
  The AccelStepper is available in the Arduino IDE Library Manager
  More info
  From: http://www.airspayce.com/mikem/arduino/AccelStepper/
  Version Used: v1.61.0
  Input:
  Arc Voltage, conservative P I D parameters, aggressive P I D parameters, Gap(amount away from setpoint for Agg/Con PID Settings), Arc Voltage Setpoint, ArcStablizeDelay, and Z axes bountray limits.
*/


#include <Arduino.h>
#include <FastPID.h>              // Include PID Library     
#include <EasyNextionLibrary.h>   // Include EasyNextionLibrary
#include <AccelStepper.h>
#include <Preferences.h>

Preferences preferences;

EasyNex THCNex(Serial2); // Create an object of EasyNex class with the name < TCHNex >
// Set as parameter the Serial2 for ESP32 you are going to use
// Default baudrate 9600

#define RXD2 16
#define TXD2 17  
#define Plasma_Trigger 32   //Trigger Plasma 
#define Feed_Hold 33
#define Feed_Start 25
#define Torch_Ready 14
#define PLASMA_INPUT_PIN 36  //THC GPIO 36 Analog voltage
#define ENABLE_PIN 19     // Enable GPIO Clearpath Z
#define Handover 12        //Start Handover of Z axis control from GRBL 
#define STEP_PIN 23      // Direction GPIO 23
#define DIR_PIN 18       // Step GPIO 18
#define Enable 2          // Led


// Define a stepper driver and the pins it will use
AccelStepper stepper = AccelStepper(stepper.DRIVER, STEP_PIN, DIR_PIN);

//Define Variables
double Input = 0; //Plasma input voltage
float targetInput; //
float gap; //close enough buffer
float scale;
long threshold;  //Set above background noise
long currentGap;
uint32_t oldDelay;
uint32_t arcStabilizeDelay;
long SetPoint = 0;
long CalibrationOffset = 0;


//Specify the links and initial tuning parameters
float_t aggKp = 0.175, aggKi = 0.1, aggKd = 0.1;
float_t Kp = 0.075, Ki = 0.01, Kd = 0.01;
float Hz = 8;
int output_bits = 16;
bool output_signed = true;
bool alreadySetColor = false;

FastPID THCPID(Kp, Ki, Kd, Hz, output_bits, output_signed);

long defaultSetpoint = 10900;

long SetpointPage1 = 0;
long SetpointPage2 = 0;
long SetpointPage3 = 0;
long SetpointPage4 = 0;
long SetpointPage5 = 0;
long SetpointPage6 = 0;

long CurrentPageNumber = 0;
long SavedPage = 0;

//movement
long steps_per_mm = 200;
float pos = 0;
float oldpos = 0;
float buffer = 100;
     
float adjpos = 0;
long minPos = -(40 * steps_per_mm);
long maxPos = (40 * steps_per_mm);
long moveAmt = 0;
uint8_t output = 0;

void report() //report plasma voltage and position
{
  //Serial.println("inside report");
  THCNex.writeNum("PV.val", (int)Input);
  THCNex.writeNum("POS.val", (int)(pos / 2));
}

void process() //Calulates position and move steps
{

Serial.print("Input in Process   ");
Serial.println(Input);
/*Serial.print("SetPoint   ");
Serial.println(SetPoint);
Serial.print("Kp   ");
Serial.println(Kp);
Serial.print("Threshold   ");
Serial.println(threshold);
Serial.print("CalibrationOffset   ");
Serial.println(CalibrationOffset);
Serial.print("arcStabilizeDelay   ");
Serial.println(arcStabilizeDelay);*/

  
  oldDelay = micros();
  while ((Input > (threshold + CalibrationOffset)) && (digitalRead(Handover) == true)) //Only move if cutting by checking for voltage above a threshold level
  {
    //Serial.println("inside While loop");
    if (micros() - oldDelay >= arcStabilizeDelay) //wait for arc to stabilize tipically 100-300ms
    {
      Input = map(analogRead(PLASMA_INPUT_PIN), 0, 4092, 0, 25000)+ CalibrationOffset; //get new plasma arc voltage and convert to millivolts
      
      currentGap = abs(SetPoint - Input); //distance away from setpoint
      if (currentGap < gap) {
        THCPID.setCoefficients(Kp, Ki, Kd, Hz); //we're close to setpoint, use conservative tuning parameters
      }
      else {
        THCPID.setCoefficients(aggKp, aggKi, aggKd, Hz); //we're far from setpoint, use aggressive tuning parameters
      }
      if (SetPoint > Input)
      {
        targetInput = Input - SetPoint + SetPoint;
        output = THCPID.step(SetPoint, targetInput);
        pos = pos + output;
      }
      else
      {
        targetInput = SetPoint - Input + SetPoint;
        output = THCPID.step(SetPoint, targetInput);
        pos = pos - output;
      }
      //Validate move is within range
      if (pos >= maxPos) {
        pos = maxPos;
      }
      if (pos <= minPos) {
        pos = minPos;
      }
      
      if (pos >= oldpos - buffer && pos <= oldpos + buffer)
      {pos = oldpos;
      }
      //do move
      stepper.moveTo(pos);
      while (stepper.distanceToGo() != 0) {
        stepper.run();
      oldpos = pos;
      }

      report(); //report plasma voltage and position
      //format();
    }
  }
  //after cut reset height
  pos = 0; // set to same position that Grbl Z axis was at Handover
  //do move
  stepper.moveTo(pos);
  while (stepper.distanceToGo() != 0) {
    stepper.run();
  }
  
  }

void trigger0() //Set last page used on startup loaded event
{
  //not used because bug with Nextion screen not updating screen loaded event.
  //THCNex.writeNum("dp", SavedPage);
}
void trigger1() //read customsetpoint on page loaded event
{
  CurrentPageNumber = THCNex.readNumber("dp");
  SetPoint = THCNex.readNumber("CustomSetPoint.val");
  Serial.print("CurrentPageNumber  ");
   Serial.println(CurrentPageNumber);
   Serial.print("SetPoint  ");
   Serial.println(SetPoint);
  if (CurrentPageNumber != 777777 && SetPoint != 777777)
  {
    switch (CurrentPageNumber) {
      case 1:
        SetPoint = SetpointPage1; //write a few times to make sure... nextion screen has a nasty habbat of ignoring update commands on boot.
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
void trigger2() //Save customsetpoints on end touch event
{
  CurrentPageNumber = THCNex.readNumber("dp");
  SetPoint = THCNex.readNumber("CustomSetPoint.val");
  if (CurrentPageNumber != 777777 && SetPoint != 777777)
  {
    switch (CurrentPageNumber) {
      case 1:
        SetpointPage1 = SetPoint;
        preferences.putLong("addressPage1", SetpointPage1);
        preferences.end();
        break;
      case 2:
        SetpointPage2 = SetPoint;
        preferences.putLong("addressPage2", SetpointPage2);
        preferences.end();
        break;
      case 3:
        SetpointPage3 = SetPoint;
        preferences.putLong("addressPage3", SetpointPage3);
        preferences.end();
        break;
      case 4:
        SetpointPage4 = SetPoint;
        preferences.putLong("addressPage4", SetpointPage4);
        preferences.end();
        break;
      case 5:
        SetpointPage5 = SetPoint;
        preferences.putLong("addressPage5", SetpointPage5);
        preferences.end();
        break;
      case 6:
        SetpointPage6 = SetPoint;
        preferences.putLong("addressPage6", SetpointPage6);
        preferences.end();
        break;
      default:
        break;
    }
  }
}
void trigger3() //Move motor up
{
  pos = pos + (scale * steps_per_mm);
  stepper.moveTo(pos);
  while (stepper.distanceToGo() != 0)
  {
    stepper.run();
  }
  THCNex.writeNum("x2.val", (int)(pos / 2));
}
void trigger4() //Move motor down
{
  pos = pos - (scale * steps_per_mm);
  stepper.moveTo(pos);
  while (stepper.distanceToGo() != 0)
  {
    stepper.run();
  }
  THCNex.writeNum("x2.val", (int)(pos / 2));
}
void trigger5() //Increase allowable down movement range
{
  minPos = minPos + (scale * steps_per_mm);
  THCNex.writeNum("x1.val", (int)(minPos / 2));
  preferences.putLong("addressMinpos", minPos);
  preferences.end();
}
void trigger6() //Decrease allowable up movement range
{ minPos = minPos - (scale * steps_per_mm);
  THCNex.writeNum("x1.val", (int)(minPos / 2));
  preferences.putLong("addressMinpos", minPos);
  preferences.end();

}
void trigger7() //Increase allowable up movement range
{
  maxPos = maxPos + (scale * steps_per_mm);
  THCNex.writeNum("x0.val", (int)(maxPos / 2));
  preferences.putLong("addressMaxpos", maxPos);
  preferences.end();

}
void trigger8() //Decrease allowable down movement range
{
  maxPos = maxPos - (scale * steps_per_mm);
  THCNex.writeNum("x0.val", (int)(maxPos / 2));
  preferences.putLong("addressMaxpos", maxPos);
  preferences.end();
}
void trigger9() //Increase voltage gap between aggressive and normal targeting
{
  gap = gap + (scale * 100);
  THCNex.writeNum("x2.val", (int)(gap));
  preferences.putLong("addressGap", gap);
  preferences.end();
}
void trigger10() //Decrease voltage gap between aggressive and normal targeting
{
  gap = gap - (scale * 100);
  THCNex.writeNum("x2.val", (int)(gap));
  preferences.putLong("addressGap", gap);
  preferences.end();
}
void trigger11() //Increase voltage reading threshold for calculating movements
{
  threshold = threshold + (scale * 100);
  THCNex.writeNum("x1.val", (int)(threshold));
  preferences.putLong("addressThreshold", threshold);
  preferences.end();
}
void trigger12() //Decrease voltage reading threshold for calculating movements
{
  threshold = threshold - (scale * 100);
  THCNex.writeNum("x1.val", (int)(threshold));
  preferences.putLong("addressThreshold", threshold);
  preferences.end();
}
void trigger13() //Increase delay before calculating movements
{
  arcStabilizeDelay = arcStabilizeDelay + (scale * 100);
  THCNex.writeNum("x0.val", (int)(arcStabilizeDelay / 10));
  preferences.putLong("addressDelay", arcStabilizeDelay);
  preferences.end();
}
void trigger14() //Decrease delay before calculating movements
{
  arcStabilizeDelay = arcStabilizeDelay - (scale * 100);
  THCNex.writeNum("x0.val", (int)(arcStabilizeDelay / 10));
  preferences.putLong("addressDelay", arcStabilizeDelay);
  preferences.end();
}
void trigger15() //Increase steps per millimeter
{
  steps_per_mm = steps_per_mm + scale;
  THCNex.writeNum("x3.val", (int)(100 * steps_per_mm));
  preferences.putLong("addressSteps", steps_per_mm);
  preferences.end();
}
void trigger16() //Decrease steps per millimeter
{
  steps_per_mm = steps_per_mm - scale;
  THCNex.writeNum("x3.val", (int)(100 * steps_per_mm));
  preferences.putLong("addressSteps", steps_per_mm);
  preferences.end();
}
void trigger17() //Increase Aggressive P Parameter
{
  aggKp = aggKp + scale * 0.01;
  THCNex.writeNum("x2.val", (int)(1000 * aggKp));
  preferences.putFloat("addressAP", aggKp);
  preferences.end();
}
void trigger18() //Decrease Aggressive P Parameter
{
  aggKp = aggKp - scale * 0.01;
  THCNex.writeNum("x2.val", (int)(1000 * aggKp));
  preferences.putFloat("addressAP", aggKp);
  preferences.end();
}
void trigger19() //Increase Aggressive I Parameter
{
  aggKi = aggKi + scale * 0.01;
  THCNex.writeNum("x1.val", (int)(1000 * aggKi));
  preferences.putFloat("addressAI", aggKi);
  preferences.end();
}
void trigger20() //Decrease Aggressive I Parameter
{
  aggKi = aggKi - scale * 0.01;
  THCNex.writeNum("x1.val", (int)(1000 * aggKi));
  preferences.putFloat("addressAI", aggKi);
  preferences.end();
}
void trigger21() //Increase Aggressive D Parameter
{
  aggKd = aggKd + scale * 0.01;
  THCNex.writeNum("x0.val", (int)(1000 * aggKd));
  preferences.putFloat("addressAD", aggKd);
  preferences.end();
}
void trigger22() //Decrease Aggressive D Parameter
{
  aggKd = aggKd - scale * 0.01;
  THCNex.writeNum("x0.val", (int)(1000 * aggKd));
  preferences.putFloat("addressAD", aggKd);
  preferences.end();
}
void trigger23() //Increase Conservative P Parameter
{
  Kp = Kp + scale * 0.01;
  THCNex.writeNum("x2.val", (int)(1000 * Kp));
  preferences.putFloat("addressCP", Kp);
  preferences.end();
}
void trigger24() //Decrease Conservative P Parameter
{
  Kp = Kp - scale * 0.01;
  THCNex.writeNum("x2.val", (int)(1000 * Kp));
  preferences.putFloat("addressCP", Kp);
  preferences.end();
}
void trigger25() //Increase Conservative I Parameter
{
  Ki = Ki + scale * 0.01;
  THCNex.writeNum("x1.val", (int)(1000 * Ki));
  preferences.putFloat("addressCI", Ki);
  preferences.end();
}
void trigger26() //Decrease Conservative I Parameter
{
  Ki = Ki - scale * 0.01;
  THCNex.writeNum("x1.val", (int)(1000 * Ki));
  preferences.putFloat("addressCI", Ki);
  preferences.end();
}
void trigger27() //Increase Conservative D Parameter
{
  Kd = Kd + scale * 0.01;
  THCNex.writeNum("x0.val", (int)(1000 * Kd));
  preferences.putFloat("addressCD", Kd);
  preferences.end();
}
void trigger28() //Decrease Conservative D Parameter
{
  Kd = Kd - scale * 0.01;
  THCNex.writeNum("x0.val", (int)(1000 * Kd));
  preferences.putFloat("addressCD", Kd);
  preferences.end();
}
void trigger29() //load movement page settings
{
  if (scale == 0.1)
  {
    THCNex.writeNum("bt0.val", 1);
    THCNex.writeNum("bt1.val", 0);
    THCNex.writeNum("bt2.val", 0);
  }
  if (scale == 1.0)
  {
    THCNex.writeNum("bt0.val", 0);
    THCNex.writeNum("bt1.val", 1);
    THCNex.writeNum("bt2.val", 0);
  }
  if (scale == 10.0)
  {
    THCNex.writeNum("bt0.val", 0);
    THCNex.writeNum("bt1.val", 0);
    THCNex.writeNum("bt2.val", 1);
  }
  THCNex.writeNum("x2.val", (int)(pos / 2));
  THCNex.writeNum("x0.val", (int)(maxPos / 2));
  THCNex.writeNum("x1.val", (int)(minPos / 2));
}
void trigger30() //Load default page settings
{
  if (scale == 0.1)
  {
    THCNex.writeNum("bt0.val", 1);
    THCNex.writeNum("bt1.val", 0);
    THCNex.writeNum("bt2.val", 0);
  }
  if (scale == 1.0)
  {
    THCNex.writeNum("bt0.val", 0);
    THCNex.writeNum("bt1.val", 1);
    THCNex.writeNum("bt2.val", 0);
  }
  if (scale == 10.0)
  {
    THCNex.writeNum("bt0.val", 0);
    THCNex.writeNum("bt1.val", 0);
    THCNex.writeNum("bt2.val", 1);
  }
  THCNex.writeNum("x2.val", (int)(gap));
  THCNex.writeNum("x1.val", (int)(threshold));
  THCNex.writeNum("x0.val", (int)(arcStabilizeDelay / 10));
  THCNex.writeNum("x3.val", (int)(100 * steps_per_mm));
}
void trigger31() //Save Scale on end touch event
{
  if (THCNex.readNumber("bt0.val") == 1)
  {
    scale = 0.1;
  }
  if (THCNex.readNumber("bt1.val") == 1)
  {
    scale = 1;
  }
  if (THCNex.readNumber("bt2.val") == 1)
  {
    scale = 10;
  }
}
void trigger32() //Load Aggressive PID settings
{
  if (scale == 0.1)
  {
    THCNex.writeNum("bt0.val", 1);
    THCNex.writeNum("bt1.val", 0);
    THCNex.writeNum("bt2.val", 0);
  }
  if (scale == 1.0)
  {
    THCNex.writeNum("bt0.val", 0);
    THCNex.writeNum("bt1.val", 1);
    THCNex.writeNum("bt2.val", 0);
  }
  if (scale == 10.0)
  {
    THCNex.writeNum("bt0.val", 0);
    THCNex.writeNum("bt1.val", 0);
    THCNex.writeNum("bt2.val", 1);
  }
  THCNex.writeNum("x2.val", (int)(1000 * aggKp));
  THCNex.writeNum("x1.val", (int)(1000 * aggKi));
  THCNex.writeNum("x0.val", (int)(1000 * aggKd));
}
void trigger33() //Load Conservative PID Settings
{ if (scale == 0.1)
  {
    THCNex.writeNum("bt0.val", 1);
    THCNex.writeNum("bt1.val", 0);
    THCNex.writeNum("bt2.val", 0);
  }
  if (scale == 1.0)
  {
    THCNex.writeNum("bt0.val", 0);
    THCNex.writeNum("bt1.val", 1);
    THCNex.writeNum("bt2.val", 0);
  }
  if (scale == 10.0)
  {
    THCNex.writeNum("bt0.val", 0);
    THCNex.writeNum("bt1.val", 0);
    THCNex.writeNum("bt2.val", 1);
  }
  THCNex.writeNum("x2.val", (int)(1000 * Kp));
  THCNex.writeNum("x1.val", (int)(1000 * Ki));
  THCNex.writeNum("x0.val", (int)(1000 * Kd));
}
void trigger34() //Load Calibration Offset
{
  THCNex.writeNum("CustomSetPoint.val", CalibrationOffset);
}
void trigger35() //Save Calibration Offset on end touch event
{
  int cali = THCNex.readNumber("CustomSetPoint.val");
  if (cali != 77777) {
    CalibrationOffset = cali;
    preferences.putLong("addressCalibrate", CalibrationOffset);
  }
}

void format() //Set text color
{
  if (pos > 1 && pos < 1000)
  {
    THCNex.writeNum("POS.pco", 4065);
  }
  if (pos < -1 && pos > -1000)
  {
    THCNex.writeNum("POS.pco", 63488);
  }
}



// the setup function runs once when you press reset or power the board
void setup()
{
  // Initialize digital pin LED_BUILTIN as an output.
  //This is used to enable the MKS driver board. Plus it flashes and flashes are cool.
  pinMode(Plasma_Trigger, OUTPUT);
  pinMode(Torch_Ready, INPUT_PULLDOWN);
  pinMode(Feed_Hold, OUTPUT);
  pinMode(Feed_Start, OUTPUT);
  pinMode(Enable, OUTPUT);
  pinMode(ENABLE_PIN, OUTPUT);
  pinMode(Handover, INPUT_PULLDOWN);
  
  digitalWrite(Enable, HIGH);
  delay(100);
  digitalWrite(Enable, LOW);
  digitalWrite(Feed_Hold, HIGH);
  digitalWrite(Feed_Start, HIGH);
  digitalWrite(Plasma_Trigger, LOW);
  
  Serial.begin(115200);
  Serial.println("hello i am starting");
  preferences.begin("Setup", false);
  // Begin the object with a baud rate of 9600
   Serial2.begin(9600, SERIAL_8N1, RXD2, TXD2);
   Serial2.println("Serial starting");
  THCNex.begin();  // If no parameter was given in the begin(), the default baud rate of 9600 will be used
  //while (!Serial) {
    //; // wait for serial port to connect. Needed for native USB port only
 // }

  //initialize the variables we're linked to
  // Load EEPROM Addresses for Setpoints or set defaults
  SetpointPage1 =preferences.getLong("addressPage1",defaultSetpoint);
   Serial.print(" SetpointPage1   ");
    Serial.println(SetpointPage1);
  if (SetpointPage1 == 0) {
    SetpointPage1 = defaultSetpoint;
  }

  SetpointPage2 = preferences.getLong("addressPage2",defaultSetpoint);
  if (SetpointPage2 == !0) {
    SetpointPage2 = defaultSetpoint;
  }

  SetpointPage3 = preferences.getLong("addressPage3",defaultSetpoint);
  if (SetpointPage3 == 0) {
    SetpointPage3 = defaultSetpoint;
  }

  SetpointPage4 = preferences.getLong("addressPage4",defaultSetpoint);
  if (SetpointPage4 == 0) {
    SetpointPage4 = defaultSetpoint;
  }

  SetpointPage5 = preferences.getLong("addressPage5",defaultSetpoint);
  if (SetpointPage5 == 0) {
    SetpointPage5 = defaultSetpoint;
  }

  SetpointPage6 = preferences.getLong("addressPage6",defaultSetpoint);
  if (SetpointPage6 == 0) {
    SetpointPage6 = defaultSetpoint;
  }

  scale = preferences.getLong("addressScale",scale); // float
  Serial.print("scale     ");
  Serial.println(scale);
  if (scale == 0) {
    scale = 1;
  }

  gap = preferences.getLong("addressGap",gap);
  if (gap == 0) {
    gap = 500;
  }

  threshold = preferences.getLong("addressThreshold",threshold);
  Serial.print("threshold     ");
  Serial.println(threshold);
  if (threshold == 0) {
    threshold = 4000;
    
  }

  arcStabilizeDelay = preferences.getLong("addressDelay",arcStabilizeDelay);
  if (arcStabilizeDelay == 0) {
    arcStabilizeDelay = 150;
  }

  steps_per_mm = preferences.getLong("addressSteps",steps_per_mm);
   Serial.print("steps_per_mm    ");
    Serial.println(steps_per_mm );
  if (steps_per_mm == 0) {
    steps_per_mm = 200;
  }

  maxPos = preferences.getLong("addressMaxpos",maxPos);
  Serial.print("maxPos    ");
    Serial.println(maxPos);
  if (maxPos == 0) {
    maxPos = 40 * steps_per_mm;
  }

  minPos = preferences.getLong("addressMinpos",minPos);
  if (minPos == 0) {
    minPos = -(40 * steps_per_mm);
  }

  aggKp = preferences.getLong64("addressAP",aggKp); //float
  Serial.print("aggKP    ");
    Serial.println(aggKp );
  if (aggKp == 0) {
    aggKp = 0.175;
    Serial.println(aggKp );
  }

  aggKi = preferences.getLong64("addressAI",aggKi); //float
  if (aggKi == 0) {
    aggKi = 0.1;
  }

  aggKd = preferences.getLong64("addressAD",aggKd); //float
  if (aggKd == 0) {
    aggKd = 0.1;
  }

  Kp = preferences.getLong64("addressCP",Kp); //float
  if (Kp == 0) {
    Kp = 0.075;
  }

  Ki = preferences.getLong64("addressCI",Ki); //float
  if (Ki == 0) {
    Ki = 0.01;
  }

  Kd = preferences.getLong64("addressCD",Kd); //float
  if (Kd == 0) {
    Kd = 0.01;
  }

  CalibrationOffset = preferences.getLong("addressCalibrate",CalibrationOffset);
   
  if (CalibrationOffset == 0) {
    CalibrationOffset = 1;
  }

  // Wait for Nextion Screen to bootup
  delay(2500);
  THCNex.writeNum("CustomSetPoint.val", SetpointPage1);
  THCNex.writeNum("CustomSetPoint.val", SetpointPage1); //Make sure it set
  THCNex.writeNum("CustomSetPoint.val", SetpointPage1); //One more time
  SetPoint = SetpointPage1;

  //Setup Stepper Driver
  stepper.setMaxSpeed(150000); //thru experimentation I found these values to work... Change for your setup.
  stepper.setAcceleration(20000);
  //Enable MKS Driver Board
 

}


// the loop function runs over and over again forever
void loop()
{
  if (digitalRead(Handover) == true) //Grbl hands Z control to THC (Gcode to fire laser)
  {
  digitalWrite(Feed_Hold, LOW);  //Hold X,YFeed until torch ready active low
  delay(20);
  digitalWrite(Feed_Hold, HIGH); //20ms pulse
  digitalWrite(Plasma_Trigger, HIGH); //fire plasma
  digitalWrite(ENABLE_PIN, HIGH); // Added Drive Enable turned off at end of function
     if (digitalRead(Torch_Ready) == HIGH)  // wait for torch ready signal Ready = HIGH
  {
   digitalWrite(Feed_Start, LOW);//active low
   delay(20);
   digitalWrite(Feed_Start, HIGH);
  }
  }
 while ((CurrentPageNumber <= 6 || CurrentPageNumber == 11 )&&((digitalRead(Handover) == true) && (digitalRead(Torch_Ready) == HIGH))) //Focus on listening to Plasma Inputs
  {
    Input = map(analogRead(PLASMA_INPUT_PIN), 0, 1023, 0, 25000) + CalibrationOffset; //reads plasma arc voltage and convert to millivolt
    process(); //This is the main method of the application it calulates position and move steps if Input Voltage is over threshold.
    report();
    THCNex.NextionListen();
  }
  
    
    digitalWrite(Plasma_Trigger, LOW);
    digitalWrite(ENABLE_PIN, LOW);
    Input = map(analogRead(PLASMA_INPUT_PIN), 0, 1023, 0, 25000) + CalibrationOffset;//update plasma voltage outside While loop
    //Serial.print("Input after While   ");
    //Serial.println(Input);
    report();
    THCNex.NextionListen(); //else focus on listening to Nextion Inputs
  
    
}  
// Original Loop
/* the loop function runs over and over again forever
void loop()
{
 while (CurrentPageNumber <= 6 || CurrentPageNumber == 11) //Focus on listening to Plasma Inputs
  {
    Input = map(analogRead(PLASMA_INPUT_PIN), 0, 4096, 0, 25000) + CalibrationOffset; //reads plasma arc voltage and convert to millivolt
    
   // Serial.print("analog pin 34");
   // Serial.println(Input);
    //Serial.println(CalibrationOffset);
    //Serial.println(analogRead(PLASMA_INPUT_PIN));
    process(); //This is the main method of the application it calulates position and move steps if Input Voltage is over threshold.
    report();
    THCNex.NextionListen();
  }
    THCNex.NextionListen(); //else focus on listening to Nextion Inputs
}*/
