/// @description check for button press
// You can write your code in this editor
if(other.pressing and !pressed_state and !cooldown)
{
	pressed_state = true;
	cooldown= true;
	alarm[0] = room_speed * .3;
	image_index = 1;
	event_user(0);
	audio_play_sound(snd_button, 10, false);
}