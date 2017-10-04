/// @description Insert description here
// You can write your code in this editor

// gets width of the current view, to be used to always have the health HUD in the same part of
// the upper right hand corner
view_width = view_get_wport(view_current);

// sets sprite indexes to 1 (empty battery) for hit point checks
heart_4 = (obj_player.hit_points < 4)
heart_3 = (obj_player.hit_points < 3)
heart_2 = (obj_player.hit_points < 2)
heart_1 = (obj_player.hit_points < 1)

// draw the battery sprites
draw_sprite(spr_battery, heart_1, view_width-100, 50)
draw_sprite(spr_battery, heart_2, view_width-75, 50)
draw_sprite(spr_battery, heart_3, view_width-50, 50)
draw_sprite(spr_battery, heart_4, view_width-25, 50)

draw_set_font(font_par);
draw_set_halign(fa_right);
par_message = "Par: " + string(obj_player.states_changed_count) + " / " + string(room_par);

// the black text is the drop shadow
draw_set_color(c_black);
draw_text((view_width-7), 12, par_message);
// the white text is the score
draw_set_color(c_white);
draw_text((view_width-5), 10, par_message);

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
draw_text((view_width / 2)+2,12, time_message)
draw_set_color(c_white);
draw_text((view_width / 2),10, time_message)