/*
 * GyroCube Firmware (Legacy v1.0)
 * Copyright (c) 2020-2023 Yuri Didevich (Embodied Lab)
 * Licensed under Apache 2.0
 */
 
#include <AsyncTCP.h>
#include <ESPAsyncWebServer.h>

unsigned long currentTime = millis();
unsigned long previousTime = 0; 
const long timeoutTime = 2000;

AsyncWebServer server(80);

bool newRequest = false;

const char* PARAM_ALIAS = "inputAlias";
const char* PARAM_WIFISSID = "inputWiFiSsid";
const char* PARAM_WIFIPASS = "inputWiFiPass";
const char* PARAM_RECEIVE_IP_ADDRESS = "inputReceiveIpAddress";
const char* PARAM_RECEIVE_PORT = "inputReceivePort";
const char* PARAM_CALIBRATION = "inputCalibration";

const char index_html[] PROGMEM = R"rawliteral(
<!DOCTYPE html>
<html>
  <head>
    <title>GyroCube</title>
    <meta name="viewport" content="width=device-width,initial-scale=1">
    <style>
      html {
        font-family: Arial, Helvetica, sans-serif;
      }

      h1 {
        font-size: 1.8rem;
        color: #fff;
      }

      .topnav {
        overflow: hidden;
        background-color: #0a1128;
        text-align: center;
      }

      body {
        margin: 0;
      }

      .content {
        padding: 20px;
        max-width: max-content;
        margin: 0 auto;
      }

      form {
        border-radius: 5px;
        background-color: #f2f2f2;
        padding: 0px 20px 5px 20px;
      }

      input[type=number],
      select {
        padding: 12px 20px;
        margin: 8px 0;
        display: inline-block;
        border: 1px solid #ccc;
        border-radius: 5px;
        box-sizing: border-box;
      }

      input[type=text],
      select {
        padding: 12px 20px;
        margin: 8px 0;
        display: inline-block;
        border: 1px solid #ccc;
        border-radius: 5px;
        box-sizing: border-box;
      }

      input[type=submit] {
        -webkit-appearance: none;
        -moz-appearance: none;
        appearance: none;
        background-color: #034078;
        border: none;
        padding: 14px 20px;
        text-align: center;
        font-size: 20px;
        border-radius: 5px;
        transition-duration: .4s;
        margin: 5px;
        width: 250px;
        color: #fff;
        cursor: pointer;
      }

      input[type=submit]:hover {
        background-color: #1282a2;
      }

      input[type=radio] {
        -webkit-appearance: none;
        -moz-appearance: none;
        appearance: none;
        width: 16px;
        height: 16px;
        border: 2px solid #999;
        transition: .2s all linear;
        margin-right: 5px;
        position: relative;
        top: 4px;
      }

      input[type=radio]:checked {
        border: 6px solid #1282a2;
      }

      .flex {
        display: flex;
        flex-direction: row;
        align-items: center;
        justify-content: space-evenly;
      }

      .leftColumn {
        display: inline-block;
        width: 200px;
      }

      input.rightColumn {
        width: 300px;
      }
    </style>
  </head>
  <body>
    <div class="topnav">
      <h1>Gyro<i class="fas fa-cogs">Cube</i>
      </h1>
    </div>
    <div class="content">
      <form action="/" method="POST">
        <div style="display: table-row;">
          <label class="leftColumn" for="wiFiSsid">wiFiSsid:</label>
          <input class="rightColumn" type="text" name="inputWiFiSsid" value="%inputWiFiSsid%" required minlength="2" maxlength="15" size="10">
        </div>
        <div style="display: table-row">
          <label class="leftColumn" for="wiFiPass">wiFiPass:</label>
          <input class="rightColumn" type="text" name="inputWiFiPass" value="%inputWiFiPass%" required minlength="2" maxlength="15" size="10">
        </div>
        <div style="display: table-row">
          <label class="leftColumn" for="inputAlias">Alias (4 to 15 characters):</label>
          <input class="rightColumn" type="text" name="inputAlias" value="%inputAlias%" required minlength="4" maxlength="15" size="10">
        </div>
        <div style="display: table-row">
          <label class="leftColumn" for="inputReceiveIpAddress">Broadcast Receive IP (7 to 15 characters):</label>
          <input class="rightColumn" type="text" name="inputReceiveIpAddress" value="%inputReceiveIpAddress%" required minlength="7" maxlength="15" size="10">
        </div>
        <div style="display: table-row">
          <label class="leftColumn" for="inputReceivePort">Broadcast Receive port</label>
          <input class="rightColumn" type="number" name="inputReceivePort" value="%inputReceivePort%">
        </div>
        <div style="display: table-row">
          <label class="leftColumn" for="inputCalibration">Calibration</label>
          <input class="rightColumn" type="text" name="inputCalibration" value="%inputCalibration%" disabled="disabled">
        </div>
        <div class="flex">
          <input type="submit" value="Save">
        </div>
      </form>
      <form action="/calibration" method="POST">
        <div class="flex">
          <input type="submit" value="Calibration">
        </div>
      </form>
      <form action="/resetCalibration" method="POST">
        <div class="flex">
          <input type="submit" value="ResetCalibration">
        </div>
      </form>
      <form action="/reboot" method="POST">
        <div class="flex">
          <input type="submit" value="Reboot">
        </div>
      </form>
      <form action="/erase" method="POST">
        <div class="flex">
          <input type="submit" value="Erase">
        </div>
      </form>
    </div>
  </body>
