///floatTextDraw(array)

draw_set_halign(fa_center);
draw_set_valign(fa_center);
var m=0;
repeat(maxText+1)
{
    if (argument0[m,6] == true)
    {
        draw_set_font(argument0[m,4]);
        draw_set_color(argument0[m,5]);
        draw_set_alpha(argument0[m,3]);
        draw_text(argument0[m,1], argument0[m,2],argument0[m,0]);
    }
    m++;
}
draw_set_alpha(1);

