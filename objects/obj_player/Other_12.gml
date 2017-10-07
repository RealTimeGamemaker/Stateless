/// @description Liquid State

var hinput = keyboard_check(ord("D")) - keyboard_check(ord("A"))
var tmpaccel = accelerations[state-1];
var tmpgrav = gravities[state-1];
var tmpmaxvel = max_velocities[state-1];
var tmpfrict = frictions[state-1];
if sprite_index != asset_get_index("spr_player_liquid") {
	sprite_index = asset_get_index("spr_player_liquid");
}

// Frame index ranges
// Idle: 0-150
// Moving: 151-165
// Falling: 166-180
// Landing: 181-185

// ------- ANIMATION STATE SWITCHING ---------
if liquid_state == liquid_states.landing { // if we are landing, we don't want to be doing anything else
	if image_index >= 184 { // if we are at the end of the landing animation
		liquid_state = liquid_states.idle;
	}
}
else if velocity[1] == 0 { // if we are not moving vertically
	if liquid_state == liquid_states.falling { // if we were just falling
		liquid_state = liquid_states.landing;
	}
	else if velocity[0] != 0 or hinput != 0 { // if we are (or want to start) moving horizontally
		liquid_state = liquid_states.moving;
	}
	else { // Otherwise we're just sitting still
		liquid_state = liquid_states.idle;
	}
}
else { // if we are moving vertically (it must be down since liquid can't jump)
	liquid_state = liquid_states.falling;
}


// ---------- STATE SPECIFIC CODE -----------
if liquid_state == liquid_states.idle {
	if image_index > 150 {
		image_index = 0;
	}
} else if liquid_state == liquid_states.moving {
	if image_index > 165 or image_index < 151 {
		image_index = 151;
	}
	
	if hinput != 0 { // if we are going to continue moving horizontally
		flip = hinput; // make sure we are facing the right way
		velocity[0] += hinput * tmpaccel[0];
		velocity[0] = clamp(velocity[0], -tmpmaxvel[0], tmpmaxvel[0] );
	}
} else if liquid_state == liquid_states.falling {
	if image_index > 180 or image_index < 166 {
		image_index = 166;
	}
	velocity[0] = 0;
} else if liquid_state == liquid_states.landing {
	if image_index < 181 {
		image_index = 181;
	}
} else if liquid_state == liquid_states.top_slope {
	// Code to handle top slope state
} else if liquid_state == liquid_states.bot_slope {
	// Code to handle bottom slope state
}




move(velocity,state,0,hinput);
