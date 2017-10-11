/// @description Toggling Pause Menu

if (game_is_paused == true)
{
	game_is_paused = false;
	instance_activate_all();
	
	// reset selection to the top for the next time the pause menu runs
	pause_selection = 0;
}
else
{
	instance_deactivate_all(true);
	game_is_paused = true;
}