///aiChristie
if (instance_exists(global.player))
{
    if (id != global.player)
    {
        var disFromPlayer = point_distance(x,y,global.player.x,global.player.y);
        var dirFromPlayer = point_direction(x,y,global.player.x,global.player.y);
        if (disFromPlayer < 300)
        {
            alarm[0] = -1;
            direction = dirFromPlayer;
            speed = 0;
            if (!collision_line(x,y,global.player.x,global.player.y,obj_wall,false,true))
            {
                if (disFromPlayer > 150) {
                    if (!instance_exists(obj_cheeseburger)) 
                    {
                        with (instance_create(x+body[RIGHTHAND,XOFFSET],y+body[RIGHTHAND,YOFFSET],obj_cheeseburger)) {
        //                    speed = 5;
                            move_towards_point(global.player.x,global.player.y,speed);
                            image_angle = direction;
                        }
                    }
                }
                else 
                {
                    with (global.player)
                    {
                        motion_set(other.direction,10);
                        text = floatText(text,"ow!",x,y,font_vinegar_18,c_red);
                    }
                }
            }
        }
        else if (disFromPlayer < 400)
        {
            alarm[0] = -1;
            motion_set(dirFromPlayer,charSpeed*0.75);
        }
        else
        {
            if (alarm[0] == -1) alarm[0] = room_speed*random_range(2,4); // ai
        }
    }
}
