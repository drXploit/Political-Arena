///dirDebris(dir,x,y,num);

// Particle emitters
//argument0 -= 180;
//argument0 = fixDir(argument0);

var tmp = towardsDir(1,argument0);

switch (tmp)
{
        case towards.right:
            tmp = towards.left;
            break;
        case towards.rightup:
            tmp = towards.leftup;
            break;
        case towards.rightdown:
            tmp = towards.leftdown;
            break;
        case towards.left:
            tmp = towards.right;
            break;
        case towards.leftup:
            tmp = towards.rightup;
            break;
        case towards.leftdown:
            tmp = towards.rightdown;
            break;
        case towards.up:
            tmp = towards.down;
            break;
        case towards.upleft:
            tmp = towards.downleft;
            break;
        case towards.upright:
            tmp = towards.downright;
            break;
        case towards.down:
            tmp = towards.up;
            break;
        case towards.downleft:
            tmp = towards.upright;
            break;
        case towards.downright:
            tmp = towards.upleft;
            break;
        default:
            tmp = towards.down;
            break;
}


if (part_system_exists(controlDebris.part_debris_sys)) 
{

    part_type_gravity(controlDebris.part_debris, 0.25, 270);

    switch(tmp)
    {
        case towards.right:
            part_type_direction(controlDebris.part_debris, 0, 0, 0, 0);
            part_type_speed(controlDebris.part_debris, 1.5, 2.5, 0, 0);
        break;
        case towards.rightup:
            part_type_direction(controlDebris.part_debris, 1, 45, 0, 0);
            part_type_speed(controlDebris.part_debris, 2.0, 2.6, 0, 0);
            part_type_gravity(controlDebris.part_debris, 0.15, 270);
        break;
        case towards.rightdown:
            part_type_direction(controlDebris.part_debris, 315, 359, 0, 0);
            part_type_speed(controlDebris.part_debris, 1.0, 1.5, 0, 0);
        break;
        //
        case towards.left:
            part_type_direction(controlDebris.part_debris, 180, 180, 0, 0);
            part_type_speed(controlDebris.part_debris, 1.5, 2.5, 0, 0);
        break;
        case towards.leftup:
            part_type_direction(controlDebris.part_debris, 135, 179, 0, 0);
            part_type_speed(controlDebris.part_debris, 2.0, 2.6, 0, 0);
            part_type_gravity(controlDebris.part_debris, 0.15, 270);
        break;
        case towards.leftdown:
            part_type_direction(controlDebris.part_debris, 181, 225, 0, 0);
            part_type_speed(controlDebris.part_debris, 1.0, 1.5, 0, 0);
        break;
        //
        case towards.up:
            part_type_direction(controlDebris.part_debris, 90, 90, 0, 0);
            part_type_speed(controlDebris.part_debris, 2, 2.5, 0, 0);
            part_type_gravity(controlDebris.part_debris, 0.15, 270);
        break;
        case towards.upleft:
            part_type_direction(controlDebris.part_debris, 91, 135, 0, 0);
            part_type_speed(controlDebris.part_debris, 2, 2.5, 0, 0);
            part_type_gravity(controlDebris.part_debris, 0.15, 270);
        break;
        case towards.upright:
            part_type_direction(controlDebris.part_debris, 45, 89, 0, 0);
            part_type_speed(controlDebris.part_debris, 2, 2.5, 0, 0);
            part_type_gravity(controlDebris.part_debris, 0.15, 270);
        break;
        // 
        case towards.down:
            part_type_direction(controlDebris.part_debris, 270, 270, 0, 0);
            part_type_speed(controlDebris.part_debris, 1, 1.3, 0, 0);
        break;
        case towards.downleft:
            part_type_direction(controlDebris.part_debris, 225, 269, 0, 0);
            part_type_speed(controlDebris.part_debris, 1, 1.5, 0, 0);
        break;
        case towards.downright:
            part_type_direction(controlDebris.part_debris, 271, 315, 0, 0);
            part_type_speed(controlDebris.part_debris, 1, 1.5, 0, 0);
        break;
    }

    part_emitter_region(controlDebris.part_debris_sys,controlDebris.part_debris_emit,argument1,argument1+2,argument2,argument2+2,ps_shape_rectangle,ps_distr_gaussian);
    part_emitter_burst(controlDebris.part_debris_sys,controlDebris.part_debris_emit, controlDebris.part_debris,argument3);

}

