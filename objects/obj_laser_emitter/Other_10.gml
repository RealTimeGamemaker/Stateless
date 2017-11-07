/// @description Player hit by laser
// You can write your code in this editor
if(alarm[0] < 0 and obj_player.player_cant_take_actions=false)
{
	alarm[0] = room_speed * .75;
	obj_player.hit_points--;
	obj_player.hit_points--;
}