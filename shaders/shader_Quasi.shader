attribute vec3 in_Position;                  // (x,y,z)
attribute vec4 in_Colour;                    // (r,g,b,a)
attribute vec2 in_TextureCoord;              // (u,v)

varying vec2 v_vPosition;
varying vec4 v_vColour;
varying vec2 v_vTexcoord;

void main()
{
    vec4 object_space_pos = vec4( in_Position, 1);
    gl_Position = gm_Matrices[MATRIX_WORLD_VIEW_PROJECTION] * object_space_pos;
    
    v_vPosition = in_Position.xy;
    v_vColour = in_Colour;
    v_vTexcoord = in_TextureCoord;
}

//######################_==_YOYO_SHADER_MARKER_==_######################@~varying vec2 v_vPosition;

uniform float time;

float wave(vec2 p, float angle) 
{
    vec2 direct = vec2(cos(angle), sin(angle));
    return cos(dot(p, direct));
}

float wrap(float x) 
{
    return abs(mod(x, 2.0)-1.0);
}

void main() 
{
    vec2 p = (v_vPosition - 0.5) * 50.0;
    float brightness = 0.0;
    float i = 1.0;
    for (i = 1.0; i <= 11.0; i++) 
    {
        brightness += wave(p, time / i);
    }
    brightness = wrap(brightness);
    gl_FragColor.rgb = vec3(brightness);
    gl_FragColor.a = 1.0;
}
