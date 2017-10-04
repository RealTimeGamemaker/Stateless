// @param velocity_array A 2d array of velocity values (x, y)
// @param state	The state of the caller (0 if no state)
// @param bounce The percent of the original velocity at which to bounce back upon collision
// @description Modify the caller's x and y values by the given velocity array accounting for state
//				based collision using the state paramater bouncing back if necessary.
// @return None

var velocity_array = argument0;
var state = argument1;
var bounce = argument2;

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
