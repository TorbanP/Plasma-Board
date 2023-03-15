/*
  Plasma CNC
  Torban Peterson, Cameron Eccleston
  2023

*/

#include <AccelStepper.h>
#include <Adafruit_ADS1X15.h>
#include <Arduino.h>
#include <FastPID.h>
#include <Arduino.h>
#define BOOT               0   // BOOT button
#define LED                2   // Onboard LED Pin
#define STEPPER_MUX        4   // Mux selector for Z control. High allows thc control
#define HAND_OVER         13   // 13 Start Handover of Z axis control from GRBL 
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
#define PLASMA_DIVIDER    50   // 50:1 voltage divider (Default)
#define BUTTON_DELAY      50   // Delay (ms) to hold a button down
#define MAX_PIERCE_TIME 1000   // Max pierce time before error (ms)

// Public Variables
float adc_multiplier = .125;                // ADS1115 bit to mV
float Kp = 0.075;                           // PID Porportional
float Ki = 0.01;                            // PID Integral
float Kd = 0.01;                            // PID Differential
float Hz = 8;                               // PID Execution frequency of the controller (must call run ~8Hz)
int output_bits = 16;                       // PID
bool output_signed = true;                  // PID 
volatile bool hand_over_ISR_int = false;    // ISR bool to indicate Plasma input state change
volatile bool hand_over_active = false;     // state of the hand over pin during the ISR
bool thc_enable = false;                    // Enable the THC tracking routine
bool pierce_failed = false;                 // Used to prevent feed start
uint32_t plasma_fire_time = 0;              // Time of plasma fire signal
uint32_t idle_time = 0;                     // Idle delay printout

// Define a stepper driver and the pins it will use
AccelStepper stepper = AccelStepper(stepper.DRIVER, STEP_PIN, DIR_PIN);

// Define ADS1115 ADC
Adafruit_ADS1115 ads; 

// Define MAX22530 ADC

// Define a Pid Object
FastPID THCPID(Kp, Ki, Kd, Hz, output_bits, output_signed);

// Function Prototypes
void feed_hold_press();
void feed_start_press();
void IRAM_ATTR torch_ready_ISR();
void IRAM_ATTR hand_over_ISR();

//Setup - Runs Once
void setup() {
  Serial.begin(115200);
  Serial.println("THC V2.0");

  // ADS115 ADC Setup
  // ads.setGain(GAIN_ONE); // 1x gain +/- 4.096V  1 bit = 0.125mV
  // if (!ads.begin()) {
  //   Serial.println("Failed to initialize ADS.");
  //   while (1)
  //     ;
  // }

  // Stepper Driver Setup
  AccelStepper stepper = AccelStepper(stepper.DRIVER, STEP_PIN, DIR_PIN);
  stepper.setMaxSpeed(150000);
  stepper.setAcceleration(20000);

  // GPIO Setup
  pinMode(BOOT, INPUT);
  pinMode(LED, OUTPUT);
  pinMode(STEPPER_MUX, OUTPUT);
  pinMode(HAND_OVER, INPUT_PULLDOWN);
  pinMode(TORCH_READY, INPUT_PULLDOWN);
  pinMode(ENABLE_PIN, OUTPUT);
  pinMode(FEED_START, OUTPUT);
  pinMode(PLASMA_TRIGGER, OUTPUT);
  pinMode(FEED_HOLD, OUTPUT);

  // Set startup output states
  digitalWrite(LED, HIGH);              // Drive low to turn on for some stupid reason
  digitalWrite(STEPPER_MUX, LOW);       // Drive low on startup to allow GRBL to do touch off routine
  digitalWrite(FEED_HOLD, HIGH);        // Normally high, active low
  digitalWrite(FEED_START, HIGH);       // Normally high, active low
  digitalWrite(PLASMA_TRIGGER, LOW);    // Normally low, active high

  // Setup Interrupts
  attachInterrupt(HAND_OVER, hand_over_ISR, CHANGE);
  attachInterrupt(TORCH_READY, torch_ready_ISR, FALLING);
  idle_time = millis();
  Serial.println("Setup Complete");
}

// Run Loop - Runs Forever
void loop() {

  // Hand over input has changed
  if(hand_over_ISR_int){
    if(hand_over_active && !pierce_failed){
      // GRBL has just commanded plasma to fire
      digitalWrite(STEPPER_MUX, HIGH);    // Take control of Stepper
      feed_hold_press();                  // feed hold to grbl
      digitalWrite(PLASMA_TRIGGER,HIGH);  // Activate Plasma Cutter
      plasma_fire_time = millis();        // track the fire time
      Serial.println("Piercing");         // spin waiting for pierce ok 
      while(!digitalRead(TORCH_READY)){
        if ((millis() - plasma_fire_time) > MAX_PIERCE_TIME){
          pierce_failed = true;
          break;
        }else{
          Serial.print(".");
          delay(1);
        }
      }
      Serial.println(" ");
      if(pierce_failed){
        Serial.println("Pierce Failed");
        digitalWrite(PLASMA_TRIGGER,LOW); // Disable Plasma
        digitalWrite(STEPPER_MUX, LOW);   // Release control of Stepper

        }else{
        Serial.print("Piercing took "); 
        Serial.print(millis() - plasma_fire_time); 
        Serial.println("ms");
        feed_start_press();            // Send GRBL start pulse to continue
      }
    }
    hand_over_ISR_int = false;         // Reset the hand over isr
  }

  // Safety Check in event ISR is missed
  if (!digitalRead(HAND_OVER)){
    digitalWrite(PLASMA_TRIGGER,LOW); // Disable Plasma
    digitalWrite(STEPPER_MUX, LOW);   // Release control of Stepper
  } 

  // Retry Pierce using Boot pin on Dev module
  if (!digitalRead(BOOT)){ // Active low
    pierce_failed = false; // Reattempt pierce
  }

  // Idle time terminal printout to show life/state
  if(millis() - idle_time > 1000){
    idle_time = millis();
    Serial.println("THC Idle");
    digitalWrite(LED, !digitalRead(LED)); // slow blink = alive/idle
  }
}

// Issues a feed hold to GRBL w/ BUTTON_DELAY
void feed_hold_press(){
  digitalWrite(FEED_HOLD, LOW);
  Serial.println("Feed Hold Pulse Sent");
  delay(BUTTON_DELAY);
  digitalWrite(FEED_HOLD, HIGH);
}

// Issues a feed start to GRBL w/ BUTTON_DELAY
void feed_start_press(){
  digitalWrite(FEED_START, LOW);
  Serial.println("Feed Start Pulse Sent");
  delay(BUTTON_DELAY);
  digitalWrite(FEED_START, HIGH);
}

// ISR Handles an ARC Fail - May need better understanding of the arc ok, but this exists more for safety
void IRAM_ATTR torch_ready_ISR() {  // Plasma Cutter has sent us an ARC Fail
  digitalWrite(PLASMA_TRIGGER,LOW); // We should never be firing when ARC is not ok, unless during pierce
  digitalWrite(STEPPER_MUX, LOW);   // Release control of Stepper
}

// ISR Handles a handover pin toggle
void IRAM_ATTR hand_over_ISR() {    // GRBL has toggled the laser
  hand_over_ISR_int = true;
  pierce_failed = false;
  hand_over_active = !digitalRead(HAND_OVER);
  if(!hand_over_active){
      // GRBL has just commanded plasma to stop firing
      digitalWrite(PLASMA_TRIGGER,LOW); // Disable Plasma
      digitalWrite(STEPPER_MUX, LOW);   // Release control of Stepper
  }
}