#version 320 es
precision highp float;
in vec2 v_texcoord;
uniform sampler2D tex;

uniform float time;

uniform vec2 topLeft;
uniform vec2 fullSize;

out vec4 fragColor;

void main(){
    vec4 pixColor = texture2D(tex, v_texcoord);
    pixColor[0] *= 0.7;

    fragColor = pixColor;
}
