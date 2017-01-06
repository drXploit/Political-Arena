///towardsDir(detail,dir)

switch(argument0)
{
    case false:
        if (argument1 == 180) return towards.left;
        else if (argument1 == 90) return towards.up;
        else if (argument1 == 270) return towards.down;
        else if (argument1 == 0) return towards.right;
        else return 0;
        break;
    case true:
        if (argument1 < 45) return towards.rightup;
        else if (argument1 < 90) return towards.upright;
        else if (argument1 < 135) return towards.upleft;
        else if (argument1 < 180) return towards.leftup;
        else if (argument1 < 225) return towards.leftdown;
        else if (argument1 < 270) return towards.downleft;
        else if (argument1 < 315) return towards.downright;
        else if (argument1 < 359) return towards.rightdown;
        else return 0;
        break;
    default:
        return 0;
        break;
}


