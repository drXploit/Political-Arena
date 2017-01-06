///textScreen(x,y,str,align)

draw_set_color(c_green);
draw_set_halign(argument3);
draw_set_valign(fa_center);
draw_set_font(font_vinegar_12);

var width = string_length(argument2)*8;     //

if (width < 150) width = 150;

//else width = 150;

var fontSize = 11;                          //font_get_size(font_vinegar_12);

draw_set_alpha(0.7);
draw_set_color(c_black);
if (argument3 == fa_right)
{
    draw_rectangle(view_xview[0]+argument0-width,view_yview[0]+argument1,
                            view_xview[0]+argument0,    view_yview[0]+argument1-(fontSize*3),false);
    draw_set_alpha(1);
    draw_set_color(c_red);
    draw_rectangle(view_xview[0]+argument0-width,view_yview[0]+argument1,
                            view_xview[0]+argument0,    view_yview[0]+argument1-(fontSize*3),true);

}
else 
{
    draw_rectangle(view_xview[0]+argument0, view_yview[0]+argument1,
                            view_xview[0]+argument0+width,view_yview[0]+argument1-(fontSize*3),false);
    draw_set_alpha(1);
    draw_set_color(c_red);
    draw_rectangle(view_xview[0]+argument0, view_yview[0]+argument1,
                            view_xview[0]+argument0+width,view_yview[0]+argument1-(fontSize*3),true);

}
draw_set_color(c_green);
//draw_set_alpha(1);

draw_text   ((view_xview[0]+argument0),(view_yview[0]+argument1)-(fontSize*(3/2)),argument2); //*(3/2)),argument2);


//view_wview[0] - 110, view_hview[0] - 85
