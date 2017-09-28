/// @description Gas Code
// You can write your code in this editor
sprite_index = spr_player_gas;

var hinput = keyboard_check(ord("D")) - keyboard_check(ord("A")) // Get the movement. If niether or both keys are pressed the result is 0
velocity[1] = -jmp_speed/5;

if hinput!=0{ //Checks to see if there is movement

	velocity[0]+=hinput*h_accel; //
	velocity[0] = clamp(velocity[0], -max_hspeed/6, max_hspeed/6 );
}
else{
	velocity[0]= lerp(velocity[0],0,player_frict);
}
move(velocity,state,0);




