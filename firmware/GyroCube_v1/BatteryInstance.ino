/*
 * GyroCube Firmware (Legacy v1.0)
 * Copyright (c) 2020-2023 Yuri Didevich (Embodied Lab)
 * Licensed under Apache 2.0
 */

float voltageLevel = 0;

unsigned long batteryLevelIntervalTiming;

// Sampled once per minute
unsigned long batteryLevelIntervalSend = 60000;

void BatteryLoop()
{
  if (millis() - batteryLevelIntervalTiming > batteryLevelIntervalSend)
  {
    batteryLevelIntervalTiming = millis();

    // Voltage divider scale factor (127/100) applied to the ADC reading on GPIO33
    voltageLevel = (127.0f / 100.0f) * 3.30f * float(analogRead(GPIO_NUM_33)) / 4096.0f;
  }
}
