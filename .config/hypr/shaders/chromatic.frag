#version 320 es
precision highp float;
in vec2 v_texcoord;
uniform sampler2D tex;

#define STRENGTH 0.0027

out vec4 fragColor;

void main() {
    vec2 center = vec2(0.5, 0.5);
    vec2 offset = (v_texcoord - center) * STRENGTH;

    float rSquared = dot(offset, offset);
    float distortion = 1.0 + 1.0 * rSquared;
    vec2 distortedOffset = offset * distortion;

    vec2 redOffset = vec2(distortedOffset.x, distortedOffset.y);
    vec2 blueOffset = vec2(distortedOffset.x, distortedOffset.y);

    vec4 redColor = texture(tex, v_texcoord + redOffset); // changed
    vec4 blueColor = texture(tex, v_texcoord + blueOffset); // changed

    fragColor = vec4(redColor.r, texture(tex, v_texcoord).g, blueColor.b, 1.0); // changed
}
