/// @description Insert description here
// You can write your code in this editor
fireballs = ds_list_create();
X = self.x
Y = self.y
ds_list_add(fireballs, instance_create_layer(X, Y, "Instances", obj_fireball))
instance = ds_list_find_value(fireballs, 0)
instance.Center_X = X;
instance.Center_y = Y;

ds_list_add(fireballs, instance_create_layer(X, Y, "Instances", obj_fireball))
instance = ds_list_find_value(fireballs, 1)
instance.orbit = 48;
instance.Angle = 90;
instance.Center_X = X;
instance.Center_y = Y;

ds_list_add(fireballs, instance_create_layer(X, Y, "Instances", obj_fireball))
instance = ds_list_find_value(fireballs, 2)
instance.orbit = 48;
instance.Angle = 270;
instance.Center_X = X;
instance.Center_y = Y;