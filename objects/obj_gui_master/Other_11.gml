/// @description Room Pars, Next Rooms

switch (room)
{
	case rm_start:
		next_room = rm_IRMAs_Birthday1;
		break;
	case rm_IRMAs_Birthday1:
		room_par = 0;
		next_room = rm_IRMAs_Birthday2;
		break;
	case rm_IRMAs_Birthday2:
		room_par = 0;
		next_room = rm_taylor;
		break;
	case rm_taylor:
		room_par = 17;
		next_room = rm_kelby;
		break;
	case rm_kelby:
		room_par = 7;
		next_room = rm_test2;
		break;
	case rm_test2:
		room_par = 15;
		next_room = rm_tyler;
		break;
	case rm_tyler:
		room_par = 7;
		next_room = rm_start;
		break;
	case rm_test_slopes:
		room_par = 66;
		next_room = rm_start;
		break;
	default:
		room_par = 50;
		next_room = rm_start;
}