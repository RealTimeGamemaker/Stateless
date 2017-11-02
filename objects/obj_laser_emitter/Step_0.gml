/// @description Insert description here
// You can write your code in this editor
var max_length = 10000
for(var i = 0; i < array_length_2d(lasers_on,state_lasers); i++)
{
	if(lasers_on[state_lasers,i]==1)
	{
		x_val = x_vals[i+(image_angle/90)%4]
		y_val = y_vals[i+(image_angle/90)%4]
		for(var i = 0; i < max_length; i++)
		{
		    var lx = x + x_val + lengthdir_x(i, image_angle);
		    var ly = y + y_val + lengthdir_y(i, image_angle);

		    if(collision_point(lx, ly, obj_collidable_all, false, true)){
		        break;
			}
		}
		_an_list[i] = point_direction(x+x_val,y+y_val,lx,ly);
		_dist_list[i] = point_distance(x+x_val,y+y_val,lx,ly);
	}
}

