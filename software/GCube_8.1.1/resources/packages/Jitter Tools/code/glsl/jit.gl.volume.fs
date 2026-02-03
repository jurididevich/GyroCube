#version 330 core

in jit_PerVertex {
	vec3 vertexPos;
	vec2 texcoord;
	flat float instanceId;
	flat float transparencyIntensity;
} jit_in;

out vec4 color;

uniform float instanceCount = 100.0f;
uniform sampler3D u_smokeTexture;
uniform vec3 volumeColor;
uniform float intensity = 0.5f;

const float BAYER_FILTER[64] = float[64](
0.0000, 0.7529, 0.1882, 0.9412, 0.0471, 0.8000, 0.2353, 0.9882,
0.5020, 0.2510, 0.6902, 0.4392, 0.5490, 0.2980, 0.7373, 0.4863,
0.1255, 0.8784, 0.0627, 0.8157, 0.1725, 0.9255, 0.1098, 0.8627,
0.6275, 0.3765, 0.5647, 0.3137, 0.6745, 0.4235, 0.6118, 0.3608,
0.0314, 0.7843, 0.2196, 0.9725, 0.0157, 0.7686, 0.2039, 0.9569,
0.5333, 0.2824, 0.7216, 0.4706, 0.5176, 0.2667, 0.7059, 0.4549,
0.1569, 0.9098, 0.0941, 0.8471, 0.1412, 0.8941, 0.0784, 0.8314,
0.6588, 0.4078, 0.5961, 0.3451, 0.6431, 0.3922, 0.5804, 0.3294);

void main() {
	vec4 smokeTexel = texture(u_smokeTexture, vec3(jit_in.texcoord, jit_in.instanceId / instanceCount));
	color = vec4(volumeColor.rgb, (smokeTexel.a * jit_in.transparencyIntensity) * clamp(intensity, 0.0f, 1.0f));
	// Dither the noise to make banding / triangle slices less apparent.
	int x = int(gl_FragCoord.x) % 2;
	int y = int(gl_FragCoord.y) % 2;
	float noise = (BAYER_FILTER[x + y * 2] / 32.0 - (1.0 / 128.0)) * 0.01;
	color += noise;
}