/// @description Wind Creation

velocity = -.25 * room_speed

enum possible_directions { // determines how the wind blows
	up = 1,//[0,1],
	down = 2,//[0,-1],
	left = 3,//[-1,0],
	right = 4//[1,0]
}

direction = left // this should change immediately upon creation (if needed)
