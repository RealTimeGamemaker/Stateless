/// @description Insert description here
// You can write your code in this editor
draw_self();
for(var j = 0; j < 4; j++)
{
	x_val = x_vals_2[j]
	y_val = y_vals_2[j]
	if(lasers_on[j,0]==1)
	{
		draw_sprite_ext(spr_laser_diode,0,x+x_val,y+y_val,1,1,j*90,-1,1);
	}
	x_val = x_vals[j]
	y_val = y_vals[j]
	if(lasers_on[j,1]==1)
	{
		draw_sprite_ext(spr_laser, 0, x+x_val, y+y_val, _dist_list[j],2,_an_list[j],-1,1);
	}
}
