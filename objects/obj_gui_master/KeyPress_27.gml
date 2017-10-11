/// @description Pause & Unpause

if((in_main_menu = false) and (in_option_menu == false) and (player_is_dead == false))
{
	event_user(0);
}

if (in_option_menu == true)
{
	in_option_menu = false;	
}

if (player_is_dead = true)
{
	room_restart();
}