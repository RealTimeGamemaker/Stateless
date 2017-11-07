/// @description solid switch code
// You can write your code in this editor
if(state!=states.solid and change_state!=false and player_cant_take_actions==false){
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
		if(place_meeting(x,y,obj_collidable_solid)==true)
		{
			display_on_screen_popup("You can't become solid in this place",false,2);
		}
		else
		{
			state=states.solid;
			audio_play_sound(snd_solid, 10, false);
			states_changed_count++;
		}
	}
}