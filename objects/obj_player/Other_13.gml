/// @description Gas Code
// You can write your code in this editor
sprite_index = spr_player_gas;

var hinput = keyboard_check(ord("D")) - keyboard_check(ord("A")) // Get the movement. If niether or both keys are pressed the result is 0
var tmpaccel = ds_list_find_value(accelerations, states.gas);
velocity[1] = -tmpaccel[1];

if hinput!=0{ //Checks to see if there is movement
	var tmpaccel = ds_list_find_value(accelerations, states.gas);
	var tmpmaxvel = ds_list_find_value(max_velocities, states.gas);
	velocity[0]+=hinput*tmpaccel[0]; //
	velocity[0] = clamp(velocity[0], -tmpmaxvel[0], tmpmaxvel[0] );
}
else{
	velocity[0]= lerp(velocity[0],0,ds_list_find_value(frictions, states.gas));
}
move(velocity,state,0);




