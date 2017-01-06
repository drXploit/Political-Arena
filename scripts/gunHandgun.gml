canFire = false;
alarm[0] = rate;

var cXReal = attachment.x + lengthdir_x(10,attachment.aDir);
var cYReal = attachment.y + lengthdir_y(10,attachment.aDir);

var cXOffset = irandom_range(-rad,rad);
var cYOffset = irandom_range(-rad,rad);

var tmpDst = point_distance(gunBarrelx,gunBarrely,cXReal+cXOffset,cYReal+cYOffset);
var tmpD = point_direction(gunBarrelx,gunBarrely,cXReal+cXOffset,cYReal+cYOffset);

var tOn = false;
var hOn = false;

// bullet casing
if      (facing==towards.right) part_type_direction(part_casing, 105, 135, 0, 0);
else if (facing==towards.left) part_type_direction(part_casing, 45, 75, 0, 0);
part_emitter_region(part_casing_sys, part_casing_emit, gunBarrelx3-2,gunBarrelx3+2,gunBarrely3+2,gunBarrely3-2, ps_shape_rectangle, ps_distr_linear);
part_emitter_burst(part_casing_sys,part_casing_emit,part_casing,1);

//muzzle flash
muzzleFlash[0] = true;
muzzleFlash[2] = irandom(26);

// bullet trails
var v = irandom_range(tmpDst/5,tmpDst);
var c1 = irandom_range(120,200);
if (indexTrail > numTrail)  indexTrail = 0;
trail[indexTrail,0] = gunBarrelx;
trail[indexTrail,1] = gunBarrely;
trail[indexTrail,2] = gunBarrelx + lengthdir_x(v,tmpD);
trail[indexTrail,3] = gunBarrely + lengthdir_y(v,tmpD);
trail[indexTrail,4] = make_color_rgb(c1,c1,c1);         //color
trail[indexTrail,5] = 1;                                //alpha
trail[indexTrail,6] = choose (1,1,2,2,3,1,4,1);         //width
indexTrail++;

var hTest = collision_point(cXReal+cXOffset,cYReal+cYOffset,obj_char,false,true)

if (hTest)
{
    if (hTest != global.player) && (hTest.hp > 0) 
    {
        tOn = true;
        var testDir          = attachment.aDir;
        var testMax          = testDir + 5;
        var testMin          = testDir - 5;
        var testDirRev       = testDir - 180;

        testDir = fixDir(testDir);
        testMax = fixDir(testMax);
        testMin = fixDir(testMin);
        testDirRev = fixDir(testDirRev);

        hTest.firstTendancy = testDir;

        hTest.hp -= damage;
        if (hTest.hp <= 0)
        {
            hTest.hp = 0;

            if (testDir >  140) && (testDir < 200) 
            {
                if ((cYReal+cYOffset) < hTest.y)
                {
                    hTest.body[RIGHTARM, HP]        = 100;
                    hTest.body[RIGHTARM, SPEED]     = 0;
                    hTest.body[RIGHTARM, SPINSPEED] = 0;

                    hTest.body[RIGHTHAND, HP]        = 100;
                    hTest.body[RIGHTHAND, SPEED]     = 0;
                    hTest.body[RIGHTHAND, SPINSPEED] = 2.5;
                }
                else 
                {
                    hTest.body[RIGHTFOOT, HP]        = 100;
                    hTest.body[RIGHTFOOT, SPEED]     = 0;
                    hTest.body[RIGHTFOOT, SPINSPEED] = 0;
                }
            }
            else if ((testDir < 20) && (testDir > 0)) || ((testDir < 359) && (testDir > 340)) 
            {
                if ((cYReal+cYOffset) < hTest.y)//hTest.body[TORSO,)
                {
                    hTest.hp = 0;
                    hTest.body = stableParts(hTest.body);
                    hTest.body[LEFTARM, HP]          = 100;
                    hTest.body[LEFTARM, SPEED]       = 8;
                    hTest.body[LEFTARM, SPINSPEED]   = 0;
                    hTest.body[LEFTHAND, HP]         = 100;
                    hTest.body[LEFTHAND, SPEED]      = 9;
                    hTest.body[LEFTHAND, SPINSPEED]  = choose(-1,1);
                }
                else 
                {
                    hTest.body[LEFTFOOT, HP]        = 100;
                    hTest.body[LEFTFOOT, SPEED]     = 0;
                    hTest.body[LEFTFOOT, SPINSPEED] = 0;
                }
            }
            bloodSpray(cXReal+cXOffset, cYReal+cYOffset,testDirRev,testDirRev,5, 25);   //gush out to player
            bloodSpray(cXReal+cXOffset, cYReal+cYOffset,testMin,   testMax,   10,25);   // out back
            repeat(2) 
            {
             blood = instance_create(cXReal+cXOffset, cYReal+cYOffset, obj_blood);
             blood.direction    = testDir;
             blood.image_angle  = testDir;
             blood.speed        *= 1.2;
             blood.image_xscale *= 0.7;
             blood.image_yscale *= 2.0;
            }
        }
        else
        {
            bloodSpray(cXReal+cXOffset,cYReal+cYOffset,testMin,testMax,10,6);
            blood = instance_create(cXReal+cXOffset, cYReal+cYOffset, obj_blood);
            blood.direction    = testDir;
            blood.image_angle  = testDir;
            blood.speed        *= 1.2;
            blood.image_xscale *= 0.5;
            blood.image_yscale *= 0.5;
        }
        if (hTest.sprite_index != spr_trump_surprise) && (hTest.which == avatar.trump)
        {
                hTest.sprite_index = spr_trump_surprise;
                hTest.mask_index = spr_trumpsuit;
                hTest.image_speed = 0.08;
        }
    }
}

