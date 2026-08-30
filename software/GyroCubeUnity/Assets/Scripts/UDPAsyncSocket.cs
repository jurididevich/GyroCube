using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Sockets;
using System.Text;

namespace Assets.Scripts
{
    public class UdpAsyncSocket
    {
        public Socket UdpSocket;
        private readonly List<EndPoint> _clientList = new();
        private readonly byte[] _byteData = new byte[128];

        public void StartServer(int port)
        {
            UdpSocket = new Socket(AddressFamily.InterNetwork, SocketType.Dgram, ProtocolType.Udp);
            UdpSocket.SetSocketOption(SocketOptionLevel.Socket, SocketOptionName.ReuseAddress, true);
            UdpSocket.Bind(new IPEndPoint(IPAddress.Any, port));
            EndPoint newClientEp = new IPEndPoint(IPAddress.Any, 0);
            UdpSocket.BeginReceiveFrom(_byteData, 0, _byteData.Length, SocketFlags.None, ref newClientEp, DoReceiveFrom, newClientEp);
        }

        private void DoReceiveFrom(IAsyncResult iar)
        {
            try
            {
                EndPoint clientEp = new IPEndPoint(IPAddress.Any, 0);

                var dataLen = UdpSocket.EndReceiveFrom(iar, ref clientEp);
                var data = new byte[dataLen];
                Array.Copy(_byteData, data, dataLen);

                EndPoint newClientEp = new IPEndPoint(IPAddress.Any, 0);
                UdpSocket.BeginReceiveFrom(_byteData, 0, _byteData.Length, SocketFlags.None, ref newClientEp, DoReceiveFrom, newClientEp);

                if (!_clientList.Any(client => client.Equals(clientEp)))
                    _clientList.Add(clientEp);

                UdpServer.Instance.ParseReceived(Encoding.ASCII.GetString(data));
            }
            catch (Exception)
            {
                // ignored
            }
        }
    }
}