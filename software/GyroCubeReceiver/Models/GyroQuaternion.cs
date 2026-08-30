using System;
using GyroCubeReceiver.Utils;

namespace GyroCubeReceiver.Models
{
    public class GyroQuat
    {
        public string Alias { get; set; }
        public float X { get; set; }
        public float Y { get; set; }
        public float Z { get; set; }
        public float W { get; set; }

        public GyroQuat(string alias, float x, float y, float z, float w)
        {
            Alias = alias;
            X = x;
            Y = y;
            Z = z;
            W = w;
        }

        public static Point3D QuaternionToEuler(GyroQuat q)
        {
            Point3D point3D = new Point3D();

            float singularityTest = q.Z * q.X - q.W * q.Y;
            float yawY = 2f * (q.W * q.Z + q.X * q.Y);
            float yawX = 1f - 2f * (q.Y * q.Y + q.Z * q.Z);

            const float radToDeg = (float)(180 / Math.PI);

            if (singularityTest < -0.4999995f)
            {
                point3D.X = -90f;
                point3D.Y = (float)Math.Atan2(yawY, yawX) * radToDeg;
                point3D.Z = NormalizeAxis((float)(-point3D.Y - 2f * Math.Atan2(q.X, q.W) * radToDeg));
            }
            else if (singularityTest > 0.4999995f)
            {
                point3D.X = 90f;
                point3D.Y = (float)Math.Atan2(yawY, yawX) * radToDeg;
                point3D.Z = NormalizeAxis((float)(point3D.Y - 2f * Math.Atan2(q.X, q.W) * radToDeg));
            }
            else
            {
                point3D.X = (float)Math.Asin(2f * singularityTest) * radToDeg;
                point3D.Y = (float)Math.Atan2(yawY, yawX) * radToDeg;
                point3D.Z = (float)Math.Atan2(-2f * (q.W * q.X + q.Y * q.Z), 1f - 2f * (q.X * q.X + q.Y * q.Y)) * radToDeg;
            }

            return point3D;
        }

        private static float NormalizeAxis(float angle)
        {
            angle = FMod(angle, 360);

            if (angle < 0f)
                angle += 360f;

            if (angle > 180f)
                angle -= 360f;

            return angle;
        }

        private static float FMod(float x, float y)
        {
            if (Math.Abs(y) <= 1E-8f)
                return 0;

            float quotient = (int)(x / y);
            float intPortion = y * quotient;

            if (Math.Abs(intPortion) > Math.Abs(x))
                intPortion = x;

            float result = x - intPortion;

            return result;
        }
    }
}