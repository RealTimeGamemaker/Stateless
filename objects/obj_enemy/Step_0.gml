
if place_meeting(obj_player.x,obj_player.y,obj_smoke_detectors_range){
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
		}
		else{
			xx = path_get_point_x(global.path, pos)
			yy = path_get_point_y(global.path, pos)
		}
		if point_distance(x, y, obj_player.x, obj_player.y) < 200{
			path_add_point(global.path, obj_player.x,obj_player.y,8)
		}
		if x == start_x and y == start_y{
			idle = true
		}
	}
	mp_potential_step(xx, yy, 3, false)

}
image_angle = direction