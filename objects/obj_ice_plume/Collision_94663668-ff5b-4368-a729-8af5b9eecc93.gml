if(alarm[0] < 0 and obj_player.player_cant_take_actions==false and is_on ==true)
// waits until alarm counts down
{
	obj_player.hit_points--;
    audio_play_sound(snd_hit, 10, false);
	alarm[0] = room_speed * 2;
	//set alarm 0
	if(obj_player.state > 1)
	{
		obj_player.state -= 1;
	}
	//state change
}