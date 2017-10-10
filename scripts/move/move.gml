// @param velocity_array A 2d array of velocity values (x, y)
// @param state	The state of the caller (0 if no state)
// @param bounce The percent of the original velocity at which to bounce back upon collision
// @description Modify the caller's x and y values by the given velocity array accounting for state
//				based collision using the state paramater bouncing back if necessary.
// @return None

var velocity_array = argument0;
var state = argument1;
var bounce = argument2;
var hinput = argument3;
var rotation = argument4;
var tmpinvalidcollides = invalid_collidables[state-1];//gets the current list of invalid collidables

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

var alpha_x = velocity_array[0] + tmpgrav[0] + tmpfric[0] + tmpextern_x; //adding up all the x forces
var alpha_y = velocity_array[1] + tmpgrav[1] + tmpfric[1] + tmpextern_y; //adding up all the y forces

var rotated_alpha_x = (alpha_x * cos(degtorad(rotation))) - (alpha_y * sin(degtorad(rotation)))
var rotated_alpha_y = (alpha_x * sin(degtorad(rotation))) + (alpha_y * cos(degtorad(rotation)))

var alpha = [rotated_alpha_x,rotated_alpha_y] //storing the x and y forces into a single array

show_debug_message(alpha)

var collidable_type_names = ["obj_collidable_all"];
collidable_type_names[1] = "obj_collidable_45";

if (state == states.solid)
{
	collidable_type_names[2] = "obj_collidable_solid";
}



//checking for invalid collidables
for (var k = 0; k < ds_list_size(tmpinvalidcollides); k++){//go through the ds_list of all invalid collidables
	if place_meeting(x, y, asset_get_index(ds_list_find_value(tmpinvalidcollides,k))){
		change_state = false; // if colliding then stop the play from changing state
	}
	else{
		change_state = true; // else the player acts normally
	}
}

var collides_x = false;
var i;
for (i = 0; i < array_length_1d(collidable_type_names); i++) {
	if (collidable_type_names[i] != "") {
		if (place_meeting(x + alpha[0], y, asset_get_index(collidable_type_names[i]))) {
			collides_x = true;
			while (not place_meeting(x + sign(alpha[0]), y, asset_get_index(collidable_type_names[i]))) {
					x += sign(alpha[0]);
			}
		
		}
	}
}

if (collides_x == true) {
    if (bounce > 0) {
        velocity_array[@ 0] = -velocity_array[@ 0] * bounce;
        alpha[0] = -alpha[0] * bounce;
    } else {
        velocity_array[@ 0] = 0;
        alpha[0] = 0;
    }
}
else {
    velocity_array[@ 0] += tmpgrav[0]
    // APPLY ANY ACCELERATIONS (gravity, friction?) to velocity_array[@ 1]
	
}
if (hinput==0){//applies the x friction code. This is a bandaid for now
	tmpfric[0] = 1;
	velocity_array[@ 0] = lerp(velocity_array[0],0,tmpfric[0]);
}
else{
	tmpfric[0] = 0;
}
x += alpha[0];

var collides_y = false;
var j;
for (j = 0; j < array_length_1d(collidable_type_names); j++) {
	if (place_meeting(x, y + alpha[1], asset_get_index(collidable_type_names[j]))) {
		collides_y = true;
		while (not place_meeting(x, y + sign(alpha[1]), asset_get_index(collidable_type_names[j]))) {
			y += sign(alpha[1]);
		}
	}
}

if (collides_y == true) {
    if (bounce > 0) {
        velocity_array[@ 1] = -velocity_array[@ 1] * bounce;
        alpha[1] = -alpha[ 1] * bounce;
    } else {
        velocity_array[@ 1] = 0;
        alpha[1] = 0;
    }
}
else {
    velocity_array[@ 1] += tmpgrav[1]
	//velocity[0]= lerp(velocity[0],0,tmpfrict[0]);
    // APPLY ANY ACCELERATIONS (gravity, friction?) to velocity_array[@ 1]
}
y += alpha[1];
