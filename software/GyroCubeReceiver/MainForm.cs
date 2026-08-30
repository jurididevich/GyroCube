using GyroCubeReceiver.Events;
using GyroCubeReceiver.Extensions;
using GyroCubeReceiver.Helper;
using GyroCubeReceiver.Models;
using GyroCubeReceiver.Utils;
using System;
using System.Drawing;
using System.IO.Ports;
using System.Linq;
using System.Windows.Forms;

namespace GyroCubeReceiver
{
    public partial class MainForm : Form
    {
        private readonly SerialPort _serialPort = new SerialPort();

        private UdpAsyncSocket _receiveUdpServer = new UdpAsyncSocket();

        private readonly Cube3D _cube3D = new Cube3D(200);

        public MainForm()
        {
            InitializeComponent();

            lvGyroCubeList.MouseDoubleClick += (sender, args) =>
            {
                if (sender is ListView listView && listView.HitTest(args.Location) is ListViewHitTestInfo hit)
                {
                    System.Diagnostics.Process.Start($"http://{hit.Item.Name}");
                }
            };

            GetSerialPortList();

            Cube3DRender(new GyroQuat("None", 0.25f, 0.25f, 0.25f, -1));

            EventReceiveUdpServer eventReceiveUdpServer = new EventReceiveUdpServer();
            Eventing.EventReceiveUdpServer = eventReceiveUdpServer;
            Eventing.EventReceiveUdpServer.OnNewReceiveUdpServer += OnNewReceiveUdpServerEvent;
        }

        void OnNewReceiveUdpServerEvent(object sender, NewEventReceiveUdpServerArgs e)
        {
            SerialPortParseReceived(e.ReceiveUdpServerMessage);
        }

        private void Cube3DRender(GyroQuat gyroQuat)
        {
            Point3D point3D = GyroQuat.QuaternionToEuler(gyroQuat);

            _cube3D.RotateX = point3D.X;
            _cube3D.RotateY = point3D.Y;
            _cube3D.RotateZ = point3D.Z;

            Point origin = new Point(pbCube3D.Width / 2, pbCube3D.Height / 2);

            pbCube3D.Image = _cube3D.DrawCube(origin);
        }

        private void GetSerialPortList()
        {
            string[] portNameArray = SerialPort.GetPortNames();
            foreach (string port in portNameArray)
                cbPortName.Items.Add(port);

            if (portNameArray.Length > 0)
                cbPortName.SelectedIndex = 0;
        }

        private void ConnectToSerialPort()
        {
            if (cbPortName.SelectedIndex != -1)
            {
                _serialPort.PortName = cbPortName.Text;
                _serialPort.BaudRate = 115200;
                _serialPort.NewLine = Environment.NewLine;

                try
                {
                    _serialPort.Open();
                    _serialPort.DataReceived += serialPort_DataReceived;
                }
                catch (Exception)
                {
                    MessageBox.Show(@"Could not open the Serial Port.");
                }
            }
            else
            {
                MessageBox.Show(@"Please select Serial Port");
            }

            if (_serialPort.IsOpen)
                btnConnect.Text = @"Disconnect";
        }

        private void Disconnect()
        {
            _serialPort.Close();
            btnConnect.Text = @"Connect";
        }

        private void btnConnect_Click(object sender, EventArgs e)
        {
            if (_serialPort.IsOpen)
                Disconnect();
            else
                ConnectToSerialPort();
        }

        private void Form1_FormClosing(object sender, FormClosingEventArgs e)
        {
            if (_serialPort.IsOpen)
                _serialPort.Close();
        }

        private void serialPort_DataReceived(object sender, SerialDataReceivedEventArgs e)
        {
            if (!_serialPort.IsOpen)
                return;

            try
            {
                Eventing.EventReceiveUdpServer.InvokeOnNewReceiveUDPServer(_serialPort.ReadLine());
            }
            catch (Exception)
            {
                // ignored
            }
        }

        private void UpdateGyroCubeList(GyroQuat gyroQuat, string ipAddress)
        {
            if (lvGyroCubeList.Items.OfType<ListViewItem>().All(x => x.Name != ipAddress))
            {
                ListViewItem listViewItem = new ListViewItem
                {
                    Name = ipAddress,
                    Text = $@"{gyroQuat.Alias} {ipAddress}",
                    Tag = gyroQuat.Alias,
                };
                lvGyroCubeList.Items.Add(listViewItem);
            }
        }

        private void SerialPortParseReceived(string receivedString)
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

                    Invoke(new MethodInvoker(delegate
                    {
                        UpdateGyroCubeList(gyroQuat, strArr[2]);
                    }));

                    Invoke(new MethodInvoker(delegate
                    {
                        if (lvGyroCubeList.SelectedItems.OfType<ListViewItem>().FirstOrDefault() is ListViewItem listViewItem && listViewItem.Tag.ToString() == gyroQuat.Alias)
                        {
                            Cube3DRender(gyroQuat);
                        }
                    }));

                    break;
                }
            }

            SetReceiveLog(receivedString);
        }

        private void SetReceiveLog(string receivedData)
        {
            void MethodInvokerDelegate()
            {
                textBox1.Text = receivedData;
            }

            if (InvokeRequired)
                Invoke((MethodInvoker) MethodInvokerDelegate);
            else
                MethodInvokerDelegate();
        }

        private void btnStartUDPServer_Click(object sender, EventArgs e)
        {
            if (_receiveUdpServer.UdpSocket == null || !_receiveUdpServer.UdpSocket.IsBound)
            {
                _receiveUdpServer = new UdpAsyncSocket();
                _receiveUdpServer.StartServer((int)nudUDPServerRecieverPort.Value);
            }
        }
    }
}
