/// @description Gas Code

// Frame index ranges
// Float: 0-2
// Moving: 4-6

// Get the movement. If niether or both keys are pressed the result is 0
var hinput = keyboard_check(ord("D")) - keyboard_check(ord("A"))

// Change the sprite index
if sprite_index != asset_get_index("spr_player_gas") {
	sprite_index = asset_get_index("spr_player_gas");
}

if (hinput != 0) {
	gas_state = gas_states.moving;
} else {
	gas_state = gas_states.float;
}

velocity[1] = accelerations[state - 1, 1];

if (gas_state == gas_states.moving) { //Checks to see if there is movement
	if image_index > 7 or image_index < 4 { // Loop Animation
			image_index = 4;
	}
	if hinput != 0 { // if we are going to continue moving horizontally
		flip = hinput; // make sure we are facing the right way
		velocity[0] += hinput * accelerations[0]; 
		velocity[0] = clamp(velocity[0], -max_velocities[state - 1, 0], max_velocities[state - 1, 0]);
	}
} else if (gas_state == gas_states.float) {
	if image_index > 3 or image_index < 0 { // Loop Animation
			image_index = 0;
	}
}


if(player_cant_take_actions == false)
{
	move(hinput);
}
