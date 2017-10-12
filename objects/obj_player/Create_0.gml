/// @description Insert description here
// You can write your code in this editor
velocity = [0,0]
max_hspeed = 6
grav = 1
jmp_speed = 16
h_accel = 1
player_frict = 1
rotation_degrees = 0
flip = 1; // which way the player is facing
//Makes the acceleration list for each state, index 0 is debug
accelerations = ds_list_create()
var solid_accelerations = [h_accel,jmp_speed];
var liquid_accelerations = [h_accel, 0];
var gas_accelerations = [h_accel,jmp_speed/5];
ds_list_add(accelerations, 0);
ds_list_add(accelerations, solid_accelerations);
ds_list_add(accelerations, liquid_accelerations);
ds_list_add(accelerations, gas_accelerations);
//Makes the Max velocity list for each state, index 0 is debug, 1 solid, ect.
max_velocities = ds_list_create();
var solid_max_velocity = [6,16];
var liquid_max_velocity = [7.5,0];
var gas_max_velocity = [max_hspeed/6,jmp_speed/5];
ds_list_add(max_velocities,0);
ds_list_add(max_velocities,solid_max_velocity);
ds_list_add(max_velocities,liquid_max_velocity);
ds_list_add(max_velocities,gas_max_velocity);
//Makes the Friction lists for each state, index 0 is debug, 1 solid, ect.
frictions = ds_list_create();
ds_list_add(frictions, 0);
ds_list_add(frictions, 1);
ds_list_add(frictions, 1);
ds_list_add(frictions, 1);
//Makes the gravity lists for each state, index 0 is debug, 1 solid, ect.
gravities = ds_list_create();
ds_list_add(gravities, 0);
ds_list_add(gravities, 1);
ds_list_add(gravities, 1);
ds_list_add(gravities, 1);
pressing = false;
states_changed_count=0;

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

enum actions{
	standing,
	running,
	jumping
}
action=actions.standing;
hit_points = 4;