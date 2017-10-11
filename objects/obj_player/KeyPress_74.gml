/// @description solid switch code
// You can write your code in this editor
if(state!=states.solid and change_state!=false and player_cant_take_actions==false){
	state=states.solid;
	states_changed_count++;
}