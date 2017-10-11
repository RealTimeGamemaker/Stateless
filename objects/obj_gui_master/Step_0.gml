/// @description Timer Update & Popup Setup

time++;
if((time % room_speed == 0) and (game_is_paused == false) and (in_main_menu == false))
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