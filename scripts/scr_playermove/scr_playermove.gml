//This script handles all player movement 
if !place_meeting(x,y+1,obj_wall){ // checks to see if the player is in the air
	v_speed += grav; // Applies gravity to the player
	if jump_num == 1 && j_key{ // Checks to see if we can do a second jump
		v_speed = -jmp_speed;//applies jump force
		jump_num-=1;//ensures that jump_num == 0 so we can not do aa triple jump
	}
}
else{ // The player is on the ground
	jump_num = jump_max;//resets our jumps when we hit the ground
	if (j_key){ // The player presses the jump key
		v_speed = -jmp_speed //Jump force is applied to the vertical movement
		jump_num-=1;//decreases our jump after we jump
	}
	
}
if place_meeting(x,y+v_speed,obj_wall){// Ground collision
	while !place_meeting(x,y+sign(v_speed),obj_wall){
		y+=sign(v_speed);
	}
	v_speed = 0

}
if hinput!=0{ //Checks to see if there is movement

	h_speed+=hinput*accel; //applies horizontal movement to h_speed
	h_speed = clamp(h_speed, -max_hspeed, max_hspeed );// clamps the value so that the h_speed doesnt continually accelerate
}
else{ // We are not moving
	h_speed = lerp(h_speed,0,player_frict); // Applies friction. Can be adjusted to create more slide
}

x = x + h_speed; //Update the players x movement
y = y + v_speed; //Update the players y movement