///floatText(array,text,x,y,font,color)

var m=0;
repeat(maxText+1)
{

    if (argument0[m,6] == false)
    {
        argument0[m,0] = argument1;          //text
        argument0[m,1] = argument2;          //x
        argument0[m,2] = argument3;          //y
        argument0[m,3] = 1.5;                  //textFade = 1;
        argument0[m,4] = argument4;          //font
        argument0[m,5] = argument5;          //c_color
        argument0[m,6] = true;               //on
        m = maxText;
        return argument0;
    }
    if (m != maxText) m++;
}

return argument0;

