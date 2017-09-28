/// @description Insert description here
// You can write your code in this editor

view_width = view_get_wport(view_current);
heart_4 = (obj_player.hit_points < 4)
heart_3 = (obj_player.hit_points < 3)
heart_2 = (obj_player.hit_points < 2)
heart_1 = (obj_player.hit_points < 1)

draw_sprite(spr_battery, heart_1, view_width-100, 40)
draw_sprite(spr_battery, heart_2, view_width-75, 40)
draw_sprite(spr_battery, heart_3, view_width-50, 40)
draw_sprite(spr_battery, heart_4, view_width-25, 40)