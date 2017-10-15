/// @description Insert description here
// You can write your code in this editor
if(other.state = states.liquid){
	if(slope_side = slope_sides.top){
		other.liquid_state = liquid_states.top_slope;
		show_debug_message("top!");
	}
	else if(slope_side = slope_sides.bottom){
		other.liquid_state = liquid_states.bot_slope;
		show_debug_message("bottom!");
	}
}