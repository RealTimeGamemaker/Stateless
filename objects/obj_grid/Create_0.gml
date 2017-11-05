global.AI_PATH = mp_grid_create(0, 0, room_width / 16, room_height / 16, 32, 32)
global.path = path_add()

mp_grid_add_instances(global.AI_PATH, obj_collidable_all, false)

//scr_findpath()
//show_debug_message(string(obj_enemy.x) +" : "+ string(obj_enemy.y) +" - "+ string(obj_player.x) +" : " + string(obj_player.y));