using System;

namespace GyroCubeReceiver.Events
{
    public class EventReceiveUdpServer
    {
        public delegate void NewReceiveUdpServer(object sender, NewEventReceiveUdpServerArgs e);
        public event NewReceiveUdpServer OnNewReceiveUdpServer;

        public void InvokeOnNewReceiveUDPServer(string receivedString)
        {
            NewReceiveUdpServer handler = OnNewReceiveUdpServer;
            NewEventReceiveUdpServerArgs e = new NewEventReceiveUdpServerArgs(receivedString);
            handler?.Invoke(this, e);
        }
    }

    public class NewEventReceiveUdpServerArgs : EventArgs
    {
        public NewEventReceiveUdpServerArgs(string receivedString) => ReceiveUdpServerMessage = receivedString;
        public string ReceiveUdpServerMessage { get; }
    }
}