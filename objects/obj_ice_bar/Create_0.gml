/// @description Insert description here
// You can write your code in this editor
iceballs = ds_list_create();
X = self.x
Y = self.y
ds_list_add(iceballs, instance_create_layer(X, Y, "Instances", obj_iceball))
instance = ds_list_find_value(iceballs, 0)
instance.Center_X = X;
instance.Center_y = Y;

ds_list_add(iceballs, instance_create_layer(X, Y, "Instances", obj_iceball))
instance = ds_list_find_value(iceballs, 1)
instance.orbit = 48;
instance.Angle = 90;
instance.Center_X = X;
instance.Center_y = Y;

ds_list_add(iceballs, instance_create_layer(X, Y, "Instances", obj_iceball))
instance = ds_list_find_value(iceballs, 2)
instance.orbit = 72;
instance.Angle = 90;
instance.Center_X = X;
instance.Center_y = Y;

ds_list_add(iceballs, instance_create_layer(X, Y, "Instances", obj_iceball))
instance = ds_list_find_value(iceballs, 3)
instance.orbit = 48;
instance.Angle = 270;
instance.Center_X = X;
instance.Center_y = Y;

ds_list_add(iceballs, instance_create_layer(X, Y, "Instances", obj_iceball))
instance = ds_list_find_value(iceballs, 4)
instance.orbit = 72;
instance.Angle = 270;
instance.Center_X = X;
instance.Center_y = Y;