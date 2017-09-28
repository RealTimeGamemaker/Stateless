/// @description Liquid code
// You can write your code in this editor
sprite_index = spr_player_liquid;

var hinput = keyboard_check(ord("D")) - keyboard_check(ord("A")) // Get the movement. If niether or both keys are pressed the result is 0
var j_key = keyboard_check_pressed(vk_space);
if !place_meeting(x,y+1,obj_collidable_all){
	velocity[1] += ds_list_find_value(gravities, states.liquid);

}

if hinput!=0{ //Checks to see if there is movement
	var tmpmaxvel = ds_list_find_value(max_velocities, states.liquid)
	var tmpaccel = ds_list_find_value(accelerations, states.liquid)
	velocity[0]+=hinput*tmpaccel[0]; //
	velocity[0] = clamp(velocity[0], -tmpmaxvel[0], tmpmaxvel[0] );
}
else{
	velocity[0]= lerp(velocity[0],0,ds_list_find_value(frictions, states.liquid));
}
move(velocity,state,0);




