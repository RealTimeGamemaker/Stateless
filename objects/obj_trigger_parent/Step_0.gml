/// @description Insert description here
// You can write your code in this editor
if (temp_timer > 0)
{
	ticks++
	if (ticks % room_speed == 0)
	{
		temp_timer -= 1;
	}

	if (temp_timer == 0)
	{
		can_be_triggered = true;
	}
}

if (place_meeting(x, y, obj_player) == true)
{
	if (can_be_triggered == true)
	{
		can_be_triggered = false;

		if (can_be_retriggered == true)
		{
		temp_timer = retrigger_delay;
		ticks = 0;
		}	
	}	
}