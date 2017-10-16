/// @description Timer Update & Popup Setup

time++;
if((time % room_speed == 0) and (game_is_paused == false) 
and (in_main_menu == false) and (player_beat_level == false)
and (display_pausing_popup == false))
{
	real_seconds++;

	if(real_seconds % 60 == 0)
	{
		real_seconds -= 60;
		minutes++;
		
		if(minutes % 60 == 0)
		{
			minutes -= 60;
			hours++;
		}
	}

}

if (display_popup_now == true)
{
	popup_countdown = popup_length;
	display_popup_now = false;
	temp_timer = 1;
}

if ((level_fade_out_alpha < 0.9) and (player_beat_level == true))
{
	level_fade_out_alpha += (0.9 / room_speed);
}

if ((display_par_timer >= 0) and (player_beat_level == true))
{
	display_par_timer -= (1 / room_speed);
}

if ((display_time_timer >= 0) and (player_beat_level == true))
{
	display_time_timer -= (1 / room_speed);
}