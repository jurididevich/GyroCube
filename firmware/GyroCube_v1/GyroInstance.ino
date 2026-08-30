/*
 * GyroCube Firmware (Legacy v1.0)
 * Copyright (c) 2020-2023 Yuri Didevich (Embodied Lab)
 * Licensed under Apache 2.0
 */

#include <SparkFunMPU9250-DMP.h>
#include "Quaternion.h"
#include "QuaternionKalmanFilter.h"

#define GYRODATA_ARRAY_LENGTH 9
#define RAWDATA_ARRAY_LENGTH 10

MPU9250_DMP imu;

Quaternion q;
Quaternion qRaw;
Quaternion qCalib; // Stores zero-position offset

Vector3D eulerAngles;

// Kalman filter gain/memory are loaded from EEPROM (defaults: 0.75 / 25)
QuaternionKalmanFilter quaternionKalmanFilter = QuaternionKalmanFilter(0.75, 25);

String alias;

// Minimum interval between broadcasts, in ms (33 ~= 30 FPS, 16.6 ~= 60 FPS)
unsigned long gyroDataIntervalTiming;
uint8_t gyroDataIntervalSend = 33;

void GyroSetup()
{
  quaternionKalmanFilter = QuaternionKalmanFilter(GetKalmanGainSettings(), GetKalmanMemorySettings());

  alias = GetAliasSettings();

  Wire.begin();
  Wire.setClock(400000); // Fast I2C mode

  // Initialize MPU9250
  if (imu.begin() != INV_SUCCESS)
  {
    while (1)
    {
      Serial.println("Error: Unable to communicate with MPU-9250");
      Serial.println("Check I2C connections (SDA/SCL).");
      Serial.println();
      delay(5000);
    }
  }

  // Enable 6-Axis DMP with Low Power Quaternions & Gyro Calibration
  imu.setSensors(INV_XYZ_GYRO | INV_XYZ_ACCEL | INV_XYZ_COMPASS);

  // Gyroscope full-scale range, in degrees per second (250, 500, 1000 or 2000)
  imu.setGyroFSR(2000);

  // Accelerometer full-scale range, in g (2, 4, 8 or 16)
  imu.setAccelFSR(2);

  // Note: the MPU-9250 magnetometer FSR is fixed at +/- 4912 uT (microtesla)

  // Digital low-pass filter cutoff frequency, in Hz (188, 98, 42, 20, 10 or 5)
  imu.setLPF(5);

  // Accelerometer/gyroscope sample rate, in Hz (4Hz - 1kHz)
  imu.setSampleRate(10);

  // Magnetometer sample rate, in Hz (1-100)
  imu.setCompassSampleRate(10);

  imu.dmpBegin(DMP_FEATURE_6X_LP_QUAT | DMP_FEATURE_GYRO_CAL, 10);
}

void GyroLoop()
{
  // Check for new data in FIFO buffer
  if ( imu.fifoAvailable() )
  {
    if ( imu.dmpUpdateFifo() == INV_SUCCESS)
    {
      // Calculate raw quaternions from DMP
      q.w = imu.calcQuat(imu.qw);
      q.x = imu.calcQuat(imu.qx);
      q.y = imu.calcQuat(imu.qy);
      q.z = imu.calcQuat(imu.qz);

      qRaw = q;

      // Apply Calibration Offset: q = qRaw * qCalib_Inverse
      q = q.Multiply(q.Inverse(q), qCalib);

      // Apply Kalman Filter for smoothing
      q = quaternionKalmanFilter.Filter(q);

      // (Optional) Convert to Euler Angles for debug
      // eulerAngles = q.ToEulerAngle(true);
      // Serial.println(String(eulerAngles.x, 2) + "|" + String(eulerAngles.y, 2) + "|" + String(eulerAngles.z, 2));

      // Throttle broadcast rate to gyroDataIntervalSend
      if (millis() - gyroDataIntervalTiming > gyroDataIntervalSend)
      {
        gyroDataIntervalTiming = millis();

        // Prepare and send the orientation (quaternion) packet
        String *gyroDataProtocolData = GetGyroDataProtocolData("GyroData", alias, q.x, q.y, q.z, q.w, voltageLevel);
        String gyroDataProtocolString = GetGyroDataProtocolString(gyroDataProtocolData);
        UdpSenderSendData(gyroDataProtocolString);

        // Prepare and send the raw accelerometer/gyroscope packet
        imu.update(UPDATE_ACCEL | UPDATE_GYRO | UPDATE_COMPASS);

        float aX = imu.calcAccel(imu.ax);
        float aY = imu.calcAccel(imu.ay);
        float aZ = imu.calcAccel(imu.az);
        float gX = imu.calcGyro(imu.gx);
        float gY = imu.calcGyro(imu.gy);
        float gZ = imu.calcGyro(imu.gz);

        String *rawDataProtocolData = GetRawDataProtocolData("RawData", alias, aX, aY, aZ, gX, gY, gZ);
        String rawDataProtocolString = GetRawDataProtocolString(rawDataProtocolData);
        UdpSenderSendData(rawDataProtocolString);
      }
    }
  }
}

