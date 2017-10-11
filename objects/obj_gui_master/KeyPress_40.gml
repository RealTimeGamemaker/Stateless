/// @description Menu Control

if ((game_is_paused == true) and (in_option_menu == false))
{
	pause_selection++;

	// loop around to the top of the menu
	if (pause_selection == 5)
	{
		pause_selection = 0;	
	}
}

if ((in_main_menu == true) and (in_option_menu == false))
{
	main_menu_selection++;

	// loop around to the top of the menu
	if (main_menu_selection == 3)
	{
		main_menu_selection = 0;	
	}
}

if (player_is_dead == true)
{
	death_menu_selection++;

	// loop around to the top of the menu
	if (death_menu_selection == 3)
	{
		death_menu_selection = 0;	
	}
}