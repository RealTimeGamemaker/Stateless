/// @description Insert description here
// You can write your code in this editor
draw_self();
for(var i = 0; i < array_length_2d(lasers_on,state_lasers); i++)
{
	if(lasers_on[state_lasers,i]==1)
	{
		x_val = x_vals[i+(image_angle/90)%4]
		y_val = y_vals[i+(image_angle/90)%4]
		draw_sprite_ext(spr_laser, 0, x+x_val, y+y_val, _dist_list[i],2,_an_list[i],-1,1);
	}
}
