/// @description Liquid code
// You can write your code in this editor
sprite_index = spr_player_liquid;

var hinput = keyboard_check(ord("D")) - keyboard_check(ord("A")) // Get the movement. If niether or both keys are pressed the result is 0
var j_key = keyboard_check_pressed(vk_space);
if !place_meeting(x,y+1,obj_collidable_all){
	velocity[1] += grav;
	
}

if hinput!=0{ //Checks to see if there is movement

	velocity[0]+=hinput*h_accel; //
	velocity[0] = clamp(velocity[0], -max_hspeed*1.5, max_hspeed*1.5 );
}
else{
	velocity[0]= lerp(velocity[0],0,player_frict);
}
move(velocity,state,0);



