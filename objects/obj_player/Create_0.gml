/// @description Create Player

velocity = [0,0]
max_hspeed = 6
grav = 1
jmp_speed = 16
h_accel = 1
player_frict = 1
rotation_degrees = 0;
flip = 1; // which way the player is facing
//Makes the acceleration list for each state
accelerations = [[1,16],[1,0],[1,jmp_speed/5]]
//Makes the Max velocity list for each state
max_velocities = [[6,16],[7.5,0],[max_hspeed/6,jmp_speed/6]]
//Makes the Friction lists for each state
frictions = [[0,0],[0,0],[0,0]]
//Makes the gravity lists for each state
gravities = [[0,1],[0,1],[0,1]]
//External Forces Array  starts out with 0 values
external_forces = ds_list_create();
// create the ds_lists of invalid collidables
solid_invalid_collidables = ds_list_create()
liquid_invalid_collidables = ds_list_create()
gas_invalid_collidables = ds_list_create()
invalid_collidables = [solid_invalid_collidables,liquid_invalid_collidables,gas_invalid_collidables]//puts the invalid collidables for each state in an array
pressing = false;
states_changed_count=0;
rotation = 0;
change_state = true; // variable used for invalid state change
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