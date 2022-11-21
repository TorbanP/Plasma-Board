#include <Arduino.h>


#define Feed_Hold 26 //Active Low
#define Probe_Pin 34 //Active Low
#define Feed_Start 25 //Active Low
#define Handover 12
int runonce = 0;
int handover_state = 0;
int handover_state_counter = 0;
void setup()
{
  // put your setup code here, to run once:
  Serial.println("Setup Start");
  Serial.begin(115200);

  pinMode(Feed_Hold, OUTPUT);
  pinMode(Feed_Start, OUTPUT);
  pinMode(Handover, INPUT);

  digitalWrite(Feed_Hold, HIGH);
  digitalWrite(Feed_Start, HIGH);
  Serial.println("Setup Complete");
}

void loop()
{

  if

  handover_state = digitalRead(Handover);

  if(!handover_state){
    handover_state_counter++;
  } else{
    handover_state_counter = 0;
  }
  

  if (handover_state && runonce == 0)
  {
    Serial.println("handover high, first time");
    digitalWrite(Feed_Hold, LOW);
    Serial.println("feedhold LOW");
    delay(100);
    digitalWrite(Feed_Hold, HIGH);
    Serial.println("feedhold HIGH");

    delay(5000); // do probe stuff
    Serial.println("delay");
    Serial.println("handover high, first time");

    digitalWrite(Feed_Start, LOW);
    Serial.println("Feedstart LOW");
    delay(100);
    digitalWrite(Feed_Start, HIGH);
    Serial.println("Feedstart HIGH");
    while (!digitalRead(Handover))
    {
      delay(1);
    }

    runonce = 1;
  }

  if (handover_state_counter > 50)
  {
    runonce = 0;
    //Serial.println("runonce reset to 0");
  }

}