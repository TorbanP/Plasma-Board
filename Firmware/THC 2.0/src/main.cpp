/*
  Plasma CNC
  Torban Peterson, Cameron Eccleston
  2023

*/
#include <AccelStepper.h>
#include <Adafruit_ADS1X15.h>
#include <Arduino.h>
#include <FastPID.h>

#define ENABLE            2    // Led
#define HAND_OVER         13   // Start Handover of Z axis control from GRBL 
#define TORCH_READY       14   // Signal in for Pierce Made
#define RXD2              16   // Nextion RX
#define TXD2              17   // Nextion TX
#define DIR_PIN           18   // Step GPIO 18
#define ENABLE_PIN        19   // Enable GPIO Clearpath Z
#define SDA               21   // I2C SDA
#define SCL               22   // I2C SCL
#define STEP_PIN          23   // Direction GPIO 23
#define FEED_START        25   // Pulse to GRBL to start
#define PLASMA_TRIGGER    32   // Trigger Plasma 
#define FEED_HOLD         33   // Pulse to GRBL to feedhold
#define PLASMA_INPUT_PIN  36   // THC GPIO 36 Analog voltage (Not used)

// Public Variables
float adc_multiplier = .125;   // ADS1115 bit to mV
float Kp = 0.075;              // PID Porportional
float Ki = 0.01;               // PID Integral
float Kd = 0.01;               // PID Differential
float Hz = 8;                  // PID Execution frequency of the controller
int output_bits = 16;          // PID
bool output_signed = true;     // PID 

// Define a stepper driver and the pins it will use
AccelStepper stepper = AccelStepper(stepper.DRIVER, STEP_PIN, DIR_PIN);

// Define ADS1115
Adafruit_ADS1115 ads;

// Define a Pid Object
FastPID THCPID(Kp, Ki, Kd, Hz, output_bits, output_signed);

// Function headers

//Setup - Runs Once
void setup() {
  Serial.begin(115200);
  Serial.println("THC V2.0");

  // ADC Setup
  ads.setGain(GAIN_ONE); // 1x gain +/- 4.096V  1 bit = 0.125mV
  if (!ads.begin()) {
    Serial.println("Failed to initialize ADS.");
    while (1)
      ;
  }

  // Stepper Driver Setup
  AccelStepper stepper = AccelStepper(stepper.DRIVER, STEP_PIN, DIR_PIN);
  stepper.setMaxSpeed(150000);
  stepper.setAcceleration(20000);

  // GPIO Setup
  pinMode(ENABLE, OUTPUT);
  pinMode(HAND_OVER, INPUT_PULLDOWN);
  pinMode(TORCH_READY, INPUT_PULLDOWN);
  pinMode(ENABLE_PIN, OUTPUT);
  pinMode(FEED_START, OUTPUT);
  pinMode(PLASMA_TRIGGER, OUTPUT);
  pinMode(FEED_HOLD, OUTPUT);

  // Set startup output states
  digitalWrite(ENABLE, HIGH);
  digitalWrite(FEED_HOLD, HIGH);
  digitalWrite(FEED_START, HIGH);
  digitalWrite(PLASMA_TRIGGER, LOW);

}

// Run Loop - Runs Forever
void loop() {
  // put your main code here, to run repeatedly:

  // do thc stuff




}
