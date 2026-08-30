using Assets.Scripts;
using UnityEngine;

public class GyroCubeObject : MonoBehaviour
{
    public string Alias = string.Empty;

    private UdpServer _udpServer;

    void Start()
    {
        _udpServer = GetComponentInParent<UdpServer>();
    }

    void Update()
    {
        if (_udpServer.GyroQuatDictionary.TryGetValue(Alias, out var gyroQuat))
        {
            transform.rotation = new Quaternion(gyroQuat.X, gyroQuat.Z, -gyroQuat.Y, gyroQuat.W);
        }
    }
}
