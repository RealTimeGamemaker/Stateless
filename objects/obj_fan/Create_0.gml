/// @description Creation of Fan

alarm[0] = room_speed * 1 // alarm0 goes off in 1 seconds

wind = ds_list_create() // linked list of wind
ds_list_add(wind, instance_create_layer(self.x, self.y, "Instances", obj_fan_wind))

enum possible_directions { // determines how the wind blows
	up = 1,//[0,1],
	down = 2,//[0,-1],
	left = 3,//[-1,0],
	right = 4//[1,0]
}

self.my_d_lol = possible_directions.left
// change this on a per-fan basis in the actual levels.
// for ease, please leave this as the default value.