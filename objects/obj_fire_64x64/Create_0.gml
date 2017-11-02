/// @description Insert description here
// You can write your code in this editor
smoke = ds_list_create() // linked list of smoke
ds_list_add(smoke, instance_create_layer(self.x-32, self.y-32, "Instances", obj_fire_smoke));
alarm[1] = room_speed * 0.5;
is_on = true;