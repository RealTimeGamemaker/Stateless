/// @description liquid switch code
// You can write your code in this editor
if(state!=states.liquid && change_state!=false and player_cant_take_actions==false){
	if state == states.gas { // if we were a gas
		velocity[1] = 1; // special code to allow for animation
	}
	
	if (allowed_to_change_states==false)
	{
		if (no_state_change_message_number == 1)
		{
			display_on_screen_popup("Oh I'm sorry dear, I'm not letting you access that part of your programming just yet", true, 0);
			no_state_change_message_number++;
		}
		else if (no_state_change_message_number == 2)
		{
			display_on_screen_popup("IRMA, sweetheart, don't bother yourself with that. You'll get to try that soon enough.", true, 0);
			no_state_change_message_number++;
		}
		else if (no_state_change_message_number == 3)
		{
			display_on_screen_popup("State Changing Disabled", false, 2);
		}
	}
	else
	{
		state=states.liquid;
		states_changed_count++;
	}
}