/// @description Insert description here
// You can write your code in this editor
other.hit_points-=1;
audio_play_sound(snd_hit, 10, false);
instance_deactivate_object(self);