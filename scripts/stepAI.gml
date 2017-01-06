///stepAI

// code to walk around maybe?
leftArm.depth = torso.depth - 1;
rightArm.depth = torso.depth - 1;

if (direction >= 90) && (direction <= 270)
{
    if (head.image_xscale > 0) 
        head.image_xscale *= -1;
}
else
{
    if (head.image_xscale < 0) 
        head.image_xscale *= -1;
}
//////////////////////////////////////////////////////
if (distance_to_point(clickX, clickY) < 20) 
{
    speed = 0;
    clickX = 0;
    clickY = 0;
}
if (alarm[0] == -1) alarm[0] = room_speed*3;

