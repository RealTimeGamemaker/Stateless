/// @description liquid switch code
// You can write your code in this editor
if(state!=states.liquid && change_state!=false and player_cant_take_actions==false){
	state=states.liquid;
	states_changed_count++;
}