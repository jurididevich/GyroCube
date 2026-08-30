using System.Globalization;
using GyroCubeReceiver.Models;

namespace GyroCubeReceiver.Extensions
{
    public static class GyroQuatExtension
    {
        public static GyroQuat ToGyroQuat(this string[] arrayStrings)
        {
            return new GyroQuat(arrayStrings[3],
                float.Parse(arrayStrings[4], NumberStyles.Any, CultureInfo.InvariantCulture.NumberFormat),
                float.Parse(arrayStrings[5], NumberStyles.Any, CultureInfo.InvariantCulture.NumberFormat),
                float.Parse(arrayStrings[6], NumberStyles.Any, CultureInfo.InvariantCulture.NumberFormat),
                float.Parse(arrayStrings[7], NumberStyles.Any, CultureInfo.InvariantCulture.NumberFormat));
        }
    }
}