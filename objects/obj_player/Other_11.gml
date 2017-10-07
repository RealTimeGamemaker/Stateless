/// @description Solid Code
// You can write your code in this editor
sprite_index = spr_player_solid;

var hinput = keyboard_check(ord("D")) - keyboard_check(ord("A")) // Get the movement. If niether or both keys are pressed the result is 0
var j_key = keyboard_check_pressed(vk_space);
var tmpaccel = accelerations[state-1];
var tmpgrav = gravities[state-1];
var tmpmaxvel = max_velocities[state-1];
var tmpfrict = frictions[state-1];
/*if !place_meeting(x,y+1,obj_collidable_all){
	velocity[1] += tmpgrav[1]
	
}*/

if (j_key and place_meeting(x,y+1,obj_collidable_all)){
	velocity[1] = -tmpaccel[1];
		
}


if hinput!=0{ //Checks to see if there is movement
	velocity[0]+=hinput*tmpaccel[0]; //
	velocity[0] = clamp(velocity[0], -tmpmaxvel[0], tmpmaxvel[0] );
}
/*else{
	velocity[0]= lerp(velocity[0],0,tmpfrict[0]);
}*/
move(velocity,state,0);






