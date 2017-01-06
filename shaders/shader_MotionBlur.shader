//
// Simple passthrough vertex shader
//
attribute vec3 in_Position;                  // (x,y,z)
//attribute vec3 in_Normal;                  // (x,y,z)     unused in this shader.	
attribute vec4 in_Colour;                    // (r,g,b,a)
attribute vec2 in_TextureCoord;              // (u,v)

varying vec2 v_vTexcoord;
varying vec4 v_vColour;

void main()
{
    vec4 object_space_pos = vec4( in_Position.x, in_Position.y, in_Position.z, 1.0);
    gl_Position = gm_Matrices[MATRIX_WORLD_VIEW_PROJECTION] * object_space_pos;
    
    v_vColour = in_Colour;
    v_vTexcoord = in_TextureCoord;
}

//######################_==_YOYO_SHADER_MARKER_==_######################@~const int Quality = 8;
const float Distance = 0.1;
const int Directions = 16;

varying vec2 v_vTexcoord;
varying vec4 v_vColour;
const float Pi = 3.14159265359;
const float Tau = Pi*2.0;

void main()
{
    vec4 Color;
    for(float dir = 0.0;dir<1.0;dir+=1.0/float(Directions)) 
    {
        float xvar = (Distance*2.0+Distance)*sin(dir*Tau);
        float yvar = (Distance*2.0+Distance)*cos(dir*Tau);
        for(float i = 0.0;i < 1.0;i+=1.0/float(Quality)) 
        {
            float dis = i*Distance;
            Color += texture2D(gm_BaseTexture,vec2(v_vTexcoord.x+xvar*dis,v_vTexcoord.y+yvar*dis));
        }
    }
    Color /= float(Quality)*float(Directions); //I don't get the +1.0 part in the original, removing it seems to have no effect.
    gl_FragColor = Color; //Same as above but with the *v_vColour part.
} 
