///footStep
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
