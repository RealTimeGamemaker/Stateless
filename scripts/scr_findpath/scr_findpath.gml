var sx = argument0
var sy = argument1
var fx = argument2
var fy = argument3

if !mp_grid_path(global.AI_PATH, global.path, sx, sy, fx, fy, true){
	show_message("NO PATH!")
	return false
}
else{
	path_set_kind(global.path, 1)
	path_set_precision(global.path, 8)
	return true
}