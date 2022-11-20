#include <Arduino.h>

#define Feed_Hold 25
#define Feed_Start 26
#define Handover 12
int runonce = 0;

void setup()
{
  // put your setup code here, to run once:

  pinMode(Feed_Hold, OUTPUT_OPEN_DRAIN);
  pinMode(Feed_Start, OUTPUT_OPEN_DRAIN);
  pinMode(Handover, INPUT);

  digitalWrite(Feed_Hold, LOW);
  digitalWrite(Feed_Start, LOW);
}

void loop()
{
  // put your main code here, to run repeatedly:

  if (digitalRead(Handover) == true && runonce == 0)
  {
    digitalWrite(Feed_Hold, HIGH);
    delay(100);
    digitalWrite(Feed_Hold, LOW);

    delay(5000); // do probe stuff

    digitalWrite(Feed_Start, HIGH);
    delay(100);
    digitalWrite(Feed_Start, LOW);
    int runonce = 1;
  }

  if (digitalRead(Handover) == false)
  {
    int runonce = 0;
  }
}