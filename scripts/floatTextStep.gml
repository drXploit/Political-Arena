///floatTextStep(array)

var m=0;
repeat(maxText+1) {
    if (argument0[m,6] == true) 
    {
        argument0[m,2] -= 2.5;           //y
        argument0[m,3] -= 0.02;        //textFade
        if (argument0[m,3] <= 0) 
            argument0[m,6] = false;    //off
    }
    m++;
}

return argument0;

