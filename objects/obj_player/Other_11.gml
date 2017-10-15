/// @description Solid Code

// Get the movement. If niether or both keys are pressed the result is 0
var hinput = keyboard_check(ord("D")) - keyboard_check(ord("A")) 
var j_key = keyboard_check_pressed(vk_space);

// Change the sprite index
if sprite_index != asset_get_index("spr_player_solid") {
	sprite_index = asset_get_index("spr_player_solid");
}

if (j_key and place_meeting(x,y+1,obj_collidable_all)){ // Jump
	velocity[1] = -accelerations[state - 1, 1];
}

if (hinput != 0) { //Checks to see if there is movement
	velocity[0] += hinput * accelerations[state - 1, 0];
	velocity[0] = clamp(velocity[0], -max_velocities[state - 1, 0], max_velocities[state - 1, 0]);
}


if(player_cant_take_actions == false)
{
	move(hinput);
}
