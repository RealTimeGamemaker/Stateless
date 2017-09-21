/// @description Insert description here
// You can write your code in this editor
velocity = [0,0]
max_hspeed = 6
grav = 1
jmp_speed = 16
h_accel = 1
player_frict = 1

states_changed_count=0;

enum states{
	debug = 0,
	solid = 1,
	liquid = 2,
	gas = 3
	
}
state = states.solid;

enum actions{
	standing,
	running,
	jumping
}
action=actions.standing;

