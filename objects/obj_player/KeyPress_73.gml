/// @description Button Press
// You can write your code in this editor
if(!pressing and state == states.solid)
{
	pressing = true;
	alarm[0] = room_speed * .1;
}