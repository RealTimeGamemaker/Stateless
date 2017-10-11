/// @description All that lovely draw code

// gets width of the current view, to be used to always have the health HUD in the same part of
// the upper right hand corner
view_width = view_get_wport(view_current);
view_height = view_get_hport(view_current);
view_center = view_width / 2;
view_middle = view_height / 2;

if (in_main_menu == false)
{
	// sets sprite indexes to 1 (empty heart) for hit point checks
	// only does if not paused because the player object is deactivated on pause
	if (game_is_paused == false)
	{
		heart_1 = (obj_player.hit_points < 4);
		heart_2 = (obj_player.hit_points < 3);
		heart_3 = (obj_player.hit_points < 2);
		heart_4 = (obj_player.hit_points < 1);
		par_message = "Par: " + string(obj_player.states_changed_count) + " / " + string(room_par);
	}

	// draw the heart sprites
	draw_sprite(spr_heart, heart_1, view_width-100, 50);
	draw_sprite(spr_heart, heart_2, view_width-75, 50);
	draw_sprite(spr_heart, heart_3, view_width-50, 50);
	draw_sprite(spr_heart, heart_4, view_width-25, 50);

	draw_set_font(font_par);
	draw_set_halign(fa_right);

	draw_set_color(c_white);
	draw_text_with_shadow(view_width-5, 10, par_message, -2, 2)

	// clock writing code stuff
	if (hours == 0)
	{
		time_message = "";
		time_message += string(minutes) + ":";
		if (real_seconds < 10)
		{
			time_message += "0";
		}
		time_message += string(real_seconds);
	}
	else
	{
		time_message = "";
		time_message += string(hours) + ":" + string(minutes) + ":" 
		if (real_seconds < 10)
		{
			time_message += "0";
		}
		time_message += string(real_seconds);
	}

	draw_set_color(c_white);
	draw_text_with_shadow((view_width / 2), 10, time_message, 2, 2)

	if (popup_countdown > 0)
	{
		draw_set_color(c_yellow);
		draw_set_alpha(0.5);
		draw_rectangle(0, view_middle + 125, view_width, view_middle+175, false) // false means filled
		draw_set_alpha(1);

		draw_set_halign(fa_center);
		draw_set_valign(fa_middle);
		draw_set_font(font_popup_message);
	
		draw_set_color(c_green);
		draw_text_with_shadow(view_center, view_middle+150, popup_message, -2, -2)

		draw_set_halign(fa_left);
		draw_set_valign(fa_top);
	
		if ((temp_timer % room_speed == 0) and (game_is_paused = false))
		{
			popup_countdown--;
		}
	
		if (game_is_paused == false)
		{
			temp_timer++;
		}
	}

	if ((game_is_paused == true) and (in_option_menu == false))
	{
		draw_set_color(c_black);
		draw_set_alpha(0.8);
		draw_rectangle(0, 0, view_width, view_height, 0);
		draw_set_alpha(1);
	
		draw_set_halign(fa_center);

		draw_set_font(font_heading);
		draw_set_color(c_white);
		draw_text_with_shadow(view_center, 50, "Paused", 4, 4);
	
		draw_set_font(font_popup_message);
		draw_set_color(c_purple); // starring Whoopi Goldberg
		draw_text_with_shadow(view_center, 200, "Resume Game", 2, 2);
		draw_text_with_shadow(view_center, 250, "Restart Level", 2, 2);
		draw_text_with_shadow(view_center, 300, "Options", 2, 2);
		draw_text_with_shadow(view_center, 350, "Return To Main Menu", 2, 2);
		draw_text_with_shadow(view_center, 400, "Quit Game", 2, 2);
	
		draw_set_color(c_white);
		draw_rectangle(view_center-200, 200+(pause_selection*50), view_center+200,250+(pause_selection*50), 20);
		draw_set_alpha(1);
		draw_set_halign(fa_left);
	}
}

if((in_main_menu == true) and (in_option_menu = false))
{
	draw_set_halign(fa_center);
	draw_set_font(font_heading);
	draw_set_color(c_white);
	draw_text_with_shadow(view_center, 50, "Stateless", 4, 4);
	
	draw_set_font(font_popup_message);
	draw_set_color(c_purple); // starring Whoopi Goldberg
	draw_text_with_shadow(view_center, 200, "New Game", 2, 2);
	draw_text_with_shadow(view_center, 250, "Options", 2, 2);
	draw_text_with_shadow(view_center, 300, "Quit Game", 2, 2);
	
	draw_set_color(c_black);
	draw_rectangle(view_center-200, 200+(main_menu_selection*50), view_center+200,250+(main_menu_selection*50), 20);
	draw_set_alpha(1);
	draw_set_halign(fa_left);
}

if (in_option_menu == true)
{
	if(game_is_paused == true)
	{
		draw_set_color(c_black);
		draw_set_alpha(0.8);
		draw_rectangle(0, 0, view_width, view_height, 0);
		draw_set_alpha(1);
	}

	draw_set_halign(fa_center);
	draw_set_font(font_heading);
	draw_set_color(c_white);
	draw_text_with_shadow(view_center, 50, "Options", 4, 4);
	
	draw_set_font(font_popup_message);
	draw_set_color(c_purple); // starring Whoopi Goldberg
	draw_text_with_shadow(view_center, 200, "Go Back", 2, 2);
	

	draw_set_color(c_white);

	draw_rectangle(view_center-200, 200+(option_menu_selection*50), view_center+200,250+(option_menu_selection*50), 20);
	draw_set_alpha(1);
	draw_set_halign(fa_left);	
}

if (player_is_dead == true)
{
	draw_set_color(c_black);
	draw_set_alpha(0.8);
	draw_rectangle(0, 0, view_width, view_height, 0);
	draw_set_alpha(1);

	draw_set_halign(fa_center);
	draw_set_font(font_heading);
	draw_set_color(c_white);
	draw_text_with_shadow(view_center, 200, "Oh No! You Died!", 4, 4);
	
	draw_set_font(font_popup_message);
	draw_set_color(c_purple); // starring Whoopi Goldberg
	draw_text_with_shadow(view_center, 384, "Restart Level", 2, 2);
	draw_text_with_shadow(view_center, 434, "Return to Main Menu", 2, 2);
	draw_text_with_shadow(view_center, 484, "Quit Game", 2, 2);
	
	draw_set_color(c_white);
	draw_rectangle(view_center-200, 384+(death_menu_selection*50), view_center+200, 434+(death_menu_selection*50), 20);
	draw_set_alpha(1);
	draw_set_halign(fa_left);
}