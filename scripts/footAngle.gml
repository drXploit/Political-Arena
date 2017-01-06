///footAngle
if (which == avatar.trump)      ||      // donald trump
    (which == avatar.obama)     ||      // barack obama
    (which == avatar.agent)     ||      // secret service agent
    (which == avatar.pence)     ||      // mike pence
    (which == avatar.sanders)   ||      // bernie sanders
    (which == avatar.wolf)      ||      // wolf blitzer
    (which == avatar.biden)     ||      // joe biden
    (which == avatar.bill)      ||      // bill clinton
    (which == avatar.carson)    ||      // ben carson
    (which == avatar.christie)  ||      // chris christie
    (which == avatar.cruz)              // ted cruz
{
    switch (facing) 
    {
        case towards.left:
            body[LEFTFOOT,SPRITE] = spr_rightfoot;
            body[RIGHTFOOT,SPRITE] = spr_rightfoot;
            body[LEFTFOOT,XOFFSET] = -15;
            body[RIGHTFOOT,XOFFSET] = 13;
            break;
        case towards.right:
            body[LEFTFOOT,SPRITE] = spr_leftfoot;
            body[RIGHTFOOT,SPRITE] = spr_leftfoot;
            body[LEFTFOOT,XOFFSET] = -13;
            body[RIGHTFOOT,XOFFSET] = 15;
            break;
        case towards.down:
            body[LEFTFOOT,SPRITE] = spr_leftfoot;
            body[RIGHTFOOT,SPRITE] = spr_rightfoot;
            body[LEFTFOOT,XOFFSET] = -13;
            body[RIGHTFOOT,XOFFSET] = 13;
            break;
        default:
            body[LEFTFOOT,SPRITE] = spr_leftfoot;
            body[RIGHTFOOT,SPRITE] = spr_rightfoot;
            body[LEFTFOOT,XOFFSET] = -14;
            body[RIGHTFOOT,XOFFSET] = 13;
            break;
    }
}
else if (which == avatar.hillary) ||        // hillary clinton
        (which == avatar.michelle) ||       //michelle obama
        (which == avatar.melania)           // melania trump
{
    switch (facing) 
    {
        case towards.left:
            body[LEFTFOOT,SPRITE] = spr_pantsuit_rightfoot;
            body[RIGHTFOOT,SPRITE] = spr_pantsuit_rightfoot;
            body[LEFTFOOT,XOFFSET] = -15;
            body[RIGHTFOOT,XOFFSET] = 13;
            break;
        case towards.right:
            body[LEFTFOOT,SPRITE] = spr_pantsuit_leftfoot;
            body[RIGHTFOOT,SPRITE] = spr_pantsuit_leftfoot;
            body[LEFTFOOT,XOFFSET] = -13;
            body[RIGHTFOOT,XOFFSET] = 15;
            break;
        case towards.down:
            body[LEFTFOOT,SPRITE] = spr_pantsuit_leftfoot;
            body[RIGHTFOOT,SPRITE] = spr_pantsuit_rightfoot;
            body[LEFTFOOT,XOFFSET] = -13;
            body[RIGHTFOOT,XOFFSET] = 13;
            break;
        default:
            body[LEFTFOOT,SPRITE] = spr_pantsuit_leftfoot;
            body[RIGHTFOOT,SPRITE] = spr_pantsuit_rightfoot;
            body[LEFTFOOT,XOFFSET] = -14;
            body[RIGHTFOOT,XOFFSET] = 13;
            break;
    }
}
