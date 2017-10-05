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