/// @description Wind Creation

r = random_range(-40,40)

ds_list_add(wind, instance_create_layer(self.x + r, self.y + r + 20, "instances", obj_fan_wind))
//ds_list_delete(wind, 0) // destroys first item in list
// IF THERE'S AN ISSUE LOOK ^^^ HERE ^^^ FIRST
alarm[0] = room_speed * .25 // four time a second i think

// not optimized, but we're gonna make sure all the wind is going the same way the fan is:
for (i=0; i<ds_list_size(wind); i++){
	val = ds_list_find_value(wind, i)//ds_list_size(wind) - 1);
	val.my_d_lol = self.my_d_lol
}

show_debug_message(ds_list_size(wind))

if ds_list_size(wind) > 50 {
	for (i=0; i<25; i++) {
		ds_list_delete(wind,i)
	}
}