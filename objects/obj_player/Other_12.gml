/// @description Liquid State

var hinput = keyboard_check(ord("D")) - keyboard_check(ord("A"))

// ------- ANIMATION STATE SWITCHING ---------
if liquid_state == liquid_states.landing { // if we are landing, we don't want to be doing anything else
	if image_index == 3 { // if we are at the end of the landing animation
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
	if sprite_index != asset_get_index("spr_player_liquid_idle") { // change the sprite if it hasn't been already and reset to the first frame
		sprite_index = asset_get_index("spr_player_liquid_idle");
		image_index = 0;
	}
} else if liquid_state == liquid_states.moving {
	if sprite_index != asset_get_index("spr_player_liquid_move") { // change the sprite if it hasn't been already and reset to the first frame
		sprite_index = asset_get_index("spr_player_liquid_move");
		image_index = 0;
	}
	
	if hinput != 0 { // if we are going to continue moving horizontally
		flip = hinput; // make sure we are facing the right way
		var tmpmaxvel = ds_list_find_value(max_velocities, state)
		var tmpaccel = ds_list_find_value(accelerations, state) // keep this ish in another variable like velocity is. There should be max_vel, max_acc, vel, acc, grav, extern, friction
		velocity[0] += hinput * tmpaccel[0];
		velocity[0] = clamp(velocity[0], -tmpmaxvel[0], tmpmaxvel[0] );
	} else { // LERP to zero horizontal velocity by a value of 'friction'
		velocity[0]= lerp(velocity[0],0,ds_list_find_value(frictions, state));
	}
} else if liquid_state == liquid_states.falling {
	if sprite_index != asset_get_index("spr_player_liquid_falling") { // change the sprite if it hasn't been already and reset to the first frame
		sprite_index = asset_get_index("spr_player_liquid_falling");
		image_index = 0;
	}
} else if liquid_state == liquid_states.landing {
	if sprite_index != asset_get_index("spr_player_liquid_landing") { // change the sprite if it hasn't been already and reset to the first frame
		sprite_index = asset_get_index("spr_player_liquid_landing");
		image_index = 0;
	}
} else if liquid_state == liquid_states.top_slope {
	// Code to handle top slope state
} else if liquid_state == liquid_states.bot_slope {
	// Code to handle bottom slope state
}


// ------------- MOVE ---------------
// THIS SHOULD BE IN MOVE.GML (all accelerations, velocities, and external forces should be handled by that script)
if !place_meeting(x, y+1, obj_collidable_all) { // we want to check all valid collidables, not just this one (move script)
	velocity[1] += ds_list_find_value(gravities, state);
}

move(velocity,state,0);
