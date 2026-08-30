#include "EEPROM.h"

#define EEPROM_SIZE 500
#define EEPROM_SLOT_SIZE 24

void setup() 
{
  Serial.begin(115200);

  EEPROM.begin(EEPROM_SIZE);

  delay(1000);

  EraseEEPROM();
}

void loop() {}

void EraseEEPROM()
{
  for (int i = 0; i < EEPROM_SIZE; i++) 
    EEPROM.write(i, 255);
  EEPROM.commit();
  delay(50);
}