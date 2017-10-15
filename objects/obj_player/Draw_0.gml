/// @description Draw Override

image_angle = 0;

if (place_meeting(x, y + 1, obj_collidable_45) and state != states.gas) {
	image_angle = -45; //change to access the obj_collidable create
}

// This overrides the default draw logic so that we can include the 'flip' that denotes which way the player is facing
draw_sprite_ext(sprite_index, image_index, x, ceil(y), image_xscale * flip, image_yscale, image_angle, image_blend, image_alpha);
