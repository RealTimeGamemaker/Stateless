/// @description Insert description here
// You can write your code in this editor
i = 0;
while(i < ds_list_size(iceballs))
{
	instance = ds_list_find_value(iceballs, i)
	// Orbital motion
	instance.Angle += instance.rot_speed;
	if(instance.Angle >= 360)
	{
		instance.Angle -= 360;
	}
	// Update position
	instance.x = lengthdir_x(instance.orbit, instance.Angle) + instance.Center_X;
	instance.y = lengthdir_y(instance.orbit, instance.Angle) + instance.Center_Y;
	i++;
}