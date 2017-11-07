/// @description Button Turning Off Code
// You can write your code in this editor
if (fan_is_disabled==true)
{
	fan_is_disabled=false;
	image_speed = 15;
}
else
{
	fan_is_disabled=true;
	image_speed = 0;
	image_index = 0;
}