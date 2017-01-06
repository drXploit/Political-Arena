///scr_draw_statbar_ext(x,y,xheight,str,col,alpha,fnt,align)

draw_set_color(argument4);
draw_set_halign(argument7);
draw_set_valign(fa_center);
draw_set_font(argument6);

var width = string_length(argument3)*8;
var fontSize = font_get_size(argument6);

draw_set_alpha(argument5);
if (argument7 == fa_right)
draw_rectangle_colour(view_xview[0]+argument0-width,    view_yview[0]+argument1,view_xview[0]+argument0,      view_yview[0]+argument1-(fontSize*argument2),c_dkgray,c_dkgray,c_black,c_black,false);
else
draw_rectangle_colour(view_xview[0]+argument0,          view_yview[0]+argument1,view_xview[0]+argument0+width,view_yview[0]+argument1-(fontSize*argument2),c_dkgray,c_dkgray,c_black,c_black,false);

draw_set_alpha(1);
draw_text(view_xview[0]+argument0,                      view_yview[0]+argument1-(fontSize*(argument2/2)),argument3);


//view_wview[0] - 110, view_hview[0] - 85
