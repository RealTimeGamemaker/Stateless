/// @description Insert description here
// You can write your code in this editor
if (place_meeting(x, y, obj_player) == true)
{
	if (can_be_triggered == true)
	{
		obj_gui_master.display_popup_now = true;
		obj_gui_master.popup_message = popup_message;
		obj_gui_master.popup_length = popup_length;
	}
}
event_inherited();