///makeChristie(body)

argument0[HEAD,SPRITE] = spr_christie_blink;
argument0[HEAD,HP] = -2;

argument0[TORSO,SPRITE] = spr_trumpsuit;
argument0[TORSO,XSCALE] = 1.50;
argument0[TORSO,HP] = -2;

argument0[LEFTARM,SPRITE] = spr_arm;
argument0[LEFTARM,XOFFSET] = -40;
argument0[LEFTARM,YSCALE] = 2;
argument0[LEFTARM,HP] = -2;

argument0[RIGHTARM,SPRITE] = spr_arm;
argument0[RIGHTARM,XOFFSET] = 40;
argument0[RIGHTARM,YSCALE] = 2;
argument0[RIGHTARM,HP] = -2;

argument0[LEFTHAND,SPRITE] = spr_rh_f_medium;
argument0[LEFTHAND,XSCALE] = 0.50;
argument0[RIGHTHAND,SPRITE] = spr_lefthand_medium;
argument0[RIGHTHAND,XSCALE] = 0.75;

argument0[LEFTFOOT,SPRITE] = spr_leftfoot;
argument0[LEFTFOOT,XSCALE] = 2.5;
argument0[LEFTFOOT,YSCALE] = 1.75;
argument0[LEFTFOOT,HP] = -2;

argument0[RIGHTFOOT,SPRITE] = spr_rightfoot;
argument0[RIGHTFOOT,XSCALE] = 2.5;
argument0[RIGHTFOOT,YSCALE] = 1.75;
argument0[RIGHTFOOT,HP] = -2;

showMaga = false;

maxhp = 5000;
hp = maxhp;
xpvalue = 1000;

which = avatar.christie;

return argument0;