// Construct Data Packet Array
String * GetGyroDataProtocolData(String type, String alias, float qX, float qY, float qZ, float qW, float voltageLevel)
{
  static String gyroData[GYRODATA_ARRAY_LENGTH];
  gyroData[0] = type;
  gyroData[1] = "0"; // Reserved field (Legacy ID)
  gyroData[2] = IPToString(GetIPAddress());
  gyroData[3] = alias;
  gyroData[4] = String(qX, 2);
  gyroData[5] = String(qY, 2);
  gyroData[6] = String(qZ, 2);
  gyroData[7] = String(qW, 2);
  gyroData[8] = String(voltageLevel, 2);
  return gyroData;
}

// Serialize Array to Pipe-Separated String
String GetGyroDataProtocolString(String *arrayString)
{
  String result;
  for (int i = 0; i < GYRODATA_ARRAY_LENGTH; i++)
    result += arrayString[i] + "|";
  return result;
}

// Construct Raw Accelerometer/Gyroscope Data Packet Array
String * GetRawDataProtocolData(String type, String alias, float aX, float aY, float aZ, float gX, float gY, float gZ)
{
  static String rawData[RAWDATA_ARRAY_LENGTH];
  rawData[0] = type;
  rawData[1] = "0"; // Reserved field (Legacy ID)
  rawData[2] = IPToString(GetIPAddress());
  rawData[3] = alias;
  rawData[4] = String(aX, 2);
  rawData[5] = String(aY, 2);
  rawData[6] = String(aZ, 2);
  rawData[7] = String(gX, 2);
  rawData[8] = String(gY, 2);
  rawData[9] = String(gZ, 2);
  return rawData;
}

// Serialize Array to Pipe-Separated String
String GetRawDataProtocolString(String *arrayString)
{
  String result;
  for (int i = 0; i < RAWDATA_ARRAY_LENGTH; i++)
    result += arrayString[i] + "|";
  return result;
}

void LoadCalibration()
{
  qCalib.x = GetCalibrationXSettings();
  qCalib.y = GetCalibrationYSettings();
  qCalib.z = GetCalibrationZSettings();
  qCalib.w = GetCalibrationWSettings();
}

void SaveCalibration()
{
  // Set current position as new Zero (Calibration)
  qCalib = qRaw;

  // Save to EEPROM
  SaveCalibrationXSettings(String(qCalib.x, 2));
  SaveCalibrationYSettings(String(qCalib.y, 2));
  SaveCalibrationZSettings(String(qCalib.z, 2));
  SaveCalibrationWSettings(String(qCalib.w, 2));

  // Send Calibration Event Packet
  String *gyroDataProtocolData = GetGyroDataProtocolData("CalibData", alias, qCalib.x, qCalib.y, qCalib.z, qCalib.w, voltageLevel);
  String gyroDataProtocolString = GetGyroDataProtocolString(gyroDataProtocolData);

  UdpSenderSendData(gyroDataProtocolString);
}

void MPU9250Sleep()
{
  imu.MPU9250sleep();
}

void MPU9250Wake()
{
  imu.MPU9250wake();
}
