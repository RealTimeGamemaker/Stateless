/// @description Insert description here
// You can write your code in this editor
grabbing_player = false;
let_player_go = false;
player_entering_vent = false;
player_vent_enter_x = 0;
dy = 0;
vent_enter_speed = 64;
collidable_instance = instance_create_layer(x,y,"Instances",obj_collidable_all);

if (image_angle == 0)
{
	dy = 1;
	
	collidable_instance.y += sprite_height;
}

if (image_angle == 180)
{
	dy = -1;

}

collidable_instance.image_yscale = dy * 0.125;
collidable_instance.image_xscale = sprite_width / 64;