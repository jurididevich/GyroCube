#ifdef ARDUINO
#if ARDUINO < 100
#include "WProgram.h"
#else
#include "Arduino.h"
#endif
#if I2CDEV_IMPLEMENTATION == I2CDEV_ARDUINO_WIRE
#include <Wire.h>
#endif
#else
#include "ArduinoWrapper.h"
#endif

#ifndef _HELPER_3DMATH_H_
#define _HELPER_3DMATH_H_

struct Vector3D {
    float x, y, z;
};

class Quaternion {
    public:
        float w;
        float x;
        float y;
        float z;
        
        Quaternion() 
        {
            w = 1.0f;
            x = 0.0f;
            y = 0.0f;
            z = 0.0f;
        }
        
        Quaternion(float nw, float nx, float ny, float nz) 
        {
            w = nw;
            x = nx;
            y = ny;
            z = nz;
        }

        Quaternion Divide(Quaternion quaternion)
        {
            Quaternion r(w, x, y, z);

            double scale = quaternion.w * quaternion.w + quaternion.x * quaternion.x + quaternion.y * quaternion.y + quaternion.z * quaternion.z;

            r.w = (this->w * quaternion.w + this->x * quaternion.x + this->y * quaternion.y + this->z * quaternion.z) / scale;
            r.x = (-this->w * quaternion.x + this->x * quaternion.w + this->y * quaternion.z - this->z * quaternion.y) / scale;
            r.y = (-this->w * quaternion.y - this->x * quaternion.z + this->y * quaternion.w + this->z * quaternion.x) / scale;
            r.z = (-this->w * quaternion.z + this->x * quaternion.y - this->y * quaternion.x + this->z * quaternion.w) / scale;

            return r;
        }

        Quaternion Divide(double scalar) 
        {
            Quaternion r(w, x, y, z);

            r.w = r.w / scalar;
            r.x = r.x / scalar;
            r.y = r.y / scalar;
            r.z = r.z / scalar;

            return r;
        }

        Quaternion Add(Quaternion quaternion)
        {
            Quaternion r(w, x, y, z);

            r.w = this->w + quaternion.w;
            r.x = this->x + quaternion.x;
            r.y = this->y + quaternion.y;
            r.z = this->z + quaternion.z;

            return r;
        }

        Quaternion UnitQuaternion(Quaternion quaternion)
        {
            Quaternion r(w, x, y, z);

            double n = r.Magnitude();

            r.w = r.w / n;
            r.x = r.x / n;
            r.y = r.y / n;
            r.z = r.z / n;

            return r;
        }

        double Magnitude() 
        {
            return sqrt(Normal());
        }

        double Normal() 
        {
            Quaternion r(w, x, y, z);

            return pow(r.w, 2.0) + pow(r.x, 2.0) + pow(r.y, 2.0) + pow(r.z, 2.0);
        }

        Quaternion SphericalInterpolation(Quaternion q1, Quaternion q2, double ratio) 
        {
            q1 = q1.UnitQuaternion();
            q2 = q2.UnitQuaternion();

            double dot = q1.DotProduct(q2);//Cosine between the two quaternions

            if (dot < 0.0)//Shortest path correction
            {
                q1 = q1.AdditiveInverse();
                dot = -dot;
            }

            if (dot > 0.999)//Linearly interpolates if results are close
            {
                return (q1.Add((q2.Subtract(q1)).Multiply(ratio))).UnitQuaternion();
            }
            else
            {
                dot = Constrain(dot, -1, 1);

                double theta0 = acos(dot);
                double theta = theta0 * ratio;

                double f1 = cos(theta) - dot * sin(theta) / sin(theta0);
                double f2 = sin(theta) / sin(theta0);

                return q1.Multiply(f1).Add(q2.Multiply(f2)).UnitQuaternion();
            }
        }

        Quaternion Multiply(double scalar)
        {
            Quaternion r(w, x, y, z);

            r.w = r.w * scalar;
            r.x = r.x * scalar;
            r.y = r.y * scalar;
            r.z = r.z * scalar;
            
            return r;
        }

        Quaternion Subtract(Quaternion quaternion)
        {
            Quaternion r(w, x, y, z);

            r.w = r.w - quaternion.w;
            r.x = r.x - quaternion.x;
            r.y = r.y - quaternion.y;
            r.z = r.z - quaternion.z;

            return r;
        }

        Quaternion UnitQuaternion() 
        {
            Quaternion r(w, x, y, z);

            double n = r.Magnitude();

            r.w = r.w / n;
            r.x = r.x / n;
            r.y = r.y / n;
            r.z = r.z / n;

            return r;
        }

        Quaternion AdditiveInverse() 
        {
            Quaternion r(w, x, y, z);

            r.w = -r.w;
            r.x = -r.x;
            r.y = -r.y;
            r.z = -r.z;

            return r;
        }

        double DotProduct(Quaternion q)
        {
            return (w * q.w) + (x * q.x) + (y * q.y) + (z * q.z);
        }

        float Constrain(float v, float minimum, float maximum)
        {
            if (v > maximum)
                v = maximum;
            else if (v < minimum)
                v = minimum;

            return v;
        }

        Quaternion Inverse(Quaternion q)
        {
            Quaternion r(-1, 0, 0, 0);
            double num2 = q.x * q.x + q.y * q.y + q.z * q.z + q.w * q.w;
            double num = 1 / num2;

            r.x = -q.x * num;
            r.y = -q.y * num;
            r.z = -q.z * num;
            r.w = q.w * num;

            return r;
        }

        Quaternion Multiply(Quaternion q1, Quaternion q2)
        {
            double qX = q1.w * q2.x + q1.x * q2.w + q1.y * q2.z - q1.z * q2.y;
            double qY = q1.w * q2.y + q1.y * q2.w + q1.z * q2.x - q1.x * q2.z;
            double qZ = q1.w * q2.z + q1.z * q2.w + q1.x * q2.y - q1.y * q2.x;
            double qW = q1.w * q2.w - q1.x * q2.x - q1.y * q2.y - q1.z * q2.z;

            Quaternion r(qW, qX, qY, qZ);

            return r;
        }

        Vector3D ToEulerAngle(bool degrees)
        {
            Quaternion r(w, x, y, z);

            double q0 = r.w;
            double q1 = r.x;
            double q2 = r.y;
            double q3 = r.z;
            double roll = atan2(2 * (q0 * q1 + q2 * q3), 1 - 2 * (q1 * q1 + q2 * q2));
            double pitch = asin(2 * (q0 * q2 - q3 * q1));
            double yaw = atan2(2 * (q0 * q3 + q1 * q2), 1 - 2 * (q2 * q2 + q3 * q3));

            if (degrees)
            {
                pitch *= (180.0 / PI);
                roll *= (180.0 / PI);
                yaw *= (180.0 / PI);
                if (pitch < 0) pitch = 360.0 + pitch;
                if (roll < 0) roll = 360.0 + roll;
                if (yaw < 0) yaw = 360.0 + yaw;
            }

            Vector3D vector3D;
            vector3D.x = pitch;
            vector3D.y = roll;
            vector3D.z = yaw;

            return vector3D;
        }

        float qToFloat(long number, unsigned char q)
        {
            unsigned long mask = 0;

            for (int i = 0; i < q; i++)
                mask |= (1 << i);
            
            return (number >> q) + ((number & mask) / (float)(2 << (q - 1)));
        }
};

#endif /* _HELPER_3DMATH_H_ */

