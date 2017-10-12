/// @description gas switch code
// You can write your code in this editor
if(state!=states.gas && change_state!=false && player_cant_take_actions==false){
	state=states.gas;
	states_changed_count++;
}