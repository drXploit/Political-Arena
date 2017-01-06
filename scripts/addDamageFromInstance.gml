///addDamageFromInstance(inst,inst2)
if (argument0 != global.player) {
    if (instance_exists(argument0)) 
    {

        if (argument0.hp > 0) {
            if (argument0.sprite_index != spr_trump_hurt) {
                    argument0.sprite_index = spr_trump_hurt;
                    argument0.mask_index = spr_trumpsuit;
            }
            if (instance_exists(argument1))
            {
                if (argument1.whoHit != argument0.id) {
                    argument1.whoHit = argument0.id;
//                    scr_blood(argument1.x,argument1.y,2,5);
                    argument0.hp-=argument1.damage;
                    if (argument1.critDamage>0)
                      argument0.text=floatText(argument0.text,string(argument1.damage),argument0.x,argument0.y+argument0.body[HEAD,YOFFSET]-25,font_vinegar_12,c_yellow);
                    else
                      argument0.text=floatText(argument0.text,string(argument1.damage),argument0.x,argument0.y+argument0.body[HEAD,YOFFSET]-25,font_vinegar_12,c_white);
                    argument0.firstTendancy = argument1.firstDir;
                    if (argument0.hp<0) argument0.hp = 0;
                    with (argument1) {
                        var tmpAng = direction;
                        tmpAng += random_range(-15,15);
                        if (tmpAng < 0) tmpAng += 359;
                        else if (tmpAng > 359) tmpAng -= 359;
                        direction = tmpAng;
                    }
                    argument0.vspeed += (argument1.vspeed/50);
                    argument0.hspeed += (argument1.hspeed/50);
                }
            }
        }
        argument0.image_speed = 0.16;
    }
}



