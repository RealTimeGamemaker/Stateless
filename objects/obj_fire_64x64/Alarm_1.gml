/// @description Insert description here
// You can write your code in this editor
if(is_on){
	ds_list_add(smoke, instance_create_layer(self.x-32, self.y-64, "instances", obj_fire_smoke))
}
	alarm[1] = room_speed * 0.5