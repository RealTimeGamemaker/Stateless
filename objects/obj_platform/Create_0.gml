/// @description Initialize

collidable = instance_create_layer(x - (sprite_width / 2), y - sprite_height, "collidables", obj_collidable_all);

collidable.image_xscale = sprite_width / collidable.sprite_width;
collidable.image_yscale = sprite_height / collidable.sprite_height;

prev_x = x;
prev_y = y;

sht_right_and_back = path_add()
path_add_point(sht_right_and_back, x, y, 100);
path_add_point(sht_right_and_back, x + 100, y, 100);
path_add_point(sht_right_and_back, x, y, 100);

med_right_and_back = path_add()
path_add_point(med_right_and_back, x, y, 100);
path_add_point(med_right_and_back, x + 300, y, 100);
path_add_point(med_right_and_back, x, y, 100);

lng_right_and_back = path_add()
path_add_point(lng_right_and_back, x, y, 100);
path_add_point(lng_right_and_back, x + 600, y, 100);
path_add_point(lng_right_and_back, x, y, 100);

sht_up_and_back = path_add()
path_add_point(sht_up_and_back, x, y, 100);
path_add_point(sht_up_and_back, x, y - 100, 100);
path_add_point(sht_up_and_back, x, y, 100);

med_up_and_back = path_add()
path_add_point(med_up_and_back, x, y, 100);
path_add_point(med_up_and_back, x, y - 100, 100);
path_add_point(med_up_and_back, x, y, 100);

lng_up_and_back = path_add()
path_add_point(lng_up_and_back, x, y, 100);
path_add_point(lng_up_and_back, x, y - 100, 100);
path_add_point(lng_up_and_back, x, y, 100);

sht_circle_down_clockwise = path_add()
sz = 2
path_add_point(sht_circle_down_clockwise, x, y, 100);
path_add_point(sht_circle_down_clockwise, x + (35 * sz), y + (15 * sz), 100);
path_add_point(sht_circle_down_clockwise, x + (50 * sz), y + (50 * sz), 100);
path_add_point(sht_circle_down_clockwise, x + (35 * sz), y + (85 * sz), 100);
path_add_point(sht_circle_down_clockwise, x, y + (100 * sz), 100);
path_add_point(sht_circle_down_clockwise, x - (35 * sz), y + (85 *sz), 100);
path_add_point(sht_circle_down_clockwise, x - (50 * sz), y + (50 * sz), 100);
path_add_point(sht_circle_down_clockwise, x - (35 * sz), y + (15 * sz), 100);

med_circle_down_clockwise = path_add()
sz = 3.5
path_add_point(med_circle_down_clockwise, x, y, 100);
path_add_point(med_circle_down_clockwise, x + (35 * sz), y + (15 * sz), 100);
path_add_point(med_circle_down_clockwise, x + (50 * sz), y + (50 * sz), 100);
path_add_point(med_circle_down_clockwise, x + (35 * sz), y + (85 * sz), 100);
path_add_point(med_circle_down_clockwise, x, y + (100 * sz), 100);
path_add_point(med_circle_down_clockwise, x - (35 * sz), y + (85 *sz), 100);
path_add_point(med_circle_down_clockwise, x - (50 * sz), y + (50 * sz), 100);
path_add_point(med_circle_down_clockwise, x - (35 * sz), y + (15 * sz), 100);

lng_circle_down_clockwise = path_add()
sz = 5
path_add_point(lng_circle_down_clockwise, x, y, 100);
path_add_point(lng_circle_down_clockwise, x + (35 * sz), y + (15 * sz), 100);
path_add_point(lng_circle_down_clockwise, x + (50 * sz), y + (50 * sz), 100);
path_add_point(lng_circle_down_clockwise, x + (35 * sz), y + (85 * sz), 100);
path_add_point(lng_circle_down_clockwise, x, y + (100 * sz), 100);
path_add_point(lng_circle_down_clockwise, x - (35 * sz), y + (85 *sz), 100);
path_add_point(lng_circle_down_clockwise, x - (50 * sz), y + (50 * sz), 100);
path_add_point(lng_circle_down_clockwise, x - (35 * sz), y + (15 * sz), 100);

up_and_down_768 = path_add()
path_add_point(up_and_down_768, x, y, 200);
path_add_point(up_and_down_768, x, y-800, 200);
path_add_point(up_and_down_768, x, y+32, 200);
path_add_point(up_and_down_768, x, y, 200);

down_and_up_768 = path_add()
path_add_point(down_and_up_768, x, y, 275);
path_add_point(down_and_up_768, x, y+800, 275);
path_add_point(down_and_up_768, x, y-32, 275);
path_add_point(down_and_up_768, x, y, 275);

up_and_down_1024 = path_add()
path_add_point(up_and_down_1024, x, y, 300);
path_add_point(up_and_down_1024, x, y-1024, 300);
path_add_point(up_and_down_1024, x, y, 300);

left_and_right_384 = path_add()
path_add_point(left_and_right_384, x, y, 112.5);
path_add_point(left_and_right_384, x+384, y, 112.5);
path_add_point(left_and_right_384, x, y, 112.5);

left_and_right_384_2 = path_add()
path_add_point(left_and_right_384_2, x, y, 155.5555);
path_add_point(left_and_right_384_2, x+448, y, 155.5555);
path_add_point(left_and_right_384_2, x, y, 155.5555);

up_and_down_512 = path_add()
path_add_point(up_and_down_512, x, y, 200);
path_add_point(up_and_down_512, x, y-512, 200);
path_add_point(up_and_down_512, x, y, 200);

up_and_down_2368 = path_add()
path_add_point(up_and_down_2368, x, y, 153.3332767857143);
path_add_point(up_and_down_2368, x, y-2432, 153.3332767857143);
path_add_point(up_and_down_2368, x, y, 153.3332767857143);

path = sht_right_and_back;
started = false;
