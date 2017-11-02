/// @description Scoot

x_v = 0
y_v = 0

switch(self.my_d_lol){
	case possible_directions.left:
	x_v = 1
	y_v = 0
	break
	case possible_directions.right:
	x_v = -1
	y_v = 0
	break
	case possible_directions.up:
	x_v = 0
	y_v = 1
	break
	case possible_directions.down:
	x_v = 0
	y_v = -1
	break
}

self.force_v[0] *= x_v
self.force_v[1] *= y_v

// to make sure the player doesn't get blown off the map while in a popup message
if (other.player_cant_take_actions == false)
{
	ds_list_add(other.external_forces,self.force_v)
}
// obj_pushable should be changed to this once the new script is ready