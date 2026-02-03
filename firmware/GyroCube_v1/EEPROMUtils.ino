/*
 * GyroCube Firmware (Legacy v1.0)
 * Copyright (c) 2020-2023 Yuri Didevich (Embodied Lab)
 * Licensed under Apache 2.0
 */

#include "EEPROM.h"

// Define EEPROM size (ESP32 emulates EEPROM in Flash)
#define EEPROM_SIZE 500
#define EEPROM_SLOT_SIZE 24

void EEPROMSetup()
{
  EEPROM.begin(EEPROM_SIZE);
}

// Read string from specific EEPROM slot
String ReadStringEEPROM(char slot) 
{ 
  char data[EEPROM_SLOT_SIZE];
  int length = 0;
  unsigned char k;
  
  k = EEPROM.read(EEPROM_SLOT_SIZE * slot);
  
  // FIXED: Prevent buffer overflow with proper boundary check
  while(k != '\0' && length < EEPROM_SLOT_SIZE - 1)
  {    
    k = EEPROM.read(EEPROM_SLOT_SIZE * slot + length);
    data[length] = k;
    length++;
  }
  data[length] = '\0'; // Null-terminate string
  return String(data);
}

// Check if a slot is empty (all bytes 0xFF)
bool CheckIsEmptyEEPROM(char slot) 
{ 
  bool isEmpty = true;
  for (int i = EEPROM_SLOT_SIZE * slot; i < EEPROM_SLOT_SIZE * slot + EEPROM_SLOT_SIZE; i++) 
  {
    unsigned char val = EEPROM.read(i);
    if (val != 255) // 255 is default erased state
    {
      isEmpty = false;
      break;
    }
  }
  return isEmpty;
}

// Write string to EEPROM slot
// WARNING: ESP32 Flash has ~100,000 write cycle limit
void WriteStringEEPROM(char slot, String data)
{
  int dataLength = data.length();
  for(int i = 0; i < dataLength; i++)
    EEPROM.write(EEPROM_SLOT_SIZE * slot + i, data[i]);  
  
  EEPROM.write(EEPROM_SLOT_SIZE * slot + dataLength, '\0'); // Add Null-terminator
  EEPROM.commit(); // Essential for ESP32
  delay(50);
}

// Erase specific slot
void EraseSlotEEPROM(char slot)
{
  for (int i = EEPROM_SLOT_SIZE * slot; i < EEPROM_SLOT_SIZE * slot + EEPROM_SLOT_SIZE; i++) 
    EEPROM.write(i, 255);
  EEPROM.commit();
  delay(50);
}

// Full EEPROM Erase
void EraseEEPROM()
{
  for (int i = 0; i < EEPROM_SIZE; i++) 
    EEPROM.write(i, 255);
  EEPROM.commit();
  delay(50);
}

