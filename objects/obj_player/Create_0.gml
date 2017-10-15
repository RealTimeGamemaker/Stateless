/// @description Create Player

flip = 1; // which way the player is facing
states_changed_count = 0;
change_state = true; // variable used for invalid state change
hit_points = 4;
player_cant_take_actions = false;
pressing = false;

// Movement Variables
velocity[0] = 0;
velocity[1] = 0;

accelerations[0, 0] = 1;
accelerations[0, 1] = 16;
accelerations[1, 0] = 1;
accelerations[1, 1] = 0;
accelerations[2, 0] = 1;
accelerations[2, 1] = -3;

max_velocities[0, 0] = 6;
max_velocities[0, 1] = 16;
max_velocities[1, 0] = 7.5;
max_velocities[1, 1] = 0;
max_velocities[2, 0] = 1;
max_velocities[2, 1] = 3;

frictions[0, 0] = 0;
frictions[0, 1] = 0;
frictions[1, 0] = 0;
frictions[1, 1] = 0;
frictions[2, 0] = 0;
frictions[2, 1] = 0;

gravities[0, 0] = 0;
gravities[0, 1] = 1;
gravities[1, 0] = 0;
gravities[1, 1] = 1;
gravities[2, 0] = 0;
gravities[2, 1] = 1;

external_forces = ds_list_create();


enum states{
	debug = 0,
	solid = 1,
	liquid = 2,
	gas = 3
}
state = states.solid;

enum liquid_states {
	idle = 0,
	moving = 1,
	falling = 2,
	landing = 3,
	top_slope = 4,
	bot_slope = 5
}
liquid_state = liquid_states.idle;
