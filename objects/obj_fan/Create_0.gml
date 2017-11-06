/// @description Creation of Fan

alarm[0] = room_speed * 1 // alarm0 goes off in 1 seconds

wind = ds_list_create() // linked list of wind
//r = random_range(-20,50)
//ds_list_add(wind, instance_create_layer(self.x + r, self.y + r, "Instances", obj_fan_wind))

enum possible_directions { // determines how the wind blows
	up = 1,//[0,1],
	down = 2,//[0,-1],
	left = 3,//[-1,0],
	right = 4//[1,0]
}

self.my_d_lol = possible_directions.left
// change this on a per-fan basis in the actual levels.
// for ease, please leave this as the default value.

//val = ds_list_find_value(wind, 0)
//val.my_d_lol = self.my_d_lol
// first wind is g2g
fan_is_disabled = false;