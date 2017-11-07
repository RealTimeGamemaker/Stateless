/// @description Insert description here
// You can write your code in this editor
var max_length = 10000;
for(var j = 0; j < 4; j++)
{
	if(lasers_on[j,0]==1)
	{
		x_val = x_vals[j]
		y_val = y_vals[j]
		for(var i = 0; i < max_length; i++)
		{
				
			var lx = x + x_val + lengthdir_x(i, j*90);
			var ly = y + y_val + lengthdir_y(i, j*90);
			if(collision_point(lx,ly, obj_player, false,true) and lasers_on[j,1] == 1){
				event_user(0);
			}

			if(collision_point(lx, ly, obj_collidable_all, false, true)){
			    break;
			}
		}
		_an_list[j] = point_direction(x+x_val,y+y_val,lx,ly);
		_dist_list[j] = point_distance(x+x_val,y+y_val,lx,ly);
	}
}

