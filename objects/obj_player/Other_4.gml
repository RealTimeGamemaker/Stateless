/// @description Launch GUI Manager & Music Manager on room start
// You can write your code in this editor
layer_create(-500,"GUI & Music Town")

if (!instance_exists(obj_gui_master))
{
	instance_create_layer(-1,-1, "GUI & Music Town", obj_gui_master);
}

if (!instance_exists(obj_music_manager))
{
	instance_create_layer(-2,-2, "GUI & Music Town", obj_music_manager);
}