///limbsAI

//update torso position
if (instance_exists(torso))
{
    torso.x = x + torso.xOffset;
    torso.y = y + torso.yOffset;
}
//head
if (instance_exists(head))
{
    head.x = x + head.xOffset;
    head.y = y + head.yOffset;
}
//headwear
if (instance_exists(headwear))
{
    if (vspeed > 0) {
        headwear.x = head.x + headwear.xOffset;
        headwear.lerpX = headwear.x;
        headwear.lerpY = head.y + headwear.yOffset;
    }
    else {
        headwear.x = head.x + headwear.xOffset;
        headwear.lerpX = headwear.x;
        headwear.y = head.y + headwear.yOffset;
        headwear.lerpY = headwear.y;
    }
}
//feet
if (instance_exists(leftFoot))
{
    leftFoot.x = x + leftFoot.xOffset;
    leftFoot.y = y + leftFoot.yOffset;
}
if (instance_exists(rightFoot))
{
    rightFoot.x = x + rightFoot.xOffset;
    rightFoot.y = y + rightFoot.yOffset;
}
// arms
if (instance_exists(leftArm)) && (instance_exists(rightArm))
{
    leftArm.image_xscale = 1.20;
    rightArm.image_xscale = 1.20;
    leftArm.x = x + leftArm.xOffset + 9;
    rightArm.x = x + rightArm.xOffset;
    rightArm.x = x + rightArm.xOffset - 9;
    leftArm.y = y + leftArm.yOffset + 5;
    rightArm.y = y + rightArm.yOffset + 5;
    leftArm.image_angle = direction;
    rightArm.image_angle = direction;
}

