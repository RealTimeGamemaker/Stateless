/// @description Menu Control

if (in_option_menu == true)
{
	switch (option_menu_selection)
	{
		case 0:						// "Go Back"
			in_option_menu = false
			just_left_option_menu = true;
			break;
	}
}

if ((game_is_paused == true) and (in_option_menu == false) and (just_left_option_menu == false))
{
	switch (pause_selection)
	{
		case 0:						// "Resume Game"
			event_user(0);
			break;
		case 1:						// "Restart Level"
			room_restart();
			break;
		case 2:						// "Options"
			in_option_menu = true;
			break;
		case 3:						// "Return To Main Menu"
			room_goto(rm_start);
			break;
		case 4:						// "Quit Game"
			game_end();
			break;
	}
}

if((in_main_menu == true) and (in_option_menu == false) and (just_left_option_menu == false))
{
	switch (main_menu_selection)
	{
		case 0:						// "New Game"
			room_goto(rm_test2);
			break;
		case 1:						// "Options"
			in_option_menu = true;
			break;
		case 2:						// "Quit Game"
			game_end();
			break;
	}
}

if (just_left_option_menu == true)
{
	just_left_option_menu = false;
}

if (player_is_dead == true)
{
	switch (death_menu_selection)
	{
		case 0:						// "Restart Level"
			player_is_dead = false;
			obj_player.player_cant_take_actions = false;
			room_restart();
			break;
		case 1:
			game_restart();			// "Return to Main Menu"
			break;
		case 2:
			game_end();				// "Quit Game"
			break;
	}
}