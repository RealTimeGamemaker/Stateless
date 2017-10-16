// @param hinput for friction (FIX?)
// @return None

var hinput = argument0;

// ################# INITIALIZATION ###################

var external_x = 0
var external_y = 0
for (var i = 0; i < ds_list_size(external_forces); i++){ //This adds up all the values for each external force array [x,y]
	var external_force = ds_list_find_value(external_forces, i)
	external_x += external_force[0];
	external_y += external_force[1];
}

var alpha_x = velocity[0] + gravities[state-1, 0] + external_x; //adding up all the x forces
var alpha_y = velocity[1] + gravities[state-1, 1] + external_y; //adding up all the y forces
// took friction out (+ frictions[state-1, 1]) because it was causing problems

var alpha;
alpha[0] = (alpha_x * cos(degtorad(image_angle))) - (alpha_y * sin(degtorad(image_angle)))
alpha[1] = (alpha_x * sin(degtorad(image_angle))) + (alpha_y * cos(degtorad(image_angle)))


var collidable_type_names = ["obj_collidable_all", "obj_collidable_45"];
if (state == states.solid)
{
	collidable_type_names[2] = "obj_collidable_solid";
}



// ################# STATE CHANGE COLLISION ###################

for (var i = 0; i < array_length_1d(collidable_type_names); i++) { // for every collidable that this state can collide with
	while (place_meeting(x, y, asset_get_index(collidable_type_names[i]))) { // if we collide with it after we move
		var o = instance_place(x, y, asset_get_index(collidable_type_names[i]))
		if(collidable_type_names[i] == "obj_collidable_45")
		{
			show_debug_message("Squarp");
		}
		
		var normal_x = x - (o.x + (o.sprite_width / 2))
		var normal_y = (y - (o.sprite_height / 2)) - (o.y + (o.sprite_height / 2))
		var magnitude = sqrt(sqr(normal_x) + sqr(normal_y))
		normal_x /= o.sprite_width;
		normal_y /= o.sprite_height;
		
		while (place_meeting(x, y, o)) {
			if (abs(normal_x) > abs(normal_y)) {
				x += normal_x; // move slowly until we are 1 pixel away from touching it
			} else {
				y += normal_y; // move slowly until we are 1 pixel away from touching it
			}
		}
	}
}



// ################# HORIZONTAL MOVEMENT ###################

var collides_x = false;
for (var i = 0; i < array_length_1d(collidable_type_names); i++) { // for every collidable that this state can collide with
	if (place_meeting(x + alpha[0], y, asset_get_index(collidable_type_names[i]))) { // if we collide with it after we move
		while (not place_meeting(x + sign(alpha[0]), y, asset_get_index(collidable_type_names[i]))) {
			x += sign(alpha[0]); // move slowly until we are 1 pixel away from touching it
		}
		
		collides_x = true;
	}
}

if (hinput == 0) { // applies the x friction code. This is a bandaid for now
	frictions[state-1, 0] = 1;
	velocity[0] = lerp(velocity[0], 0, frictions[state-1, 0]);
} else {
	frictions[state-1, 0] = 0;
}

if collides_x {
	velocity[0] = 0;
	alpha[0] = 0;
} else {
	// APPLY ANY ACCELERATIONS to velocity[0]
	velocity[0] += gravities[state - 1, 0]
}

x += alpha[0];



// ################# VERTICAL MOVEMENT ###################

var collides_y = false;
for (var j = 0; j < array_length_1d(collidable_type_names); j++) { // for every collidable that this state can collide with
	if (place_meeting(x, y + alpha[1], asset_get_index(collidable_type_names[j]))) { // if we collide with it after we move
		while (not place_meeting(x, y + sign(alpha[1]), asset_get_index(collidable_type_names[j]))) {
			y += sign(alpha[1]); // move slowly until we are 1 pixel away from touching it
		}
		
		collides_y = true;
	}
}

if collides_y {
    velocity[1] = 0;
    alpha[1] = 0;
} else {
	// APPLY ANY ACCELERATIONS to velocity[1]
	velocity[1] += gravities[state-1, 1];
}

y += alpha[1];



// ################# CLEAN UP ###################

ds_list_clear(external_forces)
