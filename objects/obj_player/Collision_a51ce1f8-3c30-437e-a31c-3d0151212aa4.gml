if(alarm[0] < 0)
// waits until alarm counts down
{
	hit_points--;
	alarm[0] = room_speed * 5;
	//set alarm 0
	if(state < 3)
	{
		state += 1;
	}
	//state change
}

