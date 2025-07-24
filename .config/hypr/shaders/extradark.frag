#version 320 es
precision highp float;
in vec2 v_texcoord;
uniform sampler2D tex;

out vec4 fragColor;

void main() {

    vec4 pixColor = texture2D(tex, v_texcoord);

    // red
    pixColor[0] *= 0.7;
    // green
    pixColor[1] *= 0.6;
    // blue
    pixColor[2] *= 0.5;

    fragColor = pixColor;
}
