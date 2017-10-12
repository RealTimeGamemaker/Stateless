/// @description Menu Control

if ((game_is_paused) == true and (in_option_menu == false))
{
	pause_selection--;

	// loop around to the bottom of the menu
	if (pause_selection == -1)
	{
		pause_selection = 4;	
	}
}

if ((in_main_menu == true) and(in_option_menu == false))
{
	main_menu_selection--;

	// loop around to the bottom of the menu
	if (main_menu_selection == -1)
	{
		main_menu_selection = 2;	
	}
}

if (player_is_dead == true)
{
	death_menu_selection--;

	// loop around to the bottom of the menu
	if (death_menu_selection == -1)
	{
		death_menu_selection = 2;	
	}
}