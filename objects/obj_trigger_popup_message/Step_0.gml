/// @description Insert description here
// You can write your code in this editor
if (place_meeting(x, y, obj_player) == true)
{
	if (can_be_triggered == true)
	{
		display_on_screen_popup(popup_message, popup_length);
	}
}
event_inherited();