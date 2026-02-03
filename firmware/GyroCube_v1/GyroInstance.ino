/*
 * GyroCube Firmware (Legacy v1.0)
 * Copyright (c) 2020-2023 Yuri Didevich (Embodied Lab)
 * Licensed under Apache 2.0
 */

#include <SparkFunMPU9250-DMP.h>
#include "Quaternion.h"
#include "QuaternionKalmanFilter.h"

#define GYRODATA_ARRAY_LENGTH 8

MPU9250_DMP imu;

Quaternion q;
Quaternion qRaw;
Quaternion qCalib; // Stores zero-position offset

Vector3D eulerAngles;

// Kalman Filter configuration:
// - Measurement Noise (R): 0.75
// - Process Noise (Q): 25
QuaternionKalmanFilter quaternionKalmanFilter = QuaternionKalmanFilter(0.75, 25);

void GyroSetup()
{
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

      // Prepare Data Protocol Packet
      String *gyroDataProtocolData = GetGyroDataProtocolData("GyroData", GetAliasSettings(), q.x, q.y, q.z, q.w);
      String gyroDataProtocolString = GetGyroDataProtocolString(gyroDataProtocolData);

      // Send via UDP Broadcast
      UdpSenderSendData(gyroDataProtocolString);
    }
  }
}

// Construct Data Packet Array
String * GetGyroDataProtocolData(String type, String alias, float qX, float qY, float qZ, float qW)
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
  String *gyroDataProtocolData = GetGyroDataProtocolData("CalibData", GetAliasSettings(), qCalib.x, qCalib.y, qCalib.z, qCalib.w);
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

