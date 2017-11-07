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
		next_room = rm_evan;
		break;
	case rm_evan:
		room_par = 66;
		next_room = rm_level_ian;
		break;
	case rm_level_ian:
		room_par = 66;
		next_room = Amalie_Level;
		break;
	default:
		room_par = 50;
		next_room = rm_start;
}