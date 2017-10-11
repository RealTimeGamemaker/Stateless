/// @description All that lovely draw code
// You can write your code in this editor

// gets width of the current view, to be used to always have the health HUD in the same part of
// the upper right hand corner
view_width = view_get_wport(view_current);

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

// the black text is the drop shadow
draw_set_color(c_black);
draw_text((view_width-7), 12, par_message);
// the white text is the score
draw_set_color(c_white);
draw_text((view_width-5), 10, par_message);


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


draw_set_color(c_black);
draw_text((view_width / 2)+2,12, time_message);
draw_set_color(c_white);
draw_text((view_width / 2),10, time_message);

if (popup_countdown > 0)
{
	view_width = view_get_wport(view_current);
	view_height = view_get_hport(view_current);
	view_center = view_width / 2;
	view_middle = view_height / 2;

	draw_set_color(c_yellow);
	draw_set_alpha(0.5);
	draw_rectangle(0, view_middle + 125, view_width, view_middle+175, false) // false means filled

	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_set_font(font_popup_message);
	
	draw_set_color(c_black);
	draw_text(view_center-2,view_middle+148,popup_message);

	draw_set_color(c_green);
	draw_text(view_center,view_middle+150,popup_message);
	
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
	
	if (temp_timer % room_speed == 0)
	{
		popup_countdown--;
	}
	temp_timer++;
}

if (game_is_paused == true)
{
	view_width = view_get_wport(view_current);
	view_height = view_get_hport(view_current);
	draw_set_color(c_black);
	draw_set_alpha(0.6);
	draw_rectangle(0, 0, view_width, view_height, 0);
}
