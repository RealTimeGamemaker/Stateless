var sx = obj_enemy.x
var sy = obj_enemy.y
var fx = obj_player.x
var fy = obj_player.y - 16

if !mp_grid_path(global.AI_PATH, global.path, sx, sy, fx, fy, true){
	show_message("NO PATH!")
	return false
}
else{
	path_set_kind(global.path, 1)
	path_set_precision(global.path, 8)
	return true
}