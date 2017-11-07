if(obj_player.state == 1 and obj_player.player_cant_take_actions=false and obj_player.hit_points>0)
{
	obj_player.hit_points = 0;
    audio_play_sound(snd_hit, 10, false);
}