/// @description Draw Override

rotation = 0;

if (place_meeting(x, y + 1, obj_collidable_45)) {
	rotation = -45; //change to access the obj_collidable create
}

// This overrides the default draw logic so that we can include the 'flip' that denotes which way the player is facing
draw_sprite_ext(sprite_index, image_index, x, ceil(y), image_xscale * flip, image_yscale, rotation, image_blend, image_alpha);
