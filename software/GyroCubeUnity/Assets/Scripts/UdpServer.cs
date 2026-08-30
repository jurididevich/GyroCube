using System;
using System.Collections.Concurrent;
using System.Linq;
using UnityEngine;

namespace Assets.Scripts
{
    public class UdpServer : MonoBehaviour
    {
        private UdpAsyncSocket _receiveUdpServer = new();

        private static UdpServer _instance;

        public static UdpServer Instance => _instance;

        public int UdpPort = 7755;

        public ConcurrentDictionary<string, GyroQuat> GyroQuatDictionary = new();

        private void Awake()
        {
            _instance = this;
        }

        void Start()
        {
            if (_receiveUdpServer.UdpSocket == null || !_receiveUdpServer.UdpSocket.IsBound)
            {
                _receiveUdpServer = new UdpAsyncSocket();
                _receiveUdpServer.StartServer(UdpPort);
            }
        }

        public void ParseReceived(string receivedString)
        {
            if (string.IsNullOrWhiteSpace(receivedString))
                return;

            string[] strArr = receivedString.Split(new[] { '|' }, StringSplitOptions.RemoveEmptyEntries);

            if (!strArr.Any())
                return;

            switch (strArr[0])
            {
                case "GyroData":
                {
                    GyroQuat gyroQuat = strArr.ToGyroQuat();
                    GyroQuatDictionary.AddOrUpdate(gyroQuat.Alias, gyroQuat, (key, value) => gyroQuat);
                    break;
                }
            }

        }
        
        void Update()
        {

        }

        void OnApplicationQuit()
        {
            if(_receiveUdpServer.UdpSocket is { Connected: true })
                _receiveUdpServer.UdpSocket.Close();
        }
    }
}
