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
}