/*
 * GyroCube Firmware (Legacy v1.0)
 * Copyright (c) 2020-2023 Yuri Didevich (Embodied Lab)
 * Licensed under Apache 2.0
 */

#include "AsyncUDP.h"

#define UDP_BUFFER_SIZE 128

AsyncUDP udpClient;

IPAddress udpServerIpAddress;
int udpServerPort;

void UdpSenderSetup()
{
  // FIXED: Assign to global variable, not local
  udpServerIpAddress.fromString(GetReceiveIpAddressSettings());
  udpServerPort = GetReceivePortSettings().toInt();

  // Establish UDP connection context
  udpClient.connect(udpServerIpAddress, udpServerPort);   
}

void UdpSenderSendData(String message)
{
  char charBuffer[UDP_BUFFER_SIZE];
  message.toCharArray(charBuffer, UDP_BUFFER_SIZE);

  // Broadcast data packet if connected
  if (udpClient.connected())
    udpClient.broadcastTo(charBuffer, udpServerPort);
  else
    UdpSenderSetup(); // Re-initialize if disconnected
}
