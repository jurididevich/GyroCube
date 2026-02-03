/*
 * GyroCube Firmware (Legacy v1.0)
 * Copyright (c) 2020-2023 Yuri Didevich (Embodied Lab)
 * Licensed under Apache 2.0
 */

#include <WiFi.h>

void WiFiSetup()
{
  // Connect to saved WiFi Network (Station Mode)
  WiFi.begin(GetWiFiSsidSettings().c_str(), GetWiFiPassSettings().c_str());

  Serial.print("Connecting to WiFi...");
  while (WiFi.status() != WL_CONNECTED) 
  {
    delay(500);
    Serial.print(".");
  }    

  Serial.println("");
  Serial.println("WiFi connected successfully.");
  Serial.println("Device IP Address: ");
  Serial.println(GetIPAddress());
}

void WiFiSetupAP()
{
  // Create WiFi Access Point (AP Mode) for Configuration
  Serial.println("Starting WiFi Access Point Mode...");
  
  Serial.print("AP IP: "); Serial.println(GetApWiFiIpAddressSettings());
  Serial.print("AP SSID: "); Serial.println(GetApWiFiSsidSettings());
  
  WiFi.mode(WIFI_AP);

  // Configure static IP for AP
  IPAddress ipAddressAp;
  ipAddressAp.fromString(GetApWiFiIpAddressSettings());

  // Start SoftAP
  WiFi.softAP(GetApWiFiSsidSettings().c_str(), GetApWiFiPassSettings().c_str());

  delay(100);

  // Apply Network Configuration
  WiFi.softAPConfig(ipAddressAp, ipAddressAp, IPAddress(255, 255, 255, 0));

  Serial.print("AP Started. Connect to: ");
  Serial.println(WiFi.softAPIP());
}

IPAddress GetIPAddress()
{
  return WiFi.localIP();
}

// Helper: Convert IPAddress object to String
String IPToString(IPAddress ip)
{
  String str = "";
  for (int i = 0; i < 4; i++)
      str += i  ? "." + String(ip[i]) : String(ip[i]);
  return str;
}
