/// @description Solid Code

// Frame index ranges
// Idle: 0-14
// TransitionToSide: 15-20
// Walking: 21-42
// Jumping: 43-51

// Get the movement. If niether or both keys are pressed the result is 0
var hinput = keyboard_check(ord("D")) - keyboard_check(ord("A")) 
var vinput = keyboard_check(ord("W")) - keyboard_check(ord("S")) 
var j_key = keyboard_check_pressed(vk_space);

// Change the sprite index
if sprite_index != asset_get_index("spr_player_solid") {
	sprite_index = asset_get_index("spr_player_solid");
}

if solid_state == solid_states.jumping and velocity[1] == 0 and place_meeting(x,y+1,obj_collidable_all) {
	solid_state = solid_states.idle;
} else if solid_state == solid_states.transition {
	if image_index >= 19 {
		solid_state = solid_states.walking;
		image_speed = 1;
	}
} else if j_key and place_meeting(x,y+1,obj_collidable_all) {
	solid_state = solid_states.jumping;
	velocity[1] = -accelerations[state - 1, 1];
} else if hinput != 0 {
	if solid_state == solid_states.idle {
		solid_state = solid_states.transition;
		flip = hinput; // make sure we are facing the right way
		image_speed = 3;
	}
} else if hinput == 0 and place_meeting(x,y+1,obj_collidable_all) {
	solid_state = solid_states.idle;
}


if solid_state == solid_states.idle {
	if image_index < 0 or image_index > 14 { // Loop Animation
		image_index = 0;
	}
} else if solid_state == solid_states.walking {
	if image_index < 21 or image_index > 42 { // Loop Animation
		image_index = 21;
	}
	if (hinput != 0) { //Checks to see if there is movement
		flip = hinput; // make sure we are facing the right way
		velocity[0] += hinput * accelerations[state - 1, 0];
		velocity[0] = clamp(velocity[0], -max_velocities[state - 1, 0], max_velocities[state - 1, 0]);
	}
} else if solid_state == solid_states.jumping {
	if image_index < 43 or image_index > 51 { // Loop Animation
		image_index = 43;
	}
	if (hinput != 0) { //Checks to see if there is movement
		velocity[0] += hinput * accelerations[state - 1, 0];
		velocity[0] = clamp(velocity[0], -max_velocities[state - 1, 0], max_velocities[state - 1, 0]);
	}
} else if solid_state == solid_states.transition {
	if image_index < 15 or image_index > 20 { // Loop Animation
		image_index = 15;
	}
}

if (vinput > 0) {
	if (place_meeting(x, y, obj_collidable_ladder)){
		onLadder=true;
		velocity[1] -= vinput * accelerations[state - 1, 1];
		velocity[1] = clamp(velocity[1], -max_velocities[state - 1, 1] / 3, max_velocities[state - 1, 1] / 3);
	}
	else{
		onLadder=false;
	}
}

if(player_cant_take_actions == false)
{
	move(hinput);
}
