///makeBill(body)

argument0[HEAD,SPRITE] = spr_bill_blink;
argument0[HEAD,HP] = -2;

argument0[TORSO,SPRITE] = spr_trumpsuit;
argument0[TORSO,HP] = -2;

argument0[LEFTARM,SPRITE] = spr_arm;
argument0[LEFTARM,HP] = -2;

argument0[RIGHTARM,SPRITE] = spr_arm;
argument0[RIGHTARM,HP] = -2;

argument0[LEFTFOOT,SPRITE] = spr_leftfoot;
argument0[LEFTFOOT,HP] = -2;

argument0[RIGHTFOOT,SPRITE] = spr_rightfoot;
argument0[RIGHTFOOT,HP] = -2;

showMaga = false;
maxhp = 1500;
hp = maxhp;
xpvalue = 100;

which = avatar.bill;

return argument0;
