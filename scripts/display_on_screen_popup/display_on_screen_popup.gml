/// @description Prints Text To Screen With Shadow
/// @param {string} popup_message message to display
/// @param {boolean} pauses_game whether or not the popup message pauses the game
/// @param {int} popup_length length of time (in seconds) to display popup


if (argument1 == false)
{
	obj_gui_master.display_popup_now = true;
	obj_gui_master.popup_message = argument0;
	obj_gui_master.popup_length = argument2;
}
else
{
	obj_gui_master.display_pausing_popup = true;
	obj_gui_master.popup_message = argument0;
	obj_player.player_cant_take_actions = true;
}