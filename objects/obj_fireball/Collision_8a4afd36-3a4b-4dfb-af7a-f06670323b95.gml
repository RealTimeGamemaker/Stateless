/// @description Insert description here
// You can write your code in this editor
if(alarm[0] < 0 and obj_player.player_cant_take_actions=false and obj_player.fireball_touch=false)
// waits until alarm counts down
{
	obj_player.hit_points--;
    audio_play_sound(snd_hit, 10, false);
	obj_player.fireball_touch=true
	obj_player.alarm[1] = room_speed * 2;
	alarm[0] = room_speed * 2;
	//set alarm 0
	if(obj_player.state < 3)
	{
		obj_player.state += 1;
		if(obj_player.state=2)
		{
			audio_play_sound(snd_liquid, 10, false);
		}
		else if(obj_player.state=3)
		{
			audio_play_sound(snd_gas, 10, false);
		}
	}
	//state change
}