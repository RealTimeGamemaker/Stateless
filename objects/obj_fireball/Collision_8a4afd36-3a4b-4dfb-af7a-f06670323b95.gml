/// @description Insert description here
// You can write your code in this editor
if(alarm[0] < 0 and obj_player.player_cant_take_actions=false)
// waits until alarm counts down
{
	obj_player.hit_points--;
	alarm[0] = room_speed * 5;
	//set alarm 0
	if(obj_player.state < 3)
	{
		obj_player.state += 1;
	}
	//state change
}