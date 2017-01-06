///drawStatePlayer

//torso
draw_sprite_ext(body[TORSO,SPRITE],     0,          x+body[TORSO,XOFFSET],      y+body[TORSO,YOFFSET],                          body[TORSO,XSCALE],     body[TORSO,YSCALE],     body[TORSO,ANGLE],      body[TORSO,IMAGE_BLEND],    image_alpha);

//feet
draw_sprite_ext(body[LEFTFOOT,SPRITE],  0,          x+body[LEFTFOOT,XOFFSET],   (y+body[LEFTFOOT,YOFFSET])-leftFootPosition,    body[LEFTFOOT,XSCALE],  body[LEFTFOOT,YSCALE],  body[LEFTFOOT,ANGLE],   body[LEFTFOOT,IMAGE_BLEND], image_alpha);
draw_sprite_ext(body[RIGHTFOOT,SPRITE], 0,          x+body[RIGHTFOOT,XOFFSET],  (y+body[RIGHTFOOT,YOFFSET])-rightFootPosition,  body[RIGHTFOOT,XSCALE], body[RIGHTFOOT,YSCALE], body[RIGHTFOOT,ANGLE],  body[RIGHTFOOT,IMAGE_BLEND],image_alpha);

//head
draw_sprite_ext(sprite_index,           image_index,x+body[HEAD,XOFFSET],       y+body[HEAD,YOFFSET],                           body[HEAD,XSCALE],      body[HEAD,YSCALE],      body[HEAD,ANGLE],       body[HEAD,IMAGE_BLEND],     image_alpha);

//arms
draw_sprite_ext(body[LEFTARM,SPRITE],    0,         x+body[LEFTARM,XOFFSET],    y+body[LEFTARM,YOFFSET],                        body[LEFTARM,XSCALE],   body[LEFTARM,YSCALE],   body[LEFTARM,ANGLE],    body[LEFTARM,IMAGE_BLEND],  image_alpha);
draw_sprite_ext(body[RIGHTARM,SPRITE],   0,         x+body[RIGHTARM,XOFFSET],   y+body[RIGHTARM,YOFFSET],                       body[RIGHTARM,XSCALE],  body[RIGHTARM,YSCALE],  body[RIGHTARM,ANGLE],   body[RIGHTARM,IMAGE_BLEND], image_alpha);

draw_sprite_ext(gun.sprite_index,gun.image_index, gun.x,gun.y, gun.image_xscale, gun.image_yscale, gun.image_angle, gun.image_blend, gun.image_alpha);


