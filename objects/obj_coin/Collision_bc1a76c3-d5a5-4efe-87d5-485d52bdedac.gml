
if(alarm[0] < 0)
{
	/*
	if (obj_player.hit_points != 4){
		obj_player.hit_points++;
	}
	*/
	obj_gui_master.coins += 1
	instance_destroy()
	alarm[0] = room_speed * 5;
	
	
	
}