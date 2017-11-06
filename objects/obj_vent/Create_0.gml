/// @description Insert description here
// You can write your code in this editor
player_entering_vent = false;
player_vent_enter_y = 0;
dx = 0;
vent_enter_speed = 256;
collidable_instance = instance_create_layer(x,y,"Instances",obj_collidable_all);
dx_entering = 0;
grabbed_x = 0;

if (image_angle == 0)
{
	dx = 1;
	collidable_instance.x += sprite_width;
}

if (image_angle == 180)
{
	dx = -1;
}

collidable_instance.image_xscale = dx * 0.125;
collidable_instance.image_yscale = sprite_height / 64;