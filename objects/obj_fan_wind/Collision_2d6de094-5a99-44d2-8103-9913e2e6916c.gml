/// @description push

x_v = 0
y_v = 0

switch(self.my_d_lol){
	case possible_directions.left:
	x_v = -1
	y_v = 0
	break
	case possible_directions.right:
	x_v = 1
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

other.velocity[0] += .25 * room_speed * x_v
other.velocity[1] += .25 * room_speed * y_v
// reduces speed of target
