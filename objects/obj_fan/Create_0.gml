/// @description Creation of Fan

alarm[0] = room_speed * 1 // alarm0 goes off in 1 seconds

wind = ds_list_create() // linked list of wind
ds_list_add(wind, instance_create_layer(self.x, self.y, "Instances", obj_fan_wind))
