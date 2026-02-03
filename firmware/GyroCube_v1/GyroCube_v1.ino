/*
 * GyroCube Firmware (Legacy v1.0)
 * Copyright (c) 2020-2023 Yuri Didevich (Embodied Lab)
 * 
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 * 
 *      http://www.apache.org/licenses/LICENSE-2.0
 * 
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 * 
 * Contributors:
 * - Yuri Didevich (Lead Architect) https://github.com/jurididevich
 * - Georgy Sosnovskikh (Firmware Engineering) https://github.com/pgii
 */

#include "esp_bt_main.h"
#include "esp_bt.h"
// #include "BluetoothSerial.h" // Bluetooth is disabled in this version to save power
#include <BfButton.h>

#define MainSettings
#define EEPROMUtils
#define SettingsUtils
#define WiFiInstance
#define WebServerInstance
#define UdpSender
#define ButtonUtils
#define GyroInstance

// WiFi Access Point Toggle Switch Pin
#define AP_WIFI_PIN GPIO_NUM_32

// Main Control Button Pin
#define MAIN_BUTTON_PIN GPIO_NUM_4

// Long Press Delay (Deep Sleep Trigger) - 5000ms
const unsigned int MAIN_BUTTON_LONG_PRESS_DELAY = 5000;

// Double Press Timeout (Calibration Trigger) - 1000ms
const unsigned int MAIN_BUTTON_DOUBLE_PRESS_DELAY = 1000;

BfButton mainButton(BfButton::STANDALONE_DIGITAL, MAIN_BUTTON_PIN, false, HIGH);

// BluetoothSerial SerialBT;

void setup() 
{
  // Power Consumption Reference (ESP32 @ Different Frequencies):
  // 240MHz - 42.6mA
  // 160MHz - 31.1mA
  // 80MHz  - 25.2mA (Selected for optimal balance)
  // 40MHz  - 15.1mA
  // 20MHz  - 12.4mA
  // 10MHz  - 11.0mA

  // Set CPU frequency to 80MHz (Minimum required for stable WiFi/BT stack)
  setCpuFrequencyMhz(80);

  // Explicitly disable Bluetooth stack to conserve battery
  esp_bluedroid_disable();
  esp_bluedroid_deinit();
  esp_bt_controller_disable();
  esp_bt_controller_deinit();

  // Configure Input Pins
  pinMode(AP_WIFI_PIN, INPUT_PULLDOWN);
  pinMode(MAIN_BUTTON_PIN, INPUT_PULLDOWN);

  // Button Event Handlers:
  // - Single Press: Wake Up / Status
  // - Double Press: Calibrate IMU
  // - Long Press: Deep Sleep
  mainButton.onPress(mainButtonHandleEvent)
            .onDoublePress(mainButtonHandleEvent, MAIN_BUTTON_DOUBLE_PRESS_DELAY)
            .onPressFor(mainButtonHandleEvent, MAIN_BUTTON_LONG_PRESS_DELAY);

  // Enable Deep Sleep Wakeup from Main Button
  esp_sleep_enable_ext0_wakeup(MAIN_BUTTON_PIN, HIGH);
    
  Serial.begin(115200);

  // Initialize Subsystems
  EEPROMSetup();
  InitSettings();
  LoadCalibration();

  // SerialBT.begin(GetAliasSettings()); // Legacy BT initialization

  GyroSetup();

  // Network Mode Selection
  if (digitalRead(AP_WIFI_PIN) == HIGH)
    WiFiSetupAP(); // Access Point Mode (Configuration)
  else
    WiFiSetup();   // Station Mode (Normal Operation)

  WebServerSetup();
  UdpSenderSetup();

  delay(1000);
}

void loop() 
{
  // Main Execution Loop
  GyroLoop();       // Read IMU, Filter Data, Send UDP
  WebServerLoop();  // Handle HTTP requests
  mainButton.read(); // Poll Button State
}

void mainButtonHandleEvent(BfButton *mainButton, BfButton::press_pattern_t pattern) 
{
  switch (pattern)
  {
    case BfButton::SINGLE_PRESS:
      Serial.println("WakeUp Event");
      break;

    case BfButton::DOUBLE_PRESS:
      Serial.println("Triggering Calibration...");
      SaveCalibration();
      break;

    case BfButton::LONG_PRESS:
      Serial.println("Entering Deep Sleep...");
      delay(2000);
      // MPU9250Sleep(); // TODO: Needs further testing before enabling
      // delay(1000);
      esp_deep_sleep_start();
      break;
  }
}
