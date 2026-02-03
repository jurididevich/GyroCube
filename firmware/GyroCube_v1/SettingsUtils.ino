#define WIFI_AP_SSID_SLOT 0
#define WIFI_AP_PASS_SLOT 1
#define WIFI_AP_IP_SLOT 2

#define WIFI_SSID_SLOT 3
#define WIFI_PASS_SLOT 4

#define ALIAS_SLOT 5

#define RECEIVE_SERVER_IP_ADDRESS_SLOT 6
#define RECEIVE_SERVER_PORT_SLOT 7

#define CALIBRATION_X_SLOT 10
#define CALIBRATION_Y_SLOT 11
#define CALIBRATION_Z_SLOT 12
#define CALIBRATION_W_SLOT 13

void InitSettings()
{
  if (CheckIsEmptyApWiFiSettings()) { GenerateApWiFiSettings(); }

  if (CheckIsEmptyWiFiSettings()) { SaveWiFiSsidSettings("wifi_ssid"); SaveWiFiPassSettings("wifi_pass"); }

  if (CheckIsEmptyAliasSettings()) SaveAliasSettings("GyroCube00");

  if (CheckIsEmptyReceiveServerSettings()) { SaveReceiveIpAddressSettings("127.0.0.1"); SaveReceivePortSettings("7755"); }

  if (CheckIsEmptyCalibrationXSettings()) SaveCalibrationXSettings(String(0.00001, 5));
  if (CheckIsEmptyCalibrationYSettings()) SaveCalibrationYSettings(String(0.00001, 5));
  if (CheckIsEmptyCalibrationZSettings()) SaveCalibrationZSettings(String(0.00001, 5));
  if (CheckIsEmptyCalibrationWSettings()) SaveCalibrationWSettings(String(0.00001, 5));
}

//-------------------------------------------

bool CheckIsEmptyApWiFiSettings() { if (CheckIsEmptyEEPROM(WIFI_AP_SSID_SLOT) || CheckIsEmptyEEPROM(WIFI_AP_PASS_SLOT) || CheckIsEmptyEEPROM(WIFI_AP_IP_SLOT)) return true; return false; }

bool CheckIsEmptyWiFiSettings() { if (CheckIsEmptyEEPROM(WIFI_SSID_SLOT) || CheckIsEmptyEEPROM(WIFI_PASS_SLOT)) return true; return false; }

bool CheckIsEmptyAliasSettings() { if (CheckIsEmptyEEPROM(ALIAS_SLOT)) return true; return false; }

bool CheckIsEmptyReceiveServerSettings() { if (CheckIsEmptyEEPROM(RECEIVE_SERVER_IP_ADDRESS_SLOT) || CheckIsEmptyEEPROM(RECEIVE_SERVER_PORT_SLOT)) return true; return false; }

bool CheckIsEmptyCalibrationXSettings() { if (CheckIsEmptyEEPROM(CALIBRATION_X_SLOT)) return true; return false; }
bool CheckIsEmptyCalibrationYSettings() { if (CheckIsEmptyEEPROM(CALIBRATION_Y_SLOT)) return true; return false; }
bool CheckIsEmptyCalibrationZSettings() { if (CheckIsEmptyEEPROM(CALIBRATION_Z_SLOT)) return true; return false; }
bool CheckIsEmptyCalibrationWSettings() { if (CheckIsEmptyEEPROM(CALIBRATION_W_SLOT)) return true; return false; }

//-------------------------------------------

void GenerateApWiFiSettings() 
{
  SaveApWiFiSsidSettings("GyroCube_" + String(random(1000, 9999)));
  SaveApWiFiPassSettings("123454321");
  SaveApWiFiIpAddressSettings("192.168.1.4");

  delay(100);
}

//-------------------------------------------

void ResetSettings() 
{
  SaveWiFiSsidSettings("wifi_ssid");
  SaveWiFiPassSettings("wifi_pass");

  SaveAliasSettings("GyroCub00");

  SaveReceivePortSettings("7755");  

  delay(100);
}

//-------------------------------------------

