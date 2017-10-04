/// @description Insert description here
// You can write your code in this editor

if (display_popup_now == true)
{
	popup_countdown = popup_length;
	display_popup_now = false;
	temp_timer = 1;
}



if (popup_countdown > 0)
{
	view_width = view_get_wport(view_current);
	view_height = view_get_hport(view_current);
	view_center = view_width / 2;
	view_middle = view_height / 2;
	
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_set_font(font_popup_message);
	
	draw_set_color(c_black);
	draw_text(view_center-2,view_middle+148,popup_message);

	draw_set_color(c_green);
	draw_text(view_center,view_middle+150,popup_message);
	
	if (temp_timer % room_speed == 0)
	{
		popup_countdown--;
	}
	temp_timer++;
}