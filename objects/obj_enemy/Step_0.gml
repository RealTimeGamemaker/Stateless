
if collision_line(obj_player.x - 150,obj_player.y - 32,obj_player.x + 150, obj_player.y - 32, obj_smoke_detectors_range, true, true){
	if(idle == true){
		scr_findpath(x, y, obj_smoke_detectors_range.x, obj_smoke_detectors_range.y)
	}
	idle = false
	xx = path_get_point_x(global.path, pos)
	yy = path_get_point_y(global.path, pos)
	
}
if (idle == false){ 
	if point_distance(x, y, xx, yy) < 6 {
		pos++;
		if pos == path_get_number(global.path){
			scr_findpath(x, y - 16, start_x, start_y);
			pos = 1
			xx = path_get_point_x(global.path, pos)
			yy = path_get_point_y(global.path, pos)
			returning = true
		}
		else{
			xx = path_get_point_x(global.path, pos)
			yy = path_get_point_y(global.path, pos)
		}
		if point_distance(x, y, obj_player.x, obj_player.y) < 225 and returning == false{
			path_add_point(global.path, obj_player.x,obj_player.y,8)
		}
		if x == start_x and y == start_y{
			idle = true
			returning = false
			mov_speed = 6
		}
		else{
			mov_speed = 4
		}
	}
	mp_potential_step(xx, yy, mov_speed, false)

}
image_angle = direction