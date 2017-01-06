///stepStateAlive
var tmpFacing = facing;
checkCollision();

if (distance_to_point(mouse_x,mouse_y) < 50) showHealth = true;
else showHealth = false;

if (alarm[0] == -1) 
    alarm[0] = room_speed*random_range(3,4); // ai
if (alarm[1] == -1) 
    alarm[1] = room_speed*random_range(2,4); //blink
    
if      (direction  > 113) && (direction <247) facing = towards.left;
else if (direction >= 67)  && (direction<=113) facing = towards.down;
else if (direction >= 247) && (direction<=303) facing = towards.down;
else if (direction  < 67)  || (direction >303) facing = towards.right;

if (speed != 0)
{
    //    footStep();
    if (hp > 0) {
        if (!nowMoving) {
            nowMoving = true;
            if (hspeed > 0) footMoving = 1;
            else if (hspeed < 0) footMoving = 0;
        }

        if (footMoving = 0) 
        {
            if (leftFootMax>10)&&(leftFootPosition<10) leftFootPosition++;
            else if (leftFootMax<=10) && (leftFootPosition>0) leftFootPosition--;
            if (leftFootMax <= 0) {
                footMoving = 1;
                leftFootMax = 20;
                leftFootPosition = 0;
            }
            else leftFootMax--;
        }
        else {
            if (rightFootMax>10) && (rightFootPosition<10) rightFootPosition++;
            else if(rightFootMax<=10) && (rightFootPosition>0) rightFootPosition--
            if (rightFootMax<=0) {
                footMoving = 0;
                rightFootMax = 20;
                rightFootPosition = 0;
            }
            else rightFootMax--;
        }
    }
}
if (speed == 0)
    footReset();

if (tmpFacing != facing)
    footAngle();

if (facing == towards.right) {
    if (image_xscale < 0) image_xscale *= -1;
    if (body[LEFTHAND,YSCALE] < 0) body[LEFTHAND,YSCALE] *= -1;
    if (body[RIGHTHAND,YSCALE] < 0) body[RIGHTHAND,YSCALE] *= -1;
}
if (facing == towards.left) {
    if (image_xscale > 0) image_xscale *= -1;
    if (body[LEFTHAND,YSCALE] > 0) body[LEFTHAND,YSCALE] *= -1;
    if (body[RIGHTHAND,YSCALE] > 0) body[RIGHTHAND,YSCALE] *= -1;
}

if (instance_exists(charhead))
{
    if (charhead.hp > 0) showMaga = true;
    else showMaga = false;
}
else showMaga = false;


if (which == avatar.christie) aiChristie();


