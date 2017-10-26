/// @description Insert description here
// You can write your code in this editor
draw_set_color(c_red)
draw_circle(x,y,16, 0);


var max_length = 600;

for(var i = 0; i < max_length; i++){

    var lx = x + lengthdir_x(i, image_angle);
    var ly = y + lengthdir_y(i, image_angle);

    //if(collision_point(lx, ly, obj_collidable_all, false, true)){
        //break;
    //}

}

draw_line_width(x,y,lx,ly,16);