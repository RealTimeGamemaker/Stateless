/// @description check for button press
// You can write your code in this editor
if(other.pressing and !pressed_state)
{
	pressed_state = true;
	image_index = 1;
	event_user(0);
}