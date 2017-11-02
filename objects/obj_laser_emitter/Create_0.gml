/// @description Insert description here
// You can write your code in this editor
image_speed=0;
state_lasers=0;
image_index = state_lasers;
image_angle = 0;
_an_list = []
_dist_list = []

lasers_on[0, 0] = 1;
lasers_on[0, 1] = 0;
lasers_on[0, 2] = 0;
lasers_on[0, 3] = 0;

lasers_on[1, 0] = 1;
lasers_on[1, 1] = 0;
lasers_on[1, 2] = 0;
lasers_on[1, 3] = 1;

lasers_on[2, 0] = 1;
lasers_on[2, 1] = 0;
lasers_on[2, 2] = 1;
lasers_on[2, 3] = 0;

lasers_on[3, 0] = 1;
lasers_on[3, 1] = 0;
lasers_on[3, 2] = 1;
lasers_on[3, 3] = 1;

lasers_on[4, 0] = 1;
lasers_on[4, 1] = 1;
lasers_on[4, 2] = 1;
lasers_on[4, 3] = 1;


x_vals=[32,0,-32,0]
y_vals=[0,-32,0,32]