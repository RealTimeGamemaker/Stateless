/// @description Collision code
// You can write your code in this editor
if (place_meeting(x, y, obj_player) == true and open_door == true)
{
	if (can_be_triggered == true)
	{
		obj_gui_master.player_beat_level = true;
		obj_player.player_cant_take_actions = true;
	}
}
event_inherited();