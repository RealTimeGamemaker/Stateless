/// @description Room Pars, Next Rooms

switch (room)
{
	case rm_start:
		next_room = rm_IRMAs_Birthday1;
		break;
	case rm_test2:
		room_par = 15;
		next_room = rm_test;
		break;
	case rm_test:
		room_par = 7;
		next_room = rm_test_slopes;
		break;
	case rm_test_slopes:
		room_par = 69;
		next_room = rm_start;
		break;
	case rm_IRMAs_Birthday1:
		room_par = 0;
		next_room = rm_test2;
		break;
	default:
		room_par = 50;
		next_room = rm_start;
}