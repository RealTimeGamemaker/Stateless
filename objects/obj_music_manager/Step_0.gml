if (cur_room != room){
	audio_stop_sound(cur_music)
	cur_room = room
	playing = false
}
if (cur_room == rm_start and playing == false){
	playing = true
	cur_music = snd_titlemusic
	scr_play_music(cur_music)
	//audio_play_sound(snd_titlemusic,0,true)
}
if (cur_room == rm_test2 and playing == false){
	playing = true
	cur_music = snd_allstar
	scr_play_music(cur_music)
	//audio_play_sound(snd_allstar,0,true)
}
