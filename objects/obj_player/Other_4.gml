/// @description Launch GUI Manager on room start
// You can write your code in this editor
layer_create(-500,"GUI Town")

if (!instance_exists(obj_gui_master))
{
	instance_create_layer(-1,-1, "GUI Town", obj_gui_master);
}