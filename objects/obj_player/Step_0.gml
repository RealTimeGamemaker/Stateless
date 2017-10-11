/// @description handles all states and changes
// You can write your code in this editor
//This script handles all player movement as well as user input
event_user(state);

clamp(hit_points, 0, 4)

//switching states code


//FOR NOW DISABLED CODE BECAUSE OF RAPID STATE SWITCH BUG, CURRENT FIX IS KEY DOWN EVENTS INDIVIDUALLY


/*if keyboard_check(ord("J")) && state!=states.solid {
	state=states.solid;
	states_changed_count++;
}
else if keyboard_check(ord("K")) && state!=states.liquid {
	state=states.liquid;
	states_changed_count++;
}
else if keyboard_check(ord("L")) && state!=states.gas {
	state=states.gas;
	states_changed_count++;
}*/



if keyboard_check(vk_f12){
	game_end()
}

if hit_points <= 0 {
	game_restart();
}


//expiramental code
//show_debug_message(string(states_changed_count));
//draw_set_alpha(1);
//draw_set_color(c_black);
//draw_text(200,200,string(states_changed_count));