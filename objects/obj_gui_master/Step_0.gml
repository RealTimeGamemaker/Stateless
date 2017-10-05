/// @description Insert description here
// You can write your code in this editor
time++;
if(time % room_speed == 0)
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