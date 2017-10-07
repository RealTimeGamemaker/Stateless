// @param velocity_array A 2d array of velocity values (x, y)
// @param state	The state of the caller (0 if no state)
// @param bounce The percent of the original velocity at which to bounce back upon collision
// @description Modify the caller's x and y values by the given velocity array accounting for state
//				based collision using the state paramater bouncing back if necessary.
// @return None

var velocity_array = argument0;
var state = argument1;
var bounce = argument2;

var tmpfric = frictions[state-1]// Get the friction x,y array for the associated state
var tmpgrav = gravities[state-1]// Get the gravity x,y array for the associated state
var tmpextern_x = 0 
for (i =0; i < ds_list_size(external_forces); i++){//This adds up all the x values for each external force array [x,y]
	var tmpextern = ds_list_find_value(external_forces,i);
	tmpextern_x += tmpextern[0];
}
var tmpextern_y = 0
for (i =0; i < ds_list_size(external_forces); i++){//This adds up all the Y values for each external force array [x,y]
	var tmpextern = ds_list_find_value(external_forces,i);
	tmpextern_y += tmpextern[1];
}

var alpha_x = velocity_array[0] + tmpgrav[0] + tmpfric[1] + tmpextern_x; //adding up all the x forces
var alpha_y = velocity_array[1] + tmpgrav[1] + tmpfric[1] + tmpextern_y; //adding up all the y forces
var alpha = [alpha_x,alpha_y] //storing the x and y forces into a single array





var collidable_type_names = ["obj_collidable_all"];
collidable_type_names[1] = "obj_collidable_45";

if (state == states.solid)
{
	collidable_type_names[2] = "obj_collidable_solid";
}

var collides_x = false;
var i;
for (i = 0; i < array_length_1d(collidable_type_names); i++) {
	if (collidable_type_names[i] != "") {
		if (place_meeting(x + velocity_array[0], y, asset_get_index(collidable_type_names[i]))) {
			collides_x = true;
			while (not place_meeting(x + sign(velocity_array[0]), y, asset_get_index(collidable_type_names[i]))) {
					x += sign(velocity_array[0]);
				}
		}
	}
}

if (collides_x == true) {
		if (bounce > 0) {
			velocity_array[@ 0] = -velocity_array[@ 0] * bounce;
		} else {
			velocity_array[@ 0] = 0;
		}
}
x += velocity_array[0];


var collides_y = false;
var j;
for (j = 0; j < array_length_1d(collidable_type_names); j++) {
	if (place_meeting(x, y + velocity_array[1], asset_get_index(collidable_type_names[j]))) {
		collides_y = true;
		while (not place_meeting(x, y + sign(velocity_array[1]), asset_get_index(collidable_type_names[j]))) {
			y += sign(velocity_array[1]);
		}
	}
}

if (collides_y == true) {
	if (bounce > 0) {
		velocity_array[@ 1] = -velocity_array[@ 1] * bounce;
	} else {
		velocity_array[@ 1] = 0;
	}
}
y += velocity_array[1];