hTest = -1;

hTest = collision_point(cXReal+cXOffset,cYReal+cYOffset,obj_charhead,false,true)

if (hTest)
{
    if (hTest != global.player.charhead) && (hTest.parent.hp > 0) 
    {
        hOn = true;
        var testDir          = attachment.aDir;
        var testMax          = testDir + 5;
        var testMin          = testDir - 5;
        var testDirRev       = testDir - 180;

        testDir = fixDir(testDir);
        testMax = fixDir(testMax);
        testMin = fixDir(testMin);
        testDirRev = fixDir(testDirRev);

        hTest.parent.firstTendancy = testDir;
        hTest.parent.hp -= (damage*1.5);

        if (hTest.parent.hp <= 0)
        {
            hTest.parent.hp = 0;
            hTest.parent.body = stableParts(hTest.parent.body);
            hTest.parent.body[HEAD,SPEED] += 8;
            hTest.parent.body[HEAD,SPINSPEED] = choose(-1,1);
            hTest.parent.body[RIGHTHAND,SPINSPEED] = choose(-2.0,2.0);
            hTest.parent.body[LEFTHAND,SPINSPEED] = choose(-2.0,2.0);
            hTest.parent.body[LEFTFOOT,SPINSPEED] = choose(-1.0,1.0);
            hTest.parent.body[RIGHTFOOT,SPINSPEED] = choose(-1.0,1.0);
            hTest.parent.body[HEADWEAR,SPEED] += 4;
            hTest.parent.body[HEADWEAR,SPINSPEED] = choose(-4,4);
            bloodSpray(cXReal+cXOffset, cYReal+cYOffset, testMin, testMax, 10, 30);
      //      effect_create_above(ef_spark, cXReal+cXOffset, cYReal+cYOffset, 2, c_red);
            blood = instance_create(cXReal+cXOffset, cYReal+cYOffset, obj_blood);
            blood.direction = testDir;
            blood.image_angle = testDir;
            blood.image_xscale *= 2;
            blood.image_yscale *= 0.7;
        }
        else
        {
                var tmpSpinMod = 5;
                if      (testDir > 270)&& (testDir < 320)  hTest.parent.body[HEAD,ANGLE] -= tmpSpinMod;
                else if (testDir <= 270)&& (testDir > 220)  hTest.parent.body[HEAD,ANGLE] += tmpSpinMod;

                else if (testDir >  90)&& (testDir < 140)  hTest.parent.body[HEAD,ANGLE] += tmpSpinMod;
                else if (testDir <=  90)&& (testDir > 40)   hTest.parent.body[HEAD,ANGLE] -= tmpSpinMod;

                hTest.parent.body[HEAD, ANGLE] = fixDir(hTest.parent.body[HEAD, ANGLE]);

                if (hTest.parent.body[HEAD, ANGLE] > 25) && (hTest.parent.body[HEAD, ANGLE] < 180)       hTest.parent.body[HEAD,ANGLE] = 25;
                else if (hTest.parent.body[HEAD, ANGLE] < 330) && (hTest.parent.body[HEAD, ANGLE] >= 180)  hTest.parent.body[HEAD,ANGLE] = 330;

            bloodSpray(cXReal+cXOffset,cYReal+cYOffset,testMin,testMax,5,6);
        }

        if (hTest.parent.sprite_index != spr_trump_surprise) && (hTest.parent.which == avatar.trump)
        {
                hTest.parent.sprite_index = spr_trump_surprise;
                hTest.parent.mask_index = spr_trumpsuit;
                hTest.parent.image_speed = 0.08;
        }
    }
}
hTest = -1;
if (!hOn) && (!tOn)
{
    hTest = collision_point(cXReal+cXOffset,cYReal+cYOffset,obj_wall,false,true)
    if (hTest) 
    {
        dirDebris(tmpD,cXReal+cXOffset,cYReal+cYOffset,irandom_range(1,3));
        if (hTest.hp != -100)
        {
            hTest.hp -= damage;
         //   effect_create_above(ef_spark,cXReal+cXOffset,cYReal+cYOffset,2,c_white);
            if (hTest.hp < 0) 
            {
           //     effect_create_above(ef_firework,hTest.x,hTest.y,2,c_fuchsia);
                with (hTest) 
                {
                    instance_destroy();
                }
            }                  
        }
    }
}

