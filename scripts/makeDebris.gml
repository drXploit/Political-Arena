///makeDebris(x,y,dirMin,dirMax,speed,num);

/*
argument0 = x position
argument1 = y position
argument2 = dirMin
argument3 = dirMax
argument4 = speed
argument5 = num
*/

// Particle emitters
if (part_system_exists(controlDebris.part_debris_sys)) 
{
part_type_direction(controlDebris.part_debris, argument2, argument3, 0, .004);
part_type_speed(controlDebris.part_debris, argument4, argument4+3, 0, 0);

part_emitter_region(controlDebris.part_debris_sys,controlDebris.part_debris_emit,argument0,argument0+2,argument1,argument1+2,ps_shape_rectangle,ps_distr_gaussian);
part_emitter_burst(controlDebris.part_debris_sys,controlDebris.part_debris_emit, controlDebris.part_debris,argument5);
}

