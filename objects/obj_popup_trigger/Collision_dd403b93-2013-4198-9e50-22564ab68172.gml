/// @description Insert description here
// You can write your code in this editor


if (has_been_triggered == false)
{
	show_debug_message("TRIGGERRRRREED")
	show_debug_message(popup_message)
	obj_gui_master.display_popup_now = true;
	obj_gui_master.popup_message = popup_message;
	obj_gui_master.popup_length = popup_length;
	has_been_triggered = true;
}