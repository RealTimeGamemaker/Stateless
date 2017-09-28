/// @description Wind Creation

ds_list_add(wind, instance_create_layer(self.x, self.y, "instances", obj_wind)) // h a l p
//ds_list_delete(wind, 0) // destroys first item in list
alarm[0] = room_speed * 1