if(alarm[0] < 0)
// waits until alarm counts down
{
	hit_points--;
	alarm[0] = room_speed * 5;
	//set alarm 0
	if(obj_player.state > 1)
	{
		obj_player.state -= 1;
	}
	//state change
}