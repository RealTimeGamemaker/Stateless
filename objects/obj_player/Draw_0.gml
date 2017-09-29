/// @description Draw Override

// This overrides the default draw logic so that we can include the 'flip' that denotes which way the player is facing
draw_sprite_ext(sprite_index, image_index, x, ceil(y), image_xscale * flip, image_yscale, 0, image_blend, image_alpha);
