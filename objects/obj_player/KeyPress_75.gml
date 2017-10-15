/// @description liquid switch code
// You can write your code in this editor
if(state!=states.liquid && change_state!=false and player_cant_take_actions==false){
	if state == states.gas { // if we were a gas
		velocity[1] = 1; // special code to allow for animation
	}
	
	state=states.liquid;
	states_changed_count++;
}