</html>
)rawliteral";

void WebServerSetup()
{
  server.on("/", HTTP_GET, [](AsyncWebServerRequest *request)
  {
    request->send_P(200, "text/html", index_html, processor);
  });

  server.on("/", HTTP_POST, [] (AsyncWebServerRequest *request) 
  {
    for(int i=0; i<request->params(); i++)
    {
      AsyncWebParameter* param = request->getParam(i);

      if (param->name() == PARAM_ALIAS) SaveAliasSettings(param->value().c_str());
      if (param->name() == PARAM_WIFISSID) SaveWiFiSsidSettings(param->value().c_str());
      if (param->name() == PARAM_WIFIPASS) SaveWiFiPassSettings(param->value().c_str());
      if (param->name() == PARAM_RECEIVE_IP_ADDRESS) SaveReceiveIpAddressSettings(param->value().c_str());
      if (param->name() == PARAM_RECEIVE_PORT) SaveReceivePortSettings(param->value().c_str());
    }

    request->redirect("/");
  });

  server.on("/calibration", HTTP_POST, [] (AsyncWebServerRequest *request) 
  {
    request->redirect("/");
    SaveCalibration();
  });

  server.on("/resetCalibration", HTTP_POST, [] (AsyncWebServerRequest *request) 
  {
    request->redirect("/");
    ResetCalibrationSettings();
    LoadCalibration();
  });

  server.on("/reboot", HTTP_POST, [] (AsyncWebServerRequest *request) 
  {
    request->redirect("/");
    ESP.restart();
  });

  server.on("/erase", HTTP_POST, [] (AsyncWebServerRequest *request) 
  {
    request->redirect("/");
    EraseEEPROM();
    ESP.restart();
  });

  server.begin();
}

String processor(const String& var)
{
  if(var == "inputAlias") return GetAliasSettings();
  if(var == "inputWiFiSsid") return GetWiFiSsidSettings();
  if(var == "inputWiFiPass") return GetWiFiPassSettings();
  if(var == "inputReceiveIpAddress") return GetReceiveIpAddressSettings();
  if(var == "inputReceivePort") return GetReceivePortSettings();
  if(var == "inputCalibration") return GetCalibrationValuesString();
  return String();
}

void WebServerLoop()
{ 
  if (newRequest)
  {
    newRequest = false;
  }
}