String GetApWiFiSsidSettings() { return ReadStringEEPROM(WIFI_AP_SSID_SLOT); }
void SaveApWiFiSsidSettings(String value) { WriteStringEEPROM(WIFI_AP_SSID_SLOT, value); delay(100); }

String GetApWiFiPassSettings() { return ReadStringEEPROM(WIFI_AP_PASS_SLOT); }
void SaveApWiFiPassSettings(String value) { WriteStringEEPROM(WIFI_AP_PASS_SLOT, value); delay(100); }

String GetApWiFiIpAddressSettings() { return ReadStringEEPROM(WIFI_AP_IP_SLOT); }
void SaveApWiFiIpAddressSettings(String value) { WriteStringEEPROM(WIFI_AP_IP_SLOT, value); delay(100); }

//-------------------------------------------

String GetWiFiSsidSettings() { return ReadStringEEPROM(WIFI_SSID_SLOT); }
void SaveWiFiSsidSettings(String value) { WriteStringEEPROM(WIFI_SSID_SLOT, value); delay(100); }

String GetWiFiPassSettings() { return ReadStringEEPROM(WIFI_PASS_SLOT); }
void SaveWiFiPassSettings(String value) { WriteStringEEPROM(WIFI_PASS_SLOT, value); delay(100); }

//-------------------------------------------

String GetAliasSettings() { return ReadStringEEPROM(ALIAS_SLOT); }
void SaveAliasSettings(String value) { WriteStringEEPROM(ALIAS_SLOT, value); delay(100); }

//-------------------------------------------

String GetReceiveIpAddressSettings() { return ReadStringEEPROM(RECEIVE_SERVER_IP_ADDRESS_SLOT); }
void SaveReceiveIpAddressSettings(String value) { WriteStringEEPROM(RECEIVE_SERVER_IP_ADDRESS_SLOT, value); delay(100); }

String GetReceivePortSettings() { return ReadStringEEPROM(RECEIVE_SERVER_PORT_SLOT); }
void SaveReceivePortSettings(String value) { WriteStringEEPROM(RECEIVE_SERVER_PORT_SLOT, value); delay(100); }

//-------------------------------------------

void ResetCalibrationSettings() 
{ 
  WriteStringEEPROM(CALIBRATION_X_SLOT, String(0.00001, 5));
  WriteStringEEPROM(CALIBRATION_Y_SLOT, String(0.00001, 5));
  WriteStringEEPROM(CALIBRATION_Z_SLOT, String(0.00001, 5));
  WriteStringEEPROM(CALIBRATION_W_SLOT, String(0.00001, 5));

  delay(100); 
}

//-------------------------------------------

float GetCalibrationXSettings() { return ReadStringEEPROM(CALIBRATION_X_SLOT).toFloat(); }
void SaveCalibrationXSettings(String value) { WriteStringEEPROM(CALIBRATION_X_SLOT, value); delay(100); }
//-------------------------------------------
float GetCalibrationYSettings() { return ReadStringEEPROM(CALIBRATION_Y_SLOT).toFloat(); }
void SaveCalibrationYSettings(String value) { WriteStringEEPROM(CALIBRATION_Y_SLOT, value); delay(100); }
//-------------------------------------------
float GetCalibrationZSettings() { return ReadStringEEPROM(CALIBRATION_Z_SLOT).toFloat(); }
void SaveCalibrationZSettings(String value) { WriteStringEEPROM(CALIBRATION_Z_SLOT, value); delay(100); }
//-------------------------------------------
float GetCalibrationWSettings() { return ReadStringEEPROM(CALIBRATION_W_SLOT).toFloat(); }
void SaveCalibrationWSettings(String value) { WriteStringEEPROM(CALIBRATION_W_SLOT, value); delay(100); }

String GetCalibrationValuesString() 
{ 
  String result; 
  result += "x: " + String(GetCalibrationXSettings()) + "; ";  
  result += "y: " + String(GetCalibrationYSettings()) + "; ";  
  result += "z: " + String(GetCalibrationZSettings()) + "; ";  
  result += "w: " + String(GetCalibrationWSettings()) + "; ";  
  return result;
}