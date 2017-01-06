///rayCast(startX, startY, endX, endY, target)

//Establish argument variables
var startX = argument0;
var startY = argument1;
var endX = argument2;
var endY = argument3;
var tar = argument4;

//Establish direction and max distance to raycast
var rayLen = 0;
var rayDir = point_direction(startX, startY, endX, endY);
var rayMax = point_distance(startX, startY, endX, endY);

//Begin raycast loop
while(rayLen < rayMax) {
    var castX = startX + lengthdir_x(rayLen, rayDir);
    var castY = startY + lengthdir_y(rayLen,rayDir);
    if(collision_point(castX, castY, tar, false, false)) {
        hitpoint[0]= castX;
        hitpoint[1] = castY;
        return hitpoint;
    }
    rayLen += 1.5;
}
//If the raycast hit nothing, return the mouse coords
hitpoint[0] = mouse_x;
hitpoint[1] = mouse_y;
return hitpoint;   
