///makeHillary(body)

argument0[HEAD,SPRITE] = spr_hillary_blink;
argument0[HEAD,HP] = -2;

argument0[TORSO,SPRITE] = spr_pantsuit;
argument0[TORSO,HP] = -2;

argument0[LEFTARM,SPRITE] = spr_pantsuit_arm;
argument0[LEFTARM,HP] = -2;

argument0[RIGHTARM,SPRITE] = spr_pantsuit_arm;
argument0[RIGHTARM,HP] = -2;

argument0[LEFTFOOT,SPRITE] = spr_pantsuit_leftfoot;
argument0[LEFTFOOT,HP] = -2;

argument0[RIGHTFOOT,SPRITE] = spr_pantsuit_rightfoot;
argument0[RIGHTFOOT,HP] = -2;

showMaga = false;

maxhp = 1000;
hp = maxhp;
xpvalue = 500;

which = avatar.hillary;

return argument0;

