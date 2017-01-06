///stepStateDead

image_alpha -= 0.01;

if (first)
{
    var ix = 0;
    firstSpeed = speed;
    firstDir = direction;      
    first = false;
//  speed = 0;
//    if (gun != -1) && (id == global.player.id) && (global.player.gun
   // if (instance_exists(gun)) with(gun) instance_destroy();
    gun = -1;
//    effect_create_above(ef_spark,x,y,2,c_white);
    repeat(bodyParts+1)
    {
        if (collision_point(x+body[ix,XOFFSET],y+body[ix,YOFFSET],obj_wall,false,true))
        {
             body[ix,SPEED]                   = 0;
             body[ix,SPINSPEED]               = 0;
             body[ix,IMAGE_BLEND]             = c_white;
        }
        else 
        {
            if  (body[ix,YSCALE] < 0)         body[ix,YSCALE]    *= -1;
            if  (body[ix,XSCALE] < 0)         body[ix,XSCALE]    *= -1;

            if (body[ix,HP] == -1) 
            {
                body[ix,SPEED]                   += random_range (4, 8);
                body[ix,SPINSPEED]               += irandom_range (-15, 15);
                body[ix,IMAGE_BLEND]             = c_white;
                if (firstTendancy != -360)     
                {
                    if (firstTendancy < 0) firstTendancy *= -1;
                    body[ix,DIRECTION] =  firstTendancy;
                }
                else
                {
                    body[ix,DIRECTION]  = irandom(359);
                    body[ix,SPEED] += 10;
                }
                body[ix,DIRECTION] = fixDir(body[ix,DIRECTION]);
            }
            else 
            {
                if (firstTendancy       >=  0)   body[ix,DIRECTION]  = firstTendancy;
                else if (firstTendancy  > -360)  body[ix,DIRECTION]  = irandom(359);
                else                             body[ix,DIRECTION]  = (-firstTendancy) + irandom_range(-20,20);
                body[ix,DIRECTION] = fixDir(body[ix,DIRECTION]);
                body[ix,SPEED] += irandom_range(4,10);
                body[ix,IMAGE_BLEND]             = c_white;
            }
        }
        ix++;
    }
    speed = 0;
    image_speed = 0;
//    image_blend  = c_white;
    if (instance_exists(charhead)) 
        with (charhead) instance_destroy();
}
else
{
    var i = 0;
    repeat(bodyParts+1)
    {
        if (!collision_line(x+body[i,XOFFSET],y+body[i,YOFFSET],
            x+body[i,XOFFSET]+lengthdir_x(body[i,SPEED],body[i,DIRECTION]),
            y+body[i,YOFFSET]+lengthdir_y(body[i,SPEED],body[i,DIRECTION]),
                obj_wall,false,true)) 
        {
            body[i,XOFFSET]         += lengthdir_x(body[i,SPEED],body[i,DIRECTION]);
            body[i,YOFFSET]         += lengthdir_y(body[i,SPEED],body[i,DIRECTION]);
            body[i,SPINSPEED]       += -(body[i,SPINSPEED]/45); //slow the spinspeed
            body[i,ANGLE]           += body[i,SPINSPEED];       //spin angle using the spinspeed
            body[i,SPEED]           += -(body[i,SPEED]*.02);    // 2% loss of speed per step?
            body[i,ANGLE]            = fixDir(body[i,ANGLE]);   // make sure dir is legal
        }
        else 
        {
            body[i,SPEED]       += -(body[i,SPEED]*.15);              // % loss of speed on collision
            var up = false;
            var down = false;
            var left = false;
            var right = false;

            if (body[i,DIRECTION] != 0)  || (body[i,DIRECTION] != 180)   || (body[i,DIRECTION] != 90) || (body[i,DIRECTION] != 270)
            {
                if (collision_point(x+body[i,XOFFSET]+lengthdir_x(body[i,SPEED],180),y+body[i,YOFFSET]+lengthdir_y(body[i,SPEED],180),obj_wall,false,true))
                    left = true;
                if (collision_point(x+body[i,XOFFSET]+lengthdir_x(body[i,SPEED],90),y+body[i,YOFFSET]+lengthdir_y(body[i,SPEED],90),obj_wall,false,true))
                    up = true;   
                if (collision_point(x+body[i,XOFFSET]+lengthdir_x(body[i,SPEED],270),y+body[i,YOFFSET]+lengthdir_y(body[i,SPEED],270),obj_wall,false,true))
                    down = true;
                if (collision_point(x+body[i,XOFFSET]+lengthdir_x(body[i,SPEED],0),y+body[i,YOFFSET]+lengthdir_y(body[i,SPEED],0),obj_wall,false,true))
                    right = true;   
                if (right) && (left) && (up) && (down) // stuck
                {
                        body[i,SPINSPEED] = 0;
                        body[i,SPEED] = 0;
                      //  body[i,] = c_blue;

                }
                if (body[i,DIRECTION] < 90)     // towards up-right
                {
                        if (right) && (up)              body[i,DIRECTION] += 180;
                        else if (!right) && (up)        body[i,DIRECTION] -= 90;
                        else if (right) && (!up)        body[i,DIRECTION] += 90;
                }
                else if (body[i,DIRECTION] < 180)   //towards up-left
                {
                        if (left) && (up)               body[i,DIRECTION] += 180;
                        else if (!left) && (up)         body[i,DIRECTION] += 90;
                        else if (left) && (!up)         body[i,DIRECTION] -= 90;
                }
                else if (body[i,DIRECTION] < 270)   // towards bottom left
                {
                        if (left) && (down)             body[i,DIRECTION] += 180;
                        else if (!left) && (down)       body[i,DIRECTION] -= 90;
                        else if (left) && (!down)       body[i,DIRECTION] += 90;
                }
                else if (body[i,DIRECTION] < 359) //towards bottom right
                {
                        if (right) && (down)            body[i,DIRECTION] += 180;
                        else if (down) && (!right)      body[i,DIRECTION] += 90;
                        else if (right) && (!down)      body[i,DIRECTION] -= 90;
                }
                body[i,DIRECTION] = fixDir(body[i,DIRECTION]);
            }
            else
            {
                body[i,DIRECTION] = fixDir(body[i,DIRECTION]);
                if (body[i,DIRECTION] == 0)             body[i,DIRECTION] = 181;
                else if (body[i,DIRECTION] == 270)      body[i,DIRECTION] = 79;
                else if (body[i,DIRECTION] == 90)       body[i,DIRECTION] = 269;               
                else if (body[i,DIRECTION] == 180)      body[i,DIRECTION] = 1;
            }
        }
        i++;
    }
}

if (image_alpha <= 0)   instance_destroy();

speed = 0;


