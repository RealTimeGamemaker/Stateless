
if(alarm[0] < 0)
{
	if (obj_player.hit_points != 4){
		obj_player.hit_points++;
	}
	instance_destroy()
	alarm[0] = room_speed * 5;
}