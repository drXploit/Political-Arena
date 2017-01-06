///bloodSpray(x,y,dirMin,dirMax,speed,num);

/*
argument0 = x position
argument1 = y position
argument2 = dirMin
argument3 = dirMax
argument4 = speed
argument5 = num
*/

// Particle emitters
if (part_system_exists(controlBlood.part_bloodspray_sys)) 
{
    part_type_direction(controlBlood.part_bloodspray, argument2, argument3, 0, .004);
    part_type_speed(controlBlood.part_bloodspray, argument4, argument4+3, 0, 0);
    part_emitter_region(controlBlood.part_bloodspray_sys,controlBlood.part_bloodspray_emit,argument0,argument0+2,argument1,argument1+2,ps_shape_rectangle,ps_distr_gaussian);
    part_emitter_burst(controlBlood.part_bloodspray_sys,controlBlood.part_bloodspray_emit, controlBlood.part_bloodspray,argument5);
}

