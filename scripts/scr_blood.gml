///scr_blood(x,y,minspawn,maxspawn)

/*
argument0 = Impact x position
argument1 = Impact y position
argument2 = lower spawn value
argument3 = higher spawn value
*/

// Particle emitters
if (part_system_exists(controlBlood.part_blood_sys)) 
{
    part_emitter_region(controlBlood.part_blood_sys,controlBlood.part_blood_emit,argument0+5,argument0-5,argument1+5,argument1-5,ps_shape_rectangle,ps_distr_gaussian);
    part_emitter_burst(controlBlood.part_blood_sys,controlBlood.part_blood_emit, controlBlood.part_blood,irandom_range(1,4));
}
// Create blood on floor
spawn = irandom_range(argument2, argument3);
for (i=0; i<spawn; i++) instance_create(x+irandom_range(-5,5),y+irandom_range(-5,5),obj_blood);

