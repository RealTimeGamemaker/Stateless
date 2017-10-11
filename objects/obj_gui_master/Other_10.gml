/// @description Toggling Pause Menu
// You can write your code in this editor
if (game_is_paused == true)
{
	game_is_paused = false;
	instance_activate_all();
}
else
{
	instance_deactivate_all(true);
	game_is_paused = true;
}