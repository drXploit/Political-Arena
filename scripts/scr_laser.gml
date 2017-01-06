///scr_laser(x,y,x2,y2,col1,col2,alpha,width);

draw_set_alpha(argument6);

draw_set_color(argument4); 

draw_line_width(argument0, argument1, argument2, argument3, argument7);

draw_set_color(argument5);

draw_line(argument0+1,argument1+1,argument2,argument3);
draw_line(argument0+1,argument1-1,argument2,argument3);
draw_line(argument0-1,argument1+1,argument2,argument3);
draw_line(argument0-1,argument1-1,argument2,argument3); 
draw_line(argument0,argument1,argument2,argument3); 

draw_set_alpha(1); 

