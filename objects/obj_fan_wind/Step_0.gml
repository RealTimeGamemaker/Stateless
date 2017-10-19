/// @description Wind Movement

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

self.x += self.velocity * x_v
self.y += self.velocity * y_v
