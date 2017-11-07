/// @description Update

if (not started) {
	path_start(path, spd, path_action_restart, false);
	started = true;
}

delta_x = x - prev_x;
delta_y = y - prev_y;
prev_x = x;
prev_y = y;

collidable.x += delta_x;
collidable.y += delta_y;

if (place_meeting(x, y - 5, obj_player)) {
	obj_player.x += delta_x;
	obj_player.y += delta_y;
}
