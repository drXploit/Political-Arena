///limbsPlayer

//update torso position
torso.x = x + torso.xOffset;
torso.y = y + torso.yOffset;

//head
head.x = x + head.xOffset;
head.y = y + head.yOffset;

// headwear
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
//feet
leftFoot.x = x + leftFoot.xOffset;
leftFoot.y = y + leftFoot.yOffset;
rightFoot.x = x + rightFoot.xOffset;
rightFoot.y = y + rightFoot.yOffset;
// arms
leftArm.x = x + leftArm.xOffset;
rightArm.x = x + rightArm.xOffset;
//


/*
if (mouse_y > gun.y) {
    if (mouse_x > gun.x) {  // LOWER RIGHT
        leftArm.y = y + leftArm.yOffset + 10;
        rightArm.y = y + rightArm.yOffset + 0;
    }
    else {                  // LOWER LEFT
        leftArm.y = y + leftArm.yOffset + 0;
        rightArm.y = y + rightArm.yOffset + 10;
    }
}
else {
    if (mouse_x > gun.x) {  // UPPER RIGHT
        leftArm.y = y + leftArm.yOffset    + 2;
        rightArm.y = y + rightArm.yOffset  + 15;    
    }
    else {                  //UPPER LEFT
        leftArm.y = y + leftArm.yOffset    + 15;
        rightArm.y = y + rightArm.yOffset  + 2;
    }
}  
*/
// arms need to go towards the gun
leftArm.image_angle = point_direction(leftArm.x,leftArm.y,gun.x,gun.y);
rightArm.image_angle = point_direction(rightArm.x,rightArm.y,gun.x,gun.y);

